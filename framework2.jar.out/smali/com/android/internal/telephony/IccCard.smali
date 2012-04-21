.class public abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfIccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$4;,
        Lcom/android/internal/telephony/IccCard$State;
    }
.end annotation


# static fields
.field private static final EVENT_AUTO_VERIFY_MSG:I = 0x3c

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field private static final EVENT_CHECKPIN2_DONE:I = 0x3e

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x3f6

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x3f4

.field protected static final EVENT_GET_ICC_DETAIL_STATUS_DONE:I = 0x32

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_TYPE_DONE:I = 0x38

.field protected static final EVENT_GET_SUBSCRIPTION_SOURCE:I = 0x36

.field protected static final EVENT_GET_SUBSIDY_LOCK_TYPES_DONE:I = 0x33

.field protected static final EVENT_ICC_LOCKED_OR_ABSENT:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0xc

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x3f5

.field private static final EVENT_PIN1PUK1_DONE:I = 0x3a

.field private static final EVENT_PIN2PUK2_DONE:I = 0x3b

.field private static final EVENT_PIN2PUK2_DONE_VIA_ATD:I = 0x3d

.field private static final EVENT_PINPUK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_ON:I = 0x37

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3f9

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field protected static final EVENT_SET_SUBSIDY_LOCK_TYPE_DONE:I = 0x34

.field protected static final EVENT_SIM_HOT_SWAP_STATUS:I = 0x3f8

.field private static final EVENT_SIM_IO_DONE:I = 0x3f7

.field protected static final EVENT_SUBSCRIPTION_SOURCE_CHANGED:I = 0x35

.field public static final INTENT_KEY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "ICC_OPERATOR_NUMERIC"

.field public static final INTENT_KEY_ICC_PROVISIONED:Ljava/lang/String; = "POVISIONED"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_ICC_TYPE:Ljava/lang/String; = "ICC_TYPE"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_KEY_PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_DETAIL_STATUS:Ljava/lang/String; = "IccStatusInfo"

.field public static final INTENT_VALUE_ICC_EXPIRED:Ljava/lang/String; = "ICC_EXPIRED"

.field public static final INTENT_VALUE_ICC_FAIL:Ljava/lang/String; = "ICC_FAIL"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_ABSENT:Ljava/lang/String; = "ICC_HOT_SWAP_ABSENT"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_INSERTED:Ljava/lang/String; = "ICC_HOT_SWAP_INSERTED"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_INVALID:Ljava/lang/String; = "SIM INVALID"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK:Ljava/lang/String; = "LOADED_UNDER_NETWORK_LOCK"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_IMEI_LOCKED:Ljava/lang/String; = "IMEI_LOCK"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field public static final INTENT_VALUE_PERM_BLOCKED:Ljava/lang/String; = "PERM_BLOCKED"

.field public static final UICC_TYPE_2G:I = 0x0

.field public static final UICC_TYPE_3G:I = 0x1

.field public static final UICC_TYPE_4G:I = 0x2

.field public static mHotSwap:I


# instance fields
.field private final INVALID_INDEX:I

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSubscriptionSource:I

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccExpired:Z

.field private mIccExpiredRegistrants:Landroid/os/RegistrantList;

.field private mIccFailRegistrants:Landroid/os/RegistrantList;

.field private mIccFdnEnabled:Z

.field protected mIccHotSwapHandler:Landroid/os/Handler;

.field private mIccPinLocked:Z

.field protected mIccStatusInfo:[I

.field private mImeiLockedRegistrants:Landroid/os/RegistrantList;

.field protected mLogTag:Ljava/lang/String;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field protected mState:Lcom/android/internal/telephony/IccCard$State;

.field protected mSubsidyLockTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 372
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 69
    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    .line 111
    iput v1, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/IccCard;->INVALID_INDEX:I

    .line 1310
    new-instance v0, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 2132
    new-instance v0, Lcom/android/internal/telephony/IccCard$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$3;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    .line 373
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 375
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 376
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/IccCardStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccDetailStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method private convertQmiSubsidyLockType(Lcom/android/internal/telephony/IccCardApplication$PersoSubState;)I
    .locals 2
    .parameter "perso_substate"

    .prologue
    .line 607
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 619
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 609
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 611
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 613
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 615
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 617
    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAppState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 4
    .parameter "appIndex"

    .prologue
    .line 1981
    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 1982
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1991
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_2

    .line 1992
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1997
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present, return unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 2033
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_0
    return-object v1

    .line 1984
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IccCard] Invalid Subscription Application index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2001
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2005
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2006
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2008
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPinRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2009
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2011
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPukRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2012
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2014
    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isSubscriptionPersoEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2015
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2018
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    if-eqz v1, :cond_7

    .line 2019
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2022
    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2023
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2025
    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppNotReady()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2026
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2029
    :cond_9
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isIMEILocked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2030
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2033
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "preferredState"

    .prologue
    .line 2038
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_1

    .line 2058
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 2039
    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_2

    move-object p1, p2

    goto :goto_0

    .line 2042
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_3

    .line 2043
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2047
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_6

    .line 2049
    :cond_5
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2053
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p2, v0, :cond_0

    .line 2054
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_7

    move-object p1, p2

    goto :goto_0

    :cond_7
    move-object p1, p3

    .line 2058
    goto :goto_0
