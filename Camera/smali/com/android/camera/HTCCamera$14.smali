.class Lcom/android/camera/HTCCamera$14;
.super Landroid/content/BroadcastReceiver;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 3097
    iput-object p1, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v1, 0x48

    const/4 v2, 0x0

    .line 3101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 3102
    .local v7, action:Ljava/lang/String;
    const-string v0, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m3DKeySwitchReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    const-string v0, "HTCCamera"

    const-string v3, "onReceive() - com.htc.content.Intent.ACTION_HTC_CAM_SWITCH_CHANGE"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mForce2DMode:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$3800(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3128
    :cond_0
    :goto_0
    return-void

    .line 3112
    :cond_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/view/KeyEvent;

    .line 3113
    .local v8, event:Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_0

    .line 3115
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    #setter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v0, v3}, Lcom/android/camera/HTCCamera;->access$2102(Lcom/android/camera/HTCCamera;I)I

    .line 3116
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3117
    const-string v0, "HTCCamera"

    const-string v1, "mIsKeyguardShow is true, return"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3120
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$600()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3123
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto :goto_0
.end method
