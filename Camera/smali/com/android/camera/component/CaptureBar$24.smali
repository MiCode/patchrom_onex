.class Lcom/android/camera/component/CaptureBar$24;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/TakingPictureState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/TakingPictureState;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1099
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v1}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1100
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    sget-object v2, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1133
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$3700(Lcom/android/camera/component/CaptureBar;)V

    .line 1134
    return-void

    .line 1103
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v1}, Lcom/android/camera/component/CaptureBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/camera/component/CaptureBar;->access$3900(Lcom/android/camera/component/CaptureBar;ZZ)V

    .line 1105
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2100(Lcom/android/camera/component/CaptureBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V
    invoke-static {v1, v4}, Lcom/android/camera/component/CaptureBar;->access$2200(Lcom/android/camera/component/CaptureBar;Z)V

    goto :goto_0

    .line 1109
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/camera/component/CaptureBar;->access$3900(Lcom/android/camera/component/CaptureBar;ZZ)V

    .line 1110
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V
    invoke-static {v1, v3}, Lcom/android/camera/component/CaptureBar;->access$2200(Lcom/android/camera/component/CaptureBar;Z)V

    goto :goto_0

    .line 1114
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v1}, Lcom/android/camera/component/CaptureBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_4

    .line 1116
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v1}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1117
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$3600(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 1123
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #setter for: Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v1, v4}, Lcom/android/camera/component/CaptureBar;->access$602(Lcom/android/camera/component/CaptureBar;Z)Z

    goto :goto_0

    .line 1118
    :cond_3
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1119
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->hideCaptureBar()V
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2000(Lcom/android/camera/component/CaptureBar;)V

    goto :goto_1

    .line 1122
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/component/CaptureBar;->access$3600(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 1128
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v1}, Lcom/android/camera/component/CaptureBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1129
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->hideCaptureBar()V
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2000(Lcom/android/camera/component/CaptureBar;)V

    .line 1130
    :cond_5
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$24;->this$0:Lcom/android/camera/component/CaptureBar;

    #setter for: Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v1, v3}, Lcom/android/camera/component/CaptureBar;->access$602(Lcom/android/camera/component/CaptureBar;Z)Z

    goto/16 :goto_0

    .line 1100
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
