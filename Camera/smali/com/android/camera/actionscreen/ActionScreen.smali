.class public abstract Lcom/android/camera/actionscreen/ActionScreen;
.super Lcom/android/camera/component/UIComponent;
.source "ActionScreen.java"


# static fields
.field public static final CLOSE_REASON_UNKNOWN:I


# instance fields
.field public final closeReason:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field private m_ClosingBlockHandle:Lcom/android/camera/Handle;

.field private m_IsMediaSaved:Z

.field private m_IsPrepared:Z

.field private m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

.field private m_Layout:Landroid/view/View;

.field private m_LayoutID:I

.field public final state:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V
    .locals 2
    .parameter "name"
    .parameter "cameraActivity"
    .parameter "layoutId"

    .prologue
    .line 48
    const/4 v0, 0x1

    const v1, 0x7f080055

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 51
    iput p3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    .line 54
    const-string v0, "ActionScreen.CloseReason"

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, p0, v1}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    .line 55
    const-string v0, "ActionScreen.State"

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, p0, v1}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/ActionScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/ActionScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/actionscreen/ActionScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/actionscreen/ActionScreen;Lcom/android/camera/MediaEventArgs;)Lcom/android/camera/MediaEventArgs;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V
    .locals 1
    .parameter "reason"
    .parameter "animation"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    .line 91
    return-void
.end method

.method public final close(Z)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "close() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Action screen is already closed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 73
    :cond_0
    const-class v1, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureUIBlockManager;

    .line 74
    .local v0, blockManager:Lcom/android/camera/ICaptureUIBlockManager;
    if-eqz v0, :cond_1

    .line 75
    const-string v1, "Closing action screen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/android/camera/Handle;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->closeActionScreen(Z)V

    .line 82
    if-nez p1, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->completeCloseActionScreen()V

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "close() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract closeActionScreen(Z)V
.end method

.method protected final completeCloseActionScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "completeCloseActionScreen() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Action screen is not closing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_0
    const-class v1, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureUIBlockManager;

    .line 110
    .local v0, blockManager:Lcom/android/camera/ICaptureUIBlockManager;
    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    .line 112
    :cond_1
    iput-object v3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/android/camera/Handle;

    .line 115
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    .line 118
    iput-object v3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    .line 120
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "completeCloseActionScreen() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 133
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 134
    return-void
.end method

.method protected final getLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 155
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v4, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 156
    iget-object v4, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 159
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/actionscreen/ActionScreen$1;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/ActionScreen$1;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 167
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/actionscreen/ActionScreen$2;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/ActionScreen$2;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 178
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v2, Lcom/android/camera/actionscreen/ActionScreen$3;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/ActionScreen$3;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    .line 203
    .local v2, captureFailedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/event/EventArgs;>;"
    new-instance v3, Lcom/android/camera/actionscreen/ActionScreen$4;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/ActionScreen$4;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    .line 238
    .local v3, mediaSavedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/MediaEventArgs;>;"
    new-instance v4, Lcom/android/camera/actionscreen/ActionScreen$5;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/android/camera/actionscreen/ActionScreen$5;-><init>(Lcom/android/camera/actionscreen/ActionScreen;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public final isClosing()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMediaSaved()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOpening()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCaptureFailed()V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 289
    return-void
.end method

.method protected onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method protected onKeyUp(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 311
    return-void
.end method

.method public final open()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "open() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not prepared"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->openActionScreen()V

    .line 335
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    iget-wide v0, v0, Lcom/android/camera/MediaEventArgs;->captureID:J

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    .line 341
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0, v0}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "open() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract openActionScreen()V
.end method

.method public final prepare()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    if-lez v1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 360
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    .line 361
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->prepareActionScreen()V

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    .line 371
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method protected abstract prepareActionScreen()V
.end method
