.class Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"

# interfaces
.implements Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcCommonInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field protected final mPowerManager:Landroid/os/PowerManager;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 472
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcCommonInfoScheduler"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    .line 474
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 475
    new-instance v2, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    .line 477
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 478
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 479
    .local v1, service:Landroid/os/IPowerManager;
    new-instance v2, Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    .line 481
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 483
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    return-void
.end method


# virtual methods
.method public addANR(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    return-void
.end method

.method public addCrash(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    return-void
.end method

.method public addSysCrash()V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method

.method public appDied(I)V
    .locals 4
    .parameter "pid"

    .prologue
    .line 512
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 513
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 516
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    return-void
.end method

.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 3
    .parameter "context"

    .prologue
    .line 488
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v2}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 546
    return-void
.end method

.method public killAllProcess()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 563
    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 758
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 591
    :pswitch_1
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "HtcUBFlushWakeLock"

    invoke-virtual {v8, v10, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 593
    .local v7, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 595
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 596
    .local v5, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->flush()V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 597
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 602
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v7           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_2
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "HtcUBFlushWakeLock"

    invoke-virtual {v8, v10, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 604
    .restart local v7       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 605
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 606
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->flushUsageTime()V

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 607
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_2
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 612
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v7           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_3
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "HtcUBFlushWakeLock"

    invoke-virtual {v8, v10, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 614
    .restart local v7       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 615
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .line 616
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->flushClientStatistic()V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 617
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_3
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 622
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v7           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 623
    .local v6, processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_4
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 624
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 625
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_4
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 626
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$600()J

    move-result-wide v9

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 631
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 632
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_5
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 633
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->setTop(Ljava/lang/String;)V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 638
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 639
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_6
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 640
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->addCrash(Ljava/lang/String;)V

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 645
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 646
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_7
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 647
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->addANR(Ljava/lang/String;)V

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 652
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_8
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_8
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 653
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->addSystemCrash()V

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 658
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_9
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_9
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 659
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->addKernelCrash()V

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 664
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_a
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_a
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 665
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->addRadioCrash()V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 670
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 671
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_b
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 672
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v8, v9, v6}, Lcom/htc/server/HtcInfoOperator;->startProc(IILjava/lang/String;)V

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 677
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 678
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_c
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 679
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->killProc(Ljava/lang/String;)V

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 684
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_d
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_d
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 685
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->killAllProc()V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 690
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_e
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_e
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 691
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 698
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_f
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 708
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 713
    :pswitch_10
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_f
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 714
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->screenOn()V

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 719
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_11
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_10
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 720
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->screenOff()V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 725
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_12
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_11
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 726
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/server/HtcInfoOperator;->userActivity(Landroid/os/Bundle;)V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 731
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_13
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_12
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 732
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/server/HtcInfoOperator;->appDied(Landroid/os/Bundle;)V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 737
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_14
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_13
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 738
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->startPhoneCall()V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 743
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_15
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_14
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 744
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->stopPhoneCall()V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 749
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_16
    const/4 v3, 0x0

    .line 750
    .local v3, intent:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/content/Intent;

    if-eqz v8, :cond_5

    .line 751
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #intent:Landroid/content/Intent;
    check-cast v3, Landroid/content/Intent;

    .line 752
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_15
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 753
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v3}, Lcom/htc/server/HtcInfoOperator;->addSentErrorCount(Landroid/content/Intent;)V

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$200()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 538
    return-void
.end method

.method public setNewTopApp(Ljava/lang/String;)V
    .locals 3
    .parameter "topProcessName"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 493
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$500()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 495
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 496
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 497
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 498
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 499
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 501
    :cond_0
    return-void
.end method

.method public startProcess(Ljava/lang/String;II)V
    .locals 3
    .parameter "processName"
    .parameter "pid"
    .parameter "group"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 525
    monitor-enter p0

    .line 527
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 532
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synchronizedFlush()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 504
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 505
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 506
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 507
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 508
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method
