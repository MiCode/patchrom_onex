.class Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Invalidate"
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "NotifyDataInvalidate"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;)V
    .locals 1
    .parameter
    .parameter "render"

    .prologue
    .line 2618
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 2619
    const-string v0, "NotifyDataInvalidate"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    .line 2620
    return-void
.end method

.method private draw(I)V
    .locals 3
    .parameter "drawIdx"

    .prologue
    .line 2622
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2623
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2628
    :goto_0
    return-void

    .line 2625
    :cond_0
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 2626
    .local v1, viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 2627
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    goto :goto_0
.end method


# virtual methods
.method public onDoActionIRT(IJ)Z
    .locals 10
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2630
    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 2631
    .local v4, isEmpty:Z
    if-eqz v4, :cond_0

    .line 2632
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 2666
    :goto_0
    return v8

    .line 2636
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    .local v2, draws:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 2639
    const/4 v1, 0x0

    .line 2640
    .local v1, drawAll:Z
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2641
    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 2643
    .local v5, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iget v6, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_3

    .line 2644
    const/4 v1, 0x1

    .line 2645
    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2654
    .end local v5           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :cond_2
    if-ne v8, v1, :cond_4

    .line 2655
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, draw:I
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    if-ge v0, v6, :cond_5

    .line 2656
    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->draw(I)V

    .line 2655
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2649
    .end local v0           #draw:I
    .restart local v5       #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v7, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    if-gt v6, v7, :cond_1

    iget v6, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v6, v7, :cond_1

    .line 2650
    iget v6, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2660
    .end local v5           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2661
    .local v0, draw:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->draw(I)V

    goto :goto_3

    .line 2665
    .end local v0           #draw:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v8, v6, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto :goto_0
.end method
