.class Lcom/htc/app/FilePickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;,
        Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;,
        Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;
    }
.end annotation


# static fields
.field static final GARBAGE_MESSAGE:Ljava/lang/String; = "GarbageMessage_LongVacation"

.field private static final ITEM_VIEW_TYPE_FILE:I = 0x0

.field private static final ITEM_VIEW_TYPE_FOLDER:I = 0x1

.field public static final MULTIPLE_SELECTION:I = 0x1

.field public static final NOTIFY_DATASET_CHENGED:I = 0x2

.field public static final NOTIFY_DATASET_INVALIDATED:I = 0x5

.field public static final NOTIFY_RESULT_BY_TYPE_CHENGED:I = 0x4

.field public static final NOTIFY_SEARCH_RESULT_CHENGED:I = 0x3

.field public static final SINGLE_SELECTION:I = 0x0

.field public static final UPDATE_FILELIST:I = 0x0

.field public static final UPDATE_SEARCH_FILE_COUNT:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private headerViewText:Ljava/lang/String;

.field private isGroupByPath:Z

.field private isRemoveMode:Z

.field private mAdapterItems:[Lcom/htc/app/ItemInfo;

.field private mAdapterType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mDbHelper:Lcom/htc/app/FilePickerDBHelper;

.field private mFileCount:I

.field private mFileDate:Ljava/sql/Date;

.field private mFilePicker:Lcom/htc/app/FilePickerCore;

.field private final mFilePickerLayout_ListView_FileItemView:I

.field private final mFilePickerLayout_ListView_FolderItemView:I

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileScanner:Lcom/htc/app/FileScanner;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:Landroid/widget/Filter;

.field private mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputStringLowerCase:Ljava/lang/String;

.field private mItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsTimeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I

.field private nameForTextView_DefaultColor:Landroid/content/res/ColorStateList;

.field private notifyDataSetChangedRunnable:Ljava/lang/Runnable;

.field private notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

.field private notifyFileScanEnd:Ljava/lang/Runnable;

.field private notifyResultByTypeRunnable:Ljava/lang/Runnable;

.field private notifySearchResultRunnable:Ljava/lang/Runnable;

.field private scanThread:Ljava/lang/Thread;

.field private updateFileList:Ljava/lang/Runnable;

.field private updateHeaderName:Ljava/lang/Runnable;

.field private updateSearchFileCount:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "selectionType"
    .parameter "filePicker"
    .parameter "filePickerUtil"
    .parameter "dbHelper"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    .line 58
    const v0, 0x2090031

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerLayout_ListView_FolderItemView:I

    .line 59
    const v0, 0x2090030

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerLayout_ListView_FileItemView:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    .line 85
    new-array v0, v1, [Lcom/htc/app/ItemInfo;

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    .line 421
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->nameForTextView_DefaultColor:Landroid/content/res/ColorStateList;

    .line 605
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 687
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    .line 690
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    .line 116
    iput-object p2, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    .line 118
    iput-object p6, p0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 119
    iput-object p5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    iput p3, p0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    .line 122
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    .line 123
    iput-object p4, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    .line 124
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->removeRedundantPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/app/FilePickerListAdapter;->isCanNotifyDataChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/app/FilePickerListAdapter;[Lcom/htc/app/ItemInfo;)[Lcom/htc/app/ItemInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FileScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    return-object v0
.end method

.method private cancelScanFiles(J)V
    .locals 4
    .parameter "waitSec"

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->removeMessagesAndCallbacks()V

    .line 1094
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 1095
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v1}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 1099
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 1100
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_4

    .line 1101
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 1106
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 1116
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    if-eqz v1, :cond_3

    .line 1117
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->setNoFileViewEmptyTextOfTypeView()V

    .line 1119
    :cond_3
    return-void

    .line 1103
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1111
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop Thread Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private compareStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pattern"
    .parameter "valueText"

    .prologue
    .line 1487
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "itemInfo"

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 433
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const v1, 0x2090031

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 455
    :goto_0
    return-object p1

    .line 436
    :cond_0
    const v1, 0x2090030

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private isCanNotifyDataChanged()Z
    .locals 2

    .prologue
    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1555
    const/4 v0, 0x1

    .line 1557
    :cond_0
    return v0
.end method

.method private removeRedundantPath(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 612
    const/4 v2, 0x0

    .line 656
    :cond_0
    return-object v2

    .line 613
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v2, newList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 615
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 616
    .local v1, item:Lcom/htc/app/ItemInfo;
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 617
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 614
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    :cond_4
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-nez v3, :cond_2

    .line 623
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method IsEnabledGroupByPath()Z
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    return v0
.end method

.method public NotifyFileScanEnd()V
    .locals 2

    .prologue
    .line 1391
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$9;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$9;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    .line 1400
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1402
    :cond_0
    return-void
.end method

.method public NotifyListChanged(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1190
    packed-switch p1, :pswitch_data_0

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1194
    :pswitch_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->getFileCount()I

    move-result v0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 1195
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$3;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    .line 1203
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1207
    :pswitch_1
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$4;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    .line 1213
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1217
    :pswitch_2
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$5;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$5;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyResultByTypeRunnable:Ljava/lang/Runnable;

    .line 1239
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyResultByTypeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1242
    :pswitch_3
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$6;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$6;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifySearchResultRunnable:Ljava/lang/Runnable;

    .line 1289
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifySearchResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1293
    :pswitch_4
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$7;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$7;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    .line 1302
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1306
    :pswitch_5
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$8;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$8;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    .line 1311
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method add(Lcom/htc/app/ItemInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 782
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->getCurrentItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 791
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 793
    return-void

    .line 788
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1548
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 898
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 899
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 900
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_1

    .line 909
    iput v3, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 910
    new-array v1, v3, [Lcom/htc/app/ItemInfo;

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 912
    :cond_1
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    goto :goto_0

    .line 906
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method clearmItemsTimeMap()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 695
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 1050
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->removeMessagesAndCallbacks()V

    .line 1051
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerListAdapter;->cancelScanFiles(J)V

    .line 1052
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    .line 1053
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->close()V

    .line 1055
    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 1056
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;

    .line 1057
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    .line 1058
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1059
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    .line 1060
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    .line 1061
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 1062
    return-void
.end method

.method getAdapterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v0, v1

    .line 147
    :cond_0
    return v0
.end method

.method public getCurrentFileCount()I
    .locals 6

    .prologue
    .line 1469
    const/4 v1, 0x0

    .line 1470
    .local v1, fileCount:I
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v5, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .local v0, arr$:[Lcom/htc/app/ItemInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 1472
    .local v3, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz v3, :cond_0

    .line 1473
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1474
    add-int/lit8 v1, v1, 0x1

    .line 1471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    .end local v0           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v2           #i$:I
    .end local v3           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #len$:I
    :cond_1
    return v1
.end method

.method getCurrentItemList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 798
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/htc/app/ItemInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/app/ItemInfo;

    .line 799
    .local v0, ItemInfos:[Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_1

    array-length v7, v0

    if-lez v7, :cond_1

    .line 800
    move-object v1, v0

    .local v1, arr$:[Lcom/htc/app/ItemInfo;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v1, v2

    .line 801
    .local v3, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getItemDataSourceType()I

    move-result v4

    .line 802
    .local v4, itemTypeId:I
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7, v4}, Lcom/htc/app/FilePickerUtil;->checkToShowItem(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 803
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    .end local v0           #ItemInfos:[Lcom/htc/app/ItemInfo;
    .end local v1           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v2           #i$:I
    .end local v3           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #itemTypeId:I
    .end local v5           #len$:I
    :cond_1
    return-object v6
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-nez v1, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 172
    .local v0, endIndex:I
    if-le p1, v0, :cond_1

    .line 173
    move p1, v0

    .line 175
    :cond_1
    if-gez p1, :cond_2

    .line 176
    const/4 p1, 0x0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 1512
    .local v0, item:Lcom/htc/app/ItemInfo;
    if-nez v0, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return v1

    .line 1514
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getListItemLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method getOriginalCount()I
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-nez v1, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 1435
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 1436
    .local v6, originalValuesObjects:[Ljava/lang/Object;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .local v5, originalValuesObject:Ljava/lang/Object;
    move-object v2, v5

    .line 1437
    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 1438
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1439
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1443
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #len$:I
    .end local v5           #originalValuesObject:Ljava/lang/Object;
    .end local v6           #originalValuesObjects:[Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v7, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .local v0, arr$:[Lcom/htc/app/ItemInfo;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 1445
    .restart local v2       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1446
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1451
    .end local v0           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v1           #i$:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v4           #len$:I
    :cond_3
    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 35
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/app/ItemInfo;

    .line 198
    .local v24, item:Lcom/htc/app/ItemInfo;
    if-nez p2, :cond_0

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 201
    :cond_0
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 202
    const v30, 0x20200c5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 205
    .local v17, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    if-nez v17, :cond_1

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 207
    const v30, 0x20200c5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 211
    .restart local v17       #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/app/ItemInfo;->getItemTextPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, filePath:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 213
    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 400
    .end local v13           #filePath:Ljava/lang/String;
    .end local v17           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_2
    :goto_0
    return-object p2

    .line 217
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v4

    .line 219
    .local v4, checked:Z
    const v30, 0x20200b2

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListItem;

    .line 220
    .local v25, itemView:Lcom/htc/widget/HtcListItem;
    if-nez v25, :cond_4

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 222
    const v30, 0x20200b2

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25           #itemView:Lcom/htc/widget/HtcListItem;
    check-cast v25, Lcom/htc/widget/HtcListItem;

    .line 224
    .restart local v25       #itemView:Lcom/htc/widget/HtcListItem;
    :cond_4
    const v30, 0x20200b6

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    .line 227
    .local v16, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    const v30, 0x20200b5

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemColorIcon;

    .line 230
    .local v10, fileItemIcon:Lcom/htc/widget/HtcListItemColorIcon;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 231
    .local v11, fileName:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v20

    .line 232
    .local v20, isCloudItem:Z
    if-nez v20, :cond_6

    .line 233
    const v30, 0x20200b7

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcStarButton;

    .line 235
    .local v9, favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setTag(Ljava/lang/Object;)V

    .line 236
    const/16 v21, 0x0

    .line 237
    .local v21, isFavFilePath:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 239
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/app/FilePickerDBHelper;->IsFavFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    .line 245
    :cond_5
    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 246
    new-instance v30, Lcom/htc/app/FilePickerListAdapter$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/FilePickerListAdapter$1;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 288
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setVisibility(I)V

    .line 289
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isFavorite()Z

    move-result v22

    .line 290
    .local v22, isFavorite:Z
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcStarButton;->setChecked(Z)V

    .line 293
    .end local v9           #favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    .end local v21           #isFavFilePath:Z
    .end local v22           #isFavorite:Z
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v23

    .line 294
    .local v23, isFolder:Z
    if-nez v23, :cond_7

    .line 295
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v14, folder:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 297
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 298
    const/16 v23, 0x1

    .line 302
    .end local v14           #folder:Ljava/io/File;
    :cond_7
    if-eqz v23, :cond_8

    .line 303
    sget v30, Lcom/htc/app/FilePickerUtil;->drawableResId_Folder_Icon:I

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 309
    :goto_2
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->getItemDataSourceType()I

    move-result v29

    .line 310
    .local v29, serviceType:I
    const-string v28, ""

    .line 314
    .local v28, prefixWord:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_b

    .line 315
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 317
    .local v12, fileNameLowerCase:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v19

    .line 318
    .local v19, inputStrinLength:I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 320
    .local v5, displayString:Landroid/text/SpannableString;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v18, v30, -0x1

    .line 322
    .local v18, index:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    add-int/lit8 v31, v18, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const/16 v30, -0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-le v0, v1, :cond_9

    .line 325
    :try_start_1
    new-instance v30, Landroid/text/style/ForegroundColorSpan;

    const/16 v31, -0x1

    invoke-direct/range {v30 .. v31}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v31, v19, v18

    const/16 v32, 0x21

    move-object/from16 v0, v30

    move/from16 v1, v18

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 335
    :goto_4
    :try_start_2
    new-instance v30, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "text_selection_highlight"

    const v34, 0x2060001

    invoke-static/range {v32 .. v34}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    invoke-direct/range {v30 .. v31}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v31, v19, v18

    const/16 v32, 0x21

    move-object/from16 v0, v30

    move/from16 v1, v18

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 341
    :catch_0
    move-exception v8

    .line 342
    .local v8, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Get HtcResource context failed"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 240
    .end local v5           #displayString:Landroid/text/SpannableString;
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v12           #fileNameLowerCase:Ljava/lang/String;
    .end local v18           #index:I
    .end local v19           #inputStrinLength:I
    .end local v23           #isFolder:Z
    .end local v28           #prefixWord:Ljava/lang/String;
    .end local v29           #serviceType:I
    .restart local v9       #favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    .restart local v21       #isFavFilePath:Z
    :catch_1
    move-exception v7

    .line 241
    .local v7, e:Ljava/lang/Exception;
    const-string v30, "FilePickerWithDB"

    const-string v31, "#### mDbHelper.isFavChanged() fail"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 305
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #favoriteStarButton:Lcom/htc/widget/HtcStarButton;
    .end local v21           #isFavFilePath:Z
    .restart local v23       #isFolder:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/htc/app/FilePickerUtil;->getFileTypeImage(Ljava/lang/String;)I

    move-result v6

    .line 306
    .local v6, drawableResId:I
    invoke-virtual {v10, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto/16 :goto_2

    .line 330
    .end local v6           #drawableResId:I
    .restart local v5       #displayString:Landroid/text/SpannableString;
    .restart local v12       #fileNameLowerCase:Ljava/lang/String;
    .restart local v18       #index:I
    .restart local v19       #inputStrinLength:I
    .restart local v28       #prefixWord:Ljava/lang/String;
    .restart local v29       #serviceType:I
    :catch_2
    move-exception v8

    .line 331
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "error:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 345
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 351
    .end local v5           #displayString:Landroid/text/SpannableString;
    .end local v12           #fileNameLowerCase:Ljava/lang/String;
    .end local v18           #index:I
    .end local v19           #inputStrinLength:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 353
    const v30, 0x20200b3

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcCheckBox;

    .line 355
    .local v15, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v15, :cond_a

    .line 356
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 357
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 358
    new-instance v30, Lcom/htc/app/FilePickerListAdapter$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/FilePickerListAdapter$2;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 380
    if-eqz v4, :cond_c

    .line 381
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 389
    .end local v15           #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_a
    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/htc/app/ItemInfo;->lastModified()J

    move-result-wide v26

    .line 391
    .local v26, lastModified:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/sql/Date;->setTime(J)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v26           #lastModified:J
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_5

    .line 384
    .restart local v15       #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_c
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1529
    const/4 v0, 0x2

    return v0
.end method

.method groupByPath(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1007
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    .line 1008
    return-void
.end method

.method public insert(Lcom/htc/app/ItemInfo;I)V
    .locals 3
    .parameter "object"
    .parameter "index"

    .prologue
    .line 827
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 828
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 830
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_1

    .line 833
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 834
    .local v0, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 835
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/app/ItemInfo;

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 837
    .end local v0           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 838
    return-void

    .line 830
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    move-object v0, v1

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 466
    .local v0, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v0, :cond_0

    .line 1500
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 1502
    :cond_0
    return-void
.end method

.method performActionModeFinish()V
    .locals 2

    .prologue
    .line 1655
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFlatModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 1657
    .local v0, actionMode:Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 1658
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1661
    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_0
    return-void
.end method

.method putItemToMapByTime(Lcom/htc/app/ItemInfo;I)V
    .locals 13
    .parameter "itemInfo"
    .parameter "timeGroup"

    .prologue
    .line 698
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, fileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 700
    .local v10, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 701
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    check-cast v10, Ljava/util/ArrayList;

    .line 706
    .restart local v10       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :goto_0
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget v11, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 708
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v5, resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v4, noSeperatorList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v8, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 715
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 716
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    const-string v6, ""

    .line 717
    .local v6, seperator:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 718
    .local v3, key:I
    const/4 v11, 0x1

    if-ne v3, v11, :cond_1

    .line 719
    const-string v6, "TODAY"

    .line 729
    :goto_2
    invoke-static {v6}, Lcom/htc/app/ItemInfo;->getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v9

    .line 730
    .local v9, typeItem:Lcom/htc/app/ItemInfo;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v12, v11}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 732
    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v4, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 703
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:I
    .end local v4           #noSeperatorList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v5           #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v6           #seperator:Ljava/lang/String;
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    .end local v8           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v9           #typeItem:Lcom/htc/app/ItemInfo;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    goto :goto_0

    .line 720
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:I
    .restart local v4       #noSeperatorList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .restart local v5       #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .restart local v6       #seperator:Ljava/lang/String;
    .restart local v7       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    .restart local v8       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    .line 721
    const-string v6, "YESTERDAY"

    goto :goto_2

    .line 722
    :cond_2
    const/4 v11, 0x3

    if-ne v3, v11, :cond_3

    .line 723
    const-string v6, "ONE WEEK"

    goto :goto_2

    .line 724
    :cond_3
    const/4 v11, 0x4

    if-ne v3, v11, :cond_4

    .line 725
    const-string v6, "ONE MONTH"

    goto :goto_2

    .line 727
    :cond_4
    const-string v6, "OLDER"

    goto :goto_2

    .line 735
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .end local v3           #key:I
    .end local v6           #seperator:Ljava/lang/String;
    :cond_5
    iput-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 736
    iput-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 737
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 738
    return-void
.end method

.method putItemToMapByType(Lcom/htc/app/ItemInfo;)V
    .locals 14
    .parameter "itemInfo"

    .prologue
    .line 744
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, fileName:Ljava/lang/String;
    const-string v12, "."

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v9, v12, 0x1

    .line 746
    .local v9, start:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 747
    .local v1, end:I
    const-string v3, ""

    .line 748
    .local v3, extension:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    if-lez v1, :cond_2

    if-ge v9, v1, :cond_2

    .line 751
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 753
    :cond_2
    const/4 v11, 0x0

    .line 754
    .local v11, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 755
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    check-cast v11, Ljava/util/ArrayList;

    .line 760
    .restart local v11       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :goto_1
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v13, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-virtual {p0, v11}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-interface {v13, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v7, resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 766
    .local v8, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 767
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 768
    .local v6, key:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/app/ItemInfo;->getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v10

    .line 769
    .local v10, typeItem:Lcom/htc/app/ItemInfo;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v7, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 757
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;>;"
    .end local v10           #typeItem:Lcom/htc/app/ItemInfo;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11       #valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    goto :goto_1

    .line 772
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .restart local v8       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList;>;>;"
    :cond_4
    iput-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 773
    iput-object v7, p0, Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;

    .line 774
    iget-object v12, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v12, v12

    mul-int/lit8 v0, v12, 0x2

    .line 775
    .local v0, count:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-lt v12, v0, :cond_0

    .line 776
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0
.end method

.method public remove(Lcom/htc/app/ItemInfo;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 853
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 855
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 860
    .local v0, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 861
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/app/ItemInfo;

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 862
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 864
    .end local v0           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    return-void

    .line 855
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeExtSdItems()Z
    .locals 8

    .prologue
    .line 1328
    const/4 v1, 0x1

    .line 1330
    .local v1, isNeedReScan:Z
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v5}, Lcom/htc/app/FileScanner;->isStopScan()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1331
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v5, :cond_4

    .line 1332
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1333
    :cond_0
    const/4 v5, 0x1

    .line 1356
    :goto_0
    return v5

    .line 1334
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1335
    .local v4, showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 1336
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1337
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5, v3}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1340
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1342
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v6

    .line 1343
    :try_start_0
    iput-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 1344
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    iget-object v6, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    monitor-enter v6

    .line 1347
    :try_start_1
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/app/ItemInfo;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/app/ItemInfo;

    iput-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 1348
    const/4 v1, 0x0

    .line 1349
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1350
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_4
    :goto_2
    move v5, v1

    .line 1356
    goto :goto_0

    .line 1344
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1349
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1353
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_5
    const/4 v1, 0x1

    .line 1354
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    goto :goto_2
.end method

.method removeMessagesAndCallbacks()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1071
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1073
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1074
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateHeaderName:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1075
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1076
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1077
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1078
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifySearchResultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public resetAllChecked()V
    .locals 5

    .prologue
    .line 1420
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    if-eqz v4, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .local v0, arr$:[Lcom/htc/app/ItemInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1422
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    .end local v0           #arr$:[Lcom/htc/app/ItemInfo;
    .end local v1           #i$:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method setAdapterType(Ljava/lang/String;)V
    .locals 0
    .parameter "adapterType"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCheckBoxMode(Z)V
    .locals 0
    .parameter "isRemoveMode"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    .line 484
    return-void
.end method

.method public setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 1044
    return-void
.end method

.method setFileScanner(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter "fileScanner"

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    .line 1016
    return-void
.end method

.method setFileSorter(Lcom/htc/app/FileSorter;)V
    .locals 0
    .parameter "fileSorter"

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1020
    return-void
.end method

.method setHeaderViewText(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->headerViewText:Ljava/lang/String;

    .line 663
    return-void
.end method

.method setScanThreadMinPriority(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1084
    if-eqz p1, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 1538
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    .line 1539
    return-void
.end method

.method showItems()V
    .locals 10

    .prologue
    .line 1361
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    const/4 v7, 0x0

    .line 1364
    .local v7, showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v8}, Lcom/htc/app/FileScanner;->isStopScan()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1365
    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1366
    .restart local v7       #showList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 1367
    .local v5, originalValuesObject:[Ljava/lang/Object;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v3, v0, v1

    .local v3, itemInfoObject:Ljava/lang/Object;
    move-object v2, v3

    .line 1368
    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 1369
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isRecentFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1367
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1372
    :cond_3
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getItemDataSourceType()I

    move-result v6

    .line 1373
    .local v6, serviceType:I
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8, v6}, Lcom/htc/app/FilePickerUtil;->checkToShowItem(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1374
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1377
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #itemInfoObject:Ljava/lang/Object;
    .end local v6           #serviceType:I
    :cond_4
    iget-object v9, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    monitor-enter v9

    .line 1378
    const/4 v8, 0x0

    :try_start_0
    new-array v8, v8, [Lcom/htc/app/ItemInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/app/ItemInfo;

    iput-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 1379
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1379
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method sort(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v3, newValue:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-boolean v5, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    if-eqz v5, :cond_4

    .line 923
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 924
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 925
    .local v1, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 926
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 927
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, v4}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 928
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 929
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 931
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .end local v2           #j:I
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 938
    .end local v1           #item:Lcom/htc/app/ItemInfo;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 939
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, v4}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 940
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 941
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 947
    .end local v0           #i:I
    .end local v2           #j:I
    :cond_4
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, p1}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 949
    :cond_5
    return-object v3
.end method

.method sort()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v1

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 960
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/app/ItemInfo;

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 962
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0

    .line 960
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sortRecentAndFavorite()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 967
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    if-eqz v8, :cond_5

    .line 970
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v3, resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v6, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mItemsTimeMap:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 974
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 975
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    const-string v4, ""

    .line 976
    .local v4, seperator:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 977
    .local v2, key:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 978
    const-string v4, "TODAY"

    .line 988
    :goto_1
    invoke-static {v4}, Lcom/htc/app/ItemInfo;->getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v7

    .line 989
    .local v7, typeItem:Lcom/htc/app/ItemInfo;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v9, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v9, v8}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 992
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 979
    .end local v7           #typeItem:Lcom/htc/app/ItemInfo;
    :cond_0
    if-ne v2, v10, :cond_1

    .line 980
    const-string v4, "YESTERDAY"

    goto :goto_1

    .line 981
    :cond_1
    const/4 v8, 0x3

    if-ne v2, v8, :cond_2

    .line 982
    const-string v4, "ONE WEEK"

    goto :goto_1

    .line 983
    :cond_2
    const/4 v8, 0x4

    if-ne v2, v8, :cond_3

    .line 984
    const-string v4, "ONE MONTH"

    goto :goto_1

    .line 986
    :cond_3
    const-string v4, "OLDER"

    goto :goto_1

    .line 995
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;"
    .end local v2           #key:I
    .end local v4           #seperator:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/htc/app/ItemInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/app/ItemInfo;

    iput-object v8, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    .line 996
    invoke-virtual {p0, v10}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 1000
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #resultsList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList;>;>;"
    .end local v6           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_5
    return-void
.end method

.method public startScanFiles()V
    .locals 2

    .prologue
    .line 1131
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerListAdapter;->cancelScanFiles(J)V

    .line 1132
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 1133
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1134
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1135
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 1412
    :cond_0
    return-void
.end method

.method public updateItemInfoList(Ljava/util/LinkedList;I)V
    .locals 5
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, itemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 887
    :cond_0
    return-void

    .line 872
    :cond_1
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 873
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 874
    .local v0, Length:I
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 875
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    if-ge p2, v0, :cond_0

    .line 877
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v4

    .line 878
    :try_start_0
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 879
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    array-length v0, v3

    .line 881
    if-ge p2, v0, :cond_0

    .line 883
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;

    aput-object v2, v3, p2

    .line 884
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 879
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
