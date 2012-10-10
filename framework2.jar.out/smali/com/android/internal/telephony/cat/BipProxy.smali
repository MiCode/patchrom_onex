.class public Lcom/android/internal/telephony/cat/BipProxy;
.super Landroid/os/Handler;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$1;,
        Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;,
        Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;,
        Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$BipChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;,
        Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;,
        Lcom/android/internal/telephony/cat/BipProxy$BipType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_ID_EXTEND_NW_TIMER:I = 0xf

.field static final MSG_ID_INSERT_APN_RETRY:I = 0xc

.field static final MSG_ID_RECEIVE_SOCKET_DATA:I = 0xe

.field static final MSG_ID_SETUP_DATA_CALL:I = 0xa

.field static final MSG_ID_START_NW_FEATURE:I = 0xd

.field static final MSG_ID_TEARDOWN_DATA_CALL:I = 0xb

.field private static final SECURE:Z


# instance fields
.field final APN_NAME_BIP:Ljava/lang/String;

.field final APN_TYPE_BIP:Ljava/lang/String;

.field final APN_URI:Landroid/net/Uri;

.field final CONNECTIVE_FEATURE_BIP:Ljava/lang/String;

.field final CONNECTIVE_TYPE_BIP:I

.field final MAX_CHANNEL_NUM:I

.field final NW_EXPIRED_TIMEOUT:I

.field final RETRY_DELAY:I

.field final TCP_CHANNEL_BUFFER_SIZE:I

.field final UDP_CHANNEL_BUFFER_SIZE:I

.field private apn_retry:I

.field private mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

.field private mApnUpdated:Z

.field private mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

.field private mBipHandler:Landroid/os/Handler;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

