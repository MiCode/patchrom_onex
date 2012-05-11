.class Lcom/htc/server/WirelessDisplayService$WivuThread;
.super Ljava/lang/Thread;
.source "WirelessDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WivuThread"
.end annotation


# instance fields
.field groupNumber:Ljava/lang/String;

.field nethdPid:I

.field networkInterface:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "nwif"
    .parameter "group"

    .prologue
    .line 3320
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3316
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 3321
    iput-object p2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    .line 3322
    iput-object p3, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    .line 3323
    return-void
.end method


# virtual methods
.method public changeInterface(Ljava/lang/String;)V
    .locals 5
    .parameter "ifname"

    .prologue
    .line 3382
    const/4 v1, -0x1

    .line 3383
    .local v1, ret:I
    if-nez p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3384
    const-string v2, "WirelessDisplayService"

    const-string v3, "changeInterface: ifname is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    :goto_0
    return-void

    .line 3386
    :cond_0
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInterface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3388
    .local v0, inter:Ljava/lang/String;
    const-string v2, "INTERFACE"

    invoke-static {v2, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getBssid()I
    .locals 3

    .prologue
    .line 3419
    const/4 v0, -0x1

    .line 3420
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getBSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    const-string v1, "BSSID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3422
    return v0
.end method

.method public getDiscoveryStatus()I
    .locals 3

    .prologue
    .line 3441
    const/4 v0, -0x1

    .line 3442
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDiscoveryStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    const-string v1, "DISCOVERY"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3444
    return v0
.end method

.method public getDongleInfo(Ljava/lang/String;)I
    .locals 4
    .parameter "Bssid"

    .prologue
    .line 3433
    const/4 v0, -0x1

    .line 3434
    .local v0, ret:I
    const-string v2, "WirelessDisplayService"

    const-string v3, "getDongleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3436
    .local v1, val:Ljava/lang/String;
    const-string v2, "PEER_GET_INFO"

    invoke-static {v2, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3437
    return v0
.end method

.method public getPID()V
    .locals 2

    .prologue
    .line 3455
    const-string v0, "PID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    return-void
.end method

.method public getPluggedStatus()I
    .locals 3

    .prologue
    .line 3448
    const/4 v0, -0x1

    .line 3449
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getPluggedStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    const-string v1, "PLUGGED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3451
    return v0
.end method

.method public getSSID()I
    .locals 3

    .prologue
    .line 3426
    const/4 v0, -0x1

    .line 3427
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    const-string v1, "SSID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3429
    return v0
.end method

.method public getWivuInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public requestDiscover()V
    .locals 4

    .prologue
    .line 3403
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu discovery command, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DISCOVERY"

    const-string v3, "VALUE=1 "

    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu plugged command, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PLUGGED"

    const-string v3, "VALUE=1 "

    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    return-void
.end method

.method public requestPlugged(Z)I
    .locals 4
    .parameter "plug"

    .prologue
    .line 3408
    const/4 v0, -0x1

    .line 3409
    .local v0, ret:I
    if-eqz p1, :cond_0

    .line 3410
    const-string v1, "PLUGGED"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3414
    :goto_0
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu plugged command, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    return v0

    .line 3412
    :cond_0
    const-string v1, "PLUGGED"

    const-string v2, "VALUE=0 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 3329
    :try_start_0
    const-string v0, "/system/bin/netHDencode"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 3330
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init wivu netHDencoder, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    :goto_0
    return-void

    .line 3335
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectPeer(Ljava/lang/String;)V
    .locals 4
    .parameter "bssid"

    .prologue
    .line 3375
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectPeer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3377
    .local v0, value:Ljava/lang/String;
    const-string v1, "PEER_SELECT"

    invoke-static {v1, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    return-void
.end method

.method public setTransmit(Z)V
    .locals 3
    .parameter "trans"

    .prologue
    .line 3393
    if-eqz p1, :cond_0

    .line 3394
    const-string v0, "LISTEN"

    const-string v1, "VALUE=1 "

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :goto_0
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu LISTEN command, transmit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    return-void

    .line 3396
    :cond_0
    const-string v0, "LISTEN"

    const-string v1, "VALUE=0 "

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 3342
    const-string v0, "WirelessDisplayService"

    const-string v1, "stopThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    iget v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    if-lez v0, :cond_0

    .line 3348
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuIpcExit()I

    .line 3349
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 3352
    :cond_0
    return-void
.end method

.method public transactEvent(Ljava/lang/String;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x15

    const/16 v10, 0x3d

    const/4 v9, -0x1

    .line 3460
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3462
    .local v1, b:Landroid/os/Bundle;
    if-eqz p1, :cond_8

    const-string v6, "STATUS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3463
    const/4 v0, -0x1

    .line 3464
    .local v0, arg2:I
    const-string v6, "SUCCEED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3465
    const/4 v0, 0x1

    .line 3467
    :cond_0
    const-string v6, "PID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3468
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3469
    .local v3, pids:[Ljava/lang/String;
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pids:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 3471
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    aget-object v6, v3, v13

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3473
    .local v4, res:Ljava/lang/String;
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 3475
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intpid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    .end local v3           #pids:[Ljava/lang/String;
    .end local v4           #res:Ljava/lang/String;
    :cond_1
    const-string v6, "wivu_res"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    const-string v6, "DISCOVERY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3481
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x3f

    invoke-virtual {v6, v10, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3494
    .local v2, m:Landroid/os/Message;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3495
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3523
    .end local v0           #arg2:I
    .end local v2           #m:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 3482
    .restart local v0       #arg2:I
    :cond_3
    const-string v6, "PLUGGED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3483
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x3e

    invoke-virtual {v6, v10, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 3484
    .end local v2           #m:Landroid/os/Message;
    :cond_4
    const-string v6, "ROTATION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3485
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v10, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 3486
    .end local v2           #m:Landroid/os/Message;
    :cond_5
    const-string v6, "PEER_HRTBEAT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3487
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x41

    invoke-virtual {v6, v10, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 3488
    .end local v2           #m:Landroid/os/Message;
    :cond_6
    const-string v6, "PEER_GET_INFO"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3489
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x42

    invoke-virtual {v6, v10, v7, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 3491
    .end local v2           #m:Landroid/os/Message;
    :cond_7
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transactEvent: unhandled event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    invoke-virtual {v6, v10, v9, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 3496
    .end local v0           #arg2:I
    .end local v2           #m:Landroid/os/Message;
    :cond_8
    if-eqz p1, :cond_2

    .line 3497
    const-string v6, "wivu_req"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    const-string v6, "WIVUSTART"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3499
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x16

    invoke-virtual {v6, v11, v7, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3519
    .restart local v2       #m:Landroid/os/Message;
    :goto_2
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3520
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 3500
    .end local v2           #m:Landroid/os/Message;
    :cond_9
    const-string v6, "WIVUSTOP"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3501
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x17

    invoke-virtual {v6, v11, v7, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_2

    .line 3502
    .end local v2           #m:Landroid/os/Message;
    :cond_a
    const-string v6, "PEER_LIST"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3503
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x18

    invoke-virtual {v6, v11, v7, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_2

    .line 3504
    .end local v2           #m:Landroid/os/Message;
    :cond_b
    const-string v6, "SWUPGRADE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3505
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0x19

    invoke-virtual {v6, v11, v7, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_2

    .line 3507
    .end local v2           #m:Landroid/os/Message;
    :cond_c
    const-string v6, "WirelessDisplayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transactEvent: unhandled event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const-string v6, "BITRATE="

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3509
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3510
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 3511
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v6

    aget-object v7, v5, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    .line 3517
    .end local v5           #values:[Ljava/lang/String;
    :cond_d
    :goto_3
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    invoke-virtual {v6, v11, v9, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .line 3512
    .end local v2           #m:Landroid/os/Message;
    :cond_e
    const-string v6, "REQ_VIDEO_I_FRAME="

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3513
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3514
    .restart local v5       #values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 3515
    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v6

    aget-object v7, v5, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->requestVideoIFrame(I)V

    goto :goto_3
.end method

.method public wivuInit()I
    .locals 3

    .prologue
    .line 3355
    const-string v0, "WirelessDisplayService"

    const-string v1, "wivuInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    :try_start_0
    const-string v0, "/system/bin/netHDencode"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 3359
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init wivu netHDencoder, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    :goto_0
    iget v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    return v0

    .line 3364
    :catch_0
    move-exception v0

    goto :goto_0
.end method
