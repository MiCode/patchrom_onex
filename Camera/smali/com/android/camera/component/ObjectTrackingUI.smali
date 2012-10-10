.class public final Lcom/android/camera/component/ObjectTrackingUI;
.super Lcom/android/camera/component/UIComponent;
.source "ObjectTrackingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ObjectTrackingUI$11;
    }
.end annotation


# static fields
.field static final MSG_FACE_UPDATED:I = 0x2711

.field static final MSG_OT_MODE_EXITED:I = 0x2712

.field static final MSG_SET_SENSOR_FOCUS:I = 0x2713

.field public static final NAME:Ljava/lang/String; = "Object Tracking UI"

.field static final OBJECT_MOVEMENT_THRESHOLD:D = 0.25


# instance fields
.field private m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

.field private m_Controller:Lcom/android/camera/component/ObjectTrackingController;

.field m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

.field private m_FocusedObjIndex:I

.field private m_HasFaces:Z

.field private m_IsStarted:Z

.field m_LastfocusFaceRect:Landroid/graphics/RectF;

.field private m_OTEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v0, "Object Tracking UI"

    const/4 v1, 0x1

    const v2, 0x7f080047

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableMessageLogs()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ObjectTrackingUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ObjectTrackingUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ObjectTrackingUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ObjectTrackingUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->enableOT()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->updateOtViewLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ObjectTrackingUI;[Lcom/android/camera/ObjectTrackingInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V

    return-void
.end method

.method private calculateFocusFace([Lcom/android/camera/ObjectTrackingInfo;I)I
    .locals 18
    .parameter "faces"
    .parameter "num"

    .prologue
    .line 474
    const/4 v8, 0x0

    .line 475
    .local v8, weight:F
    const/4 v9, 0x0

    .line 476
    .local v9, weight_sum:F
    const/4 v10, 0x0

    .line 477
    .local v10, weight_x:F
    const/4 v11, 0x0

    .line 479
    .local v11, weight_y:F
    const/4 v6, 0x0

    .local v6, index:S
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_0

    .line 480
    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 481
    .local v7, range:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float v8, v12, v13

    .line 482
    add-float/2addr v9, v8

    .line 483
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v10, v12

    .line 484
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 479
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_0

    .line 487
    .end local v7           #range:Landroid/graphics/RectF;
    :cond_0
    div-float/2addr v10, v9

    .line 488
    div-float/2addr v11, v9

    .line 490
    const/4 v5, 0x0

    .line 491
    .local v5, focus:I
    const-wide/16 v1, 0x0

    .line 492
    .local v1, dist:D
    const-wide/16 v3, 0x0

    .line 493
    .local v3, dist_min:D
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    .line 494
    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 495
    .restart local v7       #range:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v12, v10

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    sub-float/2addr v14, v11

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v1, v12, v14

    .line 498
    if-eqz v6, :cond_1

    cmpg-double v12, v1, v3

    if-gez v12, :cond_2

    .line 499
    :cond_1
    move v5, v6

    .line 500
    move-wide v3, v1

    .line 493
    :cond_2
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_1

    .line 504
    .end local v7           #range:Landroid/graphics/RectF;
    :cond_3
    return v5
.end method

.method private checkFaceDetection()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 514
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    .line 524
    .local v3, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v6

    if-nez v6, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 529
    .local v1, bCamera:Z
    :goto_1
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_2

    const-string v6, "pref_camera_auto_focus"

    invoke-static {v3, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    move v0, v4

    .line 532
    .local v0, bAuto:Z
    :goto_2
    const-string v5, "pref_face_detection"

    invoke-static {v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 535
    .local v2, bDetect:Z
    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_5

    if-ne v0, v4, :cond_5

    if-ne v2, v4, :cond_5

    iget-object v4, v3, Lcom/android/camera/HTCCamera;->effectControlState:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 542
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->startFaceDetection()V

    goto :goto_0

    .end local v0           #bAuto:Z
    .end local v1           #bCamera:Z
    .end local v2           #bDetect:Z
    :cond_3
    move v1, v5

    .line 527
    goto :goto_1

    .restart local v1       #bCamera:Z
    :cond_4
    move v0, v5

    .line 529
    goto :goto_2

    .line 552
    .restart local v0       #bAuto:Z
    .restart local v2       #bDetect:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    .line 553
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V

    goto :goto_0
.end method

.method private checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10
    .parameter "rectLast"
    .parameter "rectNow"

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x4080

    .line 446
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v6

    .line 449
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 450
    .local v2, fxOff:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 451
    .local v3, fyOff:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 452
    .local v1, fwOff:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 454
    .local v0, fhOff:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v5, v7, v9

    .line 455
    .local v5, widthThreadhold:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v4, v7, v9

    .line 457
    .local v4, heightThreshold:F
    cmpl-float v7, v2, v5

    if-gtz v7, :cond_2

    cmpl-float v7, v3, v4

    if-gtz v7, :cond_2

    cmpl-float v7, v1, v5

    if-gtz v7, :cond_2

    cmpl-float v7, v0, v4

    if-lez v7, :cond_0

    .line 461
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private disableOT()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 568
    iput-boolean v3, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    .line 569
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v2, 0x2715

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableOT() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableOT()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    .line 565
    return-void
.end method

.method private isObjectMoving(Lcom/android/camera/ObjectTrackingInfo;Lcom/android/camera/ObjectTrackingInfo;)Z
    .locals 12
    .parameter "oldObject"
    .parameter "newObject"

    .prologue
    const/4 v8, 0x1

    const/high16 v11, 0x4000

    .line 428
    if-nez p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v8

    .line 431
    :cond_1
    iget-object v9, p2, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v0, v9

    .line 432
    .local v0, dx:D
    iget-object v9, p2, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v2, v9

    .line 434
    .local v2, dy:D
    iget-object v9, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v11

    float-to-double v6, v9

    .line 435
    .local v6, widthThreshold:D
    iget-object v9, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v11

    float-to-double v4, v9

    .line 437
    .local v4, heightThreshold:D
    const-string v9, "Object Tracking UI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dx is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dy is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", widthThreshold is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", heightThreshold is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    cmpl-double v9, v0, v6

    if-gtz v9, :cond_0

    cmpl-double v9, v2, v4

    if-gtz v9, :cond_0

    .line 442
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Object Tracking Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ObjectTrackingController;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    .line 322
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v2, 0x2711

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ObjectTrackingController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 325
    goto :goto_0
.end method

.method private onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V
    .locals 13
    .parameter "faces"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 336
    iget-boolean v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v5, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-nez p1, :cond_3

    .line 342
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v5, v11}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 345
    :cond_2
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    invoke-virtual {v5}, Lcom/android/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;

    move-result-object v5

    sget-object v6, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    if-eq v5, v6, :cond_0

    .line 348
    iget-boolean v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    if-eqz v5, :cond_0

    .line 352
    const-string v5, "Object Tracking UI"

    const-string v6, "No callbackTargets"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    .line 354
    iput-boolean v9, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 355
    iput-object v11, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    goto :goto_0

    .line 361
    :cond_3
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    invoke-virtual {v5}, Lcom/android/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;

    move-result-object v5

    sget-object v6, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    if-ne v5, v6, :cond_5

    .line 362
    array-length v5, p1

    invoke-direct {p0, p1, v5}, Lcom/android/camera/component/ObjectTrackingUI;->calculateFocusFace([Lcom/android/camera/ObjectTrackingInfo;I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    .line 363
    iput-boolean v10, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 369
    :goto_1
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    iget-boolean v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/ObjectTrackingView;->setFaceOTMode(Z)V

    .line 371
    iget v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v5, p1, v5

    iget-object v0, v5, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 374
    .local v0, focusFaceRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->canFaceFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v5, p1, v5

    iget-object v5, v5, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v5, p1, v5

    iget-object v5, v5, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v5, v0}, Lcom/android/camera/component/ObjectTrackingUI;->checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    sget-object v6, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    new-array v7, v10, [Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;)Z

    .line 387
    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    .line 390
    :cond_4
    iget v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    .line 393
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v5}, Lcom/android/camera/widget/ObjectTrackingView;->getWidth()I

    move-result v3

    .line 394
    .local v3, previewDisplayWidth:I
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v5}, Lcom/android/camera/widget/ObjectTrackingView;->getHeight()I

    move-result v2

    .line 397
    .local v2, previewDisplayHeight:I
    array-length v5, p1

    new-array v4, v5, [Landroid/graphics/Rect;

    .line 398
    .local v4, regions:[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_6

    .line 399
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v1

    .line 400
    aget-object v5, v4, v1

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v12, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 401
    aget-object v5, v4, v1

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v12, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 402
    aget-object v5, v4, v1

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 403
    aget-object v5, v4, v1

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 366
    .end local v0           #focusFaceRect:Landroid/graphics/RectF;
    .end local v1           #i:I
    .end local v2           #previewDisplayHeight:I
    .end local v3           #previewDisplayWidth:I
    .end local v4           #regions:[Landroid/graphics/Rect;
    :cond_5
    iput v9, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    .line 367
    iput-boolean v9, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    goto/16 :goto_1

    .line 409
    .restart local v0       #focusFaceRect:Landroid/graphics/RectF;
    .restart local v1       #i:I
    .restart local v2       #previewDisplayHeight:I
    .restart local v3       #previewDisplayWidth:I
    .restart local v4       #regions:[Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v5, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 412
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v5, v4}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    iget v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectFocusState(IZ)V

    goto/16 :goto_0

    .line 418
    :cond_7
    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v5, v11}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private onOTModeExited()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->setSensorFocus()V

    .line 312
    return-void
.end method

.method private setSensorFocus()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method private startFaceDetection()V
    .locals 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_1
    const-string v0, "Object Tracking UI"

    const-string v1, "Send Start face detection msg"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 2

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 620
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 624
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    goto :goto_0
.end method

.method private updateOtViewLayout()V
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 279
    .local v0, width:I
    :goto_0
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 284
    return-void

    .line 278
    .end local v0           #width:I
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v0, v1, 0x3

    goto :goto_0

    .line 282
    .restart local v0       #width:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 97
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/ObjectTrackingInfo;

    check-cast v0, [Lcom/android/camera/ObjectTrackingInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->onOTModeExited()V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->setSensorFocus()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ObjectTrackingView;

    iput-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    .line 113
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$1;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ObjectTrackingView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->updateOtViewLayout()V

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 156
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$2;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$3;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 173
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$4;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 183
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$5;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 196
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$6;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 210
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$7;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 238
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$8;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 251
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$9;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 259
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$10;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 271
    return-void
.end method

.method public final screenPointToLandscapePoint(IIZ)Landroid/graphics/Point;
    .locals 2
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"

    .prologue
    .line 632
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 633
    .local v0, result:Landroid/graphics/Point;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/ObjectTrackingUI;->screenPointToLandscapePoint(IIZLandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    .end local v0           #result:Landroid/graphics/Point;
    :goto_0
    return-object v0

    .restart local v0       #result:Landroid/graphics/Point;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final screenPointToLandscapePoint(IIZLandroid/graphics/Point;)Z
    .locals 3
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 640
    if-nez p4, :cond_1

    .line 668
    :cond_0
    :goto_0
    return v1

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 645
    .local v0, previewBounds:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 647
    if-eqz p3, :cond_0

    .line 649
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_4

    .line 650
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 653
    :cond_2
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_5

    .line 654
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 660
    :cond_3
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    .line 661
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    .line 664
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 665
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p4, p2, v1}, Landroid/graphics/Point;->set(II)V

    .line 668
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 651
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_2

    .line 652
    iget p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 655
    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_3

    .line 656
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 667
    :cond_6
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_3
.end method
