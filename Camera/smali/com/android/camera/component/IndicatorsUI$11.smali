.class Lcom/android/camera/component/IndicatorsUI$11;
.super Lcom/android/camera/trigger/Trigger;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1000(Lcom/android/camera/component/IndicatorsUI;)V

    .line 311
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)V

    .line 314
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v2}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 317
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showIndicators()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$900(Lcom/android/camera/component/IndicatorsUI;)V

    .line 320
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_IsFirstLaunch:Z
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_IsVideoResolutionChanged:Z
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$100(Lcom/android/camera/component/IndicatorsUI;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_0

    .line 327
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    .line 331
    .local v0, mode:Lcom/android/camera/CameraMode;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter(Lcom/android/camera/CameraMode;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/IndicatorsUI;->access$1400(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/CameraMode;)V

    .line 337
    .end local v0           #mode:Lcom/android/camera/CameraMode;
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #setter for: Lcom/android/camera/component/IndicatorsUI;->m_IsVideoResolutionChanged:Z
    invoke-static {v1, v3}, Lcom/android/camera/component/IndicatorsUI;->access$102(Lcom/android/camera/component/IndicatorsUI;Z)Z

    .line 338
    return-void

    .line 330
    :cond_0
    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    .restart local v0       #mode:Lcom/android/camera/CameraMode;
    goto :goto_0

    .line 334
    .end local v0           #mode:Lcom/android/camera/CameraMode;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #setter for: Lcom/android/camera/component/IndicatorsUI;->m_IsFirstLaunch:Z
    invoke-static {v1, v3}, Lcom/android/camera/component/IndicatorsUI;->access$1202(Lcom/android/camera/component/IndicatorsUI;Z)Z

    goto :goto_1
.end method
