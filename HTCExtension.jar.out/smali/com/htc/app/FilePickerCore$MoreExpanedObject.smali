.class Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.super Ljava/lang/Object;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreExpanedObject"
.end annotation


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDataSourceType:I

.field private mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

.field private mFolderMoreExpanView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mFolderViewLayout:Landroid/view/ViewGroup;

.field private mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mNeedReLoad:Z

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;I)V
    .locals 2
    .parameter
    .parameter "filePickerFolderAdapter"
    .parameter "moreExpandableLayout"
    .parameter "dataSourceType"

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1564
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    .line 1673
    new-instance v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$1;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 1683
    new-instance v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 1712
    new-instance v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$3;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 1718
    new-instance v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$4;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 1725
    new-instance v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;-><init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 1614
    iput-object p2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1615
    iput-object p3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    .line 1616
    iput p4, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    .line 1617
    const v1, 0x20200ad

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 1619
    const v1, 0x20200ae

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1621
    .local v0, folderMoreExpanView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-virtual {v0, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 1622
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 1623
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    .line 1624
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 1625
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1627
    #getter for: Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerCore;->access$1800(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerCore;->access$1900(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1628
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 1630
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;ILcom/htc/app/FilePickerCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1557
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1557
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadFolders()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    return-object v0
.end method

.method private loadFolders()V
    .locals 4

    .prologue
    .line 1602
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 1603
    .local v0, dataSourceType:I
    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->getScanningPathByDataType(I)[Ljava/lang/String;

    move-result-object v2

    .line 1605
    .local v2, rootPath:[Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v3, :cond_0

    .line 1606
    const/4 v1, 0x1

    .line 1607
    .local v1, isFirstLevel:Z
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v3, v0, v2, v1}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(I[Ljava/lang/String;Z)V

    .line 1608
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    .line 1610
    .end local v1           #isFirstLevel:Z
    :cond_0
    return-void
.end method


# virtual methods
.method getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getDataSourceType()I
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    return v0
.end method

.method getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    return-object v0
.end method

.method getFolderViewLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getMoreExpandableHtcListView()Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method isFolderViewLayoutVisibled()Z
    .locals 2

    .prologue
    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1576
    :cond_0
    :goto_0
    return v0

    .line 1574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNeedReLoad()Z
    .locals 1

    .prologue
    .line 1584
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    return v0
.end method

.method setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mAccountId:Ljava/lang/String;

    .line 1638
    return-void
.end method

.method setDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 1645
    iput p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    .line 1646
    return-void
.end method

.method setFolderAdapter(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 3
    .parameter "folderAdapter"

    .prologue
    .line 1653
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    if-eqz v1, :cond_0

    .line 1654
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetInvalidated()V

    .line 1655
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    const v2, 0x20200ae

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1657
    .local v0, folderMoreExpanView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 1659
    if-eqz p1, :cond_1

    .line 1660
    invoke-virtual {p1}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    .line 1661
    :cond_1
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1663
    return-void
.end method

.method setFolderViewLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "folderViewLayout"

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderViewLayout:Landroid/view/ViewGroup;

    .line 1581
    return-void
.end method

.method setMoreExpandableHtcListView(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "moreExpandableHtcListView"

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderMoreExpanView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1671
    return-void
.end method

.method setNeedReLoad(Z)V
    .locals 0
    .parameter "needReLoad"

    .prologue
    .line 1598
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mNeedReLoad:Z

    .line 1599
    return-void
.end method

.method updatePathOfFolderViewHeader()V
    .locals 4

    .prologue
    .line 1588
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_0

    .line 1589
    iget v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mDataSourceType:I

    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->getItemTypeTextByDateSource(I)I

    move-result v0

    .line 1590
    .local v0, itemType:I
    const/16 v2, -0xa

    if-eq v0, v2, :cond_0

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$1700(Lcom/htc/app/FilePickerCore;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mHeaderOfFolderViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1595
    .end local v0           #itemType:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method
