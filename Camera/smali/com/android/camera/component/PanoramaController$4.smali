.class Lcom/android/camera/component/PanoramaController$4;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/CloseCameraRequestEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$4;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CloseCameraRequestEventArgs;)V
    .locals 3
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CloseCameraRequestEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/CloseCameraRequestEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 860
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/CloseCameraRequestEventArgs;>;"
    iget-object v0, p3, Lcom/android/camera/CloseCameraRequestEventArgs;->camera:Landroid/hardware/Camera;

    .line 861
    .local v0, camera:Landroid/hardware/Camera;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$4;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$3700(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$4;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$3700(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$4;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$3800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Release camera by PanoramaController"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$4;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$3700(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera;->release()V

    .line 865
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$4;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v1, v2}, Lcom/android/camera/component/PanoramaController;->access$3702(Lcom/android/camera/component/PanoramaController;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;

    .line 866
    invoke-virtual {p3}, Lcom/android/camera/CloseCameraRequestEventArgs;->setHandled()V

    .line 868
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 857
    check-cast p3, Lcom/android/camera/CloseCameraRequestEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/PanoramaController$4;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CloseCameraRequestEventArgs;)V

    return-void
.end method
