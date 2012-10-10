.class Lcom/android/camera/component/PanoramaController$8;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$uiRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$8;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/PanoramaController$8;->val$uiRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 3
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 1232
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaladoCamera.JpegCallback"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$2602(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 1236
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$2502(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 1237
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4300(Lcom/android/camera/component/PanoramaController;)V

    .line 1240
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$8;->val$cameraThread:Lcom/android/camera/CameraThread;

    new-instance v1, Lcom/android/camera/component/PanoramaController$8$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/PanoramaController$8$1;-><init>(Lcom/android/camera/component/PanoramaController$8;[B)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1269
    return-void
.end method
