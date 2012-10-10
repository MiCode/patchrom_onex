.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;,
        Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "DATA"


# instance fields
.field private latest_any_DCState:I

.field private latest_apnType:Ljava/lang/String;

.field private latest_each_DCState:I

.field private latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field private latest_ipv_DCState:I

.field private latest_isDCPossible:Z

.field private latest_tech:I

.field private latest_techIcon:I

.field private mCombineServiceState:Landroid/telephony/ServiceState;

.field private mDataServiceState:Landroid/telephony/ServiceState;

.field private mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mVoiceServiceState:Landroid/telephony/ServiceState;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 57
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    .line 58
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_apnType:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_any_DCState:I

    .line 64
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_each_DCState:I

    .line 67
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_ipv_DCState:I

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z

    .line 69
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    .line 1021
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    .line 79
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 82
    new-array v1, v4, [Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    iput-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;-><init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;Lcom/android/internal/telephony/DefaultPhoneNotifier$1;)V

    aput-object v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z
    .locals 12
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"
    .parameter "possible"
    .parameter "tech"
    .parameter "roaming"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "ipv"
    .parameter "converDataResultAll"
    .parameter "converApnTypeState"
    .parameter "converRealIpApnTypeState"
    .parameter "errorCause"

    .prologue
    .line 866
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v11

    .line 868
    .local v11, apnId:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcDupNotifyDcParam get invalid id from type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 870
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    .line 873
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)Z
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$100(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    const-string v0, "MM HtcDupNotifyDcParam: the same notification, ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM update DcParam of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)V
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$200(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)V

    .line 882
    const/4 v0, 0x0

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p14

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 888
    const-string v0, "HtcDupNotifyDcParam: the same notification, ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 889
    const/4 v0, 0x1

    goto :goto_0

    .line 891
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update DcParam of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move/from16 v7, p14

    move-object v9, p2

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$400(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V

    .line 894
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/DefaultPhoneNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/DefaultPhoneNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/Phone$State;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 438
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 444
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 440
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 442
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "state"

    .prologue
    .line 453
    packed-switch p0, :pswitch_data_0

    .line 459
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    :goto_0
    return-object v0

    .line 455
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 457
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 502
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 512
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 504
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 508
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 510
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "state"

    .prologue
    .line 521
    packed-switch p0, :pswitch_data_0

    .line 531
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 523
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 525
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 527
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 529
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 468
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 476
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 470
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 472
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 474
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 485
    packed-switch p0, :pswitch_data_0

    .line 493
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 487
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 489
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 491
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 790
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 798
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 792
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 794
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 796
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 806
    packed-switch p0, :pswitch_data_0

    .line 814
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 808
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 810
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 812
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 32
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 315
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    .line 316
    .local v31, telephony:Landroid/telephony/TelephonyManager;
    const/4 v10, 0x0

    .line 317
    .local v10, linkProperties:Landroid/net/LinkProperties;
    const/4 v11, 0x0

    .line 318
    .local v11, linkCapabilities:Landroid/net/LinkCapabilities;
    const/4 v9, 0x0

    .line 320
    .local v9, roaming:Z
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 321
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 322
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v11

    .line 324
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v30

    .line 325
    .local v30, ss:Landroid/telephony/ServiceState;
    if-eqz v30, :cond_1

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    .line 327
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v7

    .line 328
    .local v7, possible:Z
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 331
    .local v8, tech:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v16

    .line 334
    .local v16, errorCause:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 337
    .local v28, apnCarrier:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DPN] state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " possible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lp=<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 346
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe5

    if-ne v2, v3, :cond_3

    .line 347
    const-string v29, "/sys/android_touch/phonecall"

    .line 348
    .local v29, HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    const/4 v2, 0x3

    if-lt v8, v2, :cond_6

    .line 350
    const-string v2, "/sys/android_touch/phonecall"

    const-string v3, "0\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    .line 360
    .end local v29           #HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    :goto_3
    return-void

    .line 328
    .end local v8           #tech:I
    .end local v16           #errorCause:I
    .end local v28           #apnCarrier:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 337
    .restart local v8       #tech:I
    .restart local v16       #errorCause:I
    .restart local v28       #apnCarrier:Ljava/lang/String;
    :cond_5
    const-string v2, "null"

    goto :goto_1

    .line 351
    .restart local v29       #HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    const/4 v2, 0x3

    if-ge v8, v2, :cond_2

    .line 352
    const-string v2, "/sys/android_touch/phonecall"

    const-string v3, "1\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 385
    .end local v29           #HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object/from16 v17, v0

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v19, v7

    move-object/from16 v20, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v16

    invoke-interface/range {v17 .. v28}, Lcom/android/internal/telephony/ITelephonyRegistry;->HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 397
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 430
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneNotifier] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method


