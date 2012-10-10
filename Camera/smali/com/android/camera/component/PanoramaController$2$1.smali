.class Lcom/android/camera/component/PanoramaController$2$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$2;

.field final synthetic val$eventArgs:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$2;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$eventArgs:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iget-object v1, v1, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$eventArgs:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 763
    return-void
.end method
