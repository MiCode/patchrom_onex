.class Lcom/android/camera/component/ViewFinder$18;
.super Lcom/android/camera/trigger/Trigger;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupUIPropertyChangedCallbacks(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1186
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1188
    new-instance v1, Lcom/android/camera/component/ViewFinder$18$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$18$1;-><init>(Lcom/android/camera/component/ViewFinder$18;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/ViewFinder;->access$2000(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No camera thread to add event handlers"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
