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
    .line 4476
    iput-object p1, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/CameraThread$9;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x1

    .line 4480
    iget-object v1, p0, Lcom/android/camera/CameraThread$9;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 4486
    :try_start_0
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting media \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4487
    iget-object v1, p0, Lcom/android/camera/CameraThread$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4488
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4497
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    :goto_0
    move-object v6, v0

    .line 4498
    .local v6, eventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    new-instance v2, Lcom/android/camera/CameraThread$9$1;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/CameraThread$9$1;-><init>(Lcom/android/camera/CameraThread$9;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4506
    .end local v0           #e:Lcom/android/camera/MediaEventArgs;
    .end local v6           #eventArgs:Lcom/android/camera/MediaEventArgs;
    :cond_0
    return-void

    .line 4490
    :catch_0
    move-exception v7

    .line 4492
    .local v7, ex:Ljava/lang/Throwable;
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete media \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4493
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v3, p0, Lcom/android/camera/CameraThread$9;->val$contentUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    move-wide v1, v9

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V

    .restart local v0       #e:Lcom/android/camera/MediaEventArgs;
    goto :goto_0
.end method
