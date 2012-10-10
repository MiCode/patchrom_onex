.class public Lcom/android/server/PowerManagerService$PMSInternalAPI;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PMSInternalAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4806
    iput-object p1, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableCpuApDvcs(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4808
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->enableCpuApDvcs(Z)V
    invoke-static {v0, p1}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;Z)V

    .line 4809
    return-void
.end method

.method public enableDongleMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcDongleMode:Lcom/android/server/HtcDongleMode;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcDongleMode;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4837
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcDongleMode:Lcom/android/server/HtcDongleMode;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcDongleMode;

    move-result-object v1

    const-string v2, "enableDongleMode"

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/HtcDongleMode;->getCtrlWakeLockState(Ljava/lang/String;II)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$3802(Lcom/android/server/PowerManagerService;I)I

    .line 4841
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)V

    .line 4844
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 4845
    return-void
.end method

.method public setScreenBrightnessMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v0, p1}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 4814
    return-void
.end method

.method public setSmoothBacklight(III)V
    .locals 4
    .parameter "enteringLcdValue"
    .parameter "currentLcdValue"
    .parameter "delayInterval"

    .prologue
    .line 4817
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4818
    if-eq p1, p2, :cond_0

    .line 4819
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/PowerManagerService$BrightnessState;->setCustomizedDelay(I)V

    .line 4820
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v3

    iget v3, v3, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v3, v3

    invoke-virtual {v0, p1, v2, p2, v3}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)Z

    .line 4822
    :cond_0
    monitor-exit v1

    .line 4823
    return-void

    .line 4822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSmoothBacklight()V
    .locals 3

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4827
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->setCustomizedDelay(I)V

    .line 4828
    monitor-exit v1

    .line 4829
    return-void

    .line 4828
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
