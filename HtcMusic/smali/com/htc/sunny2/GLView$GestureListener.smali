.class Lcom/htc/sunny2/GLView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/GLView;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onDoubleTap"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 411
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onDoubleTapEvent"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 419
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onDown"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 403
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v7

    const-string v1, "onFling"

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 388
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->mZoomGesture:Z
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$500(Lcom/htc/sunny2/GLView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/GLView$TouchListener;->onLongPressIHT(Landroid/view/MotionEvent;)V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onLongPress"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v7

    const-string v1, "onScroll"

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 379
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onShowPress"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    .line 396
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 424
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/GLView$TouchListener;->onSingleTapConfirmedIHT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v4

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onSingleTapConfirmed"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 352
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/GLView$TouchListener;->onSingleTapUpIHT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v4

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onSingleTapUp"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method
