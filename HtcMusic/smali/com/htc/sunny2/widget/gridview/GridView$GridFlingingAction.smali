.class public Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridFlingingAction"
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridFlingingAction"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "szName"

    .prologue
    .line 3356
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 3357
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3358
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 3389
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3363
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->update()V

    .line 3364
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 3366
    .local v0, pos:I
    if-eqz v0, :cond_1

    .line 3368
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v1, :cond_0

    .line 3369
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 3382
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return v1

    .line 3372
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    neg-int v4, v0

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .line 3379
    :cond_1
    const-string v3, "GridFlingingAction"

    const-string v4, "[HTCAlbum][Gridview][GridFlingingAction]: SCROLL_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3382
    goto :goto_1
.end method
