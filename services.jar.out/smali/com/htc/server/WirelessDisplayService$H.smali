.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 490
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 74
    .parameter "msg"

    .prologue
    .line 494
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    .line 495
    .local v63, type:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 496
    .local v8, arg1:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 497
    .local v9, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v48

    .line 499
    .local v48, previousState:I
    sparse-switch v63, :sswitch_data_0

    .line 1264
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 501
    :sswitch_0
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_CHANGE_STATE state="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " err="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v69, 0x8

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_1

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v8, v0, :cond_1

    .line 504
    const-string v69, "WirelessDisplayService"

    const-string v70, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    :cond_1
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v8, v0, :cond_2

    .line 509
    const/16 v69, 0x33

    const/16 v70, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v30

    .line 510
    .local v30, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 513
    .end local v30           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 517
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_4

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v69

    if-nez v69, :cond_3

    .line 520
    const-string v69, "WirelessDisplayService"

    const-string v70, "wifi scan fail!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_3
    const/16 v69, 0x11

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .line 522
    .local v38, msgWifiScan:Landroid/os/Message;
    const-wide/16 v69, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 524
    .end local v38           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 528
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v68

    .line 529
    .local v68, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v22

    .line 530
    .local v22, ipAddress:I
    move/from16 v59, v22

    .line 531
    .local v59, temp:I
    const-string v69, "%d.%d.%d.%d"

    const/16 v70, 0x4

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x1

    shr-int/lit8 v72, v22, 0x8

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x2

    shr-int/lit8 v72, v22, 0x10

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x3

    shr-int/lit8 v72, v22, 0x18

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    invoke-static/range {v69 .. v70}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 536
    .local v23, ipStr:Ljava/lang/String;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "  "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$500()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 538
    .local v27, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_7

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v69

    const-string v70, "0.0.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-nez v69, :cond_7

    .line 539
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Got the IP address"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-nez v69, :cond_6

    .line 541
    new-instance v69, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    const-string v72, "3655"

    invoke-direct/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 542
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v69

    const/16 v70, -0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_5

    .line 543
    const-string v69, "WirelessDisplayService"

    const-string v70, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 550
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 548
    :cond_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 552
    const/16 v69, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 553
    .local v18, getIp:Landroid/os/Message;
    const-wide/16 v69, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 559
    .end local v18           #getIp:Landroid/os/Message;
    .end local v22           #ipAddress:I
    .end local v23           #ipStr:Ljava/lang/String;
    .end local v27           #matcher2:Ljava/util/regex/Matcher;
    .end local v59           #temp:I
    .end local v68           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_3
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_STOP_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_8

    .line 561
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 563
    :cond_8
    const/16 v69, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 564
    const/16 v69, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 565
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 566
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 568
    const/16 v69, 0x33

    const/16 v70, 0x35

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 569
    .local v34, msgSt:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 571
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->clear()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x49

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 584
    .end local v34           #msgSt:Landroid/os/Message;
    :sswitch_4
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/16 v69, 0x1f

    const/16 v70, 0x21

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v61

    .line 589
    .local v61, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 594
    .end local v61           #timeOutStop:Landroid/os/Message;
    :sswitch_5
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 596
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v8, v0, :cond_9

    .line 597
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 599
    :cond_9
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 604
    :sswitch_6
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "Mirror State: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/16 v69, 0x1

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 606
    new-instance v69, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 616
    :sswitch_7
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_WIFI_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 622
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-nez v69, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v70

    new-instance v71, Landroid/content/Intent;

    const-string v72, "com.htc.wifidisplay.IWfdService"

    invoke-direct/range {v71 .. v72}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v72

    const/16 v73, 0x1

    invoke-virtual/range {v70 .. v73}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 625
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Bind WHDMI WfdService = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 630
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_a

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1902(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 634
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Unbind WfdService = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 639
    :sswitch_a
    move v12, v8

    .line 640
    .local v12, configState:I
    const/16 v69, 0x3

    move/from16 v0, v69

    if-eq v8, v0, :cond_b

    const/16 v69, 0x4

    move/from16 v0, v69

    if-ne v8, v0, :cond_e

    .line 641
    :cond_b
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "receiver WfdServices Call back, "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v28, Landroid/content/Intent;

    const-string v69, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v28, mirrorResultIntent:Landroid/content/Intent;
    const/16 v69, 0x3

    move/from16 v0, v69

    if-ne v8, v0, :cond_d

    .line 644
    const-string v69, "RESULT"

    const-string v70, "SUCCESS"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 645
    :cond_d
    const/16 v69, 0x4

    move/from16 v0, v69

    if-ne v8, v0, :cond_c

    .line 646
    const-string v69, "RESULT"

    const-string v70, "FAIL"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 650
    .end local v28           #mirrorResultIntent:Landroid/content/Intent;
    :cond_e
    const/16 v69, 0x5

    move/from16 v0, v69

    if-ne v8, v0, :cond_0

    .line 651
    const/16 v69, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 661
    .end local v12           #configState:I
    :sswitch_b
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v8, v0, :cond_f

    const/16 v69, 0x1

    :goto_3
    move-object/from16 v0, v70

    move/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 662
    :cond_f
    const/16 v69, 0x0

    goto :goto_3

    .line 669
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "wivu_res"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 670
    .local v57, status:Ljava/lang/String;
    const/16 v69, 0x3e

    move/from16 v0, v69

    if-ne v8, v0, :cond_12

    .line 672
    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_11

    .line 674
    const-string v69, "VALUE=1"

    move-object/from16 v0, v57

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_10

    .line 675
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_0

    const/16 v69, 0x1

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x2

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 679
    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    .line 680
    .local v60, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v70, 0x15f90

    move-object/from16 v0, v69

    move-object/from16 v1, v60

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 683
    .end local v60           #timeOut2:Landroid/os/Message;
    :cond_10
    const-string v69, "VALUE=0"

    move-object/from16 v0, v57

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 684
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 687
    :cond_11
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 692
    :cond_12
    const/16 v69, 0x3f

    move/from16 v0, v69

    if-ne v8, v0, :cond_15

    .line 694
    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_14

    .line 696
    const-string v69, "VALUE=1"

    move-object/from16 v0, v57

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_13

    .line 697
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 699
    :cond_13
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 700
    :cond_14
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 704
    :cond_15
    const/16 v69, 0x40

    move/from16 v0, v69

    if-ne v8, v0, :cond_16

    .line 705
    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 706
    :cond_16
    const/16 v69, 0x41

    move/from16 v0, v69

    if-eq v8, v0, :cond_0

    .line 709
    const/16 v69, 0x42

    move/from16 v0, v69

    if-ne v8, v0, :cond_0

    .line 710
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_0

    .line 711
    move-object/from16 v62, v57

    .line 712
    .local v62, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 718
    .end local v57           #status:Ljava/lang/String;
    .end local v62           #tosend:Ljava/lang/String;
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "wivu_req"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 719
    .local v53, request:Ljava/lang/String;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "WIVU_REQ:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    if-eqz v53, :cond_1d

    const/16 v69, 0x16

    move/from16 v0, v69

    if-ne v8, v0, :cond_1d

    .line 723
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x16

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 724
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 726
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2900()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 727
    .local v26, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_17

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    :cond_17
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3100()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 730
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_18

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    :cond_18
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 733
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_19

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    :cond_19
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IP = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", audioPort = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", videoPort = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v72

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_1c

    const/16 v69, 0x2

    move/from16 v0, v48

    move/from16 v1, v69

    if-eq v0, v1, :cond_1a

    const/16 v69, 0x7

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_1c

    .line 741
    :cond_1a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_1b

    const/16 v69, 0x7

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_1b

    .line 742
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x29

    const/16 v71, 0x2a

    const/16 v72, 0x2c

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 743
    .local v31, msg3:Landroid/os/Message;
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 745
    const-wide/16 v69, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 746
    .end local v31           #msg3:Landroid/os/Message;
    :cond_1b
    const/16 v69, 0x2

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 748
    const/16 v69, 0x33

    const/16 v70, 0x34

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 750
    .local v29, msg1:Landroid/os/Message;
    const-wide/16 v69, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 756
    .end local v29           #msg1:Landroid/os/Message;
    :cond_1c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 757
    const-string v69, "WirelessDisplayService"

    const-string v70, "Dongle wrong state: take it out"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 759
    const/16 v69, 0x1f

    const/16 v70, 0x21

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v25

    .line 760
    .local v25, makeSure:Landroid/os/Message;
    const-wide/16 v69, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 764
    .end local v25           #makeSure:Landroid/os/Message;
    .end local v26           #matcher:Ljava/util/regex/Matcher;
    :cond_1d
    const/16 v69, 0x17

    move/from16 v0, v69

    if-ne v8, v0, :cond_21

    .line 767
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x17

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 768
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 770
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_1e

    .line 771
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_1e

    const/16 v69, 0x7

    move/from16 v0, v48

    move/from16 v1, v69

    if-eq v0, v1, :cond_1e

    .line 773
    const-string v69, "WirelessDisplayService"

    const-string v70, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v69, 0x6

    const/16 v70, -0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v58

    .line 775
    .local v58, stopTrans:Landroid/os/Message;
    const-wide/16 v69, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 778
    .end local v58           #stopTrans:Landroid/os/Message;
    :cond_1e
    const/16 v69, 0x1

    move/from16 v0, v48

    move/from16 v1, v69

    if-eq v0, v1, :cond_1f

    .line 780
    const/16 v69, 0x7

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_20

    .line 784
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_1f

    .line 785
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x29

    const/16 v71, 0x2b

    const/16 v72, 0x2c

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 786
    .local v33, msgPause:Landroid/os/Message;
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 797
    .end local v33           #msgPause:Landroid/os/Message;
    :cond_1f
    :goto_4
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3700()Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 800
    const-string v69, "WirelessDisplayService"

    const-string v70, "Switching the dongle"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3702(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 791
    :cond_20
    const/16 v69, 0x33

    const/16 v70, 0x35

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v30

    .line 792
    .restart local v30       #msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    .line 806
    .end local v30           #msg2:Landroid/os/Message;
    :cond_21
    const/16 v69, 0x18

    move/from16 v0, v69

    if-ne v8, v0, :cond_22

    .line 807
    const-string v69, "="

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 808
    .local v24, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3800(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    const/16 v69, 0x8

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-interface/range {v69 .. v70}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 813
    const-string v69, "WirelessDisplayService"

    const-string v70, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 819
    .end local v24           #macs:[Ljava/lang/String;
    :cond_22
    const/16 v69, 0x19

    move/from16 v0, v69

    if-ne v8, v0, :cond_0

    .line 820
    const-string v69, "WirelessDisplayService"

    const-string v70, "SWUPGRADE and send notification"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/16 v69, 0x10

    move-object/from16 v0, v53

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v66

    .line 822
    .local v66, upgrade_ver:Ljava/lang/String;
    const/16 v42, 0x0

    .line 823
    .local v42, oldswver:Ljava/lang/String;
    const/16 v67, 0x0

    .line 824
    .local v67, upgrade_ver_num:I
    const/16 v43, 0x0

    .line 825
    .local v43, oldswver_num:I
    const/16 v20, 0x0

    .line 826
    .local v20, in:Ljava/io/FileInputStream;
    const/16 v44, 0x0

    .line 827
    .local v44, out:Ljava/io/FileOutputStream;
    const/16 v46, 0x0

    .line 828
    .local v46, p:Ljava/io/PrintStream;
    const/16 v49, 0x0

    .line 831
    .local v49, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v21, Ljava/io/FileInputStream;

    const-string v69, "/data/misc/wifidisplay.swver"

    move-object/from16 v0, v21

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 832
    .end local v20           #in:Ljava/io/FileInputStream;
    .local v21, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v50, Ljava/io/BufferedReader;

    new-instance v69, Ljava/io/InputStreamReader;

    move-object/from16 v0, v69

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c

    .line 833
    .end local v49           #reader:Ljava/io/BufferedReader;
    .local v50, reader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual/range {v50 .. v50}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .line 834
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "read oldswver is: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d

    .line 841
    if-eqz v21, :cond_23

    .line 843
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12

    .line 847
    :cond_23
    :goto_5
    if-eqz v50, :cond_24

    .line 849
    :try_start_4
    invoke-virtual/range {v50 .. v50}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13

    :cond_24
    :goto_6
    move-object/from16 v49, v50

    .end local v50           #reader:Ljava/io/BufferedReader;
    .restart local v49       #reader:Ljava/io/BufferedReader;
    move-object/from16 v20, v21

    .line 856
    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    :cond_25
    :goto_7
    const/16 v69, 0x8

    :try_start_5
    move-object/from16 v0, v66

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    .line 857
    const/16 v69, 0x8

    move-object/from16 v0, v42

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v43

    .line 862
    :goto_8
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "oldswver num is: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "upgrade_ver num is: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-nez v42, :cond_2a

    .line 866
    :try_start_6
    new-instance v45, Ljava/io/FileOutputStream;

    const-string v69, "/data/misc/wifidisplay.swver"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 867
    .end local v44           #out:Ljava/io/FileOutputStream;
    .local v45, out:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v47, Ljava/io/PrintStream;

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_18

    .line 869
    .end local v46           #p:Ljava/io/PrintStream;
    .local v47, p:Ljava/io/PrintStream;
    :try_start_8
    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19

    move-object/from16 v46, v47

    .end local v47           #p:Ljava/io/PrintStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    move-object/from16 v44, v45

    .line 874
    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 835
    :catch_0
    move-exception v14

    .line 836
    .local v14, e1:Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_9
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "FileNotFoundException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v69, Ljava/io/File;

    const-string v70, "/data/misc/wifidisplay.swver"

    invoke-direct/range {v69 .. v70}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 841
    if-eqz v20, :cond_26

    .line 843
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    .line 847
    :cond_26
    :goto_a
    if-eqz v49, :cond_25

    .line 849
    :try_start_b
    invoke-virtual/range {v49 .. v49}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_7

    .line 850
    .end local v14           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v69

    goto/16 :goto_7

    .line 838
    :catch_2
    move-exception v14

    .line 839
    .local v14, e1:Ljava/io/IOException;
    :goto_b
    :try_start_c
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IOException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 841
    if-eqz v20, :cond_27

    .line 843
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    .line 847
    :cond_27
    :goto_c
    if-eqz v49, :cond_25

    .line 849
    :try_start_e
    invoke-virtual/range {v49 .. v49}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_7

    .line 841
    .end local v14           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v69

    :goto_d
    if-eqz v20, :cond_28

    .line 843
    :try_start_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 847
    :cond_28
    :goto_e
    if-eqz v49, :cond_29

    .line 849
    :try_start_10
    invoke-virtual/range {v49 .. v49}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 841
    :cond_29
    :goto_f
    throw v69

    .line 858
    :catch_3
    move-exception v13

    .line 859
    .local v13, e:Ljava/lang/NumberFormatException;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "NumberFormatException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 870
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v13

    .line 871
    .local v13, e:Ljava/io/FileNotFoundException;
    :goto_10
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "FileNotFoundException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 872
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v13

    .line 873
    .local v13, e:Ljava/io/IOException;
    :goto_11
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IOException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 877
    .end local v13           #e:Ljava/io/IOException;
    :cond_2a
    move/from16 v0, v67

    move/from16 v1, v43

    if-le v0, v1, :cond_0

    .line 879
    :try_start_11
    new-instance v45, Ljava/io/FileOutputStream;

    const-string v69, "/data/misc/wifidisplay.swver"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 880
    .end local v44           #out:Ljava/io/FileOutputStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    :try_start_12
    new-instance v47, Ljava/io/PrintStream;

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    .line 881
    .end local v46           #p:Ljava/io/PrintStream;
    .restart local v47       #p:Ljava/io/PrintStream;
    :try_start_13
    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15

    move-object/from16 v46, v47

    .end local v47           #p:Ljava/io/PrintStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    move-object/from16 v44, v45

    .line 888
    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mNotifyUpgrade:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 882
    :catch_6
    move-exception v13

    .line 883
    .local v13, e:Ljava/io/FileNotFoundException;
    :goto_13
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "FileNotFoundException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 884
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v13

    .line 885
    .local v13, e:Ljava/io/IOException;
    :goto_14
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IOException: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 898
    .end local v13           #e:Ljava/io/IOException;
    .end local v20           #in:Ljava/io/FileInputStream;
    .end local v42           #oldswver:Ljava/lang/String;
    .end local v43           #oldswver_num:I
    .end local v44           #out:Ljava/io/FileOutputStream;
    .end local v46           #p:Ljava/io/PrintStream;
    .end local v49           #reader:Ljava/io/BufferedReader;
    .end local v53           #request:Ljava/lang/String;
    .end local v66           #upgrade_ver:Ljava/lang/String;
    .end local v67           #upgrade_ver_num:I
    :sswitch_e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 900
    const/16 v69, 0x20

    move/from16 v0, v69

    if-ne v8, v0, :cond_2b

    .line 902
    const-string v69, "WirelessDisplayService"

    const-string v70, "REQ_DISCOVERY"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 905
    :cond_2b
    const/16 v69, 0x21

    move/from16 v0, v69

    if-ne v8, v0, :cond_2d

    .line 907
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "REQ_PLUGGED:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/16 v52, -0x1

    .line 909
    .local v52, req:I
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_2c

    .line 910
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 911
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v52

    goto/16 :goto_0

    .line 915
    :cond_2c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v52

    .line 916
    const/16 v69, 0x33

    const/16 v70, 0x35

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 917
    .local v36, msgStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 920
    .end local v36           #msgStop:Landroid/os/Message;
    .end local v52           #req:I
    :cond_2d
    const/16 v69, 0x22

    move/from16 v0, v69

    if-ne v8, v0, :cond_2e

    .line 922
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 924
    :cond_2e
    const/16 v69, 0x23

    move/from16 v0, v69

    if-ne v8, v0, :cond_2f

    .line 926
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 928
    :cond_2f
    const/16 v69, 0x24

    move/from16 v0, v69

    if-ne v8, v0, :cond_30

    .line 930
    const-string v69, "WirelessDisplayService"

    const-string v70, "REQ_STOP_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 932
    const/16 v69, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 933
    const/16 v69, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 934
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 936
    const/16 v69, 0x33

    const/16 v70, 0x35

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 937
    .local v35, msgSto:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 939
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$602(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->clear()V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x49

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 946
    .end local v35           #msgSto:Landroid/os/Message;
    :cond_30
    const/16 v69, 0x25

    move/from16 v0, v69

    if-ne v8, v0, :cond_31

    .line 947
    const-string v69, "WirelessDisplayService"

    const-string v70, "REQ_PEER_SELECT"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 949
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "dongle_bssid"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 950
    .local v10, bssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 952
    .end local v10           #bssid2:Ljava/lang/String;
    :cond_31
    const/16 v69, 0x27

    move/from16 v0, v69

    if-ne v8, v0, :cond_32

    .line 953
    const-string v69, "WirelessDisplayService"

    const-string v70, "REQ_SET_INTERFACE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "interface"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 955
    .local v19, ifname:Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 956
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 959
    .end local v19           #ifname:Ljava/lang/String;
    :cond_32
    const/16 v69, 0x28

    move/from16 v0, v69

    if-ne v8, v0, :cond_0

    .line 960
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/16 v52, -0x1

    .line 962
    .restart local v52       #req:I
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_33

    .line 963
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v52

    goto/16 :goto_0

    .line 965
    :cond_33
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 972
    .end local v52           #req:I
    :sswitch_f
    const/16 v69, 0x34

    move/from16 v0, v69

    if-ne v8, v0, :cond_36

    .line 974
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_START"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/16 v69, 0x3

    move/from16 v0, v48

    move/from16 v1, v69

    if-eq v0, v1, :cond_0

    .line 980
    const/16 v55, -0x1

    .line 981
    .local v55, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v55

    .line 982
    if-nez v55, :cond_34

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    const/16 v71, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 984
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 987
    :cond_34
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_35

    .line 988
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 989
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 991
    .end local v55           #star:I
    :cond_36
    const/16 v69, 0x35

    move/from16 v0, v69

    if-ne v8, v0, :cond_38

    .line 993
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_STOP"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/16 v69, 0x4

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_37

    .line 999
    :cond_37
    const/16 v55, -0x1

    .line 1000
    .restart local v55       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)I

    move-result v55

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v70

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v9}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1002
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1003
    .end local v55           #star:I
    :cond_38
    const/16 v69, 0x36

    move/from16 v0, v69

    if-ne v8, v0, :cond_0

    .line 1004
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_RESTART"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/16 v55, -0x1

    .line 1006
    .restart local v55       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v55

    .line 1010
    const/16 v69, -0x1

    move/from16 v0, v55

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1011
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_39

    .line 1012
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1013
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1019
    .end local v55           #star:I
    :sswitch_10
    move/from16 v56, v48

    .line 1020
    .local v56, state:I
    const/16 v16, 0x0

    .line 1022
    .local v16, err:I
    const/16 v69, 0x1

    move/from16 v0, v48

    move/from16 v1, v69

    if-eq v0, v1, :cond_0

    .line 1024
    const/16 v69, 0x2b

    move/from16 v0, v69

    if-ne v8, v0, :cond_3d

    .line 1025
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_PAUSE event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/16 v69, 0x2c

    move/from16 v0, v69

    if-ne v9, v0, :cond_3b

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)I

    move-result v6

    .line 1028
    .local v6, app:I
    if-nez v6, :cond_3a

    .line 1029
    const/16 v56, 0x7

    .line 1072
    .end local v6           #app:I
    :cond_3a
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v56

    move/from16 v2, v16

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1030
    :cond_3b
    const/16 v69, 0x2d

    move/from16 v0, v69

    if-ne v9, v0, :cond_3c

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)V

    .line 1032
    const/16 v56, 0x4

    goto :goto_15

    .line 1033
    :cond_3c
    const/16 v69, 0x2e

    move/from16 v0, v69

    if-ne v9, v0, :cond_3a

    .line 1034
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_PAUSE: CALL_PAUSE event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)I

    move-result v6

    .line 1036
    .restart local v6       #app:I
    if-nez v6, :cond_3a

    .line 1037
    const/16 v56, 0x9

    goto :goto_15

    .line 1039
    .end local v6           #app:I
    :cond_3d
    const/16 v69, 0x2a

    move/from16 v0, v69

    if-ne v8, v0, :cond_3a

    .line 1040
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_RESUME event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/16 v69, 0x2c

    move/from16 v0, v69

    if-ne v9, v0, :cond_40

    .line 1042
    const/16 v69, 0x7

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_3a

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v7

    .line 1044
    .local v7, app2:I
    if-nez v7, :cond_3e

    .line 1045
    const/16 v56, 0x3

    goto :goto_15

    .line 1047
    :cond_3e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_3f

    .line 1048
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1049
    :cond_3f
    const/16 v56, 0x1

    .line 1050
    const/16 v16, -0x4

    goto/16 :goto_15

    .line 1053
    .end local v7           #app2:I
    :cond_40
    const/16 v69, 0x2d

    move/from16 v0, v69

    if-ne v9, v0, :cond_41

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)V

    .line 1055
    const/16 v56, 0x3

    goto/16 :goto_15

    .line 1056
    :cond_41
    const/16 v69, 0x2e

    move/from16 v0, v69

    if-ne v9, v0, :cond_3a

    .line 1057
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_RESUME: CALL_PAUSE event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/16 v69, 0x9

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_3a

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v7

    .line 1060
    .restart local v7       #app2:I
    if-nez v7, :cond_42

    .line 1061
    const/16 v56, 0x3

    goto/16 :goto_15

    .line 1063
    :cond_42
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_43

    .line 1064
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1065
    :cond_43
    const/16 v56, 0x1

    .line 1066
    const/16 v16, -0x4

    goto/16 :goto_15

    .line 1085
    .end local v7           #app2:I
    .end local v16           #err:I
    .end local v56           #state:I
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    const-string v71, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v70 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4502(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1089
    :sswitch_12
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", arg:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-nez v69, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_44

    .line 1091
    const/16 v69, 0x70

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v8, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1092
    .local v37, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v69, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1093
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "WfdService not ready, resent, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4710(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1095
    .end local v37           #msgUseWfdService:Landroid/os/Message;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-eqz v69, :cond_46

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4702(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1097
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_45

    .line 1098
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1099
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Use WfdService, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 1102
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v70

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1115
    :cond_45
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1118
    :cond_46
    const-string v69, "WirelessDisplayService"

    const-string v70, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1122
    :sswitch_13
    move v4, v8

    .line 1123
    .local v4, absoluteDirection:I
    move/from16 v51, v9

    .line 1124
    .local v51, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v51

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v17

    .line 1125
    .local v17, fingerIndicator:I
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v17

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5202(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1129
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2500()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v70

    const/16 v71, 0x6f

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v71

    move/from16 v2, v17

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v70

    const-wide/16 v71, 0x3e8

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1132
    .end local v4           #absoluteDirection:I
    .end local v17           #fingerIndicator:I
    .end local v51           #relativeDirection:I
    :sswitch_14
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_47

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_47

    .line 1133
    const-string v69, "WirelessDisplayService"

    const-string v70, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1135
    :cond_47
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_48

    const/16 v69, 0x3

    move/from16 v0, v69

    if-ne v8, v0, :cond_48

    .line 1137
    const-string v69, "WirelessDisplayService"

    const-string v70, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1140
    :cond_48
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v8, v0, :cond_0

    .line 1142
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_49

    .line 1143
    const-string v69, "WirelessDisplayService"

    const-string v70, "Pre Load DLNA Services"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    new-instance v70, Landroid/content/Intent;

    const-string v71, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v70 .. v71}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_8

    .line 1151
    :cond_49
    :goto_16
    const/16 v69, 0x3

    move/from16 v0, v48

    move/from16 v1, v69

    if-eq v0, v1, :cond_4a

    const/16 v69, 0x7

    move/from16 v0, v48

    move/from16 v1, v69

    if-ne v0, v1, :cond_4b

    .line 1152
    :cond_4a
    new-instance v28, Landroid/content/Intent;

    const-string v69, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1153
    .restart local v28       #mirrorResultIntent:Landroid/content/Intent;
    const-string v69, "RESULT"

    const-string v70, "SUCCESS"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1155
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "mirror mode status: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1146
    .end local v28           #mirrorResultIntent:Landroid/content/Intent;
    :catch_8
    move-exception v54

    .line 1147
    .local v54, se:Ljava/lang/SecurityException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1157
    .end local v54           #se:Ljava/lang/SecurityException;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v15

    .line 1158
    .local v15, environmentDongleState:I
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Start mirror mode from finger gesture indicator, environmentDonleState = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v40, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v40

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v40, notifyConfigerTool:Landroid/content/Intent;
    new-instance v39, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v39

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v39, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v41, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v41

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v41, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v69, 0x1000

    move-object/from16 v0, v40

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1163
    const/high16 v69, 0x1000

    move-object/from16 v0, v39

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1164
    const/high16 v69, 0x1000

    move-object/from16 v0, v41

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1166
    new-instance v28, Landroid/content/Intent;

    const-string v69, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    .restart local v28       #mirrorResultIntent:Landroid/content/Intent;
    const-string v69, "RESULT"

    const-string v70, "FAIL"

    move-object/from16 v0, v28

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v69

    if-nez v69, :cond_4d

    .line 1170
    const-string v69, "WirelessDisplayService"

    const-string v70, "FINGER GESTURE, WIFI DISABLED"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_4c

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1175
    :cond_4c
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_0

    .line 1176
    :catch_9
    move-exception v5

    .line 1177
    .local v5, ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1181
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :cond_4d
    packed-switch v15, :pswitch_data_1

    .line 1245
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_53

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1183
    :pswitch_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_4e

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1187
    :cond_4e
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_0

    .line 1188
    :catch_a
    move-exception v5

    .line 1189
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1195
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0xa

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4702(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1199
    const/16 v69, 0xb

    const/16 v70, -0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 1200
    .local v32, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    const/16 v69, 0x70

    const/16 v70, 0x0

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1202
    .restart local v37       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v69, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1209
    .end local v32           #msgBindWfdService:Landroid/os/Message;
    .end local v37           #msgUseWfdService:Landroid/os/Message;
    :pswitch_4
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v9, v0, :cond_4f

    .line 1210
    const-string v69, "WirelessDisplayService"

    const-string v70, "Don\'t receive Wifi Scan, it\'s Timer trigger, trigger Configuration Tool"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1213
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v65

    .line 1214
    .local v65, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/List;->size()I

    move-result v69

    if-lez v69, :cond_51

    .line 1215
    const/16 v69, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/htc/service/DongleInfo;

    if-eqz v69, :cond_50

    .line 1216
    const/16 v69, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/htc/service/DongleInfo;

    .line 1217
    .local v64, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1218
    .local v11, bundle:Landroid/os/Bundle;
    const-string v69, "DONGLE_MAC"

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1224
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v64           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :goto_17
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_0

    .line 1225
    :catch_b
    move-exception v5

    .line 1226
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1221
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :cond_50
    const-string v69, "WirelessDisplayService"

    const-string v70, "unConfigDongleList.get(0) is null , should not be here"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1229
    :cond_51
    const-string v69, "WirelessDisplayService"

    const-string v70, "unConfigDongleList = 0, should not be here"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1234
    .end local v65           #unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :pswitch_5
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_52

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1238
    :cond_52
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_18} :catch_c

    goto/16 :goto_0

    .line 1239
    :catch_c
    move-exception v5

    .line 1240
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1249
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    :cond_53
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_19} :catch_d

    goto/16 :goto_0

    .line 1250
    :catch_d
    move-exception v5

    .line 1251
    .restart local v5       #ae:Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 844
    .end local v5           #ae:Landroid/content/ActivityNotFoundException;
    .end local v15           #environmentDongleState:I
    .end local v28           #mirrorResultIntent:Landroid/content/Intent;
    .end local v39           #notifyConfigToolToConfig:Landroid/content/Intent;
    .end local v40           #notifyConfigerTool:Landroid/content/Intent;
    .end local v41           #notifyNormalConfigTool:Landroid/content/Intent;
    .restart local v20       #in:Ljava/io/FileInputStream;
    .restart local v42       #oldswver:Ljava/lang/String;
    .restart local v43       #oldswver_num:I
    .restart local v44       #out:Ljava/io/FileOutputStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    .restart local v49       #reader:Ljava/io/BufferedReader;
    .restart local v53       #request:Ljava/lang/String;
    .restart local v66       #upgrade_ver:Ljava/lang/String;
    .restart local v67       #upgrade_ver_num:I
    :catch_e
    move-exception v70

    goto/16 :goto_e

    .line 850
    :catch_f
    move-exception v70

    goto/16 :goto_f

    .line 844
    .local v14, e1:Ljava/io/FileNotFoundException;
    :catch_10
    move-exception v69

    goto/16 :goto_a

    .local v14, e1:Ljava/io/IOException;
    :catch_11
    move-exception v69

    goto/16 :goto_c

    .end local v14           #e1:Ljava/io/IOException;
    .end local v20           #in:Ljava/io/FileInputStream;
    .end local v49           #reader:Ljava/io/BufferedReader;
    .restart local v21       #in:Ljava/io/FileInputStream;
    .restart local v50       #reader:Ljava/io/BufferedReader;
    :catch_12
    move-exception v69

    goto/16 :goto_5

    .line 850
    :catch_13
    move-exception v69

    goto/16 :goto_6

    .line 884
    .end local v21           #in:Ljava/io/FileInputStream;
    .end local v44           #out:Ljava/io/FileOutputStream;
    .end local v50           #reader:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/FileInputStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    .restart local v49       #reader:Ljava/io/BufferedReader;
    :catch_14
    move-exception v13

    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_14

    .end local v44           #out:Ljava/io/FileOutputStream;
    .end local v46           #p:Ljava/io/PrintStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    .restart local v47       #p:Ljava/io/PrintStream;
    :catch_15
    move-exception v13

    move-object/from16 v46, v47

    .end local v47           #p:Ljava/io/PrintStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_14

    .line 882
    .end local v44           #out:Ljava/io/FileOutputStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    :catch_16
    move-exception v13

    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_13

    .end local v44           #out:Ljava/io/FileOutputStream;
    .end local v46           #p:Ljava/io/PrintStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    .restart local v47       #p:Ljava/io/PrintStream;
    :catch_17
    move-exception v13

    move-object/from16 v46, v47

    .end local v47           #p:Ljava/io/PrintStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_13

    .line 872
    .end local v44           #out:Ljava/io/FileOutputStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    :catch_18
    move-exception v13

    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_11

    .end local v44           #out:Ljava/io/FileOutputStream;
    .end local v46           #p:Ljava/io/PrintStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    .restart local v47       #p:Ljava/io/PrintStream;
    :catch_19
    move-exception v13

    move-object/from16 v46, v47

    .end local v47           #p:Ljava/io/PrintStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_11

    .line 870
    .end local v44           #out:Ljava/io/FileOutputStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v13

    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_10

    .end local v44           #out:Ljava/io/FileOutputStream;
    .end local v46           #p:Ljava/io/PrintStream;
    .restart local v45       #out:Ljava/io/FileOutputStream;
    .restart local v47       #p:Ljava/io/PrintStream;
    :catch_1b
    move-exception v13

    move-object/from16 v46, v47

    .end local v47           #p:Ljava/io/PrintStream;
    .restart local v46       #p:Ljava/io/PrintStream;
    move-object/from16 v44, v45

    .end local v45           #out:Ljava/io/FileOutputStream;
    .restart local v44       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_10

    .line 841
    .end local v20           #in:Ljava/io/FileInputStream;
    .restart local v21       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v69

    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    goto/16 :goto_d

    .end local v20           #in:Ljava/io/FileInputStream;
    .end local v49           #reader:Ljava/io/BufferedReader;
    .restart local v21       #in:Ljava/io/FileInputStream;
    .restart local v50       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v69

    move-object/from16 v49, v50

    .end local v50           #reader:Ljava/io/BufferedReader;
    .restart local v49       #reader:Ljava/io/BufferedReader;
    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    goto/16 :goto_d

    .line 838
    .end local v20           #in:Ljava/io/FileInputStream;
    .restart local v21       #in:Ljava/io/FileInputStream;
    :catch_1c
    move-exception v14

    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v20           #in:Ljava/io/FileInputStream;
    .end local v49           #reader:Ljava/io/BufferedReader;
    .restart local v21       #in:Ljava/io/FileInputStream;
    .restart local v50       #reader:Ljava/io/BufferedReader;
    :catch_1d
    move-exception v14

    move-object/from16 v49, v50

    .end local v50           #reader:Ljava/io/BufferedReader;
    .restart local v49       #reader:Ljava/io/BufferedReader;
    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 835
    .end local v20           #in:Ljava/io/FileInputStream;
    .restart local v21       #in:Ljava/io/FileInputStream;
    :catch_1e
    move-exception v14

    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v20           #in:Ljava/io/FileInputStream;
    .end local v49           #reader:Ljava/io/BufferedReader;
    .restart local v21       #in:Ljava/io/FileInputStream;
    .restart local v50       #reader:Ljava/io/BufferedReader;
    :catch_1f
    move-exception v14

    move-object/from16 v49, v50

    .end local v50           #reader:Ljava/io/BufferedReader;
    .restart local v49       #reader:Ljava/io/BufferedReader;
    move-object/from16 v20, v21

    .end local v21           #in:Ljava/io/FileInputStream;
    .restart local v20       #in:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x6 -> :sswitch_5
        0x9 -> :sswitch_b
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xf -> :sswitch_11
        0x10 -> :sswitch_6
        0x11 -> :sswitch_1
        0x15 -> :sswitch_d
        0x1f -> :sswitch_e
        0x29 -> :sswitch_10
        0x33 -> :sswitch_f
        0x3d -> :sswitch_c
        0x6f -> :sswitch_14
        0x70 -> :sswitch_12
        0x71 -> :sswitch_13
    .end sparse-switch

    .line 1100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1181
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
