.class Lcom/htc/music/carmode/CarNowPlayingActivity$4;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "me"

    .prologue
    .line 366
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gesture main layout onTouch MotionEvent X = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gesture MotionEvent Y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gesture MotionEvent Action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 374
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    .line 375
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstTouchTime:J

    .line 453
    :goto_0
    const/4 v6, 0x1

    .line 457
    :goto_1
    return v6

    .line 376
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 377
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    if-nez v6, :cond_1

    .line 378
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action up second"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 380
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 381
    .local v1, actionUpMsg:Landroid/os/Message;
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 382
    .local v0, actionUpMe:Landroid/view/MotionEvent;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 386
    .end local v0           #actionUpMe:Landroid/view/MotionEvent;
    .end local v1           #actionUpMsg:Landroid/os/Message;
    :cond_1
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 387
    .local v2, diffX:F
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-boolean v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    if-eqz v6, :cond_3

    .line 388
    float-to-double v6, v2

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D
    invoke-static {v8}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$100(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 389
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture range < GestureAlbumWidth. Consider as click."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 391
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 392
    .restart local v1       #actionUpMsg:Landroid/os/Message;
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 393
    .restart local v0       #actionUpMe:Landroid/view/MotionEvent;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    .end local v0           #actionUpMe:Landroid/view/MotionEvent;
    .end local v1           #actionUpMsg:Landroid/os/Message;
    :goto_2
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 397
    :cond_2
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action up second Is Fling"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 401
    :cond_3
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action up second Is No Fling"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 403
    .restart local v1       #actionUpMsg:Landroid/os/Message;
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 404
    .restart local v0       #actionUpMe:Landroid/view/MotionEvent;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 412
    .end local v0           #actionUpMe:Landroid/view/MotionEvent;
    .end local v1           #actionUpMsg:Landroid/os/Message;
    .end local v2           #diffX:F
    :cond_4
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    if-nez v6, :cond_8

    .line 413
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action xx second"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondTouchTime:J

    .line 415
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-wide v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondTouchTime:J

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-wide v8, v8, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstTouchTime:J

    sub-long v4, v6, v8

    .line 416
    .local v4, timeDiff:J
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 417
    .restart local v2       #diffX:F
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 418
    .local v3, diffY:F
    long-to-float v6, v4

    const/high16 v7, 0x42c8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    .line 419
    float-to-double v6, v2

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D
    invoke-static {v8}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$900(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    float-to-double v6, v3

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D
    invoke-static {v8}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 420
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action xx discard it "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_5
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action xx second fling"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 424
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 425
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput-object p2, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    .line 426
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    goto/16 :goto_0

    .line 429
    :cond_6
    float-to-double v6, v2

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D
    invoke-static {v8}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$900(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7

    float-to-double v6, v3

    iget-object v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D
    invoke-static {v8}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7

    .line 430
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 431
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 432
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput-object p2, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    .line 433
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    goto/16 :goto_0

    .line 435
    :cond_7
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action xx second fling"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v7, v7, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 437
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 438
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput-object p2, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    .line 439
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    goto/16 :goto_0

    .line 443
    .end local v2           #diffX:F
    .end local v3           #diffY:F
    .end local v4           #timeDiff:J
    :cond_8
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-boolean v6, v6, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    if-eqz v6, :cond_9

    .line 444
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action xx third fling"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 447
    :cond_9
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "Gesture action xx third not fling"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 457
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_1
.end method