# virtual methods
.method UpdateVoiceCallAttrFileForDrivers(Lcom/android/internal/telephony/Phone$State;)V
    .locals 14
    .parameter "state"

    .prologue
    const/16 v13, 0x2d7

    const/16 v12, 0xe5

    .line 609
    const-string v2, "/sys/camera_led_status/led_ril_status"

    .line 610
    .local v2, FLASH_LIGHT_AP:Ljava/lang/String;
    const-string v3, "/sys/module/msm_flashlight/parameters/phone_status"

    .line 611
    .local v3, FLASH_LIGHT_DRV:Ljava/lang/String;
    const-string v4, "/sys/module/gpio_event/parameters/phone_call_status"

    .line 612
    .local v4, GPIO_EVENT:Ljava/lang/String;
    const-string v7, "/sys/class/power_supply/battery/charger_control"

    .line 613
    .local v7, SLOW_CHARGE:Ljava/lang/String;
    const-string v0, "/sys/module/htc_battery_8x60/parameters/phone_call"

    .line 614
    .local v0, BATTERY_CALCULATION:Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/battery/phone_call"

    .line 615
    .local v1, BATTERY_CALCULATION_NEW:Ljava/lang/String;
    const-string v5, "/sys/class/htc_accessory/phonein/flag"

    .line 617
    .local v5, HTC_ACCESSORY_PHONEIN:Ljava/lang/String;
    const-string v6, "/sys/android_touch/phonecall"

    .line 620
    .local v6, HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v10, :cond_3

    .line 622
    const-string v10, "/sys/camera_led_status/led_ril_status"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v10, "/sys/module/msm_flashlight/parameters/phone_status"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v10, "/sys/module/gpio_event/parameters/phone_call_status"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v12, :cond_1

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v13, :cond_1

    .line 630
    const-string v10, "/sys/class/power_supply/battery/charger_control"

    const-string v11, "2\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_0
    const-string v10, "/sys/module/htc_battery_8x60/parameters/phone_call"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v10, "/sys/class/power_supply/battery/phone_call"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v10, "/sys/class/htc_accessory/phonein/flag"

    const-string v11, "phonein\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :goto_1
    return-void

    .line 634
    :cond_1
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v10, v12, :cond_0

    .line 636
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 637
    .local v9, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 638
    .local v8, tech:I
    :goto_2
    const/4 v10, 0x3

    if-ge v8, v10, :cond_0

    .line 639
    const-string v10, "/sys/android_touch/phonecall"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    .end local v8           #tech:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 650
    .end local v9           #telephony:Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v10, "/sys/camera_led_status/led_ril_status"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v10, "/sys/module/msm_flashlight/parameters/phone_status"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v10, "/sys/module/gpio_event/parameters/phone_call_status"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v12, :cond_5

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v13, :cond_5

    .line 658
    const-string v10, "/sys/class/power_supply/battery/charger_control"

    const-string v11, "3\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_4
    :goto_3
    const-string v10, "/sys/module/htc_battery_8x60/parameters/phone_call"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v10, "/sys/class/power_supply/battery/phone_call"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v10, "/sys/class/htc_accessory/phonein/flag"

    const-string v11, "phoneoff\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 662
    :cond_5
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v10, v12, :cond_4

    .line 664
    const-string v10, "/sys/android_touch/phonecall"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 580
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 602
    :goto_0
    :pswitch_0
    return v0

    .line 585
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 587
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 589
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 591
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 593
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 595
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 597
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 599
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method dataRadioTechMapToDataIcon(I)I
    .locals 4
    .parameter "getRadioDataTechnology"

    .prologue
    const/4 v0, 0x4

    .line 821
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]dataRadioTechMapToDataIcon   getRadioDataTechnology= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    packed-switch p1, :pswitch_data_0

    .line 856
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 827
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 829
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 831
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 837
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 839
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 841
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 843
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 845
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 847
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 849
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 851
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 853
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 825
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public notifyCallDisconnected(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 544
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifyCallDisconnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, data:Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method public notifyDataConnectionDisconnected(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;[Ljava/lang/String;)V
    .locals 0
    .parameter "sender"
    .parameter "reason"
    .parameter "dataConnectionState"
    .parameter "activeApnTypes"

    .prologue
    .line 239
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnectionFailedLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "DATA"

    const-string v1, "[QCTMM] !!! Need Fix on AIDL notifyDataConnectionFailedLTE "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V
    .locals 32
    .parameter "sender"
    .parameter "apnType"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    const-string v2, "DATA"

    const-string v3, "notifyDataConnectionLTE: sender is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    .line 720
    .local v31, telephony:Landroid/telephony/TelephonyManager;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v13

    .line 722
    .local v13, converDataResultAll:I
    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v14

    .line 724
    .local v14, converApnTypeState:I
    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v15

    .line 725
    .local v15, converRealIpApnTypeState:I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v7

    .line 726
    .local v7, possible:Z
    const-string v2, "gsm.RadioDataTechnology"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 727
    .local v30, getRadioDataTechnology:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->dataRadioTechMapToDataIcon(I)I

    move-result v8

    .line 740
    .local v8, tech:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DPN] type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anyState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eachState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eachIPState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " if="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " possible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    :goto_0
    return-void

    .line 754
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v24

    move/from16 v17, v13

    move-object/from16 v18, p2

    move/from16 v20, v14

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v15

    move-object/from16 v28, p4

    invoke-interface/range {v16 .. v28}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v29

    .line 770
    .local v29, ex:Landroid/os/RemoteException;
    const-string v2, "DATA"

    const-string v3, "notifyDataConnectionLTE Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyDataConnectionVZWLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 4
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 244
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PhoneNotifier] OLD notifyDataConnection, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .local v0, telephony:Landroid/telephony/TelephonyManager;
    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .parameter "sender"
    .parameter "otaspMode"

    .prologue
    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "sender"

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 91
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v0, ""

    .line 92
    .local v0, incomingNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V

    .line 98
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->UpdateVoiceCallAttrFileForDrivers(Lcom/android/internal/telephony/Phone$State;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyPrecisePhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "sender"

    .prologue
    .line 552
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 553
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 554
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 555
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 557
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 571
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifyPreciseCallStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_1
    return-void

    .line 561
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 563
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 565
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 572
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 178
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 179
    .local v0, ss:Landroid/telephony/ServiceState;
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/telephony/ServiceState;

    .end local v0           #ss:Landroid/telephony/ServiceState;
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 181
    .restart local v0       #ss:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 184
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 189
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .parameter "sender"

    .prologue
    const/4 v6, 0x1

    .line 116
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 119
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 120
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    .line 128
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    .line 129
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineServiceStates ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] => ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, vss:[Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .line 137
    .local v1, dss:[Landroid/telephony/ServiceState;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v3, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_3

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_5

    .line 140
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/telephony/ServiceState;

    .line 141
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    aput-object v4, v2, v3

    .line 154
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_3

    .line 155
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/telephony/ServiceState;

    .line 156
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    aput-object v4, v1, v3

    .line 163
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    :goto_1
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V

    .line 167
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 168
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 174
    .end local v1           #dss:[Landroid/telephony/ServiceState;
    .end local v2           #vss:[Landroid/telephony/ServiceState;
    :cond_4
    :goto_2
    return-void

    .line 145
    .restart local v1       #dss:[Landroid/telephony/ServiceState;
    .restart local v2       #vss:[Landroid/telephony/ServiceState;
    :cond_5
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    goto :goto_0

    .line 171
    .end local v1           #dss:[Landroid/telephony/ServiceState;
    .end local v2           #vss:[Landroid/telephony/ServiceState;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 163
    .restart local v1       #dss:[Landroid/telephony/ServiceState;
    .restart local v2       #vss:[Landroid/telephony/ServiceState;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V

    .line 109
    return-void
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "filename"
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 676
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 683
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x80

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 684
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .local v1, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 696
    if-eqz v1, :cond_0

    .line 700
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 709
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 686
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 688
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "FileNotFoundException : %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 696
    if-eqz v0, :cond_0

    .line 700
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 702
    :catch_1
    move-exception v2

    .line 704
    .local v2, e:Ljava/io/IOException;
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    .line 692
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v4, "IOException: %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 696
    if-eqz v0, :cond_0

    .line 700
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 702
    :catch_3
    move-exception v2

    .line 704
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 696
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_1

    .line 700
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 696
    :cond_1
    :goto_5
    throw v4

    .line 702
    :catch_4
    move-exception v2

    .line 704
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "close file to cause IOException : %s "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 702
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    .line 704
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 696
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 690
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 686
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto/16 :goto_1
.end method
