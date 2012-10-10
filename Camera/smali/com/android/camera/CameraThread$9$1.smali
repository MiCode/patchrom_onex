.class Lcom/android/camera/CameraThread$9$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraThread$9;

.field final synthetic val$eventArgs:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread$9;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4583
    iput-object p1, p0, Lcom/android/camera/CameraThread$9$1;->this$1:Lcom/android/camera/CameraThread$9;

    iput-object p2, p0, Lcom/android/camera/CameraThread$9$1;->val$eventArgs:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/android/camera/CameraThread$9$1;->this$1:Lcom/android/camera/CameraThread$9;

    iget-object v0, v0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/CameraThread$9$1;->this$1:Lcom/android/camera/CameraThread$9;

    iget-object v1, v1, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, p0, Lcom/android/camera/CameraThread$9$1;->val$eventArgs:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4587
    return-void
.end method
