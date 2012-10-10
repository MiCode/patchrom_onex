.class Lcom/android/camera/CameraThread$9;
.super Ljava/lang/Thread;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->deleteLatestMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 4563
    iput-object p1, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/CameraThread$9;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v1, -0x1

    const/4 v4, 0x1

    .line 4567
    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$context:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 4570
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting media \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4572
    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-static {v3, v5}, Lcom/android/camera/io/FileUtility;->deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4573
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V

    .line 4581
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    :goto_0
    move-object v6, v0

    .line 4582
    .local v6, eventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    new-instance v2, Lcom/android/camera/CameraThread$9$1;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/CameraThread$9$1;-><init>(Lcom/android/camera/CameraThread$9;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4590
    .end local v0           #e:Lcom/android/camera/MediaEventArgs;
    .end local v6           #eventArgs:Lcom/android/camera/MediaEventArgs;
    :cond_0
    return-void

    .line 4576
    :cond_1
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete media \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V

    .restart local v0       #e:Lcom/android/camera/MediaEventArgs;
    goto :goto_0
.end method
