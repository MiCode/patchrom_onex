.class Lcom/htc/app/FilePickerFolderAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "FilePickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;,
        Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;,
        Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;,
        Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_FILE_CHECKED:I = 0x0

.field private static final ITEM_TYPE_FILE_UNCHECKED:I = 0x1

.field private static final ITEM_TYPE_FOLDER_CHECKED:I = 0x2

.field private static final ITEM_TYPE_FOLDER_UNCHECKED:I = 0x3

.field private static isScanning:Z

.field private static mFilePickerLayout_FolderView_FileItemView:I

.field private static mFilePickerLayout_FolderView_FolderItemView:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final debugLOG:Z

.field private fileName_DefaultColor:Landroid/content/res/ColorStateList;

.field private firstLevelFileCount:I

.field private isCanSort:Z

.field private final localLOGV:Z

.field private mAccountId:Ljava/lang/String;

.field private mChangeRootItemLists:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedFolderFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentChildrenList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

.field private mCurretExpandItem:Lcom/htc/app/FolderItemInfo;

.field private mDataSourceType:I

.field private mFileDate:Ljava/sql/Date;

.field private mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

.field private mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

.field private mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFirstLevel:Z

.field private mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mMoreListViewLayout:Landroid/view/View;

.field private mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mScanningPath:[Ljava/lang/String;

.field private mSelectionType:I

.field private mSortOrder:I

.field private mSortType:I

.field private scanThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x209002d

    sput v0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FolderItemView:I

    .line 50
    const v0, 0x209002c

    sput v0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FileItemView:I

    .line 829
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/FilePickerFolderAdapter;->isScanning:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->DEBUG:Z

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

    .line 51
    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->localLOGV:Z

    .line 52
    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->debugLOG:Z

    .line 54
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    .line 63
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    .line 64
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 65
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurretExpandItem:Lcom/htc/app/FolderItemInfo;

    .line 66
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    .line 67
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    .line 69
    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    .line 135
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListViewLayout:Landroid/view/View;

    .line 258
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->fileName_DefaultColor:Landroid/content/res/ColorStateList;

    .line 291
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    .line 496
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$2;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 830
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    .line 132
    invoke-direct {p0, p1, v3, v4}, Lcom/htc/app/FilePickerFolderAdapter;->init(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/htc/app/FilePickerUtil;)V
    .locals 3
    .parameter "context"
    .parameter "filter"
    .parameter "selectionType"
    .parameter "contentView"
    .parameter "filePickerUtil"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->DEBUG:Z

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

    .line 51
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->localLOGV:Z

    .line 52
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->debugLOG:Z

    .line 54
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 65
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurretExpandItem:Lcom/htc/app/FolderItemInfo;

    .line 66
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    .line 67
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    .line 69
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    .line 135
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListViewLayout:Landroid/view/View;

    .line 258
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->fileName_DefaultColor:Landroid/content/res/ColorStateList;

    .line 291
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    .line 496
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$2;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 830
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerFolderAdapter;->init(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 141
    iput-object p5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 142
    iput-object p4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListViewLayout:Landroid/view/View;

    .line 143
    const v0, 0x20200ae

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 144
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FolderItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Lcom/htc/app/FolderItemInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    return-object p1
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-boolean p0, Lcom/htc/app/FilePickerFolderAdapter;->isScanning:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/app/FilePickerFolderAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    return p1
.end method

.method static synthetic access$1702(Lcom/htc/app/FilePickerFolderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerFolderAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->checkedChildItems(Lcom/htc/app/FolderItemInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/app/FilePickerFolderAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->isCheckedParentItems(Lcom/htc/app/FolderItemInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/app/FilePickerFolderAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->showRefreshAnimationOnViewHeader(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->checkedParentItems(Lcom/htc/app/FolderItemInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->uncheckedChildItems(Lcom/htc/app/FolderItemInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->uncheckedParentItems(Lcom/htc/app/FolderItemInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortType:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I

    return v0
.end method

.method private cancelScanFiles(J)V
    .locals 4
    .parameter "waitSec"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->stopScan()V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 186
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V

    .line 187
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->clear()V

    .line 199
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    .line 200
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 202
    :cond_2
    return-void

    .line 190
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

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

    goto :goto_0
.end method

.method private checkedChildItems(Lcom/htc/app/FolderItemInfo;)V
    .locals 4
    .parameter "thisItem"

    .prologue
    .line 570
    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 572
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    if-eqz v1, :cond_1

    .line 573
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 574
    .local v0, childItem:Lcom/htc/app/FolderItemInfo;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 575
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->checkedChildItems(Lcom/htc/app/FolderItemInfo;)V

    goto :goto_0

    .line 581
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private checkedParentItems(Lcom/htc/app/FolderItemInfo;)V
    .locals 8
    .parameter "thisItem"

    .prologue
    const/4 v6, 0x1

    .line 628
    if-eqz p1, :cond_5

    .line 629
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/app/FolderItemInfo;

    .line 630
    .local v5, parentItemInfo:Lcom/htc/app/FolderItemInfo;
    if-eqz v5, :cond_5

    .line 631
    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 632
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 633
    const/4 v3, 0x1

    .line 634
    .local v3, isAllChecked:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 635
    .local v0, childItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v4, v6

    .line 636
    .local v4, isChecked:Z
    :goto_1
    if-eq v4, v6, :cond_0

    .line 637
    const/4 v3, 0x0

    goto :goto_0

    .line 635
    .end local v4           #isChecked:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 640
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    :cond_3
    if-eqz v3, :cond_5

    .line 641
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 644
    .restart local v0       #childItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 647
    invoke-virtual {v0, v6}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    goto :goto_2

    .line 649
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/htc/app/FilePickerFolderAdapter;->addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 650
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerFolderAdapter;->checkedParentItems(Lcom/htc/app/FolderItemInfo;)V

    .line 655
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isAllChecked:Z
    .end local v5           #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_5
    return-void
.end method

.method private declared-synchronized getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    .local p1, resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    if-eqz v0, :cond_0

    .line 843
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 844
    :try_start_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 845
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :cond_0
    monitor-exit p0

    return-object p1

    .line 845
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 841
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "filter"
    .parameter "selectionType"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    .line 113
    iput p3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    .line 114
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    .line 116
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    invoke-direct {v0, p0, p2}, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;-><init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    .line 117
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    .line 118
    return-void
.end method

.method private isCheckedParentItems(Lcom/htc/app/FolderItemInfo;)Z
    .locals 2
    .parameter "thisItem"

    .prologue
    .line 973
    if-eqz p1, :cond_1

    .line 974
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 975
    .local v0, parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 977
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const/4 v1, 0x1

    .line 983
    .end local v0           #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :goto_1
    return v1

    .line 980
    .restart local v0       #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .end local v0           #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .restart local v0       #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    goto :goto_0

    .line 983
    .end local v0           #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showRefreshAnimationOnViewHeader(Z)V
    .locals 13
    .parameter "visabled"

    .prologue
    const/4 v12, 0x0

    .line 149
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v7, rocketImage:Landroid/widget/ImageView;
    const v8, 0x20a0004

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 151
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    .line 153
    .local v6, rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListViewLayout:Landroid/view/View;

    const v9, 0x20200ad

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 155
    .local v0, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    invoke-virtual {v0, v12, v6}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {v0, v12, v6}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20400a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, loadingStr:Ljava/lang/String;
    invoke-virtual {v0, v12, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 179
    .end local v2           #loadingStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 163
    :cond_0
    const-wide/16 v3, -0x1

    .line 164
    .local v3, refreshTime:J
    iget v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I

    invoke-static {v8}, Lcom/htc/app/FilePickerUtil;->isCloudDataSourceType(I)Z

    move-result v1

    .line 165
    .local v1, isCloudDataSourceType:Z
    if-eqz v1, :cond_2

    .line 166
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mAccountId:Ljava/lang/String;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/app/FilePickerCloudHelper;->getCloudFileListTime(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 168
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 175
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8, v3, v4}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, refreshTimeStr:Ljava/lang/String;
    invoke-virtual {v0, v12, v5}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 172
    .end local v5           #refreshTimeStr:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_1
.end method

.method private uncheckedChildItems(Lcom/htc/app/FolderItemInfo;)V
    .locals 4
    .parameter "thisItem"

    .prologue
    .line 584
    if-eqz p1, :cond_1

    .line 585
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 586
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    if-eqz v1, :cond_1

    .line 587
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 588
    .local v0, childItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 589
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 590
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->uncheckedChildItems(Lcom/htc/app/FolderItemInfo;)V

    goto :goto_0

    .line 596
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private uncheckedParentItems(Lcom/htc/app/FolderItemInfo;)V
    .locals 8
    .parameter "thisItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 599
    if-eqz p1, :cond_6

    .line 600
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/app/FolderItemInfo;

    .line 601
    .local v4, parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :goto_0
    if-eqz v4, :cond_6

    .line 603
    invoke-virtual {p0, v4}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v6

    .line 604
    .local v3, isChecked:Z
    :goto_1
    if-ne v3, v6, :cond_5

    .line 605
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 607
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 608
    .local v0, childItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 609
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 610
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    goto :goto_2

    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isChecked:Z
    :cond_2
    move v3, v5

    .line 603
    goto :goto_1

    .line 613
    .restart local v0       #childItem:Lcom/htc/app/FolderItemInfo;
    .restart local v1       #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isChecked:Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 614
    invoke-virtual {v0, v5}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    goto :goto_2

    .line 617
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 618
    invoke-virtual {v4, v5}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 621
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    move-object p1, v4

    .line 622
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .end local v4           #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    check-cast v4, Lcom/htc/app/FolderItemInfo;

    .line 623
    .restart local v4       #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    goto :goto_0

    .line 625
    .end local v3           #isChecked:Z
    .end local v4           #parentItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_6
    return-void
.end method


# virtual methods
.method addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, result:Z
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    const/4 v0, 0x1

    .line 787
    :cond_0
    return v0
.end method

.method close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 221
    const-wide/16 v4, 0x1388

    invoke-direct {p0, v4, v5}, Lcom/htc/app/FilePickerFolderAdapter;->cancelScanFiles(J)V

    .line 222
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 223
    .local v1, emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v5

    .line 224
    :try_start_0
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v4, :cond_0

    .line 225
    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    .line 226
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v4, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 228
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->close()V

    .line 231
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FolderItemInfo;

    .line 235
    .local v2, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {v2}, Lcom/htc/app/FolderItemInfo;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    if-eqz v0, :cond_2

    .line 238
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 228
    .end local v0           #children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    .end local v2           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 242
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 243
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    .line 245
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 246
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 247
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    .line 249
    :cond_5
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    .line 250
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    .line 251
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    .line 252
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 253
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 254
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 255
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListViewLayout:Landroid/view/View;

    .line 256
    return-void
.end method

.method doScanTask(I[Ljava/lang/String;Z)V
    .locals 3
    .parameter "dataSourceType"
    .parameter "strPath"
    .parameter "isFirstLevel"

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStopStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iput-object p2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:[Ljava/lang/String;

    .line 297
    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I

    .line 298
    iput-boolean p3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z

    .line 300
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter;->startScanFiles()V

    .line 301
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->showRefreshAnimationOnViewHeader(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method existCheckedList(Lcom/htc/app/FolderItemInfo;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 760
    const/4 v3, 0x0

    .line 761
    .local v3, found:Z
    if-eqz p1, :cond_1

    .line 762
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 763
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 765
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 766
    .local v2, filePaths:[Ljava/lang/Object;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .local v6, object:Ljava/lang/Object;
    move-object v1, v6

    .line 767
    check-cast v1, Ljava/lang/String;

    .line 768
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 769
    const/4 v3, 0x1

    .line 766
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 776
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #filePaths:[Ljava/lang/Object;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #object:Ljava/lang/Object;
    .end local v7           #path:Ljava/lang/String;
    :cond_1
    return v3
.end method

.method getCheckedItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v0, checkedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    .line 811
    .local v1, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    .end local v1           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    :cond_0
    return-object v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 320
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v8

    .line 322
    .local v8, position:I
    invoke-virtual {p0, v8}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/app/FolderItemInfo;

    .line 324
    .local v6, item:Lcom/htc/app/FolderItemInfo;
    if-nez p4, :cond_0

    .line 325
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FileItemView:I

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 328
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 329
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 330
    new-instance v9, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    :goto_0
    const v9, 0x20200b6

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 339
    .local v4, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    const v9, 0x20200b5

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 342
    .local v1, fileItemIcon:Lcom/htc/widget/HtcListItemColorIcon;
    const v9, 0x20200b3

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    .line 344
    .local v3, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    const v9, 0x20200b3

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Lcom/htc/widget/HtcCheckBox;->setTag(ILjava/lang/Object;)V

    .line 346
    invoke-virtual {v6}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 348
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 349
    invoke-virtual {v6}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 350
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 351
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 352
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 377
    :goto_1
    return-object p4

    .line 333
    .end local v1           #fileItemIcon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v3           #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v4           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    new-instance v9, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 354
    .restart local v1       #fileItemIcon:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v3       #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    .restart local v4       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 355
    invoke-virtual {v6}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, fname:Ljava/lang/String;
    const-string v9, ".dcf"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 357
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(DRM) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    :cond_3
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 360
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9, v2}, Lcom/htc/app/FilePickerUtil;->getFileTypeImage(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 361
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v6}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/sql/Date;->setTime(J)V

    .line 362
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v9, v10}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 363
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 365
    invoke-virtual {p0, v6}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    const/4 v5, 0x1

    .line 366
    .local v5, isChecked:Z
    :goto_2
    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    if-nez v9, :cond_7

    .line 367
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 374
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 365
    .end local v5           #isChecked:Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 368
    .restart local v5       #isChecked:Z
    :cond_7
    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 369
    invoke-virtual {v6, v3}, Lcom/htc/app/FolderItemInfo;->setCheckBox(Lcom/htc/widget/HtcCheckBox;)V

    .line 370
    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 371
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 372
    if-nez v5, :cond_8

    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerFolderAdapter;->isCheckedParentItems(Lcom/htc/app/FolderItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 7
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 269
    move-object v4, p2

    check-cast v4, Lcom/htc/app/FolderItemInfo;

    .line 270
    .local v4, this_item:Lcom/htc/app/FolderItemInfo;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 271
    .local v0, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v4, v5}, Lcom/htc/app/FolderItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    .line 273
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    .line 285
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iput-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    .line 276
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, dirPath:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/app/FolderItemInfo;->getItemTextPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 280
    :cond_1
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getItemDataSourceType()I

    move-result v1

    .line 281
    .local v1, dataSourceType:I
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 282
    .local v3, path:[Ljava/lang/String;
    aput-object v2, v3, v6

    .line 283
    invoke-virtual {p0, v1, v3, v6}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(I[Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getFilePickerCloudHelper()Lcom/htc/app/FilePickerCloudHelper;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method getFirstLevelFileCount()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/app/FolderItemInfo;

    .line 391
    .local v7, item:Lcom/htc/app/FolderItemInfo;
    if-nez p3, :cond_0

    .line 392
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FolderItemView:I

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 395
    const v9, 0x20200b5

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 397
    .local v2, fileItemIcon:Lcom/htc/widget/HtcListItemColorIcon;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 398
    sget v9, Lcom/htc/app/FilePickerUtil;->drawableResId_Folder_Icon:I

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 400
    .end local v2           #fileItemIcon:Lcom/htc/widget/HtcListItemColorIcon;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 401
    .local v8, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 402
    new-instance v9, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    :goto_0
    const v9, 0x20200b6

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 411
    .local v4, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    const v9, 0x20200b3

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    .line 412
    .local v3, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    const v9, 0x20200b3

    move-object/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Lcom/htc/widget/HtcCheckBox;->setTag(ILjava/lang/Object;)V

    .line 414
    const v9, 0x20200b4

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcRadioButton;

    .line 416
    .local v5, htcRadioButton:Lcom/htc/widget/HtcRadioButton;
    invoke-virtual {p0, v7}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v7}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    const/4 v6, 0x1

    .line 417
    .local v6, isChecked:Z
    :goto_1
    invoke-virtual {v7}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 418
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v7}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/sql/Date;->setTime(J)V

    .line 419
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v9, v10}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 421
    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    if-nez v9, :cond_5

    .line 422
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 423
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/app/FolderItemInfo;->setCheckBox(Lcom/htc/widget/HtcCheckBox;)V

    .line 424
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 425
    invoke-virtual {v7, v5}, Lcom/htc/app/FolderItemInfo;->setRadioButton(Lcom/htc/widget/HtcRadioButton;)V

    .line 426
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 427
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 428
    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 429
    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcRadioButton;->setTag(Ljava/lang/Object;)V

    .line 430
    new-instance v9, Lcom/htc/app/FilePickerFolderAdapter$1;

    invoke-direct {v9, p0}, Lcom/htc/app/FilePickerFolderAdapter$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    :cond_2
    :goto_2
    return-object p3

    .line 405
    .end local v3           #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v4           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    .end local v5           #htcRadioButton:Lcom/htc/widget/HtcRadioButton;
    .end local v6           #isChecked:Z
    :cond_3
    new-instance v9, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 416
    .restart local v3       #htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    .restart local v4       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v5       #htcRadioButton:Lcom/htc/widget/HtcRadioButton;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 461
    .restart local v6       #isChecked:Z
    :cond_5
    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 462
    invoke-virtual {v7}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v1, 0x1

    .line 464
    .local v1, enableSelectionUI:Z
    :goto_3
    if-eqz v1, :cond_9

    .line 465
    invoke-virtual {v7, v3}, Lcom/htc/app/FolderItemInfo;->setCheckBox(Lcom/htc/widget/HtcCheckBox;)V

    .line 466
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 467
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 468
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 469
    if-nez v6, :cond_6

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerFolderAdapter;->isCheckedParentItems(Lcom/htc/app/FolderItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_6
    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 470
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 462
    .end local v1           #enableSelectionUI:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 469
    .restart local v1       #enableSelectionUI:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 472
    :cond_9
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 473
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/app/FolderItemInfo;->setRadioButton(Lcom/htc/widget/HtcRadioButton;)V

    goto :goto_2
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 680
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const/4 v1, 0x2

    .line 692
    :goto_0
    return v1

    .line 685
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    const/4 v1, 0x0

    goto :goto_0

    .line 692
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getListItemLists()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method getSelectFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSelectItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x4

    return v0
.end method

.method final isCanSort()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 994
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 995
    .local v0, item:Lcom/htc/app/FolderItemInfo;
    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v1

    .line 997
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1000
    const/4 v1, 0x1

    goto :goto_0
.end method

.method listAllChecked()V
    .locals 2

    .prologue
    .line 480
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 489
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method performActionModeFinish()V
    .locals 2

    .prologue
    .line 1536
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    if-eqz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 1538
    .local v0, actionMode:Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 1539
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1542
    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_0
    return-void
.end method

.method removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, result:Z
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 794
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 795
    const/4 v0, 0x1

    .line 797
    :cond_0
    return v0
.end method

.method resetAllChecked()V
    .locals 3

    .prologue
    .line 818
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 819
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 825
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 827
    :cond_2
    return-void
.end method

.method public setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V
    .locals 0
    .parameter "filePickerCloudHelper"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 99
    return-void
.end method

.method setScanThreadMinPriority(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 122
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method setSortBy(I)V
    .locals 0
    .parameter "sortby"

    .prologue
    .line 969
    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortType:I

    .line 970
    return-void
.end method

.method setSortOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 965
    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I

    .line 966
    return-void
.end method

.method sort()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 852
    const/4 v3, 0x0

    .line 853
    .local v3, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v8

    .line 854
    :try_start_0
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    move-object v3, v0

    .line 855
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    new-instance v6, Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 860
    .local v6, sortedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    if-nez v3, :cond_1

    .line 861
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 862
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v8

    .line 863
    :try_start_1
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    .line 864
    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;

    .line 865
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v7, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 866
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 855
    .end local v6           #sortedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 866
    .restart local v6       #sortedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 875
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v3, v7}, Lcom/htc/app/FolderItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 876
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v8

    .line 877
    :try_start_4
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v5

    .line 878
    .local v5, position:I
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v7, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    .line 879
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v7, v6}, Lcom/htc/app/FolderItemInfo;->setChildren(Ljava/util/List;)V

    .line 880
    iget v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    if-ne v7, v10, :cond_2

    .line 881
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v7}, Lcom/htc/app/FolderItemInfo;->setChildrenChecked()V

    .line 882
    :cond_2
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v7, v9, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 883
    monitor-exit v8

    goto :goto_0

    .end local v5           #position:I
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 885
    :cond_3
    invoke-virtual {v3}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, dirPath:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 887
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/app/FolderItemInfo;->getItemTextPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 889
    :cond_4
    invoke-virtual {v3}, Lcom/htc/app/FolderItemInfo;->getItemDataSourceType()I

    move-result v1

    .line 890
    .local v1, dataSourceType:I
    new-array v4, v10, [Ljava/lang/String;

    .line 891
    .local v4, path:[Ljava/lang/String;
    aput-object v2, v4, v9

    .line 892
    invoke-virtual {p0, v1, v4, v9}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(I[Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startScanFiles()V
    .locals 2

    .prologue
    .line 214
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->cancelScanFiles(J)V

    .line 215
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    .line 216
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 217
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    return-void
.end method
