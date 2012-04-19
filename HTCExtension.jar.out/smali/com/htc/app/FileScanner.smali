.class Lcom/htc/app/FileScanner;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FileScanner$UpdateUiRunnable;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_LIST_ITEM:I = 0xa5

.field private static final REFRESH_LIST_ITEM_DURATION:J = 0x7d0L

.field private static final ShowStorageType_PHONESTORAGE:I = 0x2

.field private static final ShowStorageType_SDCARD:I = 0x3

.field private static deleteEntries:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final recentLimitItems:I = 0x1f4


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final debugLOG:Z

.field private duration:J

.field private favoriteAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private isAddedRecentLists:Z

.field private isRecursive:Z

.field private isScanStop:Z

.field private isStop:Z

.field private final localLOGV:Z

.field private mAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/htc/app/FilePickerDBHelper;

.field private mDirs:[Ljava/lang/String;

.field private mFileCount:I

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:[Ljava/lang/String;

.field private mFolderSorter:Lcom/htc/app/FileSorter;

.field private mGcPerCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstToAdd:Z

.field private mRecentFiles:[Ljava/lang/String;

.field private mRecentFilesTime:[J

.field private final mScanToken:Ljava/lang/Object;

.field private mSearchFileCount:I

.field private final mSortToken:Ljava/lang/Object;

.field private recentAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/app/FileScanner;->deleteEntries:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V
    .locals 4
    .parameter "context"
    .parameter "adapter"
    .parameter "filter"
    .parameter "dbhelper"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->DEBUG:Z

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FileScanner;->TAG:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->localLOGV:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->debugLOG:Z

    .line 65
    iput-object v2, p0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    .line 119
    iput-object v2, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    .line 139
    iput v1, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 141
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 143
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/app/FileScanner;->isRecursive:Z

    .line 145
    iput-boolean v3, p0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 184
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mSortToken:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mScanToken:Ljava/lang/Object;

    .line 389
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isAddedRecentLists:Z

    .line 989
    new-instance v0, Lcom/htc/app/FileScanner$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FileScanner$2;-><init>(Lcom/htc/app/FileScanner;)V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    .line 168
    iput-object p2, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 169
    iput-object p3, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    .line 172
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 173
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 180
    iput-object p4, p0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/htc/app/FileScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/app/FileScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/app/FileScanner;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FileScanner;)Lcom/htc/app/FileScanner$UpdateUiRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$UpdateUiRunnable;)Lcom/htc/app/FileScanner$UpdateUiRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method private deleteUnavailableEntries()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 728
    sget-object v7, Lcom/htc/app/FileScanner;->deleteEntries:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 729
    .local v5, listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const-string v4, ""

    .line 730
    .local v4, idListRecent:Ljava/lang/String;
    const-string v3, ""

    .line 731
    .local v3, idListFav:Ljava/lang/String;
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 732
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 733
    .local v0, deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 734
    .local v6, table:I
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 735
    .local v2, id:I
    if-ne v6, v9, :cond_0

    .line 736
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 738
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 742
    .end local v0           #deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2           #id:I
    .end local v6           #table:I
    :cond_1
    :try_start_0
    const-string v7, ""

    if-eq v4, v7, :cond_2

    .line 743
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 744
    iget-object v7, p0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lcom/htc/app/FilePickerDBHelper;->deleteMoreEntries(Ljava/lang/String;I)V

    .line 746
    :cond_2
    const-string v7, ""

    if-eq v3, v7, :cond_3

    .line 747
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 748
    iget-object v7, p0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    const/4 v8, 0x2

    invoke-virtual {v7, v3, v8}, Lcom/htc/app/FilePickerDBHelper;->deleteMoreEntries(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_3
    :goto_1
    return-void

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "FilePickerWithDB"

    const-string v8, "#### mDbHelper.deleteMoreEntries() fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 880
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 894
    iput v2, p0, Lcom/htc/app/FileScanner;->mFileCount:I

    .line 895
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 896
    iput v2, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 897
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 899
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 900
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 901
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isAddedRecentLists:Z

    .line 902
    new-instance v0, Lcom/htc/app/FileScanner$UpdateUiRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FileScanner$UpdateUiRunnable;-><init>(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$1;)V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    .line 903
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 905
    :cond_1
    return-void
.end method

.method private matchFilter(Ljava/lang/String;)Z
    .locals 7
    .parameter "fileName"

    .prologue
    const/4 v5, 0x1

    .line 713
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, filename:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v5

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 720
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 724
    .end local v1           #extension:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private scanFilesByFolder(Ljava/io/File;)V
    .locals 17
    .parameter "directory"

    .prologue
    .line 392
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/htc/app/FileScanner;->duration:J

    .line 393
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-eqz v15, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 408
    .local v13, subList:[Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v15, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    array-length v0, v13

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v15, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 420
    :cond_3
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 421
    .local v12, subFolderList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 423
    .local v11, subFileItemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    move-object v2, v13

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_a

    aget-object v14, v2, v5

    .line 424
    .local v14, subStrFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v15, :cond_0

    .line 426
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v10, subFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 428
    invoke-static {v10}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v6

    .line 429
    .local v6, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v12, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 430
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v15

    if-nez v15, :cond_5

    .line 423
    .end local v6           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 434
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v1, 0x1

    .line 436
    .local v1, addFolderAsItem:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15, v14}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    if-eqz v1, :cond_4

    .line 437
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v15, :cond_0

    .line 439
    invoke-static {v10}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v6

    .line 440
    .restart local v6       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 442
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lcom/htc/app/ItemInfo;->setIsFolder(Z)V

    .line 451
    :cond_7
    invoke-virtual {v11, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 434
    .end local v1           #addFolderAsItem:Z
    .end local v6           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 446
    .restart local v1       #addFolderAsItem:Z
    .restart local v6       #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_2

    .line 454
    .end local v1           #addFolderAsItem:Z
    .end local v6           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v10           #subFile:Ljava/io/File;
    .end local v14           #subStrFile:Ljava/lang/String;
    :cond_a
    const/4 v13, 0x0

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 458
    invoke-static/range {p1 .. p1}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v3

    .line 459
    .local v3, folder:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    if-eqz v15, :cond_f

    .line 460
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isAddedRecentLists:Z

    if-nez v15, :cond_e

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v15}, Lcom/htc/app/FilePickerUtil;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/htc/app/ItemInfo;->getItemTextPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, headerText:Ljava/lang/String;
    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 463
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .end local v4           #headerText:Ljava/lang/String;
    :cond_b
    :goto_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 484
    .end local v3           #folder:Lcom/htc/app/ItemInfo;
    :cond_c
    :goto_5
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 485
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-static {v11, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 486
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/app/ItemInfo;

    .line 487
    .restart local v6       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v15, :cond_d

    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v15, v6}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    .line 489
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_6

    .line 469
    .end local v6           #itemInfo:Lcom/htc/app/ItemInfo;
    .restart local v3       #folder:Lcom/htc/app/ItemInfo;
    .local v5, i$:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v15, :cond_b

    .line 470
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v15, v3}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    .line 471
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_4

    .line 476
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v15, :cond_c

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v15, v3}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    .line 478
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_5

    .line 493
    .end local v3           #folder:Lcom/htc/app/ItemInfo;
    .end local v5           #i$:I
    :cond_10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 502
    .local v8, scanEnd:J
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isRecursive:Z

    if-eqz v15, :cond_0

    .line 503
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-static {v12, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/app/ItemInfo;

    .line 507
    .restart local v6       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v15, :cond_0

    .line 509
    new-instance v15, Ljava/io/File;

    invoke-virtual {v6}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/app/FileScanner;->scanFilesByFolder(Ljava/io/File;)V

    goto :goto_7

    .line 511
    .end local v6           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_11
    invoke-virtual {v12}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method

.method private scanFilesByType(Ljava/io/File;)V
    .locals 20
    .parameter "directory"

    .prologue
    .line 759
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/app/FileScanner;->duration:J

    .line 760
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 769
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v5

    .line 773
    .local v5, dataSourceType:I
    const/16 v18, -0x9

    move/from16 v0, v18

    if-eq v5, v0, :cond_4

    .line 774
    const/16 v18, -0x3

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    .line 775
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v10

    .line 776
    .local v10, localItemType:I
    const/16 v18, -0x3

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    .line 780
    .end local v10           #localItemType:I
    :cond_3
    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    .line 781
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v10

    .line 782
    .restart local v10       #localItemType:I
    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    .line 789
    .end local v10           #localItemType:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 791
    .local v16, subList:[Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 803
    :cond_5
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 804
    .local v15, subFolderList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 805
    .local v14, subFileItemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v8

    .line 806
    .local v8, itemType:I
    move-object/from16 v4, v16

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_c

    aget-object v17, v4, v6

    .line 807
    .local v17, subStrFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 809
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 810
    .local v13, subFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 811
    invoke-static {v13}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v7

    .line 812
    .local v7, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v7, v8}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 813
    invoke-virtual {v15, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v18

    if-nez v18, :cond_7

    .line 806
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 818
    :cond_7
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v3, 0x1

    .line 820
    .local v3, addFolderAsItem:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    if-eqz v3, :cond_6

    .line 821
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 823
    invoke-static {v13}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v7

    .line 824
    .restart local v7       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v7, v8}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 825
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 827
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/htc/app/ItemInfo;->setIsFolder(Z)V

    .line 836
    :cond_9
    invoke-virtual {v14, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 818
    .end local v3           #addFolderAsItem:Z
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 831
    .restart local v3       #addFolderAsItem:Z
    .restart local v7       #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v18

    if-nez v18, :cond_9

    goto :goto_2

    .line 839
    .end local v3           #addFolderAsItem:Z
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v13           #subFile:Ljava/io/File;
    .end local v17           #subStrFile:Ljava/lang/String;
    :cond_c
    const/16 v16, 0x0

    .line 842
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    .line 844
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/app/ItemInfo;

    .line 845
    .restart local v7       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v7, v8}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 846
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/app/FilePickerListAdapter;->putItemToMapByType(Lcom/htc/app/ItemInfo;)V

    .line 850
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_4

    .line 854
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_e
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    .line 863
    .local v11, scanEnd:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isRecursive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 864
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 867
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/app/ItemInfo;

    .line 868
    .restart local v7       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 870
    new-instance v18, Ljava/io/File;

    invoke-virtual {v7}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/app/FileScanner;->scanFilesByType(Ljava/io/File;)V

    goto :goto_5

    .line 872
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_f
    invoke-virtual {v15}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method

.method private sortByComparator(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .parameter "unsortMap"

    .prologue
    .line 691
    new-instance v3, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 694
    .local v3, list:Ljava/util/List;
    new-instance v0, Lcom/htc/app/FileScanner$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FileScanner$1;-><init>(Lcom/htc/app/FileScanner;)V

    .line 701
    .local v0, cp1:Ljava/util/Comparator;
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 704
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 705
    .local v4, sortedMap:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 707
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 709
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-object v4
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 943
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 944
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 945
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    .line 946
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 947
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    .line 948
    return-void
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/htc/app/FileScanner;->mFileCount:I

    return v0
.end method

.method public getFilePickerCloudHelper()Lcom/htc/app/FilePickerCloudHelper;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method public getRecentFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecentFilesTime()[J
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    return-object v0
.end method

.method public getSerachFileCount()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    return v0
.end method

.method isStopScan()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 201
    iget-object v12, p0, Lcom/htc/app/FileScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v12

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/htc/app/FileScanner;->init()V

    .line 204
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    iput-wide v13, p0, Lcom/htc/app/FileScanner;->duration:J

    .line 206
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v11}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 209
    .local v1, dataSourceType:I
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 210
    const/4 v5, 0x1

    .line 212
    .local v5, isScanningByType:Z
    iget-boolean v11, p0, Lcom/htc/app/FileScanner;->isStop:Z

    if-eqz v11, :cond_0

    .line 213
    monitor-exit v12

    .line 268
    .end local v5           #isScanningByType:Z
    :goto_0
    return-void

    .line 221
    .restart local v5       #isScanningByType:Z
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 244
    .end local v5           #isScanningByType:Z
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 247
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 257
    .local v9, scanEnd:J
    iget-boolean v11, p0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v11, :cond_3

    .line 258
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v11, :cond_2

    .line 259
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 260
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 261
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v11

    if-nez v11, :cond_2

    .line 262
    iget-object v11, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 264
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 266
    :cond_3
    monitor-exit v12

    goto :goto_0

    .end local v1           #dataSourceType:I
    .end local v9           #scanEnd:J
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 225
    .restart local v1       #dataSourceType:I
    .restart local v5       #isScanningByType:Z
    :sswitch_0
    :try_start_1
    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->getScanningPathByDataType(I)[Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, rootPath:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v7, v0, v4

    .line 227
    .local v7, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_4

    .line 230
    :try_start_2
    invoke-direct {p0, v3}, Lcom/htc/app/FileScanner;->scanFilesByType(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 233
    iget-object v11, p0, Lcom/htc/app/FileScanner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OutOfMemoryError:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 235
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method scanFilesByFavorite()V
    .locals 23

    .prologue
    .line 607
    const-string v20, "FilePickerWithDB"

    const-string v21, "#### loadFavoriteFiles"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 610
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    const/4 v4, 0x0

    .line 614
    .local v4, cursor:Landroid/database/Cursor;
    const/16 v18, 0x2

    .line 615
    .local v18, table:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 618
    .local v3, ShowStorageType:I
    sparse-switch v3, :sswitch_data_0

    .line 630
    :goto_1
    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-eqz v20, :cond_5

    .line 679
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 685
    :cond_4
    if-eqz v4, :cond_1

    .line 686
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 620
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerDBHelper;->getAll(I)Landroid/database/Cursor;

    move-result-object v4

    .line 621
    goto :goto_1

    .line 623
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerDBHelper;->getAllByStorageType(II)Landroid/database/Cursor;

    move-result-object v4

    .line 624
    goto :goto_1

    .line 626
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerDBHelper;->getAllByStorageType(II)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_1

    .line 634
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->clearmItemsTimeMap()V

    .line 635
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 642
    .local v15, rows_num:I
    if-lez v15, :cond_b

    .line 648
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 650
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v15, :cond_a

    .line 651
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 652
    .local v11, id:I
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 653
    .local v9, fileName:Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 654
    .local v14, path:Ljava/lang/String;
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 655
    .local v17, storageType:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v16, selFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/app/FilePickerRecentUtil;->getRecentGroup(J)I

    move-result v19

    .line 657
    .local v19, timeGroup:I
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v7

    .line 658
    .local v7, fileIsExist:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/app/FileScanner;->matchFilter(Ljava/lang/String;)Z

    move-result v8

    .line 659
    .local v8, fileIsMatchFilter:Z
    const-string v20, "FilePickerWithDB"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "####  fileIsExist: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 661
    invoke-static/range {v16 .. v16}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v12

    .line 662
    .local v12, item:Lcom/htc/app/ItemInfo;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 663
    invoke-static {v14}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v13

    .line 664
    .local v13, itemType:I
    invoke-virtual {v12, v13}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/htc/app/FilePickerListAdapter;->putItemToMapByTime(Lcom/htc/app/ItemInfo;I)V

    .line 672
    .end local v12           #item:Lcom/htc/app/ItemInfo;
    .end local v13           #itemType:I
    :cond_6
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 650
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 666
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v20, v0

    const-string v20, "STORAGE_TYPE_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v20, v0

    sget-object v20, Lcom/htc/app/FilePickerDBHelper;->sdCardID:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 669
    :cond_8
    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 670
    .local v5, deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v20, Lcom/htc/app/FileScanner;->deleteEntries:Ljava/util/LinkedList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 676
    .end local v5           #deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7           #fileIsExist:Z
    .end local v8           #fileIsMatchFilter:Z
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #id:I
    .end local v14           #path:Ljava/lang/String;
    .end local v15           #rows_num:I
    .end local v16           #selFile:Ljava/io/File;
    .end local v17           #storageType:Ljava/lang/String;
    .end local v19           #timeGroup:I
    :catch_0
    move-exception v6

    .line 677
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 685
    :cond_9
    if-eqz v4, :cond_1

    .line 686
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 674
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v10       #i:I
    .restart local v15       #rows_num:I
    :cond_a
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FileScanner;->deleteUnavailableEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 679
    .end local v10           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 685
    :cond_c
    if-eqz v4, :cond_1

    .line 686
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 679
    .end local v15           #rows_num:I
    :catchall_0
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 685
    :cond_d
    if-eqz v4, :cond_e

    .line 686
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v20

    .line 618
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method scanFilesByRecent()V
    .locals 25

    .prologue
    .line 517
    const-string v22, "FilePickerWithDB"

    const-string v23, "#### loadRecentFiles"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 520
    :cond_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v17, mapRecent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 527
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v3, v0

    .line 529
    :cond_1
    const/4 v4, 0x0

    .line 530
    .local v4, countTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v4, v0

    .line 533
    :cond_2
    if-lez v3, :cond_c

    if-ne v3, v4, :cond_c

    .line 534
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  mRecentFiles.length: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  mRecentFilesTime.length: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/app/FilePickerListAdapter;->clearmItemsTimeMap()V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v5

    .line 540
    .local v5, dataSourceType:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_7

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    if-eqz v22, :cond_3

    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    invoke-static/range {v22 .. v23}, Lcom/htc/app/FilePickerCloudHelper;->isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 540
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 545
    :cond_4
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v19, selFile:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v9

    .line 547
    .local v9, fileIsExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 548
    .local v8, fileIsDuplicate:Z
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  fileIsExist: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    .line 550
    const/16 v22, -0x9

    move/from16 v0, v22

    if-eq v5, v0, :cond_6

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    invoke-static/range {v22 .. v22}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v16

    .line 552
    .local v16, localItemType:I
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  recent mRecentFiles["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  recent localItemType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  recent dataSourceType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v22, -0x3

    move/from16 v0, v22

    if-ne v5, v0, :cond_5

    move/from16 v0, v16

    if-eq v0, v5, :cond_5

    .line 558
    const-string v22, "FilePickerWithDB"

    const-string v23, "#### case 1"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 560
    :cond_5
    const/16 v22, -0x2

    move/from16 v0, v22

    if-ne v5, v0, :cond_6

    move/from16 v0, v16

    if-eq v0, v5, :cond_6

    .line 562
    const-string v22, "FilePickerWithDB"

    const-string v23, "#### case 2"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 566
    .end local v16           #localItemType:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v23, v0

    aget-wide v23, v23, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 569
    .end local v8           #fileIsDuplicate:Z
    .end local v9           #fileIsExist:Z
    .end local v19           #selFile:Ljava/io/File;
    :cond_7
    const-string v22, "FilePickerWithDB"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####  mapRecent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/FileScanner;->sortByComparator(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    .line 572
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v22

    const/16 v23, 0x1f4

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    const/16 v20, 0x1f4

    .line 574
    .local v20, show_num:I
    :goto_2
    new-instance v15, Ljava/util/LinkedList;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 575
    .local v15, list:Ljava/util/List;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 577
    .local v12, it:Ljava/util/Iterator;
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 578
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 579
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 580
    .local v18, path:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .restart local v19       #selFile:Ljava/io/File;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/htc/app/FilePickerRecentUtil;->getRecentGroup(J)I

    move-result v21

    .line 583
    .local v21, timeGroup:I
    invoke-static/range {v19 .. v19}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v13

    .line 584
    .local v13, item:Lcom/htc/app/ItemInfo;
    invoke-static/range {v18 .. v18}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v14

    .line 585
    .local v14, itemType:I
    invoke-virtual {v13, v14}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 586
    const/4 v11, 0x0

    .line 587
    .local v11, isFavoriteItem:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 589
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v23, v0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerDBHelper;->IsFavFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 595
    :cond_8
    :goto_4
    invoke-virtual {v13, v11}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/htc/app/FilePickerListAdapter;->putItemToMapByTime(Lcom/htc/app/ItemInfo;I)V

    .line 577
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 572
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v11           #isFavoriteItem:Z
    .end local v12           #it:Ljava/util/Iterator;
    .end local v13           #item:Lcom/htc/app/ItemInfo;
    .end local v14           #itemType:I
    .end local v15           #list:Ljava/util/List;
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #selFile:Ljava/io/File;
    .end local v20           #show_num:I
    .end local v21           #timeGroup:I
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v20

    goto :goto_2

    .line 590
    .restart local v7       #entry:Ljava/util/Map$Entry;
    .restart local v11       #isFavoriteItem:Z
    .restart local v12       #it:Ljava/util/Iterator;
    .restart local v13       #item:Lcom/htc/app/ItemInfo;
    .restart local v14       #itemType:I
    .restart local v15       #list:Ljava/util/List;
    .restart local v18       #path:Ljava/lang/String;
    .restart local v19       #selFile:Ljava/io/File;
    .restart local v20       #show_num:I
    .restart local v21       #timeGroup:I
    :catch_0
    move-exception v6

    .line 591
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "FilePickerWithDB"

    const-string v23, "#### mDbHelper.isFavChanged() fail"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 598
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v11           #isFavoriteItem:Z
    .end local v13           #item:Lcom/htc/app/ItemInfo;
    .end local v14           #itemType:I
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #selFile:Ljava/io/File;
    .end local v21           #timeGroup:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 604
    .end local v5           #dataSourceType:I
    .end local v10           #i:I
    .end local v12           #it:Ljava/util/Iterator;
    .end local v15           #list:Ljava/util/List;
    .end local v20           #show_num:I
    :cond_b
    :goto_5
    return-void

    .line 599
    :cond_c
    if-nez v3, :cond_d

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    goto :goto_5

    .line 601
    :cond_d
    if-eq v3, v4, :cond_b

    if-eqz v3, :cond_b

    .line 602
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "The number of recent files & time don\'t match."

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
.end method

.method setFavoriteAdapter(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "favoriteAdapter"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/app/FileScanner;->favoriteAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 51
    return-void
.end method

.method public setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V
    .locals 0
    .parameter "filePickerCloudHelper"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 116
    return-void
.end method

.method setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V
    .locals 0
    .parameter "filePickerUtil"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 125
    return-void
.end method

.method setFileSorter(Lcom/htc/app/FileSorter;)V
    .locals 0
    .parameter "fileSorter"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 131
    return-void
.end method

.method setRecentAdapter(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "recentAdapter"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FileScanner;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 47
    return-void
.end method

.method public setRecentFiles([Ljava/lang/String;[J)V
    .locals 0
    .parameter "recentFiles"
    .parameter "recentFilesTime"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    .line 94
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 936
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 940
    :cond_0
    return-void
.end method
