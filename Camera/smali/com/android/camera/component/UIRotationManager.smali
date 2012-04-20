.class final Lcom/android/camera/component/UIRotationManager;
.super Lcom/android/camera/component/UIComponent;
.source "UIRotationManager.java"

# interfaces
.implements Lcom/android/camera/IUIRotationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/UIRotationManager$LockHandle;
    }
.end annotation


# static fields
.field private static final MIN_ROTATION_CHANGE_INTERVAL:J = 0x258L

.field private static final MSG_EXIT_SHAKE_PREVENTION:I = 0x2711

.field static final NAME:Ljava/lang/String; = "UI Rotation Manager"

.field private static final SHAKE_PREVENTION_INTERVAL:J = 0x12cL

.field private static final SHAKE_PREVENTION_THRESHOLD:I = 0x5


# instance fields
.field private final deviceOrientation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isOrientationListenerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isRotationLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

.field private m_IsFirstOrientationChange:Z

.field private m_IsShakePreventionEntered:Z

.field private m_LastDeviceOrientation:I

.field private m_LastRotationChangeTime:J

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/UIRotationManager$LockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationDropCounter:I

.field private final m_OrientationListener:Landroid/view/OrientationEventListener;

.field private m_ShakePreventionCounter:I

.field private final rotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 72
    const-string v0, "UI Rotation Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 51
    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    .line 75
    const-string v0, "IUIRotationManager.DeviceOrientation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    .line 76
    const-string v0, "IUIRotationManager.IsOrientationListenerStarted"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    .line 77
    const-string v0, "IUIRotationManager.IsRotationLocked"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    .line 78
    const-string v0, "IUIRotationManager.Rotation"

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    .line 81
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v5}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v5}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 85
    new-instance v0, Lcom/android/camera/component/UIRotationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/UIRotationManager$1;-><init>(Lcom/android/camera/component/UIRotationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/UIRotationManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/component/UIRotationManager;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->stopOrientationListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/UIRotationManager;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method private enterShakePrevention()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 113
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention() - Orientation listener is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    .line 126
    const/16 v2, 0x2711

    const-wide/16 v3, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/UIRotationManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private exitShakePrevention()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitShakePrevention()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v1, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    .line 142
    iput v3, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 145
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/UIRotationManager;->removeMessages(I)V

    .line 148
    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    .line 151
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    .line 152
    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 327
    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    if-lez v2, :cond_1

    .line 329
    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onOrientationChanged() - Unknown orientation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    iput p1, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 343
    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 344
    .local v0, currentRotation:Lcom/android/camera/rotate/UIRotation;
    :goto_1
    invoke-static {v0, p1}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 347
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_3

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 351
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    .line 354
    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-direct {p0, v1}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 343
    .end local v0           #currentRotation:Lcom/android/camera/rotate/UIRotation;
    .end local v1           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object v0, v2

    goto :goto_1
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    .line 367
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 10
    .parameter "rotation"
    .parameter "updateCaptureRotation"

    .prologue
    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 371
    iget-object v5, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    if-ne v5, p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 377
    .local v0, currentTime:J
    iget-wide v5, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    move v2, v3

    .line 378
    .local v2, isShaking:Z
    :goto_1
    iput-wide v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    .line 379
    if-eqz v2, :cond_4

    .line 381
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-ge v4, v9, :cond_2

    .line 382
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 383
    :cond_2
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-lt v4, v9, :cond_6

    .line 385
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->enterShakePrevention()V

    goto :goto_0

    .end local v2           #isShaking:Z
    :cond_3
    move v2, v4

    .line 377
    goto :goto_1

    .line 389
    .restart local v2       #isShaking:Z
    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-eqz v5, :cond_5

    .line 391
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onRotationChanged() - Shake prevention"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_5
    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 398
    :cond_6
    iget-object v4, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v4, p0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    if-eqz p2, :cond_7

    .line 402
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 405
    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    invoke-direct {p0, p1, v3}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    goto :goto_0
.end method

.method private startOrientationListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 414
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 420
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    .line 423
    iput v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    .line 425
    :cond_1
    return-void
.end method

.method private stopOrientationListener()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 438
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    .line 442
    :cond_1
    return-void
.end method

.method private updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 4
    .parameter "rotation"
    .parameter "enabled"

    .prologue
    .line 490
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    iget v3, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 494
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 105
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 106
    return-void
.end method

.method public getAvailableDeviceOrientation()I
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 163
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/property/Property",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "IUIRotationManager.DeviceOrientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    .line 182
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const-string v0, "IUIRotationManager.IsOrientationListenerStarted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "IUIRotationManager.IsRotationLocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "IUIRotationManager.Rotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    goto :goto_0

    .line 182
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 201
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 214
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 215
    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 216
    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 219
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$2;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 233
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$3;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 241
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$4;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 251
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$5;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 276
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$6;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/UIRotationManager$6;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    .line 287
    return-void
.end method

.method public lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;
    .locals 8
    .parameter "name"
    .parameter "rotation"

    .prologue
    const/4 v7, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation(\'"

    const-string v3, "\', "

    const-string v5, ")"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    .line 299
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v6, 0x0

    .line 318
    :cond_0
    :goto_0
    return-object v6

    .line 306
    :cond_1
    new-instance v6, Lcom/android/camera/component/UIRotationManager$LockHandle;

    invoke-direct {v6, p1}, Lcom/android/camera/component/UIRotationManager$LockHandle;-><init>(Ljava/lang/String;)V

    .line 307
    .local v6, handle:Lcom/android/camera/component/UIRotationManager$LockHandle;
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - New handle : \'"

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    if-eqz p2, :cond_0

    .line 316
    invoke-direct {p0, p2}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public unlockRotation(Lcom/android/camera/Handle;)V
    .locals 6
    .parameter "handle"

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    .line 452
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    if-nez p1, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    instance-of v0, p1, Lcom/android/camera/component/UIRotationManager$LockHandle;

    if-nez v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation(\'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "])"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 481
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