.end method

.method private getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;
    .locals 3

    .prologue
    .line 1292
    new-instance v1, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 1293
    .local v1, status:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 1294
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 1295
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 1296
    .local v0, dummyIccCardApp:Lcom/android/internal/telephony/IccCardApplication;
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 1297
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 1298
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 1299
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 1300
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 1301
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 1302
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 1303
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 1304
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 1306
    return-object v1
.end method

.method private getIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 894
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 904
    .local v0, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 905
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->update(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 910
    .end local v0           #iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 913
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIccDetailStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 920
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 921
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "Error on getting SIM Detail status."

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->resetIccDetailStatus()V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 927
    .local v0, data:[B
    if-eqz v0, :cond_2

    array-length v2, v0

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 929
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "Error on getting incorrect length of data."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->resetIccDetailStatus()V

    goto :goto_0

    .line 935
    :cond_3
    const/16 v1, 0x12

    .local v1, i:I
    :goto_1
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 936
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    add-int/lit8 v3, v1, -0x12

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v3

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 942
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Error on getting subsidy lock types."

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subsidy Lock type(s):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 21
    .parameter "newCardStatus"

    .prologue
    .line 974
    const/4 v15, 0x0

    .line 979
    .local v15, transitionedIntoIccReady:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 980
    .local v12, oldState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v11

    .line 985
    .local v11, newState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_9

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_9

    const/4 v15, 0x1

    .line 991
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1000
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v11, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_a

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_a

    :cond_3
    const/16 v19, 0x1

    .line 1004
    .local v19, transitionedIntoPinLocked:Z
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_b

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_b

    const/4 v14, 0x1

    .line 1005
    .local v14, transitionedIntoIccFail:Z
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_c

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_c

    const/16 v16, 0x1

    .line 1007
    .local v16, transitionedIntoImeiLocked:Z
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_d

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_d

    const/4 v13, 0x1

    .line 1008
    .local v13, transitionedIntoAbsent:Z
    :goto_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_e

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_e

    const/16 v17, 0x1

    .line 1010
    .local v17, transitionedIntoNetworkLocked:Z
    :goto_5
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v12, v2, :cond_f

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_f

    const/16 v18, 0x1

    .line 1012
    .local v18, transitionedIntoPermBlocked:Z
    :goto_6
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_10

    const/4 v10, 0x1

    .line 1014
    .local v10, isIccCardRemoved:Z
    :goto_7
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v12, v2, :cond_11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v9, 0x1

    .line 1019
    .local v9, isIccCardAdded:Z
    :goto_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v19, :cond_4

    if-nez v14, :cond_4

    if-nez v16, :cond_4

    if-nez v13, :cond_4

    if-eqz v17, :cond_5

    .line 1023
    :cond_4
    const-string v2, "Notifying: NV ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1029
    :cond_5
    if-eqz v19, :cond_14

    .line 1030
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_6

    const-string v2, "Notify SIM pin or puk locked."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1031
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1033
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1034
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1035
    .local v8, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_8

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1169
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_8
    :goto_9
    return-void

    .line 986
    .end local v9           #isIccCardAdded:Z
    .end local v10           #isIccCardRemoved:Z
    .end local v13           #transitionedIntoAbsent:Z
    .end local v14           #transitionedIntoIccFail:Z
    .end local v16           #transitionedIntoImeiLocked:Z
    .end local v17           #transitionedIntoNetworkLocked:Z
    .end local v18           #transitionedIntoPermBlocked:Z
    .end local v19           #transitionedIntoPinLocked:Z
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1000
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1004
    .restart local v19       #transitionedIntoPinLocked:Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1005
    .restart local v14       #transitionedIntoIccFail:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1007
    .restart local v16       #transitionedIntoImeiLocked:Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1008
    .restart local v13       #transitionedIntoAbsent:Z
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1010
    .restart local v17       #transitionedIntoNetworkLocked:Z
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 1012
    .restart local v18       #transitionedIntoPermBlocked:Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 1014
    .restart local v10       #isIccCardRemoved:Z
    :cond_11
    const/4 v9, 0x0

    goto :goto_8

    .line 1040
    .restart local v9       #isIccCardAdded:Z
    :cond_12
    const-string v3, "LOCKED"

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v11, v2, :cond_13

    const-string v2, "PIN"

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    const-string v2, "PUK"

    goto :goto_a

    .line 1046
    :cond_14
    if-eqz v14, :cond_17

    .line 1047
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-ne v2, v3, :cond_15

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x38

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    goto :goto_9

    .line 1050
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_16

    const-string v2, "Notify SIM failure."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1051
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1052
    const-string v2, "ICC_FAIL"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1055
    :cond_17
    if-eqz v13, :cond_19

    .line 1056
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_18

    const-string v2, "Notify SIM missing."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1057
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1058
    const-string v2, "ABSENT"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1059
    :cond_19
    if-eqz v17, :cond_1a

    .line 1068
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x33

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 1072
    :cond_1a
    if-eqz v16, :cond_1c

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_1b

    const-string v2, "Notify IMEI locked."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1074
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1075
    const-string v2, "IMEI_LOCK"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1080
    :cond_1c
    if-eqz v15, :cond_8

    .line 1081
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1084
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_1d

    instance-of v2, v8, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    if-eqz v2, :cond_1d

    .line 1086
    const-string v2, "Notifying: SIM ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mSIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1091
    :cond_1d
    const-string v2, "READY"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    if-eqz v8, :cond_8

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1096
    const/4 v5, 0x7

    .line 1100
    .local v5, serviceClassX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "SC"

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "FD"

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 1108
    .end local v5           #serviceClassX:I
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1112
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM ready. USIM types:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1118
    :cond_1f
    if-eqz v8, :cond_21

    instance-of v2, v8, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    if-nez v2, :cond_20

    instance-of v2, v8, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    if-eqz v2, :cond_21

    .line 1121
    :cond_20
    const-string v2, "Notifying: SIM ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mSIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1125
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1126
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM ready. RUIM types:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v3, v8, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1132
    :cond_22
    if-eqz v8, :cond_24

    instance-of v2, v8, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    if-nez v2, :cond_23

    instance-of v2, v8, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    if-eqz v2, :cond_24

    .line 1135
    :cond_23
    const-string v2, "Notifying: RUIM ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mRUIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1139
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1140
    if-eqz v8, :cond_25

    instance-of v2, v8, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    if-eqz v2, :cond_25

    .line 1142
    const-string v2, "Notifying: ISIM ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mISIMReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1147
    :cond_25
    const-string v2, "READY"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1150
    if-eqz v8, :cond_8

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1153
    const/4 v5, 0x7

    .line 1157
    .restart local v5       #serviceClassX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "SC"

    const-string v4, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "FD"

    const-string v4, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_9
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 1176
    const/4 v2, 0x0

    .line 1182
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/IccCard$1;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1195
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1197
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x1040403

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1199
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x1040404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1201
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x1040405

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1208
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1209
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1210
    return-void

    .line 1197
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x1040400

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1199
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x1040401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1237
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1242
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1243
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 1244
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1243
    goto :goto_1

    .line 1246
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1217
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1218
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1223
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1224
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 1225
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1224
    goto :goto_1

    .line 1227
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V
    .locals 3
    .parameter "provisioned"
    .parameter "uicc_type"
    .parameter "operator"

    .prologue
    .line 1274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1276
    const-string v1, "POVISIONED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1277
    const-string v1, "ICC_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1279
    const-string v1, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_EXTRA_SIM_STATE_CHANGED provisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uicc_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1284
    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1285
    return-void
.end method

.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 1252
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, operator:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1257
    const-string v2, "phoneName"

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    const-string v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const-string v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const-string v2, "IccStatusInfo"

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1265
    const-string v2, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1269
    :cond_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v4, 0x9

    .line 845
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 848
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 849
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 860
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v4, 0x9

    .line 814
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 816
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 827
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 656
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 658
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 667
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changePin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 672
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 674
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 683
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public checkPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "onComplete"

    .prologue
    .line 688
    return-void
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 2269
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 381
    return-void
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 2258
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 2260
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    .line 2272
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f7

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2274
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    return-void
.end method

.method public getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 2075
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 2083
    :cond_0
    :goto_0
    return-object v0

    .line 2077
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2078
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 2079
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, p1, :cond_0

    .line 2077
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    move-object v0, v2

    .line 2083
    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    return-object v0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 1824
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_2

    .line 1825
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1832
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null in CDMA, return unkonwn"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 1976
    :cond_0
    :goto_0
    return-object v0

    .line 1836
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1840
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 1846
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFail()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1848
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1849
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1851
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_4

    .line 1852
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1854
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1862
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1863
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardNotInit()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1864
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1871
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1874
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1878
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] !mIccCardStatus.getCardState().isCardPresent(), return unkonwn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1884
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1885
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 1887
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1892
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1899
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_c

    .line 1906
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1909
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_12

    .line 1919
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1921
    .local v0, csimState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 1924
    .local v2, usimState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CSIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1926
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v7, :cond_f

    .line 1929
    invoke-direct {p0, v0, v2, v0}, Lcom/android/internal/telephony/IccCard;->getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto/16 :goto_0

    .line 1935
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_11

    .line 1936
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 1937
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    if-ne v6, v3, :cond_0

    move-object v0, v2

    .line 1940
    goto/16 :goto_0

    .line 1942
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    if-eq v6, v3, :cond_0

    move-object v0, v2

    .line 1943
    goto/16 :goto_0

    .line 1948
    :cond_11
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_0

    move-object v0, v2

    .line 1952
    goto/16 :goto_0

    .line 1958
    .end local v0           #csimState:Lcom/android/internal/telephony/IccCard$State;
    .end local v2           #usimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1960
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] return default state-> UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1968
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1969
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-nez v3, :cond_14

    .line 1970
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "mIccCardStatus.getNumApplications() == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1976
    :cond_14
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public getIccPhoneType()I
    .locals 1

    .prologue
    .line 2237
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .prologue
    .line 2222
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .prologue
    .line 2229
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 339
    .local v0, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v1, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "IccCard.getState(): case should never be reached"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v1

    .line 350
    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 355
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 360
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 362
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 365
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getSubsidyLock()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    return v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 5
    .parameter "querySetting"
    .parameter "onComplete"

    .prologue
    .line 624
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 627
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 628
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_2

    .line 630
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    .line 635
    .local v2, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 636
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_1

    .line 637
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->convertQmiSubsidyLockType(Lcom/android/internal/telephony/IccCardApplication$PersoSubState;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    .line 639
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 640
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 645
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v1           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v2           #index:I
    :goto_1
    return-void

    .line 633
    .restart local v1       #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .restart local v2       #index:I
    goto :goto_0

    .line 642
    .end local v1           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v2           #index:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSubsidyLock] querySetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 643
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    .line 2092
    const/4 v0, 0x0

    .line 2095
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 2062
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v2

    .line 2064
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2065
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 2066
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v3, p1, :cond_2

    .line 2067
    const/4 v2, 0x1

    goto :goto_0

    .line 2064
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x0

    return v0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f5

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 2264
    return-void
.end method

.method public queryIccDetailStatus()V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 698
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 391
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 398
    :cond_0
    return-void
.end method

.method public registerForIccExpired(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 470
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 472
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isIccExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 477
    :cond_0
    return-void
.end method

.method public registerForIccFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 440
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isIccFail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 447
    :cond_0
    return-void
.end method

.method public registerForImeiLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 454
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 456
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 461
    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 425
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 432
    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 408
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 410
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 415
    :cond_0
    return-void
.end method

.method public requestISIMRead(IIIIILandroid/os/Message;)V
    .locals 7
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "onComplete"

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->requestISIMRead(IIIIILandroid/os/Message;)V

    .line 2206
    return-void
.end method

.method public requestQueryISIMSupported(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryISIMSupported(Landroid/os/Message;)V

    .line 2202
    return-void
.end method

.method public requestResetWSIMState(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestResetWSIMState(Landroid/os/Message;)V

    .line 2214
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "onComplete"

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V

    .line 2210
    return-void
.end method

.method protected resetIccDetailStatus()V
    .locals 3

    .prologue
    .line 955
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    :cond_0
    return-void
.end method

.method public setIccCardExpired(Z)V
    .locals 2
    .parameter "expired"

    .prologue
    .line 2116
    if-eqz p1, :cond_2

    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_1

    .line 2118
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "Notify SIM Expired."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 2119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    .line 2120
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 2121
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2123
    const-string v0, "ICC_EXPIRED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    :cond_1
    :goto_0
    return-void

    .line 2126
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    goto :goto_0
.end method

.method public setIccCardRemoved()V
    .locals 3

    .prologue
    .line 2102
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "setIccCardRemoved()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 2105
    :cond_0
    const-string v1, "ICC_HOT_SWAP_ABSENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2108
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SIMRemovedDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2110
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1


    .line 2111
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0xb

    .line 774
    const/16 v4, 0xf

    .line 779
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 782
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .line 784
    .local v7, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 796
    .end local v7           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x8

    .line 737
    const/4 v4, 0x7

    .line 741
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 744
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .line 746
    .local v7, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 758
    .end local v7           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setInvalidICCCard()V
    .locals 0

    .prologue
    .line 2252
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "onComplete"

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubsidyLock] subsidyType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 651
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 572
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 507
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 509
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 517
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 536
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 538
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 547
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 521
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 523
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 532
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 551
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 553
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 562
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2ViaATD()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 402
    return-void
.end method

.method public unregisterForIccExpired(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 481
    return-void
.end method

.method public unregisterForIccFail(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public unregisterForImeiLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 465
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 436
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 419
    return-void
.end method

.method protected updateStateProperty()V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method protected updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "iccState"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method
