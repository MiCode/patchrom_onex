.class Lcom/android/camera/CameraThread$18;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5232
    iput-object p1, p0, Lcom/android/camera/CameraThread$18;->this$0:Lcom/android/camera/CameraThread;

    iput-boolean p2, p0, Lcom/android/camera/CameraThread$18;->val$isEnabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5236
    iget-object v0, p0, Lcom/android/camera/CameraThread$18;->this$0:Lcom/android/camera/CameraThread;

    iget-boolean v1, p0, Lcom/android/camera/CameraThread$18;->val$isEnabled:Z

    #calls: Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$4600(Lcom/android/camera/CameraThread;Z)V

    .line 5237
    return-void
.end method
