.class Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTEPreparation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 2483
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 2484
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2485
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 2501
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2489
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2491
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v0, v3, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 2494
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$RTEPreparation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    .line 2498
    :cond_1
    return-void
.end method
