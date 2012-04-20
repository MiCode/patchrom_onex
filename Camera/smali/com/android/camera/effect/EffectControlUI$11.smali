.class Lcom/android/camera/effect/EffectControlUI$11;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "mv"

    .prologue
    const/4 v7, 0x0

    .line 293
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 294
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$1500(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/CameraSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/CameraSettings;->isTapCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$1600(Lcom/android/camera/effect/EffectControlUI;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EffectControlUI: hasTapCapture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$1700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectControlCircle;->isCenterPointVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$1700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 299
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .local v1, iX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 300
    .local v2, iY:I
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v1

    invoke-virtual {p2, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 303
    .end local v1           #iX:I
    .end local v2           #iY:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 306
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$1700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 307
    .local v3, point:Landroid/graphics/Point;
    sget-object v5, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 308
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 311
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-nez v5, :cond_3

    .line 313
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableTouchFocus()V

    .line 314
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    .line 315
    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 316
    .local v4, result:Z
    invoke-virtual {v0, v7}, Lcom/android/camera/HTCCamera;->enableTouchFocus(Z)V

    .line 320
    .end local v3           #point:Landroid/graphics/Point;
    .end local v4           #result:Z
    :goto_0
    return v4

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method
