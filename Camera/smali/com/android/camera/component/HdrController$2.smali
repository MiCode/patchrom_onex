.class Lcom/android/camera/component/HdrController$2;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrController;

.field final synthetic val$audioManager:Lcom/android/camera/IAudioManager;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;Lcom/android/camera/IAudioManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    iput-object p2, p0, Lcom/android/camera/component/HdrController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/HdrController$2;->val$audioManager:Lcom/android/camera/IAudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->val$audioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$200(Lcom/android/camera/component/HdrController;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->val$audioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$200(Lcom/android/camera/component/HdrController;)Lcom/android/camera/Handle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 258
    :cond_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 259
    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 262
    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/component/HdrController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/HdrController$2;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$400(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PROCESSING_PHOTO"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
