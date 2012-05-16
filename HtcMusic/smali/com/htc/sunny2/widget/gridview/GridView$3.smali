.class Lcom/htc/sunny2/widget/gridview/GridView$3;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;

.field final synthetic val$deleteCell2:Ljava/util/List;

.field final synthetic val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field final synthetic val$onScreenSize:I

.field final synthetic val$release1:Ljava/util/List;

.field final synthetic val$renderOrder:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;ILandroid/util/SparseArray;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3047
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$deleteCell2:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    iput p4, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$onScreenSize:I

    iput-object p5, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$renderOrder:Landroid/util/SparseArray;

    iput-object p6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f7fffff

    .line 3050
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$deleteCell2:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3051
    .local v0, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 3052
    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3053
    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3054
    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v8, v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 3055
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_0

    .line 3057
    .end local v0           #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$deleteCell2:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3059
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 3060
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/Texture;

    .line 3061
    .local v5, t:Lcom/htc/sunny2/Texture;
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_1

    .line 3063
    .end local v5           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3066
    :cond_2
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$onScreenSize:I

    if-lez v6, :cond_5

    .line 3067
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v2, v6, :cond_4

    .line 3068
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$renderOrder:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3069
    .local v4, order:Ljava/lang/Integer;
    if-nez v4, :cond_3

    .line 3067
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3071
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3072
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v6, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    goto :goto_3

    .line 3074
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #order:Ljava/lang/Integer;
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$renderOrder:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 3077
    .end local v2           #i:I
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v6, :cond_6

    .line 3078
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v6}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3080
    :cond_6
    return-void
.end method
