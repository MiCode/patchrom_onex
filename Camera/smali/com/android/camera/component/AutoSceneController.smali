.class public final Lcom/android/camera/component/AutoSceneController;
.super Lcom/android/camera/component/UIComponent;
.source "AutoSceneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/AutoSceneController$6;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_SCENE:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Auto-Scene Controller"


# instance fields
.field private final scene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 42
    const-string v0, "Auto-Scene Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 43
    const-string v0, "AutoSceneController.AutoDetectedScene"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    .line 44
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->checkScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoSceneController;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method private checkScene()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 54
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v3, v4, :cond_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v4, Lcom/android/camera/component/AutoSceneController$6;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_2
    :pswitch_1
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 76
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    .line 86
    .local v2, settings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isAutoFiveShotsEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_4
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v3}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 123
    :cond_5
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 136
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 137
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 155
    :goto_0
    return-void

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->checkScene()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 9

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 169
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v5, p0, Lcom/android/camera/component/AutoSceneController;->scene:Lcom/android/camera/property/Property;

    iget-object v6, v1, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    .line 173
    .local v4, settings:Lcom/android/camera/CameraSettings;
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/AutoSceneController$1;

    invoke-direct {v6, p0}, Lcom/android/camera/component/AutoSceneController$1;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 181
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/AutoSceneController$2;

    invoke-direct {v6, p0}, Lcom/android/camera/component/AutoSceneController$2;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 191
    new-instance v0, Lcom/android/camera/component/AutoSceneController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoSceneController$3;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    .line 199
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/AutoSceneController$4;

    invoke-direct {v6, p0}, Lcom/android/camera/component/AutoSceneController$4;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 210
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 211
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 212
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/AutoSceneController$5;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/AutoSceneController$5;-><init>(Lcom/android/camera/component/AutoSceneController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isAutoFiveShotsEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 221
    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    .line 225
    .local v2, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 226
    .local v3, cameraThreadHandler:Landroid/os/Handler;
    iget-object v5, v2, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    invoke-static {v5, v3, v0}, Lcom/android/camera/property/PropertyUtility;->addChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 227
    iget-object v5, v2, Lcom/android/camera/CameraThread;->isEyeBlinked:Lcom/android/camera/property/Property;

    invoke-static {v5, v3, v0}, Lcom/android/camera/property/PropertyUtility;->addChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 228
    iget-object v5, v2, Lcom/android/camera/CameraThread;->isHdrSuggested:Lcom/android/camera/property/Property;

    invoke-static {v5, v3, v0}, Lcom/android/camera/property/PropertyUtility;->addChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 231
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->checkScene()V

    .line 232
    return-void
.end method
