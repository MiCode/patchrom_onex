.class public final Lcom/android/camera/component/ContinuousBurstUI;
.super Lcom/android/camera/component/UIComponent;
.source "ContinuousBurstUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ContinuousBurstUI$7;
    }
.end annotation


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MSG_CAPTURE_BUTTON_LONG_PRESSED:I = 0x2712

.field static final MSG_PHOTO_SAVE_STARTED:I = 0x2710

.field static final MSG_PHOTO_SAVE_STOPPED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Continuous Burst UI"

.field private static final PREF_LONG_PRESS_TIMEOUT:Ljava/lang/String; = "pref_continuous_burst_long_press_timeout"

.field private static final STATE_CAPTURING:I = 0x1

.field private static final STATE_READY:I = 0x0

.field private static final STATE_SAVING:I = 0x2


# instance fields
.field private final isEntered:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_BurstMode:I

.field private volatile m_CanCapture:Z

.field private m_Controller:Lcom/android/camera/component/ContinuousBurstController;

.field private m_LongPressTimeout:I

.field private m_State:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "Continuous Burst UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 45
    iput v2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    .line 49
    iput v2, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 62
    const-string v0, "ContinuousBurstUI.IsEntered"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ContinuousBurstUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/ContinuousBurstUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstUI;->updateBurstMode(I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/camera/component/ContinuousBurstUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/ContinuousBurstUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->canUseContinuousBurst()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ContinuousBurstUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ContinuousBurstUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ContinuousBurstUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/component/ContinuousBurstUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ContinuousBurstUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/component/ContinuousBurstController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    return-object v0
.end method

.method private canUseContinuousBurst()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 79
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    .line 80
    .local v1, effectManager:Lcom/android/camera/effect/EffectManager;
    iget-object v3, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    .line 81
    .local v2, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    sget-object v5, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v3, v5, :cond_0

    move v3, v4

    .line 93
    :goto_0
    return v3

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v3

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-eq v3, v5, :cond_1

    move v3, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v3}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object v3, v1, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/effect/NoneEffect;

    if-nez v3, :cond_4

    move v3, v4

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    if-eqz v2, :cond_5

    instance-of v3, v2, Lcom/android/camera/effect/AutoScene;

    if-nez v3, :cond_5

    move v3, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return v6

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Continuous Burst Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    .line 433
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2715

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstLimited:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x14

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_2

    move v4, v6

    :cond_2
    move v6, v4

    goto :goto_0

    .line 434
    :cond_3
    sget v3, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method private onCaptureButtonLongPressed()V
    .locals 4

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureButtonLongPressed() - Not entered"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 450
    :cond_0
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    sget-object v2, Lcom/android/camera/component/ContinuousBurstUI$7;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 472
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Unsupported scene : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_0
    const/4 v0, 0x1

    .line 475
    .local v0, burstMode:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Set burst mode to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstUI;->updateBurstMode(I)V

    goto :goto_0

    .line 466
    .end local v0           #burstMode:I
    :pswitch_1
    const/4 v0, 0x2

    .line 467
    .restart local v0       #burstMode:I
    goto :goto_1

    .line 469
    .end local v0           #burstMode:I
    :pswitch_2
    const/4 v0, 0x3

    .line 470
    .restart local v0       #burstMode:I
    goto :goto_1

    .line 479
    .end local v0           #burstMode:I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureButtonLongPressed() - No controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPhotoSaveStarted(I)V
    .locals 2
    .parameter "photoCount"

    .prologue
    const/4 v1, 0x1

    .line 488
    if-le p1, v1, :cond_0

    .line 491
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 494
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableActionScreen()V

    .line 497
    const v0, 0x7f0a004e

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/component/ContinuousBurstUI;->showProcessingDialog(ZI)V

    .line 498
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 505
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 503
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    goto :goto_0
.end method

.method private onPhotoSaveStopped(ILjava/lang/String;Lcom/android/camera/io/Path;)V
    .locals 4
    .parameter "photoCount"
    .parameter "BucketID"
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 512
    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 515
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_State:I

    .line 518
    invoke-virtual {p0, v3}, Lcom/android/camera/component/ContinuousBurstUI;->showProcessingDialog(Z)V

    .line 520
    new-instance v1, Lcom/android/camera/MediaInfo;

    invoke-direct {v1}, Lcom/android/camera/MediaInfo;-><init>()V

    .line 521
    .local v1, mediaInfo:Lcom/android/camera/MediaInfo;
    sget-object v2, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 522
    iput-object p3, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 525
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 526
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const-string v2, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/MediaInfo;)Z

    .line 535
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    .line 538
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableActionScreen()V

    .line 540
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v1           #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_1
    return-void
.end method

.method private updateBurstMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    .line 547
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_BurstMode:I

    .line 548
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 552
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateBurstMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    .line 106
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 109
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 110
    return-void
.end method

.method public enter()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Enter"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 125
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    .line 128
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Exit"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->isEntered:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 148
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 151
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->removeMessages(I)V

    .line 154
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No controller to notify"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 166
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 186
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstUI;->onCaptureButtonLongPressed()V

    goto :goto_0

    .line 173
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->onPhotoSaveStarted(I)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 179
    .local v0, array:[Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/android/camera/io/Path;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/camera/component/ContinuousBurstUI;->onPhotoSaveStopped(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    const/16 v3, 0x1f4

    .line 195
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 198
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_continuous_burst_long_press_timeout"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 199
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    if-gez v1, :cond_0

    .line 200
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 204
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$1;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 275
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resetToDefaultEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$2;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 291
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$3;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 330
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isContinuousBurstLimited:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$4;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 339
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstUI$5;-><init>(Lcom/android/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 412
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUI$6;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ContinuousBurstUI$6;-><init>(Lcom/android/camera/component/ContinuousBurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method