.field private nw_retry:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 3
    .parameter "stkService"
    .parameter "cmdIf"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    const/16 v0, 0x4000

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->TCP_CHANNEL_BUFFER_SIZE:I

    .line 67
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->UDP_CHANNEL_BUFFER_SIZE:I

    .line 68
    iput v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->MAX_CHANNEL_NUM:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 85
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->CONNECTIVE_TYPE_BIP:I

    .line 86
    const-string v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->CONNECTIVE_FEATURE_BIP:Ljava/lang/String;

    .line 87
    const-string v0, "HTC_BIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->APN_NAME_BIP:Ljava/lang/String;

    .line 88
    const-string v0, "bip"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->APN_TYPE_BIP:Ljava/lang/String;

    .line 89
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->RETRY_DELAY:I

    .line 90
    const v0, 0xd6d8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->NW_EXPIRED_TIMEOUT:I

    .line 92
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->APN_URI:Landroid/net/Uri;

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    .line 107
    new-array v0, v2, [Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 112
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    .line 114
    iput-object p0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/BipProxy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/BipProxy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cat/BipProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/BipProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    return-object v0
.end method

.method private allChannelsClosed()Z
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .local v0, arr$:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 282
    .local v1, channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v1, :cond_0

    .line 283
    const/4 v4, 0x0

    .line 285
    .end local v1           #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :goto_1
    return v4

    .line 281
    .restart local v1       #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v1           #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private checkAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z
    .locals 1
    .parameter "channel"

    .prologue
    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method private cleanupBipChannel(I)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->stopListening()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->NONE_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 297
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->deleteAPN()V

    .line 299
    return-void
.end method

.method private deleteAPN()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 839
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 840
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "name = \'HTC_BIP\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 845
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 847
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name = \'HTC_BIP\'"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 851
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 852
    const/4 v6, 0x0

    .line 855
    :cond_0
    return-void
.end method

.method private findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 8
    .parameter "networkInfos"

    .prologue
    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v1, availableBearers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 343
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 344
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 342
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 359
    const/4 v2, 0x0

    .line 375
    .end local v3           #i$:I
    :cond_2
    :goto_2
    return-object v2

    .line 362
    .restart local v3       #i$:I
    :cond_3
    const/4 v2, 0x0

    .line 363
    .local v2, candidateBearer:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 364
    .restart local v4       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 365
    .local v6, state:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_5

    .line 367
    move-object v2, v4

    .line 368
    goto :goto_2

    .line 369
    :cond_5
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_4

    .line 371
    :cond_6
    move-object v2, v4

    goto :goto_3

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 21
    .parameter "ar"

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 602
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 604
    .local v17, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 607
    .local v18, response:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 609
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->cid:Ljava/lang/Integer;

    .line 610
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 611
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 612
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 614
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_1
    if-eqz v18, :cond_4

    .line 615
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 616
    .local v15, cid:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_3

    .line 668
    :cond_2
    new-instance v20, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 669
    .local v20, t:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 624
    .end local v20           #t:Ljava/lang/Thread;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->cid:Ljava/lang/Integer;

    .line 627
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v14, v2, v3

    .line 648
    .local v14, addr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 650
    .local v16, cm:Landroid/net/ConnectivityManager;
    const/16 v2, 0x21

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v19

    .line 651
    .local v19, success:Z
    if-nez v19, :cond_2

    .line 653
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 654
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0

    .line 673
    .end local v14           #addr:I
    .end local v15           #cid:I
    .end local v16           #cm:Landroid/net/ConnectivityManager;
    .end local v19           #success:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 674
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0
.end method

.method private onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 683
    if-nez p1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 689
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_3

    .line 697
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v0, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 704
    .local v0, channel:I
    :goto_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 710
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 698
    .end local v0           #channel:I
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_0

    .line 699
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v2

    iget v0, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .restart local v0       #channel:I
    goto :goto_1
.end method

.method private sendChannelStatusEvent(I)V
    .locals 6
    .parameter "channelStatus"

    .prologue
    const/16 v1, 0xa

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->checkEventEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x4

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    .line 309
    .local v4, additionalInfo:[B
    const/4 v0, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 310
    const/4 v0, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 308
    :array_0
    .array-data 0x1
        0xb8t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendDataAvailableEvent(II)V
    .locals 6
    .parameter "channelStatus"
    .parameter "dataAvailable"

    .prologue
    const/16 v1, 0x9

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->checkEventEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    .line 325
    .local v4, additionalInfo:[B
    const/4 v0, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 326
    const/4 v0, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 327
    const/4 v0, 0x6

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 324
    :array_0
    .array-data 0x1
        0xb8t
        0x2t
        0x0t
        0x0t
        0xb7t
        0x1t
        0x0t
    .end array-data
.end method

.method private setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 11
    .parameter "cmdMsg"

    .prologue
    const/4 v10, 0x0

    .line 505
    const/4 v9, 0x0

    .line 506
    .local v9, result:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v8

    .line 508
    .local v8, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v0, v1, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v0, v1, :cond_0

    .line 511
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    .line 514
    :cond_0
    iget-object v6, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 518
    .local v6, bd:Lcom/android/internal/telephony/cat/BearerDescription;
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_1

    .line 519
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    :goto_1
    move v0, v9

    .line 540
    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-eq v0, v1, :cond_2

    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_4

    .line 521
    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_3

    .line 523
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_1

    .line 525
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_1

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 533
    :catch_0
    move-exception v7

    .line 536
    .local v7, csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aput-object v10, v0, v1

    .line 537
    iget v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_1
.end method

.method private setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 22
    .parameter "cmdMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 380
    .local v14, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v16

    .line 381
    .local v16, netInfos:[Landroid/net/NetworkInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v17

    .line 382
    .local v17, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    const/16 v18, 0x0

    .line 384
    .local v18, result:Z
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 386
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 387
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v3, "No default bearer available"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v15

    .line 391
    .local v15, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    .line 392
    .local v21, state:Landroid/net/NetworkInfo$State;
    const/16 v20, 0x0

    .line 394
    .local v20, setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 418
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 419
    new-instance v20, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    .end local v20           #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    const-string v2, "Default bearer is disconnected!"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .line 423
    .restart local v20       #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    :goto_0
    if-eqz v20, :cond_2

    .line 424
    throw v20

    .line 397
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 398
    const/16 v18, 0x1

    .line 399
    goto :goto_0

    .line 402
    :pswitch_1
    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 403
    .local v19, resultMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 405
    const/16 v18, 0x0

    .line 406
    goto :goto_0

    .line 410
    .end local v19           #resultMsg:Landroid/os/Message;
    :pswitch_2
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 411
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 412
    new-instance v20, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    .end local v20           #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    const-string v2, "Default bearer suspended!"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .line 413
    .restart local v20       #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    goto :goto_0

    .line 427
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    return v18

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 10
    .parameter "cmdMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 432
    .local v6, cm:Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 433
    .local v9, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v7

    .line 435
    .local v7, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-eqz v6, :cond_0

    if-nez v9, :cond_1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 438
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "ConnectivityManager/TelephonyManager not available!"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 444
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "No mobile data connections allowed!"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_2
    iget-object v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v3

    .line 496
    :goto_0
    return v3

    .line 452
    :cond_3
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v8, v0, v5, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 455
    .local v8, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 456
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "Busy on voice call"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 461
    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/BipProxy;->insertAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 464
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "APN not inserted"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->startBipNetworkFeature(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0
.end method

.method private startBipNetworkFeature(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 10
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    if-nez v0, :cond_0

    .line 872
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 873
    .local v7, msg:Landroid/os/Message;
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v7, v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 898
    .end local v7           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 878
    :cond_0
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 881
    .local v6, cm:Landroid/net/ConnectivityManager;
    const-string v0, "enableBIP"

    invoke-virtual {v6, v3, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v8

    .line 882
    .local v8, result:I
    if-nez v8, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 886
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 887
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 888
    .end local v9           #t:Ljava/lang/Thread;
    :cond_1
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 890
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 891
    .restart local v7       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    goto :goto_0

    .line 895
    .end local v7           #msg:Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 896
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0
.end method

.method private teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    .locals 5
    .parameter "cmdMsg"
    .parameter "channel"

    .prologue
    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->getBearerType()Lcom/android/internal/telephony/cat/BipProxy$BipType;

    move-result-object v2

    .line 569
    .local v2, type:Lcom/android/internal/telephony/cat/BipProxy$BipType;
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_2

    .line 570
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 571
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 573
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    .line 576
    const/4 v3, 0x0

    const-string v4, "enableBIP"

    invoke-virtual {v0, v3, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 578
    :cond_0
    const/16 v3, 0xb

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 579
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 589
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 580
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_1

    .line 582
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0
.end method


# virtual methods
.method public canHandleNewChannel()Z
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 127
    :goto_1
    return v1

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 22
    .parameter "cmdMsg"

    .prologue
    .line 142
    if-nez p1, :cond_1

    .line 143
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    if-eqz v3, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    invoke-interface {v3}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->onSessionEnd()V

    .line 143
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 151
    .end local v19           #i:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v17

    .line 155
    .local v17, curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 273
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 274
    .end local v17           #curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_3
    :goto_1
    return-void

    .line 157
    .restart local v17       #curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v15

    .line 158
    .local v15, channelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-eqz v15, :cond_2

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->startListening()V

    .line 167
    :cond_4
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    if-nez v3, :cond_6

    .line 169
    add-int/lit8 v3, v19, 0x1

    iput v3, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 174
    :cond_5
    iget v3, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v3, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 167
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 181
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$InterfaceTransportLevel$TransportProtocol:[I

    iget-object v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 184
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v5, v3, v4

    .line 202
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    new-instance v21, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v21, t:Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 189
    .end local v21           #t:Ljava/lang/Thread;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v5, v3, v4

    goto :goto_3

    .line 194
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v5, v3, v4

    goto :goto_3

    .line 219
    .end local v15           #channelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    .end local v19           #i:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 221
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    aget-object v16, v3, v4

    .line 222
    .local v16, curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v16, :cond_8

    .line 236
    new-instance v21, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    .restart local v21       #t:Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 246
    .end local v16           #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    .end local v21           #t:Ljava/lang/Thread;
    :catch_0
    move-exception v18

    .line 249
    .local v18, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 243
    .end local v18           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v16       #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 256
    .end local v16           #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :pswitch_5
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v20, v0

    .line 257
    .local v20, status:[I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_a

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    if-eqz v3, :cond_9

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    invoke-interface {v3}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getStatus()I

    move-result v3

    aput v3, v20, v19

    .line 257
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 261
    :cond_9
    const/4 v3, 0x0

    aput v3, v20, v19

    goto :goto_5

    .line 265
    :cond_a
    new-instance v8, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;-><init>([I)V

    .line 266
    .local v8, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 718
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 777
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 720
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)V

    .line 779
    :cond_1
    :goto_1
    return-void

    .line 725
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 731
    :pswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 733
    .local v9, setting:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getSocketData()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 738
    :catch_0
    move-exception v0

    goto :goto_1

    .line 744
    .end local v9           #setting:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :pswitch_3
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 745
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    .line 746
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->insertAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z

    goto :goto_1

    .line 748
    :cond_2
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    goto :goto_1

    .line 753
    :pswitch_4
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 754
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 755
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->startBipNetworkFeature(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_1

    .line 758
    :cond_3
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 760
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 761
    .local v7, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 765
    .end local v7           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 766
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_0

    .line 767
    const-string v0, "enableBIP"

    invoke-virtual {v6, v3, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v8

    .line 769
    .local v8, result:I
    if-nez v8, :cond_0

    .line 771
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xd6d8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public insertAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z
    .locals 10
    .parameter "channel"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 783
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 784
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 785
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, imsi:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v5

    .line 794
    :cond_1
    if-eqz p1, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->deleteAPN()V

    .line 803
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 804
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "type"

    const-string v8, "bip"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v7, "name"

    const-string v8, "HTC_BIP"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v7, "apn"

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v7, "user"

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v7, "password"

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v7, "numeric"

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v7, "mcc"

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v7, "mnc"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v7, "proxy"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v7, "port"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v7, "mmsproxy"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v7, "mmsport"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v7, "server"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v7, "mmsc"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :try_start_0
    new-instance v7, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    .line 821
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 826
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    .line 827
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 835
    goto/16 :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 830
    .local v0, e:Landroid/database/SQLException;
    goto/16 :goto_0
.end method
