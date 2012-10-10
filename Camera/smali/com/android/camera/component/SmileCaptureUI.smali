.class final Lcom/android/camera/component/SmileCaptureUI;
.super Lcom/android/camera/component/UIComponent;
.source "SmileCaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SmileCaptureUI$11;
    }
.end annotation


# static fields
.field static final MSG_SMILE_CAPTURE:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Smile-Capture UI"


# instance fields
.field private m_Controller:Lcom/android/camera/component/SmileCaptureController;

.field private m_Toast:Landroid/widget/LinearLayout;

.field private m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ToastTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 51
    const-string v0, "Smile-Capture UI"

    const/4 v1, 0x1

    const v2, 0x7f08004b

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmileCaptureUI;->autoInflateView(Z)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SmileCaptureUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->updateSmileCaptureState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmileCaptureUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/component/SmileCaptureUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/SmileCaptureUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmileCaptureUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/component/SmileCaptureUI;->showToast(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/SmileCaptureUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method private isSmileCaptureEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    .line 203
    .local v1, settings:Lcom/android/camera/CameraSettings;
    iget-object v2, v1, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v2, v4, :cond_1

    iget-object v2, v1, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 214
    :goto_0
    return v2

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v2, v4, :cond_2

    move v2, v3

    .line 208
    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 212
    .local v0, scene:Lcom/android/camera/effect/EffectBase;
    instance-of v2, v0, Lcom/android/camera/effect/PanoramaScene;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/android/camera/effect/SmartShotScene;

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    .line 213
    goto :goto_0

    .line 214
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Smile-Capture Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/SmileCaptureController;

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    .line 225
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmileCaptureUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 228
    goto :goto_0
.end method

.method private showToast(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 241
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 p1, 0x0

    .line 245
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 248
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Toast:Landroid/widget/LinearLayout;

    .line 249
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Toast:Landroid/widget/LinearLayout;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastTextView:Landroid/widget/TextView;

    .line 253
    :cond_2
    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/SmileCaptureUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 256
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/camera/component/SmileCaptureUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/SmileCaptureUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private smileCapture()V
    .locals 4

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Smile-capture is not enabled"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 276
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Activity is paused or idle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Cannot take picture due to self-timer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_4
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smileCapture() - Current camera mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Cannot take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSmileCaptureState()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v7

    .line 306
    .local v7, isEnabled:Z
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    const/16 v2, 0x2712

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/SmileCaptureUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 312
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/camera/component/SmileCaptureUI;->showToast(Z)V

    .line 313
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 10
    .parameter "rotation"

    .prologue
    const v9, 0x7f0b0059

    const v8, 0x7f0b0058

    const/16 v7, 0xc

    const/16 v6, 0xa

    const/4 v5, -0x2

    .line 321
    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Toast:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v3, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->effectControlState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 326
    .local v0, hasEffectControls:Z
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 327
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_4

    .line 329
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    invoke-virtual {p0, v8}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 332
    const v3, 0x7f0b005b

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 353
    :goto_2
    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 354
    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 357
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 359
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lcom/android/camera/component/SmileCaptureUI$11;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    if-nez v0, :cond_6

    .line 363
    const v3, 0x7f0b005d

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v2

    .line 366
    .local v2, maxWidth:I
    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 386
    :goto_4
    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_ToastTextView:Landroid/widget/TextView;

    const v4, 0x7f0b018b

    invoke-virtual {p0, v4}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v4

    sub-int v4, v2, v4

    const v5, 0x7f0b0060

    invoke-virtual {p0, v5}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 387
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    iget-object v3, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Toast:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 325
    .end local v0           #hasEffectControls:Z
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #maxWidth:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 336
    .restart local v0       #hasEffectControls:Z
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 337
    const v3, 0x7f0b005b

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 342
    :cond_4
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 344
    invoke-virtual {p0, v9}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 345
    const v3, 0x7f0b005c

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 349
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 350
    const v3, 0x7f0b005c

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 365
    :cond_6
    const v3, 0x7f0b005e

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v2

    .restart local v2       #maxWidth:I
    goto :goto_3

    .line 369
    .end local v2           #maxWidth:I
    :pswitch_1
    const v3, 0x7f0b005f

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v2

    .line 370
    .restart local v2       #maxWidth:I
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 373
    .end local v2           #maxWidth:I
    :pswitch_2
    if-nez v0, :cond_7

    .line 374
    const v3, 0x7f0b005d

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v2

    .line 377
    .restart local v2       #maxWidth:I
    :goto_5
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 376
    .end local v2           #maxWidth:I
    :cond_7
    const v3, 0x7f0b005e

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v2

    .restart local v2       #maxWidth:I
    goto :goto_5

    .line 380
    .end local v2           #maxWidth:I
    :pswitch_3
    const v3, 0x7f0b005f

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getDimension(I)I

    move-result v2

    .line 381
    .restart local v2       #maxWidth:I
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    .line 65
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 66
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 84
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->smileCapture()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 100
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$1;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 108
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$2;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 119
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$3;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 127
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$4;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 135
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectControlState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$5;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 143
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$6;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$7;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$8;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 167
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$9;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 175
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SmileCaptureUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureUI$10;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 194
    return-void
.end method
