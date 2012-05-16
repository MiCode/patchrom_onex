.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;
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
    .line 2606
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 14

    .prologue
    .line 2617
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v12, 0x1

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$202(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 2625
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v1

    .line 2626
    .local v1, firstChild:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v5

    .line 2630
    .local v5, lastChild:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_2

    const/4 v11, -0x1

    if-eq v5, v11, :cond_2

    .line 2634
    move v3, v1

    .local v3, i:I
    :goto_0
    if-gt v3, v5, :cond_1

    .line 2635
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2636
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2637
    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2638
    .local v10, tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 2639
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const v13, 0x7f7fffff

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2640
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2641
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 2634
    .end local v10           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2645
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v12, 0x0

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)V

    .line 2652
    .end local v3           #i:I
    :cond_2
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v6

    .line 2653
    .local v6, lastParent:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v5

    .line 2655
    const/4 v11, -0x1

    if-eq v5, v11, :cond_6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_6

    .line 2657
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 2658
    add-int/lit8 v3, v5, 0x1

    .restart local v3       #i:I
    :goto_1
    if-gt v3, v6, :cond_6

    .line 2659
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2660
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_3

    .line 2661
    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2662
    .restart local v10       #tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v9

    .line 2663
    .local v9, tempPos:Lcom/htc/sunny2/view/Vector3F;
    iget v11, v9, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v12, v9, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v13, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2664
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 2665
    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 2658
    .end local v9           #tempPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2670
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #i:I
    :cond_4
    add-int/lit8 v3, v5, 0x1

    .restart local v3       #i:I
    :goto_2
    if-gt v3, v6, :cond_6

    .line 2671
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2672
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_5

    .line 2673
    iget-object v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2674
    .restart local v10       #tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v9

    .line 2675
    .restart local v9       #tempPos:Lcom/htc/sunny2/view/Vector3F;
    iget v11, v9, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, v9, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v13, v9, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2676
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 2677
    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 2670
    .end local v9           #tempPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v10           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2684
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #i:I
    :cond_6
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v11, v12, :cond_7

    .line 2688
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 2690
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    iget-object v13, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v13, v13, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v12, v13

    iput v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 2698
    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v11, v12, :cond_8

    .line 2699
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1600(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2706
    :cond_8
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v11, v12, :cond_9

    .line 2707
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget-object v13, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2708
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v12, 0x0

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$802(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I

    .line 2714
    :cond_9
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    if-nez v11, :cond_d

    .line 2715
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1700(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    if-ne v11, v12, :cond_c

    .line 2716
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 2717
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onPrepareReadyIRT(I)V

    .line 2772
    :cond_a
    :goto_4
    return-void

    .line 2693
    :cond_b
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    goto/16 :goto_3

    .line 2721
    :cond_c
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doScrollClickedItemToUpper(I)V
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    goto :goto_4

    .line 2724
    :cond_d
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 2726
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-eqz v11, :cond_12

    .line 2730
    const/4 v8, 0x0

    .line 2731
    .local v8, removeCount:I
    const/4 v2, -0x1

    .line 2732
    .local v2, firstRemoveIdx:I
    const/4 v7, -0x1

    .line 2734
    .local v7, lastRemoveIdx:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v3, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .restart local v3       #i:I
    :goto_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v11, :cond_10

    .line 2735
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2736
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_f

    .line 2737
    add-int/lit8 v8, v8, 0x1

    .line 2738
    const/4 v11, -0x1

    if-ne v2, v11, :cond_e

    .line 2739
    move v2, v3

    .line 2741
    :cond_e
    move v7, v3

    .line 2734
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2745
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_10
    if-lez v8, :cond_12

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ge v7, v11, :cond_12

    .line 2746
    add-int/lit8 v3, v7, 0x1

    const/4 v4, 0x0

    .local v4, j:I
    :goto_6
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v11, :cond_11

    .line 2747
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2748
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    add-int v12, v2, v4

    invoke-virtual {v11, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2746
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2752
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_11
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    sub-int/2addr v12, v8

    iput v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 2753
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    sub-int/2addr v12, v8

    iput v12, v11, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 2754
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1900(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    iget-object v12, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v12

    if-le v11, v12, :cond_12

    .line 2755
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-static {v11, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2020(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I

    .line 2762
    .end local v2           #firstRemoveIdx:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v7           #lastRemoveIdx:I
    .end local v8           #removeCount:I
    :cond_12
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v12, 0x1

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2102(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 2763
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v12, 0x2

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fitBottomSpace(I)V
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    goto/16 :goto_4

    .line 2765
    :cond_13
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 2766
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v12, 0x0

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v11, v12}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 2767
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 2768
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    goto/16 :goto_4
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 2612
    return-void
.end method
