.class Lcom/android/camera/bi/ContinuousBurstStatisticController$2;
.super Ljava/lang/Object;
.source "ContinuousBurstStatisticController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/ContinuousBurstStatisticController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$m_MediaSavedFinishedEventHandler:Lcom/android/camera/event/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iput-object p2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;->val$m_MediaSavedFinishedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$2;->val$m_MediaSavedFinishedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 103
    return-void
.end method
