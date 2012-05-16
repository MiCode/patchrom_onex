.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3471
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3473
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v0

    if-lez v0, :cond_2

    .line 3474
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3476
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3477
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    .line 3492
    :cond_0
    :goto_0
    return-void

    .line 3481
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 3482
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1402(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I

    .line 3483
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    goto :goto_0

    .line 3488
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    goto :goto_0
.end method
