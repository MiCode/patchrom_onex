.class Lcom/android/camera/rotate/RotateToast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "RotateToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/camera/rotate/RotateToast;


# direct methods
.method constructor <init>(Lcom/android/camera/rotate/RotateToast;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 345
    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 329
    new-instance v1, Lcom/android/camera/rotate/RotateToast$TN$1;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateToast$TN$1;-><init>(Lcom/android/camera/rotate/RotateToast$TN;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mShow:Ljava/lang/Runnable;

    .line 335
    new-instance v1, Lcom/android/camera/rotate/RotateToast$TN$2;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateToast$TN$2;-><init>(Lcom/android/camera/rotate/RotateToast$TN;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mHide:Ljava/lang/Runnable;

    .line 341
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 348
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 349
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 350
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 351
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 354
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 355
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Animation_Toast"

    const-string v3, "style"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 356
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 357
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    .line 465
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/rotate/RotateToast;->bShowing:Z
    invoke-static {v1, v2}, Lcom/android/camera/rotate/RotateToast;->access$102(Lcom/android/camera/rotate/RotateToast;Z)Z

    .line 467
    :cond_1
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "RotateToast"

    const-string v2, "Exception occurred while hiding toast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleShow()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 385
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-eq v2, v3, :cond_4

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateToast$TN;->handleHide()V

    .line 388
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    iput-object v3, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    .line 391
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManager;

    .line 393
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v1, v2, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    .line 394
    .local v1, gravity:I
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 395
    and-int/lit8 v2, v1, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 398
    :cond_0
    and-int/lit8 v2, v1, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    #getter for: Lcom/android/camera/rotate/RotateToast;->toast_orientation:I
    invoke-static {v2}, Lcom/android/camera/rotate/RotateToast;->access$000(Lcom/android/camera/rotate/RotateToast;)I

    move-result v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v3, v3, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    #getter for: Lcom/android/camera/rotate/RotateToast;->toast_orientation:I
    invoke-static {v2}, Lcom/android/camera/rotate/RotateToast;->access$000(Lcom/android/camera/rotate/RotateToast;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->isInverse_ScreenOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 406
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 407
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 408
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v2, v2, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v3, v3, Lcom/android/camera/rotate/RotateToast;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 440
    .end local v1           #gravity:I
    :cond_4
    :goto_2
    return-void

    .line 410
    .restart local v1       #gravity:I
    :cond_5
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 411
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 412
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 413
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget v3, v3, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 425
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "RotateToast"

    const-string v3, "Exception occurred while showing toast"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 433
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 435
    .restart local v0       #ex:Ljava/lang/Throwable;
    const-string v2, "RotateToast"

    const-string v3, "Exception occurred while showing toast"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v0, v0, Lcom/android/camera/rotate/RotateToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateToast$TN;->handleHide()V

    .line 378
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast$TN;->this$0:Lcom/android/camera/rotate/RotateToast;

    iget-object v0, v0, Lcom/android/camera/rotate/RotateToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method
