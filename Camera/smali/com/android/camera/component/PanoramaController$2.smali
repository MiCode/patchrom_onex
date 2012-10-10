.class Lcom/android/camera/component/PanoramaController$2;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController;->deleteCapturedImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;

.field final synthetic val$contentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$2;->val$contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/component/PanoramaController$2;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v1, -0x1

    const/4 v4, 0x1

    .line 746
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/component/PanoramaController$2;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->val$activity:Lcom/android/camera/HTCCamera;

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController$2;->val$contentUri:Landroid/net/Uri;

    invoke-static {v3, v5}, Lcom/android/camera/io/FileUtility;->deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->val$contentUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V

    .line 757
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    :goto_0
    move-object v6, v0

    .line 758
    .local v6, eventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/PanoramaController$2$1;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/component/PanoramaController$2$1;-><init>(Lcom/android/camera/component/PanoramaController$2;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 765
    return-void

    .line 752
    .end local v0           #e:Lcom/android/camera/MediaEventArgs;
    .end local v6           #eventArgs:Lcom/android/camera/MediaEventArgs;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete content \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/component/PanoramaController$2;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->val$contentUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V

    .restart local v0       #e:Lcom/android/camera/MediaEventArgs;
    goto :goto_0
.end method
