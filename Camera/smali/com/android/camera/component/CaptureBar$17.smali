.class Lcom/android/camera/component/CaptureBar$17;
.super Lcom/android/camera/trigger/Trigger;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1020
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$3600(Lcom/android/camera/component/CaptureBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$3700(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V
    invoke-static {v0, v2}, Lcom/android/camera/component/CaptureBar;->access$800(Lcom/android/camera/component/CaptureBar;I)V

    .line 1029
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/CaptureBar;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 1032
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$3602(Lcom/android/camera/component/CaptureBar;Z)Z

    .line 1035
    :cond_1
    return-void

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$3700(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$17;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->onCamcorderButtonPressed(I)V
    invoke-static {v0, v2}, Lcom/android/camera/component/CaptureBar;->access$900(Lcom/android/camera/component/CaptureBar;I)V

    goto :goto_0
.end method
