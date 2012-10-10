.class public final Lcom/android/camera/component/HdrUI;
.super Lcom/android/camera/component/UIComponent;
.source "HdrUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/HdrUI$6;
    }
.end annotation


# static fields
.field static final MSG_PHOTO_PROCESSED:I = 0x2

.field static final MSG_PROCESSING_PHOTO:I = 0x1

.field public static final NAME:Ljava/lang/String; = "HDR UI"


# instance fields
.field private m_HdrController:Lcom/android/camera/component/HdrController;

.field private m_IsCaptureUIOpen:Z

.field private m_IsEnteredFromAutoScene:Z

.field private m_IsModeEntered:Z

.field private m_NeedToApplyEffectAgain:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 48
    const-string v0, "HDR UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/component/HdrUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/camera/component/HdrUI;->m_NeedToApplyEffectAgain:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/HdrUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/HdrUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z

    return p1
.end method

.method private closeCaptureUI()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "HDR Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrController;

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    .line 322
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/16 v2, 0x2710

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 325
    goto :goto_0
.end method

.method private onPhotoProcessed(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "previewImage"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrUI;->showProcessingDialog(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    .line 201
    return-void
.end method

.method private onPhotoProcessing()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrUI;->showProcessingDialog(Z)V

    .line 209
    return-void
.end method

.method private openCaptureUI()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 224
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 238
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HdrUI$1;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HdrUI$1;-><init>(Lcom/android/camera/component/HdrUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HdrUI$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HdrUI$2;-><init>(Lcom/android/camera/component/HdrUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 264
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HdrUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$3;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 276
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HdrUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$4;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 304
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/HdrUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$5;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 312
    return-void
.end method


# virtual methods
.method public enterHdrMode(Z)V
    .locals 2
    .parameter "bIsSameScene"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_NeedToApplyEffectAgain:Z

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter HDR mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 84
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 90
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_NeedToApplyEffectAgain:Z

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitHdrMode(Z)V
    .locals 2
    .parameter "bIsSameScene"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitHdrMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_NeedToApplyEffectAgain:Z

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 120
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/HdrUI;->onPhotoProcessed(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->onPhotoProcessing()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 177
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->registerListeners()V

    .line 180
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->setupPropertyChangedCallbacks()V

    .line 181
    return-void
.end method

.method public isHdrModeEntered()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method
