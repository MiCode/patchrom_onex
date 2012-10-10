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
    .line 1180
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/ViewFinder$18$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$18$1;-><init>(Lcom/android/camera/component/ViewFinder$18;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method
