.class Lcom/android/camera/CameraThread$21;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->setAutoFocusLock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$isLocked:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5413
    iput-object p1, p0, Lcom/android/camera/CameraThread$21;->this$0:Lcom/android/camera/CameraThread;

    iput-boolean p2, p0, Lcom/android/camera/CameraThread$21;->val$isLocked:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/android/camera/CameraThread$21;->this$0:Lcom/android/camera/CameraThread;

    iget-boolean v1, p0, Lcom/android/camera/CameraThread$21;->val$isLocked:Z

    #calls: Lcom/android/camera/CameraThread;->setAutoFocusLockInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$4900(Lcom/android/camera/CameraThread;Z)V

    .line 5418
    return-void
.end method
