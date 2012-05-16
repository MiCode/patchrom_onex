.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;
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
    .line 3455
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 3458
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 3459
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doScrollExpandedParentItemToUpper()V
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 3467
    :cond_0
    :goto_0
    return-void

    .line 3463
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    goto :goto_0
.end method
