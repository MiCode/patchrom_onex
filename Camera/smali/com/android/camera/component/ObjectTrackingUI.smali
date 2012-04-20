.class public final Lcom/android/camera/component/ObjectTrackingUI;
.super Lcom/android/camera/component/UIComponent;
.source "ObjectTrackingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ObjectTrackingUI$9;
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

.field private m_OTEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 69
    const-string v0, "Object Tracking UI"

    const/4 v1, 0x1

    const v2, 0x7f080047

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableMessageLogs()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ObjectTrackingUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ObjectTrackingUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ObjectTrackingUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->enableOT()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->updateOtViewLayout()V

    return-void
.end method

.method private calculateFocusFace([Lcom/android/camera/ObjectTrackingInfo;I)I
    .locals 18
    .parameter "faces"
    .parameter "num"

    .prologue
    .line 416
    const/4 v8, 0x0

    .line 417
    .local v8, weight:F
    const/4 v9, 0x0

    .line 418
    .local v9, weight_sum:F
    const/4 v10, 0x0

    .line 419
    .local v10, weight_x:F
    const/4 v11, 0x0

    .line 421
    .local v11, weight_y:F
    const/4 v6, 0x0

    .local v6, index:S
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_0

    .line 422
    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 423
    .local v7, range:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float v8, v12, v13

    .line 424
    add-float/2addr v9, v8

    .line 425
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v10, v12

    .line 426
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 421
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_0

    .line 429
    .end local v7           #range:Landroid/graphics/RectF;
    :cond_0
    div-float/2addr v10, v9

    .line 430
    div-float/2addr v11, v9

    .line 432
    const/4 v5, 0x0

    .line 433
    .local v5, focus:I
    const-wide/16 v1, 0x0

    .line 434
    .local v1, dist:D
    const-wide/16 v3, 0x0

    .line 435
    .local v3, dist_min:D
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    .line 436
    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 437
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

    .line 440
    if-eqz v6, :cond_1

    cmpg-double v12, v1, v3

    if-gez v12, :cond_2

    .line 441
    :cond_1
    move v5, v6

    .line 442
    move-wide v3, v1

    .line 435
    :cond_2
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_1

    .line 446
    .end local v7           #range:Landroid/graphics/RectF;
    :cond_3
    return v5
.end method

.method private checkFaceDetection()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    .line 466
    .local v3, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v6

    if-nez v6, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 471
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

    .line 474
    .local v0, bAuto:Z
    :goto_2
    const-string v5, "pref_face_detection"

    invoke-static {v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 477
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

    .line 484
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->startFaceDetection()V

    goto :goto_0

    .end local v0           #bAuto:Z
    .end local v1           #bCamera:Z
    .end local v2           #bDetect:Z
    :cond_3
    move v1, v5

    .line 469
    goto :goto_1

    .restart local v1       #bCamera:Z
    :cond_4
    move v0, v5

    .line 471
    goto :goto_2

    .line 494
    .restart local v0       #bAuto:Z
    .restart local v2       #bDetect:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    .line 495
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V

    goto :goto_0
.end method

.method private disableOT()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 510
    iput-boolean v3, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    .line 511
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v2, 0x2715

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableOT() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableOT()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    .line 507
    return-void
.end method

.method private isObjectMoving(Lcom/android/camera/ObjectTrackingInfo;Lcom/android/camera/ObjectTrackingInfo;)Z
    .locals 12
    .parameter "oldObject"
    .parameter "newObject"

    .prologue
    const/4 v8, 0x1

    const/high16 v11, 0x4000

    .line 391
    if-nez p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v8

    .line 394
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

    .line 395
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

    .line 397
    .local v2, dy:D
    iget-object v9, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v11

    float-to-double v6, v9

    .line 398
    .local v6, widthThreshold:D
    iget-object v9, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v11

    float-to-double v4, v9

    .line 400
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

    .line 402
    cmpl-double v9, v0, v6

    if-gtz v9, :cond_0

    cmpl-double v9, v2, v4

    if-gtz v9, :cond_0

    .line 405
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 300
    :cond_0
    :goto_0
    return v3

    .line 294
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

    .line 295
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v2, 0x2711

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ObjectTrackingController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 298
    goto :goto_0
.end method

.method private onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V
    .locals 13
    .parameter "faces"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f80

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 309
    iget-boolean v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v6, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    if-nez p1, :cond_3

    .line 315
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v6, :cond_2

    .line 316
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v6, v12}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 318
    :cond_2
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    invoke-virtual {v6}, Lcom/android/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    if-eq v6, v7, :cond_0

    .line 321
    iget-boolean v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    if-eqz v6, :cond_0

    .line 325
    const-string v6, "Object Tracking UI"

    const-string v7, "No callbackTargets"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    .line 327
    iput-boolean v9, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 328
    iput-object v12, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    goto :goto_0

    .line 334
    :cond_3
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    invoke-virtual {v6}, Lcom/android/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    if-ne v6, v7, :cond_5

    .line 335
    array-length v6, p1

    invoke-direct {p0, p1, v6}, Lcom/android/camera/component/ObjectTrackingUI;->calculateFocusFace([Lcom/android/camera/ObjectTrackingInfo;I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    .line 336
    iput-boolean v10, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 342
    :goto_1
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    iget-boolean v7, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/ObjectTrackingView;->setFaceOTMode(Z)V

    .line 344
    iget v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v6, p1, v6

    iget-object v1, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 347
    .local v1, focusFaceRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->canFaceFocus()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v6, p1, v6

    iget-object v6, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v6, p1, v6

    iget-object v6, v6, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/camera/effect/HdrScene;

    if-eqz v6, :cond_6

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    new-array v8, v10, [Landroid/graphics/RectF;

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;)Z

    .line 361
    :cond_4
    :goto_2
    iget v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v6, p1, v6

    iput-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    .line 364
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v6}, Lcom/android/camera/widget/ObjectTrackingView;->getWidth()I

    move-result v4

    .line 365
    .local v4, previewDisplayWidth:I
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v6}, Lcom/android/camera/widget/ObjectTrackingView;->getHeight()I

    move-result v3

    .line 368
    .local v3, previewDisplayHeight:I
    array-length v6, p1

    new-array v5, v6, [Landroid/graphics/Rect;

    .line 369
    .local v5, regions:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v6, p1

    if-ge v2, v6, :cond_7

    .line 370
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v2

    .line 371
    aget-object v6, v5, v2

    aget-object v7, p1, v2

    iget-object v7, v7, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v11, v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 372
    aget-object v6, v5, v2

    aget-object v7, p1, v2

    iget-object v7, v7, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float v7, v11, v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 373
    aget-object v6, v5, v2

    aget-object v7, p1, v2

    iget-object v7, v7, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 374
    aget-object v6, v5, v2

    aget-object v7, p1, v2

    iget-object v7, v7, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 339
    .end local v1           #focusFaceRect:Landroid/graphics/RectF;
    .end local v2           #i:I
    .end local v3           #previewDisplayHeight:I
    .end local v4           #previewDisplayWidth:I
    .end local v5           #regions:[Landroid/graphics/Rect;
    :cond_5
    iput v9, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    .line 340
    iput-boolean v9, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    goto/16 :goto_1

    .line 356
    .restart local v1       #focusFaceRect:Landroid/graphics/RectF;
    :cond_6
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 357
    .local v0, focusFacePoint:Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    new-array v8, v10, [Landroid/graphics/PointF;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z

    goto :goto_2

    .line 380
    .end local v0           #focusFacePoint:Landroid/graphics/PointF;
    .restart local v2       #i:I
    .restart local v3       #previewDisplayHeight:I
    .restart local v4       #previewDisplayWidth:I
    .restart local v5       #regions:[Landroid/graphics/Rect;
    :cond_7
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v6, :cond_0

    .line 381
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-virtual {v6, v5}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 382
    iget-object v6, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    iget v7, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    invoke-virtual {v6, v7, v10}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectFocusState(IZ)V

    goto/16 :goto_0
.end method

.method private onOTModeExited()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->setSensorFocus()V

    .line 285
    return-void
.end method

.method private setSensorFocus()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method private startFaceDetection()V
    .locals 2

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_1
    const-string v0, "Object Tracking UI"

    const-string v1, "Send Start face detection msg"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 2

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 562
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 566
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    goto :goto_0
.end method

.method private updateOtViewLayout()V
    .locals 3

    .prologue
    .line 251
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

    .line 252
    .local v0, width:I
    :goto_0
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ObjectTrackingView;->setObjectRegions([Landroid/graphics/Rect;)V

    .line 257
    return-void

    .line 251
    .end local v0           #width:I
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v0, v1, 0x3

    goto :goto_0

    .line 255
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
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 95
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/ObjectTrackingInfo;

    check-cast v0, [Lcom/android/camera/ObjectTrackingInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->onOTModeExited()V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->setSensorFocus()V

    goto :goto_0

    .line 80
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
    .line 104
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ObjectTrackingView;

    iput-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    .line 111
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BaseLayout:Lcom/android/camera/widget/ObjectTrackingView;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$1;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ObjectTrackingView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->updateOtViewLayout()V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 154
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$2;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$3;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 171
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$4;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 181
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$5;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 195
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$6;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 223
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$7;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 236
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ObjectTrackingUI$8;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 244
    return-void
.end method

.method public final screenPointToLandscapePoint(IIZ)Landroid/graphics/Point;
    .locals 2
    .parameter "screenX"
    .parameter "screenY"
    .parameter "bringToBounds"

    .prologue
    .line 574
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 575
    .local v0, result:Landroid/graphics/Point;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/ObjectTrackingUI;->screenPointToLandscapePoint(IIZLandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
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

    .line 582
    if-nez p4, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 587
    .local v0, previewBounds:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 589
    if-eqz p3, :cond_0

    .line 591
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_4

    .line 592
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 595
    :cond_2
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_5

    .line 596
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 602
    :cond_3
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    .line 603
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    .line 606
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 607
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p4, p2, v1}, Landroid/graphics/Point;->set(II)V

    .line 610
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 593
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_2

    .line 594
    iget p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 597
    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_3

    .line 598
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 609
    :cond_6
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_3
.end method
