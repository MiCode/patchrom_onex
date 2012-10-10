.class Lcom/android/camera/component/AutoFocusController$9;
.super Lcom/android/camera/trigger/Trigger;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$700(Lcom/android/camera/component/AutoFocusController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$1600(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelAutoFocus for VideoSnapShot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$1700(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unlock auto-focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/AutoFocusController;->access$702(Lcom/android/camera/component/AutoFocusController;Z)Z

    .line 677
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/AutoFocusController;->access$902(Lcom/android/camera/component/AutoFocusController;Z)Z

    .line 678
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$1000(Lcom/android/camera/component/AutoFocusController;)V

    .line 680
    :cond_0
    return-void
.end method
