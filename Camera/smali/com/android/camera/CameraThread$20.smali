.class Lcom/android/camera/CameraThread$20;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V
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
    .line 5390
    iput-object p1, p0, Lcom/android/camera/CameraThread$20;->this$0:Lcom/android/camera/CameraThread;

    iput-boolean p2, p0, Lcom/android/camera/CameraThread$20;->val$isLocked:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5394
    iget-object v0, p0, Lcom/android/camera/CameraThread$20;->this$0:Lcom/android/camera/CameraThread;

    iget-boolean v1, p0, Lcom/android/camera/CameraThread$20;->val$isLocked:Z

    const/4 v2, 0x1

    #calls: Lcom/android/camera/CameraThread;->setAecAwbLockInternal(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraThread;->access$4800(Lcom/android/camera/CameraThread;ZZ)V

    .line 5395
    return-void
.end method
