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

.field final synthetic val$release1:Ljava/util/List;

.field final synthetic val$renderOrder:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3067
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$deleteCell2:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$renderOrder:Landroid/util/SparseArray;

    iput-object p5, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f7fffff

    .line 3070
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$deleteCell2:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3071
    .local v0, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 3072
    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3073
    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 3074
    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v9, v9, v8}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 3075
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_0

    .line 3077
    .end local v0           #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$deleteCell2:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3079
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 3080
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/Texture;

    .line 3081
    .local v6, t:Lcom/htc/sunny2/Texture;
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_1

    .line 3083
    .end local v6           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$release1:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3086
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3087
    .local v4, onScreenSize:I
    if-lez v4, :cond_6

    .line 3088
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v2, v7, :cond_5

    .line 3089
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$renderOrder:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3090
    .local v5, order:Ljava/lang/Integer;
    if-nez v5, :cond_4

    .line 3088
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3092
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3093
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v1, :cond_3

    .line 3094
    iget-object v7, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    goto :goto_3

    .line 3096
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #order:Ljava/lang/Integer;
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$renderOrder:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 3099
    .end local v2           #i:I
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v7, :cond_7

    .line 3100
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$listener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v7}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3102
    :cond_7
    return-void
.end method
