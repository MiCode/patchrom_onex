.class public final Lcom/android/camera/component/SensorFocusController;
.super Lcom/android/camera/component/UIComponent;
.source "SensorFocusController.java"


# static fields
.field private static final MSG_RESTART_SENSOR_FOCUS:I = 0x2712

.field private static final MSG_STABLE:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Sensor-Focus Controller"

.field private static final RESTART_SENSOR_FOCUS_DURATION:J = 0x12cL

.field private static final SENSOR_STATE_STABLE_FOCUSED:I = 0x3

.field private static final SENSOR_STATE_STABLE_FOCUSING:I = 0x2

.field private static final SENSOR_STATE_UNSTABLE:I = 0x0

.field private static final SENSOR_STATE_WAITING_FOR_STABLE:I = 0x1

.field private static final SENSOR_UNSTABLE_THRESHOLD:F = 0.5f

.field private static final STABLE_PERIOD:J = 0xbeL

.field private static final STABLE_THRESHOLD:F = 0.1f

.field private static final TOUCH_UNSTABLE_THRESHOLD:F = 0.8f

.field private static final UNSTABLE_THRESHOLD_FACTOR_FOR_CAF:F = 2.0f


# instance fields
.field private final m_HasMovement:[Z

.field private m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

.field private m_SensorState:I

.field private m_SensorValues:[F

.field private m_StableSensorValues:[F

.field private m_UnstableThreshold:F


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 55
    const-string v0, "Sensor-Focus Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    .line 44
    iput v2, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    .line 47
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SensorFocusController;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/AutoFocusMode;)Lcom/android/camera/AutoFocusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/camera/component/SensorFocusController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    return p1
.end method

.method static synthetic access$232(Lcom/android/camera/component/SensorFocusController;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/SensorFocusController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/component/SensorFocusController;[F)[F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/camera/component/SensorFocusController;[F)[F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    return-object p1
.end method

.method private checkSensorFocus([F)V
    .locals 9
    .parameter "sensorValues"

    .prologue
    const/16 v2, 0x2711

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 63
    iput v8, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateSensorValues([F)V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    .line 68
    const/4 v5, 0x0

    const-wide/16 v6, 0xbe

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    .line 73
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus(J)V

    goto :goto_0
.end method

.method private checkSensorValuesChanged([F)Z
    .locals 5
    .parameter "sensorValues"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    if-nez v3, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateSensorValues([F)V

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    if-nez v3, :cond_2

    .line 90
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateStableSensorValues([F)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 102
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    .line 104
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aput-boolean v1, v3, v0

    .line 106
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    aget v4, p1, v0

    aput v4, v3, v0

    .line 100
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_4
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v4, p1, v0

    aput v4, v3, v0

    .line 114
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aput-boolean v2, v3, v0

    .line 115
    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    .line 116
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    iget v3, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    goto :goto_2

    .line 120
    :cond_5
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private enterUnstableState()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 132
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    goto :goto_0
.end method

.method private restartSensorFocus(J)V
    .locals 9
    .parameter "delayMillis"

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    const/16 v2, 0x2712

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method

.method private startSensorFocus()V
    .locals 4

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 403
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startSensorFocus() - Cannot trigger sensor focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/16 v1, 0x2712

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    .line 413
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus()V

    goto :goto_0
.end method

.method private updateSensorValues([F)V
    .locals 3
    .parameter "sensorvalues"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    if-nez v1, :cond_0

    .line 423
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    .line 424
    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 426
    :cond_1
    return-void
.end method

.method private updateStableSensorValues([F)V
    .locals 3
    .parameter "sensorvalues"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    if-nez v1, :cond_0

    .line 434
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    .line 435
    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 438
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 437
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 439
    :cond_2
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    .line 142
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 188
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus()V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "FocusUI is showing, won\'t trigger SensorFocus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v4, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v3, v4, :cond_0

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 167
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 168
    .local v1, focusPoint:Landroid/graphics/PointF;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v6, v6}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    :cond_5
    new-instance v1, Landroid/graphics/PointF;

    .end local v1           #focusPoint:Landroid/graphics/PointF;
    invoke-direct {v1, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 170
    .restart local v1       #focusPoint:Landroid/graphics/PointF;
    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v2

    .line 171
    .local v2, screenFocusPoint:Landroid/graphics/Point;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v4, v2}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 174
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v4, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v3, v4, :cond_7

    invoke-virtual {v1, v5, v5}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 178
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    .line 181
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/AutoFocusMode;

    iput-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 205
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$1;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 219
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$2;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 228
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$3;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 239
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$4;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 251
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$5;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 265
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$6;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 292
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$7;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/SensorFocusController$7;-><init>(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$8;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 328
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SensorFocusController$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SensorFocusController$9;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 341
    return-void
.end method

.method public onAccelerometerValuesChanged([F)V
    .locals 1
    .parameter "sensorValues"

    .prologue
    .line 348
    iget v0, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorValuesChanged([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateSensorValues([F)V

    .line 361
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateStableSensorValues([F)V

    goto :goto_0

    .line 365
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorValuesChanged([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    .line 368
    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->enterUnstableState()V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public restartSensorFocus()V
    .locals 1

    .prologue
    .line 386
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    invoke-direct {p0, v0}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    .line 392
    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->enterUnstableState()V

    goto :goto_0
.end method
