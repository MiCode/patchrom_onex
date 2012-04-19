.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderScanner"
.end annotation


# static fields
.field private static final MESSAGE_EXPAND_ROOT_ITEM:I = 0xa7

.field private static final MESSAGE_SCAN_END:I = 0xa6

.field private static final MESSAGE_SHOW_REFRESH_ANIMATION:I = 0xa8

.field private static final MESSAGE_UPDATE_LIST_ITEM:I = 0xa5

.field private static final TAG:Ljava/lang/String; = "FolderScanner"


# instance fields
.field private final IntervalNum:I

.field private final IntervalTime:I

.field private IsGetItemFromCloud:Z

.field private MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private expandRootItemRunnable:Ljava/lang/Runnable;

.field private isCloudPath:Z

.field private isDoAppendFlag:Z

.field private isStop:Z

.field private mCurrentExItem:Lcom/htc/app/FolderItemInfo;

.field private mCurrentlist:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mScanToken:Ljava/lang/Object;

.field private resultItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private scanEndRunnable:Ljava/lang/Runnable;

.field private showRefreshAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;

.field private updateListItemRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1018
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IntervalNum:I

    .line 1007
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IntervalTime:I

    .line 1008
    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    .line 1033
    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isCloudPath:Z

    .line 1034
    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IsGetItemFromCloud:Z

    .line 1040
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mScanToken:Ljava/lang/Object;

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 1160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 1271
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    .line 1305
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->expandRootItemRunnable:Ljava/lang/Runnable;

    .line 1329
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    .line 1384
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    .line 1019
    return-void
.end method

