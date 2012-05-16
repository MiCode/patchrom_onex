.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
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
    .line 2510
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    const v9, 0x7f7fffff

    .line 2523
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v3

    .line 2524
    .local v3, lastParent:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v2

    .line 2526
    .local v2, lastChild:I
    if-eq v3, v7, :cond_0

    if-ne v2, v7, :cond_1

    .line 2572
    :cond_0
    return-void

    .line 2534
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2535
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 2536
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2537
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2538
    .local v5, tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 2539
    .local v4, tempPos:Lcom/htc/sunny2/view/Vector3F;
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2540
    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2542
    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 2543
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2544
    invoke-virtual {v5, v9, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2545
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2546
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2547
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v6, v1, :cond_2

    .line 2548
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    add-int/lit8 v7, v1, -0x1

    iput v7, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2535
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2554
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #i:I
    .end local v4           #tempPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v5           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .restart local v1       #i:I
    :goto_1
    if-gt v1, v3, :cond_0

    .line 2555
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2556
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2557
    .restart local v5       #tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 2558
    .restart local v4       #tempPos:Lcom/htc/sunny2/view/Vector3F;
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v8, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2559
    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2561
    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_4

    .line 2562
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2563
    invoke-virtual {v5, v9, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2564
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2565
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2566
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v6, v1, :cond_4

    .line 2567
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    add-int/lit8 v7, v1, -0x1

    iput v7, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2554
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 2516
    return-void
.end method
