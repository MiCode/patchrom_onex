.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->onCollapseChildViewEndIRT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 773
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 774
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 775
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #calls: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->updateGridView()V
    invoke-static {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$200(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    .line 776
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 777
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    return-void
.end method
