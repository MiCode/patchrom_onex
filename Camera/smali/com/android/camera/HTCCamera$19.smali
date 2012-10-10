.class Lcom/android/camera/HTCCamera$19;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->linkToCameraThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6112
    iput-object p1, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$19;->val$uiHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .parameter "event"
    .parameter "sender"
    .parameter "e"

    .prologue
    .line 6115
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/HTCCamera$19$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/HTCCamera$19$1;-><init>(Lcom/android/camera/HTCCamera$19;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6122
    return-void
.end method
