.class Lcom/android/camera/component/PanoramaController$8$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$8;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$8;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$8;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$8$1;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1246
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->enablePreviewCallback()V

    .line 1249
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v2}, Lcom/android/camera/component/PanoramaController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 1250
    .local v0, cameraController:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 1252
    const-string v2, "panorama-mode"

    const-string v3, "not-in-progress"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1259
    :goto_0
    new-instance v1, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$8$1;->val$data:[B

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v4, v4, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$1800(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$8;->val$uiRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;-><init>(Lcom/android/camera/component/PanoramaController;[BLjava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V

    .line 1260
    .local v1, saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    .line 1261
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->access$4500()Lcom/android/camera/io/DCFInfo;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 1262
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    .line 1263
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->endTakePicture()V

    .line 1266
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;
    invoke-static {v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1802(Lcom/android/camera/component/PanoramaController;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1267
    return-void

    .line 1256
    .end local v1           #saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$8$1;->this$1:Lcom/android/camera/component/PanoramaController$8;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$8;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$4400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No camera controller to set panorama mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1261
    .restart local v1       #saveTask:Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
    :cond_1
    sget-object v2, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_1
.end method
