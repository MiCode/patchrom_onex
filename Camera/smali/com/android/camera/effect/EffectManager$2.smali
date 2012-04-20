.class Lcom/android/camera/effect/EffectManager$2;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/effect/EffectList$OnEffectChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "effectList"
    .parameter "oldEffect"
    .parameter "newEffect"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 149
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;
    invoke-static {v1}, Lcom/android/camera/effect/EffectManager;->access$900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$1002(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$600(Lcom/android/camera/effect/EffectManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$700(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    .line 166
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$800(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$1102(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 161
    :cond_2
    const/4 p3, 0x0

    goto :goto_1
.end method