.method static synthetic access$2400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->expandRootItemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->showRefreshAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->showRefreshAnimationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private doFolderModeCloudScan(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .parameter "serviceType"
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
    .line 1165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1166
    .local v0, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceRootFolderItemTextPath(I)Ljava/lang/String;

    move-result-object p3

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->listFolderItemInfoLists(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 1172
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$1602(Lcom/htc/app/FilePickerFolderAdapter;I)I

    .line 1181
    :cond_1
    :goto_0
    return-object v0

    .line 1175
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    sget-object v1, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, p3, p1, v2}, Lcom/htc/app/FolderItemInfo;->getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private doFolderModeFileScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 27
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v9, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 1188
    .local v17, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1189
    .local v5, currentlist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v6, dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1192
    const/4 v11, 0x0

    .line 1193
    .local v11, filePathLists:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1194
    .local v18, startScanTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$2300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v11

    .line 1195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v18

    const-wide/16 v25, 0x1f4

    cmp-long v23, v23, v25

    if-ltz v23, :cond_3

    const/4 v15, 0x1

    .line 1198
    .local v15, isTimeTooLong:Z
    :goto_0
    const/4 v12, 0x0

    .line 1199
    .local v12, filesAmount:I
    const/4 v8, 0x0

    .line 1200
    .local v8, fileCount:I
    const/16 v22, 0x0

    .line 1201
    .local v22, updatedCount:I
    if-eqz v11, :cond_0

    .line 1202
    array-length v12, v11

    .line 1204
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v0, v12}, Lcom/htc/app/FilePickerFolderAdapter;->access$1602(Lcom/htc/app/FilePickerFolderAdapter;I)I

    .line 1206
    :cond_1
    if-lez v12, :cond_8

    .line 1207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1208
    .local v20, startTime:J
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget-object v10, v4, v14

    .line 1209
    .local v10, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1210
    const/16 v17, 0x0

    .line 1268
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #fileCount:I
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #filePathLists:[Ljava/lang/String;
    .end local v12           #filesAmount:I
    .end local v14           #i$:I
    .end local v15           #isTimeTooLong:Z
    .end local v16           #len$:I
    .end local v17           #resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    .end local v18           #startScanTime:J
    .end local v20           #startTime:J
    .end local v22           #updatedCount:I
    :cond_2
    :goto_2
    return-object v17

    .line 1195
    .restart local v11       #filePathLists:[Ljava/lang/String;
    .restart local v17       #resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    .restart local v18       #startScanTime:J
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1211
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #fileCount:I
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v12       #filesAmount:I
    .restart local v14       #i$:I
    .restart local v15       #isTimeTooLong:Z
    .restart local v16       #len$:I
    .restart local v20       #startTime:J
    .restart local v22       #updatedCount:I
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1212
    .local v7, file:Ljava/io/File;
    sget-boolean v23, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v23, :cond_5

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v23

    const/16 v24, -0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1233
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 1234
    invoke-static {v7}, Lcom/htc/app/FolderItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/FolderItemInfo;

    move-result-object v13

    .line 1235
    .local v13, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1000(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    .line 1236
    invoke-virtual {v5, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1237
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 1239
    if-eqz v15, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v20

    const-wide/16 v25, 0x1f4

    rem-long v23, v23, v25

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_6

    move/from16 v0, v22

    if-eq v0, v8, :cond_6

    .line 1242
    move/from16 v22, v8

    .line 1243
    invoke-virtual {v5}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/LinkedList;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0xa5

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1245
    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 1208
    .end local v13           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_6
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1226
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v23

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/app/FilePickerUtil;->checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    goto :goto_3

    .line 1253
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v20           #startTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1254
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->clear()V

    .line 1255
    sget-object v23, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I
    invoke-static/range {v24 .. v24}, Lcom/htc/app/FilePickerFolderAdapter;->access$1000(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isCloudPath:Z

    move/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/htc/app/FolderItemInfo;->getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1262
    .end local v8           #fileCount:I
    .end local v11           #filePathLists:[Ljava/lang/String;
    .end local v12           #filesAmount:I
    .end local v15           #isTimeTooLong:Z
    .end local v18           #startScanTime:J
    .end local v22           #updatedCount:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1263
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->clear()V

    .line 1264
    sget-object v23, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I
    invoke-static/range {v24 .. v24}, Lcom/htc/app/FilePickerFolderAdapter;->access$1000(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isCloudPath:Z

    move/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/htc/app/FolderItemInfo;->getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1414
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1416
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1417
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->expandRootItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1418
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1421
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Z)Z

    .line 1422
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->stopScan()V

    .line 1423
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$3700(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$3700(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$3700(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1428
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->clear()V

    .line 1429
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1430
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    .line 1431
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$102(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    .line 1432
    return-void
.end method

.method isStopStatus()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 1049
    iget-object v12, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v12

    .line 1050
    :try_start_0
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1000(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v2

    .line 1052
    .local v2, dataSourceType:I
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->startScan()V

    .line 1053
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FolderItemInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    .line 1054
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    if-eqz v11, :cond_0

    .line 1055
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->clear()V

    .line 1057
    :cond_0
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    if-eqz v11, :cond_1

    .line 1058
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 1059
    :cond_1
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Z)Z

    .line 1060
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1061
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    .line 1062
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1400(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1063
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1400(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/LinkedList;->clear()V

    .line 1066
    :cond_2
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1067
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v13, -0x1

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$1602(Lcom/htc/app/FilePickerFolderAdapter;I)I

    .line 1068
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1069
    .local v3, emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v13, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1070
    :try_start_1
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;
    invoke-static {v11, v3}, Lcom/htc/app/FilePickerFolderAdapter;->access$002(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 1071
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v11, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 1072
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    :try_start_2
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v13, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$1102(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Lcom/htc/app/FolderItemInfo;

    .line 1074
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    .line 1076
    .end local v3           #emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_3
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v13, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$1702(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    .line 1077
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Z)Z

    .line 1079
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v6

    .line 1080
    .local v6, isRoodFolderVisabled:Z
    packed-switch v2, :pswitch_data_0

    .line 1151
    :cond_4
    :goto_0
    :pswitch_0
    iget-boolean v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-nez v11, :cond_5

    .line 1152
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v13, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$2200(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 1153
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v13, 0xa6

    invoke-virtual {v11, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1155
    :cond_5
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v13, 0x1

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$1702(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    .line 1156
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1158
    :goto_1
    return-void

    .line 1072
    .end local v6           #isRoodFolderVisabled:Z
    .restart local v3       #emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    .line 1156
    .end local v2           #dataSourceType:I
    .end local v3           #emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 1085
    .restart local v2       #dataSourceType:I
    .restart local v6       #isRoodFolderVisabled:Z
    :pswitch_1
    :try_start_5
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1086
    .local v10, rootItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v6, :cond_a

    .line 1087
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:[Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1800(Lcom/htc/app/FilePickerFolderAdapter;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v7, :cond_9

    aget-object v8, v1, v4

    .line 1088
    .local v8, path:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1087
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1091
    :cond_7
    invoke-static {v8}, Lcom/htc/app/FolderItemInfo;->getLocalFileInstance(Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;

    move-result-object v9

    .line 1092
    .local v9, rootItemInfo:Lcom/htc/app/FolderItemInfo;
    const/16 v11, -0x9

    if-ne v2, v11, :cond_8

    .line 1093
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/app/FilePickerUtil;->checkLocalFileDataType(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    .line 1098
    :goto_4
    if-eqz v9, :cond_6

    .line 1099
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1096
    :cond_8
    invoke-virtual {v9, v2}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    goto :goto_4

    .line 1102
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #rootItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_9
    iput-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    goto :goto_0

    .line 1104
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :cond_a
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:[Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1800(Lcom/htc/app/FilePickerFolderAdapter;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v7, :cond_4

    aget-object v8, v1, v4

    .line 1105
    .restart local v8       #path:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1104
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1107
    :cond_b
    invoke-direct {p0, v8}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeFileScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    goto :goto_6

    .line 1113
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #rootItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :pswitch_2
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v11

    if-nez v11, :cond_c

    .line 1114
    monitor-exit v12

    goto :goto_1

    .line 1115
    :cond_c
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, accountIds:[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1117
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v13, 0x0

    aget-object v13, v0, v13

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$2002(Lcom/htc/app/FilePickerFolderAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    :goto_7
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    .line 1123
    .local v5, isNetworkConnected:Z
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v6, :cond_e

    .line 1125
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v11

    iget-object v13, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$2000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v2, v13, v14}, Lcom/htc/app/FilePickerCloudHelper;->listFolderItemInfoLists(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    .line 1128
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    .line 1129
    if-eqz v5, :cond_4

    .line 1130
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/htc/app/FilePickerCloudHelper;->getRootFolderItemInstances(I)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedList;

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 1132
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    if-eqz v11, :cond_4

    .line 1133
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v13, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$1602(Lcom/htc/app/FilePickerFolderAdapter;I)I

    goto/16 :goto_0

    .line 1119
    .end local v5           #isNetworkConnected:Z
    :cond_d
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v13, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/htc/app/FilePickerFolderAdapter;->access$2002(Lcom/htc/app/FilePickerFolderAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 1137
    .restart local v5       #isNetworkConnected:Z
    :cond_e
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:[Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1800(Lcom/htc/app/FilePickerFolderAdapter;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_8
    if-ge v4, v7, :cond_4

    aget-object v8, v1, v4

    .line 1139
    .restart local v8       #path:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1140
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    .line 1141
    if-nez v5, :cond_f

    .line 1137
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1145
    :cond_f
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$2000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v2, v11, v8}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeCloudScan(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method setIsGetItemFromCloud(Z)V
    .locals 0
    .parameter "isGetItemFromCloud"

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IsGetItemFromCloud:Z

    .line 1038
    return-void
.end method

.method startScan()V
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    .line 1027
    return-void
.end method

.method stopScan()V
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    .line 1023
    return-void
.end method
