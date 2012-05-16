.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.super Landroid/database/ContentObserver;
.source "MusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentContentObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

.field mIsProcessing:Z

.field private mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field mRequery:Ljava/lang/Runnable;

.field mResetFlag:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "handler"
    .parameter "activity"

    .prologue
    .line 805
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 767
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 784
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    .line 790
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequery:Ljava/lang/Runnable;

    .line 806
    iput-object p2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    .line 807
    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    return-object v0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 814
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "ParentContentObserver.onChange+"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-boolean v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    if-nez v1, :cond_0

    .line 817
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 818
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 819
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "ParentContentObserver.onChange-"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
