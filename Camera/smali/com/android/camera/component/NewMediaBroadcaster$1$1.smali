.class Lcom/android/camera/component/NewMediaBroadcaster$1$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

.field final synthetic val$e:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster$1;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iput-object p2, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$e:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$e:Lcom/android/camera/MediaEventArgs;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V
    invoke-static {v1, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEventArgs;)V

    .line 44
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-virtual {v1}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/android/camera/effect/ContinuousBurstScene;

    .line 45
    .local v0, isContinuousBurst:Z
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$e:Lcom/android/camera/MediaEventArgs;

    iget-boolean v1, v1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-virtual {v1}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-virtual {v1}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v1}, Lcom/android/camera/component/NewMediaBroadcaster;->access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 52
    :cond_2
    return-void
.end method
