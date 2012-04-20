.class Lcom/android/camera/component/BurstController$1;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->deleteLatestImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;

.field final synthetic val$contentUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/HTCCamera;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$1;->val$activity:Lcom/android/camera/HTCCamera;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$1;->val$contentUris:[Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    .line 137
    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    .line 138
    .local v6, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 139
    .local v7, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->val$contentUris:[Landroid/net/Uri;

    array-length v1, v1

    add-int/lit8 v10, v1, -0x1

    .local v10, i:I
    :goto_0
    if-ltz v10, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->val$contentUris:[Landroid/net/Uri;

    aget-object v3, v1, v10

    .line 144
    .local v3, contentUri:Landroid/net/Uri;
    if-nez v10, :cond_0

    const/4 v4, 0x1

    .line 147
    .local v4, isLastMedia:Z
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$300(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    :goto_2
    move-object v8, v0

    .line 159
    .local v8, eventArgs:Lcom/android/camera/MediaEventArgs;
    new-instance v1, Lcom/android/camera/component/BurstController$1$1;

    invoke-direct {v1, p0, v6, v8}, Lcom/android/camera/component/BurstController$1$1;-><init>(Lcom/android/camera/component/BurstController$1;Lcom/android/camera/CameraThread;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v6, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 139
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 144
    .end local v0           #e:Lcom/android/camera/MediaEventArgs;
    .end local v4           #isLastMedia:Z
    .end local v8           #eventArgs:Lcom/android/camera/MediaEventArgs;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 151
    .restart local v4       #isLastMedia:Z
    :catch_0
    move-exception v9

    .line 153
    .local v9, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete content \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    sget-object v5, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    move-wide v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V

    .restart local v0       #e:Lcom/android/camera/MediaEventArgs;
    goto :goto_2

    .line 167
    .end local v0           #e:Lcom/android/camera/MediaEventArgs;
    .end local v3           #contentUri:Landroid/net/Uri;
    .end local v4           #isLastMedia:Z
    .end local v9           #ex:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
