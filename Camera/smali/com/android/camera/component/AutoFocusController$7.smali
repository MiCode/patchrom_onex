.class Lcom/android/camera/component/AutoFocusController$7;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 605
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v1}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v1}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v1}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$900(Lcom/android/camera/component/AutoFocusController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$700(Lcom/android/camera/component/AutoFocusController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    new-instance v0, Lcom/android/camera/component/AutoFocusController$FocusInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/component/AutoFocusController$FocusInfo;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 624
    .local v0, focusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_LastFocusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$1100(Lcom/android/camera/component/AutoFocusController;)Lcom/android/camera/component/AutoFocusController$FocusInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_LastFocusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$1100(Lcom/android/camera/component/AutoFocusController;)Lcom/android/camera/component/AutoFocusController$FocusInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iput-object v1, v0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    .line 626
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z
    invoke-static {v1, v0}, Lcom/android/camera/component/AutoFocusController;->access$1200(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z

    goto :goto_0

    .line 631
    .end local v0           #focusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$700(Lcom/android/camera/component/AutoFocusController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$1300(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unlock auto-focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v1, v3}, Lcom/android/camera/component/AutoFocusController;->access$702(Lcom/android/camera/component/AutoFocusController;Z)Z

    .line 637
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z
    invoke-static {v1, v3}, Lcom/android/camera/component/AutoFocusController;->access$902(Lcom/android/camera/component/AutoFocusController;Z)Z

    .line 638
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$7;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V
    invoke-static {v1}, Lcom/android/camera/component/AutoFocusController;->access$1000(Lcom/android/camera/component/AutoFocusController;)V

    goto/16 :goto_0
.end method
