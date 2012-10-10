.class public Lcom/android/server/connectivity/Tethering;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$2;,
        Lcom/android/server/connectivity/Tethering$HtcTetherHistory;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field public static final CONNECTIVITY_by_Intent:Z = false

.field private static final CUSTOMIZE_BT_TETHERING_UI:Ljava/lang/String; = "ro.bt.tetheringUI"

.field private static final CUSTOMIZE_CID:Ljava/lang/String; = "ro.cid"

.field private static final CUSTOMIZE_HOTSPOTUI:Ljava/lang/String; = "ro.wifi.hotspotUI"

.field private static final CUSTOMIZE_MULTIRAB:Ljava/lang/String; = "ro.ril.multirab.throttling"

.field private static final CUSTOMIZE_USB_TETHERING_UI:Ljava/lang/String; = "ro.usb.tetheringUI"

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String; = null

.field public static DISABLE_MULTI_RAB_TRAFFIC_support:Z = false

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer; = null

.field private static final EVENT_CONNECTIVITY_ACTION:I = 0x0

.field private static final EVENT_HTC_NETWORK_AVALIBILITY_CHANGE_ACTION:I = 0x1

.field private static final EVENT_NETWORK_SUBTYPE_CHANGE:I = 0x2

.field private static final EVENT_PERMITTED_TETHER_CHANGE:I = 0x5

.field private static final EVENT_PERMITTED_TETHER_EXTERNAL_REQUEST:I = 0x3

.field private static final EVENT_PERMITTED_TETHER_SETUP:I = 0x4

.field private static final HIPRI_TYPE:Ljava/lang/Integer; = null

.field private static final HTC_FAKE_TETHER_UP_IF:Ljava/lang/String; = "htc_fake_tether_up_if"

#the value of this static final field might be set in the static constructor
.field private static final HTC_HISTORY_ENTRIES:I = 0x0

.field private static final HTC_HISTORY_LOG:Z = true

.field private static final HTC_HISTORY__EVENT_BATTERY_CHANGE:I = 0x8

.field private static final HTC_HISTORY__EVENT_BOOT:I = 0xc

.field private static final HTC_HISTORY__EVENT_CONNECTION_CHANGE:I = 0xa

.field private static final HTC_HISTORY__EVENT_DNS_CHANGE:I = 0xf

.field private static final HTC_HISTORY__EVENT_ENTITLE_FAILED:I = 0x16

.field private static final HTC_HISTORY__EVENT_IF_ADD:I = 0x2

.field private static final HTC_HISTORY__EVENT_IF_ADD_RESULT:I = 0x3

.field private static final HTC_HISTORY__EVENT_IF_REMOVE:I = 0x4

.field private static final HTC_HISTORY__EVENT_IF_REMOVE_RESULT:I = 0x5

.field private static final HTC_HISTORY__EVENT_IF_STATE_CHANGE:I = 0x0

.field private static final HTC_HISTORY__EVENT_IF_STATE_CHANGE_RESULT:I = 0x1

.field private static final HTC_HISTORY__EVENT_MEDIA_CHANGE:I = 0x9

.field private static final HTC_HISTORY__EVENT_NAT_REGISTER:I = 0x15

.field private static final HTC_HISTORY__EVENT_NET_AVL_CHANGE:I = 0xe

.field private static final HTC_HISTORY__EVENT_PERMITTED_TETHER_REQS:I = 0x14

.field private static final HTC_HISTORY__EVENT_PHONE_TYPE_CHANGED:I = 0x17

.field private static final HTC_HISTORY__EVENT_SET_PERMITTED_TETHER:I = 0x13

.field private static final HTC_HISTORY__EVENT_SUBTYPE_CHANGE:I = 0x10

.field private static final HTC_HISTORY__EVENT_TETHER:I = 0x6

.field private static final HTC_HISTORY__EVENT_TOTAL:I = 0x18

.field private static final HTC_HISTORY__EVENT_UNTETHER:I = 0x7

.field private static final HTC_HISTORY__EVENT_USB_STATE_CHANGE:I = 0x11

.field private static final HTC_HISTORY__EVENT_USB_STATE_CHANGE_ACT:I = 0x12

.field private static final HTC_HISTORY__EVENT_WIFI_CHANGE:I = 0xb

.field private static final HTC_HISTORY__EVENT_WIMAX_CHANGE:I = 0xd

.field static INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String; = null

.field static final INTENT_PERIODIC_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.android.internal.telephony.periodic_entitlement_check"

.field private static MAX_NETD_COMMAND_RETRY:I = 0x0

.field private static MAX_WAIT_CONNECTION_READY_TIME:I = 0x0

.field private static final MOBILE_TYPE:Ljava/lang/Integer; = null

.field public static final NETWORK_AVALIBILITY_CHANGE_by_Intent:Z = false

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TAG_DETAIL:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final TETHERING_GUARD_support:Z = false

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field private static final mNullRegexs:[Ljava/lang/String;


# instance fields
.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private alarm_flag:Z

.field private m3GDunOnlyWhenUsbOn:Z

.field private mBooted:Z

.field private mBtIconShown:Z

.field private mBtPendingNotiIcon:I

.field private mBtTetheredNotification:Landroid/app/Notification;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field mEntitlementCheckIntent:Landroid/app/PendingIntent;

.field private mExtWifiTetheringIcon:I

.field private mHandler:Landroid/os/Handler;

.field private mHotspotIconShown:Z

.field private mHtcRes:Landroid/content/res/Resources;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mLogTether:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/connectivity/Tethering$HtcTetherHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPendingNotiIcon:I

.field private mPendingTetherStateChangeIntent:Landroid/content/Intent;

.field private volatile mPermittedTetherFromApp:[Z

.field private mPermittedTetherLock:Ljava/lang/Object;

.field private volatile mPermittedTetherStatus:[I

.field private mPreferredUpstreamMobileApn:I

.field private mPrevConnecttedNetType:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiDisplayRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbConnected:Z

.field private mUsbTetherRequested:Z

.field private mWifiTetheringIcon:I

.field private pDhcpRange:[Ljava/lang/String;

.field private prevCheckingPermissionMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    .line 176
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 189
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 190
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 232
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "192.168.42.2"

    aput-object v3, v0, v1

    const-string v3, "192.168.42.254"

    aput-object v3, v0, v2

    const-string v3, "192.168.43.2"

    aput-object v3, v0, v6

    const/4 v3, 0x3

    const-string v4, "192.168.43.254"

    aput-object v4, v0, v3

    const-string v3, "192.168.44.2"

    aput-object v3, v0, v7

    const-string v3, "192.168.44.254"

    aput-object v3, v0, v5

    const/4 v3, 0x6

    const-string v4, "192.168.45.2"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "192.168.45.254"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "192.168.46.2"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "192.168.46.254"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "192.168.47.2"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "192.168.47.254"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "192.168.48.2"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "192.168.48.254"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 280
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_5

    :cond_2
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    .line 287
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    sput-boolean v1, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    .line 291
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/connectivity/Tethering;->MAX_WAIT_CONNECTION_READY_TIME:I

    .line 292
    sput v5, Lcom/android/server/connectivity/Tethering;->MAX_NETD_COMMAND_RETRY:I

    .line 298
    const-string v0, "interface"

    sput-object v0, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    .line 4582
    sget v0, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    mul-int/lit8 v0, v0, 0x18

    sput v0, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    return-void

    :cond_5
    move v0, v1

    .line 280
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .locals 9
    .parameter "context"
    .parameter "nmService"
    .parameter "statsService"
    .parameter "connService"
    .parameter "looper"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 303
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 170
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    .line 175
    const-string v2, "com.htc"

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    .line 194
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 228
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    .line 248
    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 249
    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    .line 251
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    .line 275
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    .line 293
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    .line 299
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 3986
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    .line 4554
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    .line 305
    const-string v2, "Tethering"

    const-string v3, "Tethering starting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 308
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 309
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 310
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    .line 311
    iput-object p5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 313
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 315
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 318
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Tethering"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    .line 319
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 320
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 324
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->htcHandlerForBroadcastIntents()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 326
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v3, "TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 327
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 329
    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v7, :cond_0

    .line 365
    const-string v2, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    :cond_0
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v2, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_1

    .line 371
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 404
    .local v1, mRes:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    .line 409
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_2

    .line 410
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_7

    .line 411
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x400c

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_6

    .line 412
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const-string v3, "stat_notify_mobile_hotspot"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    .line 429
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 430
    const v2, 0x107001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v8, :cond_5

    .line 435
    :cond_4
    sget-object v2, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 439
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 442
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 443
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v6

    .line 444
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v8

    .line 445
    return-void

    .line 414
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const-string v3, "stat_sys_wifi_vzw"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1

    .line 417
    :cond_7
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v2, v3, :cond_8

    .line 418
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const-string v3, "icon_status_tethering_hdpi"

    const-string v4, "drawable"

    const-string v5, "com.htc.framework"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1

    .line 423
    :cond_8
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zzzz_stat_sys_wifi_router"

    const-string v4, "drawable"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1

    .line 405
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->internal_htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->internal_htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$10202(Lcom/android/server/connectivity/Tethering;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/android/server/connectivity/Tethering;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->internal_htcRequestPermittedTether([I)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->internal_htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->internal_htcNotifyPermittedTetherChange()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htc_customization_PhoneTypeChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$4400()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/android/server/connectivity/Tethering;->MAX_NETD_COMMAND_RETRY:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/connectivity/Tethering;Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream(Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->setMultiRABTrafficThrottling(I)V

    return-void
.end method

.method static synthetic access$9602(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/server/connectivity/Tethering;Landroid/app/AlarmManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    return-void
.end method

.method private addToHtcTetherHistory(I[Ljava/lang/Object;)V
    .locals 3
    .parameter "event"
    .parameter "args"

    .prologue
    .line 4586
    new-instance v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    .line 4587
    .local v0, hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->timeStamp:J

    .line 4588
    iput p1, v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->event:I

    .line 4589
    iput-object p2, v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    .line 4590
    monitor-enter p0

    .line 4591
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 4592
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    if-le v1, v2, :cond_0

    .line 4593
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 4595
    :cond_0
    monitor-exit p0

    .line 4597
    return-void

    .line 4595
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearBtTetheredNotification()V
    .locals 3

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1335
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    .line 1339
    :cond_0
    return-void
.end method

.method private clearTetheredNotification()V
    .locals 3

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1346
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1347
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 1350
    :cond_0
    return-void
.end method

.method private clearWaitingAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 4773
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 4774
    move-object v0, p1

    .line 4775
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 4776
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 4778
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4779
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 4780
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 4782
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v8, 0x0

    .line 1573
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureUsbIface("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-array v5, v8, [Ljava/lang/String;

    .line 1578
    .local v5, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1583
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 1584
    .local v4, iface:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1585
    const/4 v6, 0x0

    .line 1587
    .local v6, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 1588
    if-eqz v6, :cond_0

    .line 1589
    const-string v9, "192.168.42.129"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1590
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1591
    if-eqz p1, :cond_1

    .line 1592
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "down"

    const-string v11, "up"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1596
    :goto_1
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "running"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1597
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "  "

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1598
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1583
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1579
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 1580
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return v8

    .line 1594
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v7       #len$:I
    :cond_1
    :try_start_2
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "up"

    const-string v11, "down"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1600
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 1601
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1607
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private dumpStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strArray"

    .prologue
    .line 4691
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4693
    .local v3, str:Ljava/lang/StringBuilder;
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    if-eqz p1, :cond_0

    .line 4695
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 4696
    .local v4, strIn:Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4701
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #strIn:Ljava/lang/String;
    :cond_0
    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private enableUsbIfaces(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    .line 1530
    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/String;

    .line 1532
    .local v4, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1538
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 1539
    .local v3, iface:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1540
    if-eqz p1, :cond_2

    .line 1541
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->interfaceAdded(Ljava/lang/String;)V

    .line 1538
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #len$:I
    :catch_0
    move-exception v1

    .line 1535
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error listing Interfaces :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 1543
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #iface:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->interfaceRemoved(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getActivedTetherUpstream(Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;
    .locals 9
    .parameter "iCM"

    .prologue
    const/4 v8, 0x4

    .line 3947
    move-object v1, p1

    .line 3948
    .local v1, cm:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 3949
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3950
    .local v0, bconn:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3954
    .end local v0           #bconn:Landroid/os/IBinder;
    :cond_0
    const/4 v4, 0x0

    .line 3956
    .local v4, info:Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3960
    :goto_0
    if-eqz v4, :cond_1

    .line 3961
    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    if-ne v5, v8, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 3962
    const/4 v4, 0x0

    .line 3965
    :cond_1
    if-nez v4, :cond_2

    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    if-ne v5, v8, :cond_2

    .line 3967
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 3974
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_3

    .line 3975
    const/4 v4, 0x0

    .line 3978
    :cond_3
    return-object v4

    .line 3957
    :catch_0
    move-exception v2

    .line 3958
    .local v2, e2:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting active network :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3968
    .end local v2           #e2:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 3969
    .local v3, e3:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting dun active network :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAssocCount()I
    .locals 8

    .prologue
    .line 1293
    const/4 v1, 0x0

    .line 1296
    .local v1, count:I
    :try_start_0
    const-string v5, "wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1297
    .local v4, wifib:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    .line 1298
    .local v3, wifiService:Landroid/net/wifi/IWifiManager;
    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, assoclist:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->getAssocCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1307
    .end local v0           #assoclist:Ljava/lang/String;
    .end local v3           #wifiService:Landroid/net/wifi/IWifiManager;
    .end local v4           #wifib:Landroid/os/IBinder;
    :goto_0
    return v1

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not getAssocList, :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1304
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1305
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not getAssocList, :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .locals 5
    .parameter "assoc"

    .prologue
    const/4 v1, 0x0

    .line 1315
    if-nez p1, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return v1

    .line 1318
    :cond_1
    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1319
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 1322
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, clientNumber:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, count:I
    goto :goto_0

    .line 1326
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 1327
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 6
    .parameter "netInfo"

    .prologue
    .line 4525
    const/4 v2, 0x0

    .line 4536
    .local v2, ifName:Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4537
    .local v0, bconn:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 4539
    .local v1, cm:Landroid/net/IConnectivityManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 4540
    .local v3, lprop:Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4544
    .end local v3           #lprop:Landroid/net/LinkProperties;
    :goto_0
    return-object v2

    .line 4541
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private htcGetSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 4313
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4314
    .local v0, mPm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 4316
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4318
    :goto_0
    if-eqz v1, :cond_0

    .line 4319
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4321
    :goto_1
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 4317
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private htcHandlerForBroadcastIntents()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 3717
    new-instance v0, Lcom/android/server/connectivity/Tethering$1;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V

    return-object v0
.end method

.method private htcHotspotIconChange(Landroid/net/NetworkInfo;II)V
    .locals 3
    .parameter "info"
    .parameter "netType"
    .parameter "subtype"

    .prologue
    .line 3768
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon Type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mPrevConnecttedNetType:I

    .line 3824
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    .line 3825
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    if-eqz v0, :cond_0

    .line 3826
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    if-eqz v0, :cond_1

    .line 3827
    const-string v0, "Tethering"

    const-string v1, "original tethering icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 3833
    :cond_0
    :goto_0
    return-void

    .line 3830
    :cond_1
    const v0, 0x1080534

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_0
.end method

.method private htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "internalIface"
    .parameter "externalIface"
    .parameter "forceCheck"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 4045
    const/4 v3, 0x1

    .line 4046
    .local v3, value:Z
    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v5, :cond_0

    .line 4047
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherMonitorWanIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4048
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v2

    .line 4049
    .local v2, lanIf:I
    if-ltz v2, :cond_0

    if-ge v2, v6, :cond_0

    .line 4051
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_3

    .line 4052
    move v0, p3

    .line 4053
    .local v0, checkTetheringGuard:Z
    if-nez v0, :cond_1

    .line 4054
    const/4 v1, -0x1

    .line 4055
    .local v1, ifstatus:I
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4056
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v1, v6, v2

    .line 4057
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4058
    packed-switch v1, :pswitch_data_0

    .line 4066
    const/4 v0, 0x1

    .line 4075
    .end local v1           #ifstatus:I
    :goto_0
    if-eqz v0, :cond_0

    .line 4076
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    add-int/lit8 v7, v2, 0x10

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 4093
    .end local v0           #checkTetheringGuard:Z
    .end local v2           #lanIf:I
    :cond_0
    :goto_1
    return v3

    .line 4057
    .restart local v0       #checkTetheringGuard:Z
    .restart local v1       #ifstatus:I
    .restart local v2       #lanIf:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 4060
    :pswitch_0
    const/4 v3, 0x1

    .line 4061
    goto :goto_0

    .line 4063
    :pswitch_1
    const/4 v3, 0x0

    .line 4064
    goto :goto_0

    .line 4071
    .end local v1           #ifstatus:I
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4072
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v7, 0x3

    aput v7, v6, v2

    .line 4073
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 4076
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 4082
    .end local v0           #checkTetheringGuard:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4083
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v4, v4, v2

    if-eqz v4, :cond_4

    .line 4084
    const/4 v3, 0x0

    .line 4086
    :cond_4
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 4058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private htcPermittedTetherInit()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 3989
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    .line 3990
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    .line 3991
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 3992
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    .line 3993
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3994
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v2, v1, v0

    .line 3993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3997
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private htcPermittedTetherLanIf(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 4000
    const/4 v0, -0x1

    .line 4001
    .local v0, lanIf:I
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 4002
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4003
    const/4 v0, 0x1

    .line 4010
    :cond_0
    :goto_0
    return v0

    .line 4004
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4005
    const/4 v0, 0x0

    goto :goto_0

    .line 4006
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4007
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private htcPermittedTetherMonitorWanIf(Ljava/lang/String;)Z
    .locals 8
    .parameter "iface"

    .prologue
    .line 4014
    const/4 v1, 0x0

    .line 4015
    .local v1, isWanIf:Z
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v6, :cond_1

    .line 4016
    if-eqz p1, :cond_1

    .line 4017
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4018
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    .line 4019
    .local v3, service:Landroid/net/IConnectivityManager;
    const/4 v4, -0x1

    .line 4020
    .local v4, wanIf:I
    iget v6, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 4021
    const/4 v4, 0x4

    .line 4026
    :goto_0
    if-ltz v4, :cond_1

    .line 4027
    const/4 v2, 0x0

    .line 4029
    .local v2, nInfo:Landroid/net/NetworkInfo;
    :try_start_0
    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4031
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    .line 4033
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    .line 4034
    .local v5, wanIface:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4035
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4041
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #nInfo:Landroid/net/NetworkInfo;
    .end local v3           #service:Landroid/net/IConnectivityManager;
    .end local v4           #wanIf:I
    .end local v5           #wanIface:Ljava/lang/String;
    :cond_1
    return v1

    .line 4024
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #service:Landroid/net/IConnectivityManager;
    .restart local v4       #wanIf:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 4030
    .restart local v2       #nInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private htc_customization_PhoneTypeChange(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x3

    .line 4493
    sget-boolean v8, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v8, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-ne v8, v9, :cond_4

    .line 4496
    new-array v6, v10, [Ljava/lang/Object;

    .line 4497
    .local v6, mParams:[Ljava/lang/Object;
    const/4 v8, 0x0

    const-string v9, "phoneName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v8

    .line 4498
    const/16 v8, 0x17

    invoke-direct {p0, v8, v6}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4500
    new-array v7, v11, [Z

    .line 4501
    .local v7, statusChanged:[Z
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4502
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 4503
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v8, v8, v1

    if-eq v8, v11, :cond_0

    .line 4504
    const/4 v8, 0x1

    aput-boolean v8, v7, v1

    .line 4505
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v10, 0x3

    aput v10, v8, v1

    .line 4502
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4508
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4509
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v9

    .line 4510
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 4511
    .local v5, ifaces:Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4512
    .local v4, ifaceObj:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v3

    .line 4513
    .local v3, ifNum:I
    if-ltz v3, :cond_2

    if-ge v3, v11, :cond_2

    .line 4514
    aget-boolean v8, v7, v3

    if-eqz v8, :cond_2

    .line 4515
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->internal_htcPermittedTetherConnectionReCalculation(Ljava/lang/Object;)V

    goto :goto_1

    .line 4519
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifNum:I
    .end local v4           #ifaceObj:Ljava/lang/Object;
    .end local v5           #ifaces:Ljava/util/Set;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 4508
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 4519
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #ifaces:Ljava/util/Set;
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4521
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #ifaces:Ljava/util/Set;
    .end local v6           #mParams:[Ljava/lang/Object;
    .end local v7           #statusChanged:[Z
    :cond_4
    return-void
.end method

.method private internal_htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    .line 3843
    :try_start_0
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3845
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tethering got CONNECTIVITY_ACTION type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 3848
    .local v3, netType:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 3849
    .local v4, subtype:I
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isHtcDunNetworkType(I)Z

    move-result v5

    .line 3851
    .local v5, upstreamChanged:Z
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    .line 3852
    .local v2, mParams:[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    .line 3853
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    .line 3854
    const/4 v6, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 3855
    const/4 v6, 0x3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    aput-object v7, v2, v6

    .line 3856
    const/4 v6, 0x4

    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    .line 3857
    const/16 v6, 0xa

    invoke-direct {p0, v6, v2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 3859
    if-eqz v5, :cond_1

    .line 3860
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v6, v9, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x88

    if-eq v6, v7, :cond_0

    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4010

    cmpl-double v6, v6, v8

    if-gez v6, :cond_0

    .line 3864
    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/connectivity/Tethering;->htcHotspotIconChange(Landroid/net/NetworkInfo;II)V

    .line 3866
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3871
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #mParams:[Ljava/lang/Object;
    .end local v3           #netType:I
    .end local v4           #subtype:I
    .end local v5           #upstreamChanged:Z
    :cond_1
    :goto_0
    return-void

    .line 3868
    :catch_0
    move-exception v0

    .line 3869
    .local v0, iex:Ljava/lang/Exception;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internal_htcConnectivityActionHandling : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internal_htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    .locals 9
    .parameter "netInfo"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 3880
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 3881
    .local v2, netType:I
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->isHtcDunNetworkType(I)Z

    move-result v3

    .line 3883
    .local v3, upstreamChanged:Z
    new-array v1, v8, [Ljava/lang/Object;

    .line 3884
    .local v1, mParams:[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v4

    .line 3885
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v7

    .line 3886
    const/4 v4, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 3887
    const/16 v4, 0xe

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 3889
    if-eqz v3, :cond_0

    .line 3890
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tethering got avalibility change:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v4, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3895
    :cond_0
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 3896
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 3897
    const-string v4, "Tethering"

    const-string v5, "Tethering got mobile connection is available => resend tether request"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3901
    .local v0, copyMessage:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3903
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3909
    .end local v0           #copyMessage:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 3905
    :cond_2
    const-string v4, "Tethering"

    const-string v5, "Tethering got mobile connection is not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internal_htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V
    .locals 9
    .parameter "netInfo"
    .parameter "prev_netSubtype"

    .prologue
    const/4 v8, 0x2

    .line 3916
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 3917
    .local v2, netType:I
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->isHtcDunNetworkType(I)Z

    move-result v4

    .line 3919
    .local v4, upstreamChanged:Z
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/Object;

    .line 3920
    .local v1, mParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    .line 3921
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    .line 3922
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 3923
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    .line 3924
    const/16 v5, 0x10

    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 3926
    if-eqz v4, :cond_1

    .line 3927
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tethering subtype change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9b

    if-eq v5, v6, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v5, v8, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x88

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4010

    cmpl-double v5, v5, v7

    if-gez v5, :cond_1

    .line 3932
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream(Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3933
    .local v0, info:Landroid/net/NetworkInfo;
    const/4 v3, -0x1

    .line 3934
    .local v3, type:I
    if-eqz v0, :cond_0

    .line 3935
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 3937
    :cond_0
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi_subtype netType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPrevNetType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/connectivity/Tethering;->mPrevConnecttedNetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mPrevConnecttedNetType:I

    if-ne v3, v5, :cond_1

    .line 3940
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/connectivity/Tethering;->htcHotspotIconChange(Landroid/net/NetworkInfo;II)V

    .line 3944
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v3           #type:I
    :cond_1
    return-void
.end method

.method private internal_htcNotifyPermittedTetherChange()V
    .locals 2

    .prologue
    .line 4475
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 4476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4480
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4482
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private internal_htcPermittedTetherConnectionReCalculation(Ljava/lang/Object;)V
    .locals 3
    .parameter "ifaceObj"

    .prologue
    .line 4485
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 4486
    .local v0, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v0, :cond_0

    .line 4487
    const/16 v1, 0xc

    const-string v2, "htc_fake_tether_up_if"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    .line 4490
    :cond_0
    return-void
.end method

.method private internal_htcRequestPermittedTether([I)V
    .locals 16
    .parameter "statusArray"

    .prologue
    .line 4326
    sget-boolean v13, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v13, :cond_6

    .line 4327
    const-string v13, "com.android.phone"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->htcGetSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 4328
    .local v8, phoneSig:[Landroid/content/pm/Signature;
    const-string v13, "com.htc.tetheringguard"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->htcGetSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 4330
    .local v12, tetherGuardSig:[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 4331
    .local v2, hasSignature:Z
    if-eqz v8, :cond_1

    const/4 v13, 0x0

    aget-object v13, v8, v13

    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    .line 4332
    move-object v1, v12

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v11, v1, v3

    .line 4333
    .local v11, sig:Landroid/content/pm/Signature;
    if-eqz v11, :cond_0

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 4334
    const/4 v2, 0x1

    .line 4332
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4339
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v11           #sig:Landroid/content/pm/Signature;
    :cond_1
    const/4 v10, 0x0

    .line 4340
    .local v10, sendToTetherGuard:Z
    if-eqz v2, :cond_4

    .line 4341
    const-string v13, "Tethering"

    const-string v14, "Tethering call TetherGuard"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 4343
    .local v9, requestIntent:Landroid/content/Intent;
    const-string v13, "com.htc.tetheringguard"

    const-string v14, "com.htc.tetheringguard.mService"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4344
    const-string v13, "status"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    .line 4346
    .local v6, name:Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    .line 4347
    const/4 v10, 0x1

    .line 4357
    .end local v6           #name:Landroid/content/ComponentName;
    .end local v9           #requestIntent:Landroid/content/Intent;
    :goto_1
    if-nez v10, :cond_6

    .line 4358
    const/4 v7, 0x0

    .line 4359
    .local v7, notifyRequired:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4360
    const/4 v4, 0x0

    .local v4, lanIf:I
    :goto_2
    const/4 v13, 0x3

    if-ge v4, v13, :cond_5

    .line 4361
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v13, v13, v4

    const/4 v15, 0x1

    if-eq v13, v15, :cond_2

    .line 4362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v15, 0x1

    aput v15, v13, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4363
    const/4 v7, 0x1

    .line 4360
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4350
    .end local v4           #lanIf:I
    .end local v7           #notifyRequired:Z
    .restart local v6       #name:Landroid/content/ComponentName;
    .restart local v9       #requestIntent:Landroid/content/Intent;
    :cond_3
    const-string v13, "Tethering"

    const-string v14, "tether package missing"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4354
    .end local v6           #name:Landroid/content/ComponentName;
    .end local v9           #requestIntent:Landroid/content/Intent;
    :cond_4
    const-string v13, "Tethering"

    const-string v14, "fake tether package existed in system"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4366
    .restart local v4       #lanIf:I
    .restart local v7       #notifyRequired:Z
    :cond_5
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4367
    if-eqz v7, :cond_6

    .line 4368
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->internal_htcNotifyPermittedTetherChange()V

    .line 4372
    .end local v2           #hasSignature:Z
    .end local v4           #lanIf:I
    .end local v7           #notifyRequired:Z
    .end local v8           #phoneSig:[Landroid/content/pm/Signature;
    .end local v10           #sendToTetherGuard:Z
    .end local v12           #tetherGuardSig:[Landroid/content/pm/Signature;
    :cond_6
    return-void

    .line 4366
    .restart local v2       #hasSignature:Z
    .restart local v4       #lanIf:I
    .restart local v7       #notifyRequired:Z
    .restart local v8       #phoneSig:[Landroid/content/pm/Signature;
    .restart local v10       #sendToTetherGuard:Z
    .restart local v12       #tetherGuardSig:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13
.end method

.method private internal_htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 4405
    sget-boolean v9, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v9, :cond_6

    .line 4406
    const/4 v2, -0x1

    .line 4408
    .local v2, ifNum:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4410
    :goto_0
    const/4 v8, -0x1

    .line 4412
    .local v8, status:I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 4418
    :goto_1
    if-ltz v2, :cond_6

    const/4 v9, 0x3

    if-ge v2, v9, :cond_6

    if-ltz v8, :cond_6

    .line 4419
    const/4 v6, 0x0

    .line 4420
    .local v6, sendEventForTetherChange:Z
    const/4 v7, 0x0

    .line 4421
    .local v7, sendIntentForTetherChange:Z
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4422
    :try_start_2
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v9, v9, v2

    if-eq v8, v9, :cond_0

    .line 4424
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/Object;

    .line 4425
    .local v5, mParams:[Ljava/lang/Object;
    const/4 v9, 0x0

    aput-object p1, v5, v9

    .line 4426
    const/4 v9, 0x1

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v9

    .line 4427
    const/4 v9, 0x2

    aput-object p2, v5, v9

    .line 4428
    const/4 v9, 0x3

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v9

    .line 4429
    const/4 v9, 0x4

    new-instance v11, Ljava/lang/Integer;

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v12, v12, v2

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v9

    .line 4430
    const/16 v9, 0x13

    invoke-direct {p0, v9, v5}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4432
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v9, v9, v2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 4434
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v8, v9, v2

    .line 4456
    .end local v5           #mParams:[Ljava/lang/Object;
    :cond_0
    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4457
    if-eqz v6, :cond_5

    .line 4458
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v10

    .line 4459
    :try_start_3
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4460
    .local v4, ifaces:Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4461
    .local v3, ifaceObj:Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-direct {p0, v9}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v9

    if-ne v2, v9, :cond_1

    .line 4462
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->internal_htcPermittedTetherConnectionReCalculation(Ljava/lang/Object;)V

    goto :goto_3

    .line 4465
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceObj:Ljava/lang/Object;
    .end local v4           #ifaces:Ljava/util/Set;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 4437
    .restart local v5       #mParams:[Ljava/lang/Object;
    :cond_2
    :try_start_4
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v8, v9, v2

    .line 4438
    const/4 v6, 0x1

    .line 4439
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 4441
    :cond_3
    const/4 v7, 0x1

    .line 4443
    sget-boolean v9, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v9, :cond_0

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 4444
    if-nez v8, :cond_0

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    .line 4445
    const-string v9, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start recheck alarm ifNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    .line 4447
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/connectivity/Tethering;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 4449
    const-wide/32 v11, 0x5265c00

    invoke-direct {p0, v11, v12, v2}, Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V

    goto :goto_2

    .line 4456
    .end local v5           #mParams:[Ljava/lang/Object;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 4465
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #ifaces:Ljava/util/Set;
    :cond_4
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4467
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ifaces:Ljava/util/Set;
    :cond_5
    if-eqz v7, :cond_6

    .line 4468
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4472
    .end local v2           #ifNum:I
    .end local v6           #sendEventForTetherChange:Z
    .end local v7           #sendIntentForTetherChange:Z
    .end local v8           #status:I
    :cond_6
    return-void

    .line 4409
    .restart local v2       #ifNum:I
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 4413
    .restart local v8       #status:I
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method private isHtcDunNetworkType(I)Z
    .locals 5
    .parameter "netType"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3755
    const/4 v0, 0x1

    .line 3756
    .local v0, upstreamChanged:Z
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3757
    iget v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    if-ne v3, v4, :cond_2

    .line 3758
    if-ne p1, v4, :cond_1

    move v0, v1

    .line 3764
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 3758
    goto :goto_0

    .line 3761
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v4, 0x0

    .line 618
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 620
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 622
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    monitor-exit v5

    .line 628
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #regex:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 621
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    .end local v3           #regex:Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto :goto_1

    .line 625
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private scheduleEntitlementCheckExpiredAlarm(JI)V
    .locals 6
    .parameter "timeToTrigger"
    .parameter "iface"

    .prologue
    .line 4785
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4786
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 4787
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4788
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4789
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 4793
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set alarm to wake up entitlement check again after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4796
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 18

    .prologue
    .line 980
    const-string v15, "wifi"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 981
    .local v14, wifib:Landroid/os/IBinder;
    invoke-static {v14}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v12

    .line 984
    .local v12, wifiService:Landroid/net/wifi/IWifiManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v15}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-interface {v12}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v5

    .line 986
    .local v5, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 989
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v2, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v6, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 994
    .local v13, wifiTethered:Z
    const/4 v11, 0x0

    .line 995
    .local v11, usbTethered:Z
    const/4 v3, 0x0

    .line 997
    .local v3, bluetoothTethered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 998
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 999
    .local v9, ifaces:Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1000
    .local v8, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1001
    .local v10, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v10, :cond_1

    .line 1002
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1003
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1018
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v10           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 1004
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #iface:Ljava/lang/Object;
    .restart local v9       #ifaces:Ljava/util/Set;
    .restart local v10       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1005
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1006
    .restart local v8       #iface:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1007
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1008
    const/4 v11, 0x1

    .line 1014
    :cond_4
    :goto_2
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1009
    .restart local v8       #iface:Ljava/lang/Object;
    :cond_5
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1010
    const/4 v13, 0x1

    goto :goto_2

    .line 1011
    :cond_6
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1012
    const/4 v3, 0x1

    goto :goto_2

    .line 1018
    .end local v8           #iface:Ljava/lang/Object;
    .end local v10           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1019
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v4, broadcast:Landroid/content/Intent;
    const/high16 v15, 0x3000

    invoke-virtual {v4, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1022
    const-string v15, "availableArray"

    invoke-virtual {v4, v15, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1024
    const-string v15, "activeArray"

    invoke-virtual {v4, v15, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1025
    const-string v15, "erroredArray"

    invoke-virtual {v4, v15, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1028
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-eqz v15, :cond_8

    .line 1029
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    .line 1031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1033
    const-string v15, "Tethering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sendTetherStateChangedBroadcast "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :goto_3
    if-eqz v13, :cond_b

    .line 1060
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    .line 1061
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    if-eqz v15, :cond_9

    .line 1062
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 1077
    :goto_4
    if-eqz v3, :cond_c

    .line 1078
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z

    .line 1079
    const v15, 0x1080531

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V

    goto/16 :goto_0

    .line 1038
    :cond_8
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    goto :goto_3

    .line 1063
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    if-eqz v15, :cond_a

    .line 1064
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 1066
    :cond_a
    const v15, 0x1080534

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 1070
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    .line 1072
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 1074
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_4

    .line 1081
    :cond_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearBtTetheredNotification()V

    goto/16 :goto_0
.end method

.method private setMultiRABTrafficThrottling(I)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 4708
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v2, :cond_0

    .line 4709
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMultiRAB enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "htctelephony"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 4713
    .local v1, ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v1, :cond_1

    .line 4715
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V

    .line 4716
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4724
    .end local v1           #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 4717
    .restart local v1       #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :catch_0
    move-exception v0

    .line 4718
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "exception on ihtcPhoneInterface.requestSetMultiRABTrafficThrottling"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4721
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "Tethering"

    const-string v3, "Could not get htcPhoneInterface!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showBtTetheredNotification(I)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v8, 0x0

    .line 1089
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-nez v6, :cond_1

    .line 1091
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iput v8, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    .line 1098
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1100
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 1104
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    if-eqz v6, :cond_2

    .line 1105
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eq v6, p1, :cond_0

    .line 1108
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1111
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1112
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1115
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1117
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1118
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x1040462

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1119
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040463

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1123
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    if-nez v6, :cond_3

    .line 1124
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    .line 1125
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 1127
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    .line 1128
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 1129
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1130
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1131
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1133
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showTetheredNotification(I)V
    .locals 17
    .parameter "icon"

    .prologue
    .line 1139
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-nez v12, :cond_1

    .line 1141
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 1150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 1151
    .local v11, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1153
    const-string v12, "Tethering"

    const-string v13, "WiFiDisplay, not showTetheredNotification"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1159
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1161
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 1165
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showTetheredNotification: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1173
    .local v7, r:Landroid/content/res/Resources;
    const/16 v12, 0xb

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator0"

    aput-object v13, v10, v12

    const/4 v12, 0x1

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator1"

    aput-object v13, v10, v12

    const/4 v12, 0x2

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator2"

    aput-object v13, v10, v12

    const/4 v12, 0x3

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator3"

    aput-object v13, v10, v12

    const/4 v12, 0x4

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator4"

    aput-object v13, v10, v12

    const/4 v12, 0x5

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator5"

    aput-object v13, v10, v12

    const/4 v12, 0x6

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator6"

    aput-object v13, v10, v12

    const/4 v12, 0x7

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator7"

    aput-object v13, v10, v12

    const/16 v12, 0x8

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator8"

    aput-object v13, v10, v12

    const/16 v12, 0x9

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator9"

    aput-object v13, v10, v12

    const/16 v12, 0xa

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator10"

    aput-object v13, v10, v12

    .line 1187
    .local v10, vzwIcons:[Ljava/lang/String;
    const/4 v12, 0x6

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "icon_status_wifisharing_hdpi_0"

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string v13, "icon_status_wifisharing_hdpi_1"

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-string v13, "icon_status_wifisharing_hdpi_2"

    aput-object v13, v9, v12

    const/4 v12, 0x3

    const-string v13, "icon_status_wifisharing_hdpi_3"

    aput-object v13, v9, v12

    const/4 v12, 0x4

    const-string v13, "icon_status_wifisharing_hdpi_4"

    aput-object v13, v9, v12

    const/4 v12, 0x5

    const-string v13, "icon_status_wifisharing_hdpi_5"

    aput-object v13, v9, v12

    .line 1194
    .local v9, tmoIcons:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    if-eqz v12, :cond_c

    .line 1195
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getAssocCount()I

    move-result v2

    .line 1196
    .local v2, count:I
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_4

    .line 1197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x2040246

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1226
    .local v8, title:Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const/4 v12, 0x1

    if-le v2, v12, :cond_b

    .line 1227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x20400b2

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1238
    .end local v2           #count:I
    .local v4, message:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v12, :cond_e

    .line 1240
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "icon change: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v14, v14, Landroid/app/Notification;->icon:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_d

    .line 1244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v4, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13, v8, v4, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v5, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1198
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    .restart local v2       #count:I
    :cond_4
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa8

    if-ne v12, v13, :cond_6

    .line 1199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x2040245

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1202
    .restart local v8       #title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1203
    if-ltz v2, :cond_5

    const/16 v12, 0xa

    if-gt v2, v12, :cond_5

    .line 1205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v13, v10, v2

    const-string v14, "drawable"

    const-string v15, "android"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_1

    .line 1206
    :cond_5
    const-string v12, "Tethering"

    const-string v13, "Hotspot Icon Warning: Client number over limit"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1209
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_6
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x51

    if-ne v12, v13, :cond_7

    .line 1210
    const v12, 0x1040506

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .restart local v8       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1211
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_7
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x38

    if-ne v12, v13, :cond_8

    .line 1212
    const v12, 0x104054f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .restart local v8       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1214
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_8
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x9b

    if-ne v12, v13, :cond_a

    .line 1215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x2040245

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1216
    .restart local v8       #title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1217
    if-ltz v2, :cond_9

    const/4 v12, 0x5

    if-gt v2, v12, :cond_9

    .line 1218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v13, v9, v2

    const-string v14, "drawable"

    const-string v15, "com.htc.framework"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_1

    .line 1219
    :cond_9
    const-string v12, "Tethering"

    const-string v13, "Hotspot Icon Warning: Client number over limit"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1223
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x20400ab

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1229
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x20400b1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1232
    .end local v2           #count:I
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_c
    const v12, 0x1040462

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1233
    .restart local v8       #title:Ljava/lang/CharSequence;
    const v12, 0x1040463

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1250
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1253
    :cond_e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1258
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "com.htc.WifiRouter"

    const-string v13, "com.htc.WifiRouter.Intro"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const/high16 v12, 0x4000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1273
    .local v6, pi:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v12, :cond_f

    .line 1274
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 1275
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Landroid/app/Notification;->when:J

    .line 1277
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move/from16 v0, p1

    iput v0, v12, Landroid/app/Notification;->icon:I

    .line 1278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v13, v12, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 1281
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa8

    if-ne v12, v13, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getAssocCount()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_10

    .line 1283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v4, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1286
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v5, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1284
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v8, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_3
.end method

.method private tetherUsb(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    .line 1551
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tetherUsb "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    .line 1555
    .local v4, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1560
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 1561
    .local v3, iface:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1562
    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 1563
    .local v6, result:I
    :goto_1
    if-nez v6, :cond_1

    .line 1569
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #result:I
    :goto_2
    return-void

    .line 1556
    :catch_0
    move-exception v1

    .line 1557
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1562
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #iface:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 1560
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1568
    .end local v3           #iface:Ljava/lang/String;
    :cond_2
    const-string v7, "Tethering"

    const-string v8, "unable start or stop USB tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public IsSupportFastDormancy()Z
    .locals 2

    .prologue
    .line 4820
    const-string v0, "1"

    const-string v1, "ro.ril.fast.dormancy.rule"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4821
    const/4 v0, 0x1

    .line 4824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkDunRequired()V
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 1779
    :goto_0
    return-void

    .line 1776
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4602
    if-nez p2, :cond_0

    .line 4687
    :goto_0
    return-void

    .line 4606
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.DUMP"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_1

    .line 4608
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4614
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4615
    :try_start_0
    const-string v19, "mUpstreamIfaceTypes: "

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 4617
    .local v12, netType:Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4625
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #netType:Ljava/lang/Integer;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 4620
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4621
    const-string v19, "Tether state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 4623
    .local v13, o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4625
    .end local v13           #o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4626
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 4629
    const-string v19, "Usb Configuration:"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v17, v3, v9

    .line 4631
    .local v17, usbReg:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4633
    .end local v17           #usbReg:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4635
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 4636
    const-string v19, "WiFi Configuration:"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_4
    if-ge v9, v10, :cond_6

    aget-object v18, v3, v9

    .line 4638
    .local v18, wifiReg:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 4640
    .end local v18           #wifiReg:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4642
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Tethering type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    move/from16 v19, v0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const-string v19, "true"

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4643
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4646
    const/4 v11, 0x0

    .line 4647
    .local v11, mHistArray:[Ljava/lang/Object;
    monitor-enter p0

    .line 4649
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 4653
    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4654
    if-eqz v11, :cond_b

    .line 4655
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 4657
    .local v4, dataTimeStamp:Ljava/util/Date;
    const-wide/16 v15, -0x1

    .line 4659
    .local v15, timeStamp:J
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v15

    .line 4662
    :goto_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Change History: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v11

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries (current 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/Object;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_8
    if-ge v9, v10, :cond_c

    aget-object v14, v3, v9

    .local v14, oHist:Ljava/lang/Object;
    move-object v7, v14

    .line 4667
    check-cast v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;

    .line 4668
    .local v7, hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    const-string v2, ""

    .line 4669
    .local v2, argStr:Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 4670
    iget-object v0, v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    iget-object v0, v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v6, v0

    .line 4671
    .local v6, hisargs:I
    :goto_9
    if-lez v6, :cond_a

    .line 4672
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4673
    const/4 v8, 0x1

    .local v8, i:I
    :goto_a
    if-ge v8, v6, :cond_a

    .line 4674
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4673
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 4642
    .end local v2           #argStr:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v4           #dataTimeStamp:Ljava/util/Date;
    .end local v6           #hisargs:I
    .end local v7           #hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #mHistArray:[Ljava/lang/Object;
    .end local v14           #oHist:Ljava/lang/Object;
    .end local v15           #timeStamp:J
    :cond_8
    const-string v19, "false"

    goto/16 :goto_5

    .line 4650
    .restart local v11       #mHistArray:[Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 4651
    .local v5, ex6:Ljava/lang/Exception;
    :try_start_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Log Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4653
    .end local v5           #ex6:Ljava/lang/Exception;
    :catchall_1
    move-exception v19

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v19

    .line 4670
    .restart local v2       #argStr:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/Object;
    .restart local v4       #dataTimeStamp:Ljava/util/Date;
    .restart local v7       #hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v14       #oHist:Ljava/lang/Object;
    .restart local v15       #timeStamp:J
    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .line 4678
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  [0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->timeStamp:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->event:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    .line 4682
    .end local v2           #argStr:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v4           #dataTimeStamp:Ljava/util/Date;
    .end local v7           #hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v14           #oHist:Ljava/lang/Object;
    .end local v15           #timeStamp:J
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Change History: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 4660
    .restart local v4       #dataTimeStamp:Ljava/util/Date;
    .restart local v15       #timeStamp:J
    :catch_1
    move-exception v19

    goto/16 :goto_7
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1832
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1834
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1835
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1836
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1837
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1838
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1841
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1842
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1843
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1844
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1843
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1846
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5
    .parameter "iface"

    .prologue
    const/4 v3, 0x1

    .line 956
    if-nez p1, :cond_0

    move v2, v3

    .line 973
    :goto_0
    return v2

    .line 960
    :cond_0
    const/4 v1, 0x0

    .line 961
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 962
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 963
    if-nez v1, :cond_1

    .line 971
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v4

    goto :goto_0

    .line 974
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1671
    const-string v2, ""

    .line 1672
    .local v2, btcid:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1673
    .local v0, blbtCid:Z
    const/4 v1, 0x1

    .line 1675
    .local v1, blbtNonCid:Z
    :try_start_0
    const-string v6, "ro.cid"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.bt.tetheringUI."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1677
    :goto_0
    const-string v6, "ro.bt.tetheringUI"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v4, :cond_3

    move v1, v4

    .line 1682
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1683
    :cond_0
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 1687
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    if-nez v4, :cond_4

    .line 1689
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 1693
    :goto_2
    return-object v4

    :cond_2
    move v0, v5

    .line 1676
    goto :goto_0

    :cond_3
    move v1, v5

    .line 1677
    goto :goto_1

    .line 1678
    :catch_0
    move-exception v3

    .line 1679
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    const-string v5, "Exception happened when get SystemProperties(BT)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1693
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    goto :goto_2
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1814
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1815
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1816
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1817
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1818
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1819
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1820
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1823
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1825
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1826
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1825
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1828
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1612
    const-string v3, ""

    .line 1613
    .local v3, usbcid:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1614
    .local v0, blusbCid:Z
    const/4 v1, 0x1

    .line 1616
    .local v1, blusbNonCid:Z
    :try_start_0
    const-string v6, "ro.cid"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1617
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.usb.tetheringUI."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1618
    :goto_0
    const-string v6, "ro.usb.tetheringUI"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v4, :cond_3

    move v1, v4

    .line 1623
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1624
    :cond_0
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 1628
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    if-nez v4, :cond_4

    .line 1630
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 1634
    :goto_2
    return-object v4

    :cond_2
    move v0, v5

    .line 1617
    goto :goto_0

    :cond_3
    move v1, v5

    .line 1618
    goto :goto_1

    .line 1619
    :catch_0
    move-exception v2

    .line 1620
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    const-string v5, "Exception happened when get SystemProperties(USB)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1634
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    goto :goto_2
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 1640
    const-string v5, "wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1641
    .local v4, wifib:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    .line 1645
    .local v3, wifiService:Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1646
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiDisplayRegexs:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :goto_0
    return-object v5

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getTetherableWifiRegexs] error to getTetherableWifiRegexs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    .line 1654
    .local v2, isNEL:Ljava/lang/String;
    :try_start_1
    const-string v5, "ro.wifi.hotspotUI"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1658
    :goto_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1662
    :cond_1
    sget-object v5, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    goto :goto_0

    .line 1655
    :catch_1
    move-exception v1

    .line 1656
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Tethering"

    const-string v6, "Exception : SystemProperties.get(CUSTOMIZE_HOTSPOTUI)"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1666
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1801
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1802
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1803
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1804
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1805
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1809
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1810
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1783
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1785
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1786
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1787
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1788
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1789
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1792
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1793
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1794
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1795
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1797
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 1721
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1722
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1723
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1724
    .local v2, values:[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1725
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 1725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1728
    :cond_0
    monitor-exit v4

    .line 1729
    return-object v2

    .line 1728
    .end local v0           #i:I
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #values:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1855
    return-void
.end method

.method public htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3839
    return-void
.end method

.method public htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "netInfo"

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3877
    return-void
.end method

.method public htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V
    .locals 4
    .parameter "netInfo"
    .parameter "prev_netSubtype"

    .prologue
    .line 3912
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3913
    return-void
.end method

.method public htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "register"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    const/4 v4, 0x0

    .line 4375
    const/4 v1, 0x0

    .line 4376
    .local v1, value:I
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v2, :cond_0

    .line 4378
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    .line 4379
    .local v0, mParams:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    .line 4380
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    .line 4381
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    .line 4382
    const/4 v2, 0x3

    aput-object p4, v0, v2

    .line 4383
    const/4 v2, 0x4

    aput-object p5, v0, v2

    .line 4384
    const/16 v2, 0x15

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4386
    if-eqz p1, :cond_0

    .line 4387
    invoke-direct {p0, p4, p5, v4}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4388
    const/4 v1, 0x1

    .line 4392
    .end local v0           #mParams:[Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method public htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I
    .locals 24
    .parameter "originCallFrom"
    .parameter "isThroughSystem"
    .parameter "requestType"

    .prologue
    .line 4098
    const/4 v13, 0x0

    .line 4099
    .local v13, requestAcceptable:Z
    const/4 v6, -0x1

    .line 4100
    .local v6, commandType:I
    const/4 v11, -0x1

    .line 4101
    .local v11, lanIf:I
    if-eqz p3, :cond_1

    .line 4102
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v19, p3

    .line 4103
    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-ltz v19, :cond_0

    move-object/from16 v19, p3

    .line 4104
    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xf0

    .line 4105
    sparse-switch v6, :sswitch_data_0

    .line 4111
    const/4 v6, -0x1

    .line 4114
    :sswitch_0
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    and-int/lit8 v11, v19, 0xf

    .line 4115
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v11, v0, :cond_3

    .line 4116
    const/4 v11, -0x1

    .line 4128
    :cond_0
    :goto_0
    if-ltz v6, :cond_1

    if-ltz v11, :cond_1

    .line 4129
    const/4 v13, 0x1

    .line 4132
    :cond_1
    if-nez v13, :cond_5

    .line 4136
    const/16 v17, 0x1

    .line 4308
    :cond_2
    :goto_1
    return v17

    .line 4118
    :cond_3
    const/16 v19, 0x20

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    .line 4120
    const/4 v11, -0x1

    goto :goto_0

    .line 4124
    .restart local p3
    :cond_4
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 4125
    const/16 v6, 0x10

    .line 4126
    check-cast p3, Ljava/lang/String;

    .end local p3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    .line 4139
    :cond_5
    const/16 v17, 0x0

    .line 4147
    .local v17, value:I
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 4148
    .local v14, requestList:[I
    const/4 v15, 0x0

    .line 4150
    .local v15, requestPermissionCheck:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4151
    const/4 v8, 0x1

    .line 4152
    .local v8, currIfRequstedByAp:Z
    const/4 v7, -0x1

    .line 4153
    .local v7, currIfCheckingStatus:I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    .line 4154
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    aget-boolean v8, v19, v11

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aget v7, v19, v11

    .line 4157
    :cond_6
    const-string v19, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Permitted Tether request - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") from="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/Object;

    .line 4162
    .local v12, mParams:[Ljava/lang/Object;
    const/16 v19, 0x0

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v12, v19

    .line 4163
    const/16 v19, 0x1

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v12, v19

    .line 4164
    const/16 v19, 0x2

    aput-object p1, v12, v19

    .line 4165
    const/16 v19, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v12, v19

    .line 4166
    const/16 v19, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v12, v19

    .line 4167
    const/16 v19, 0x5

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v12, v19

    .line 4168
    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4171
    if-nez p2, :cond_c

    .line 4172
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_b

    .line 4173
    sparse-switch v6, :sswitch_data_1

    .line 4267
    :cond_7
    :goto_2
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_8

    if-eqz v15, :cond_8

    .line 4268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    array-length v0, v14

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4270
    :cond_8
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4272
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_2

    if-eqz v15, :cond_2

    .line 4275
    const/4 v5, 0x1

    .line 4276
    .local v5, bIsConnectionAvailable:Z
    sget v18, Lcom/android/server/connectivity/Tethering;->MAX_WAIT_CONNECTION_READY_TIME:I

    .line 4278
    .local v18, wait_time:I
    const-string v19, "connectivity"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4279
    .local v4, b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v16

    .line 4282
    .local v16, service:Landroid/net/IConnectivityManager;
    if-eqz v16, :cond_f

    .line 4283
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 4284
    .local v10, info:Landroid/net/NetworkInfo;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-nez v19, :cond_9

    .line 4288
    const/4 v5, 0x0

    .line 4299
    .end local v10           #info:Landroid/net/NetworkInfo;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    .line 4301
    if-eqz v5, :cond_10

    .line 4302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 4175
    .end local v4           #b:Landroid/os/IBinder;
    .end local v5           #bIsConnectionAvailable:Z
    .end local v16           #service:Landroid/net/IConnectivityManager;
    .end local v18           #wait_time:I
    :sswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v11

    .line 4176
    if-eqz v7, :cond_7

    .line 4177
    const/16 v17, 0x2

    .line 4178
    move/from16 v0, v17

    if-eq v7, v0, :cond_7

    .line 4179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    .line 4180
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4185
    :sswitch_2
    if-nez v8, :cond_a

    .line 4186
    const/16 v17, 0x3

    .line 4191
    :goto_4
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 4192
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4189
    :cond_a
    move/from16 v17, v7

    goto :goto_4

    .line 4196
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11

    .line 4197
    const/16 v17, 0x3

    .line 4198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    goto/16 :goto_2

    .line 4270
    .end local v12           #mParams:[Ljava/lang/Object;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 4203
    .restart local v12       #mParams:[Ljava/lang/Object;
    :cond_b
    sparse-switch v6, :sswitch_data_2

    goto/16 :goto_2

    .line 4205
    :sswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v11

    goto/16 :goto_2

    .line 4208
    :sswitch_5
    if-nez v8, :cond_7

    .line 4209
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4213
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11

    .line 4214
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4220
    :cond_c
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_e

    .line 4221
    sparse-switch v6, :sswitch_data_3

    goto/16 :goto_2

    .line 4223
    :sswitch_7
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 4225
    if-eqz v7, :cond_7

    .line 4226
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 4230
    :cond_d
    const/16 v17, 0x2

    .line 4231
    move/from16 v0, v17

    if-eq v7, v0, :cond_7

    .line 4232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    .line 4233
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4238
    :sswitch_8
    move/from16 v17, v7

    .line 4239
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 4240
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4244
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11

    .line 4245
    const/16 v17, 0x3

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    goto/16 :goto_2

    .line 4251
    :cond_e
    sparse-switch v6, :sswitch_data_4

    goto/16 :goto_2

    .line 4253
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v11

    goto/16 :goto_2

    .line 4256
    :sswitch_b
    if-nez v8, :cond_7

    .line 4257
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4261
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4262
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4291
    .restart local v4       #b:Landroid/os/IBinder;
    .restart local v5       #bIsConnectionAvailable:Z
    .restart local v16       #service:Landroid/net/IConnectivityManager;
    .restart local v18       #wait_time:I
    :cond_f
    :try_start_4
    sget-object v19, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v20, "service is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 4293
    :catch_0
    move-exception v9

    .line 4294
    .local v9, e:Ljava/lang/Exception;
    sget-object v19, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v20, "Exception to get connectivity service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4304
    .end local v9           #e:Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    move-object/from16 v20, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 4105
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch

    .line 4173
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
    .end sparse-switch

    .line 4203
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch

    .line 4221
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x20 -> :sswitch_8
        0x40 -> :sswitch_9
    .end sparse-switch

    .line 4251
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_a
        0x20 -> :sswitch_b
        0x40 -> :sswitch_c
    .end sparse-switch
.end method

.method public htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 4396
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 4397
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 4398
    .local v0, parms:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4399
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 4400
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4402
    .end local v0           #parms:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 9
    .parameter "iface"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 710
    new-array v1, v4, [Ljava/lang/Object;

    .line 711
    .local v1, mParams:[Ljava/lang/Object;
    aput-object p1, v1, v5

    .line 712
    invoke-direct {p0, v6, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 714
    if-nez p1, :cond_0

    .line 763
    :goto_0
    return-void

    .line 718
    :cond_0
    const/4 v0, 0x0

    .line 719
    .local v0, found:Z
    const/4 v3, 0x0

    .line 720
    .local v3, usb:Z
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 721
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    const/4 v0, 0x1

    .line 724
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 725
    const/4 v0, 0x1

    .line 726
    const/4 v3, 0x1

    .line 728
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 729
    const/4 v0, 0x1

    .line 731
    :cond_3
    if-nez v0, :cond_4

    .line 732
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    monitor-exit v6

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 736
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 739
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/Object;

    .line 740
    const/4 v7, 0x0

    aput-object p1, v1, v7

    .line 741
    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 742
    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 743
    const/4 v7, 0x3

    if-eqz v2, :cond_5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    .line 744
    const/4 v4, 0x3

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 747
    if-eqz v2, :cond_6

    .line 754
    monitor-exit v6

    goto :goto_0

    :cond_5
    move v4, v5

    .line 743
    goto :goto_1

    .line 756
    :cond_6
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p1, v4, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 757
    .restart local v2       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 759
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceAdded :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 614
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 768
    if-nez p1, :cond_0

    .line 770
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 811
    :goto_0
    return-void

    .line 781
    :cond_0
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceRemoving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 784
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 787
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    .line 788
    .local v0, mParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 789
    const/4 v5, 0x1

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    .line 790
    const/4 v2, 0x5

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 793
    if-nez v1, :cond_2

    .line 799
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempting to remove unknown iface ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), ignoring"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    monitor-exit v4

    goto :goto_0

    .line 810
    .end local v0           #mParams:[Ljava/lang/Object;
    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #mParams:[Ljava/lang/Object;
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_1
    move v2, v3

    .line 789
    goto :goto_1

    .line 804
    :cond_2
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 805
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceRemoved "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 10
    .parameter "iface"
    .parameter "up"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 550
    new-array v1, v6, [Ljava/lang/Object;

    .line 551
    .local v1, mParams:[Ljava/lang/Object;
    aput-object p1, v1, v5

    .line 552
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    .line 553
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 555
    if-nez p1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    .line 560
    .local v0, found:Z
    const/4 v3, 0x0

    .line 561
    .local v3, usb:Z
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 562
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 563
    const/4 v0, 0x1

    .line 570
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 564
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 565
    const/4 v0, 0x1

    .line 566
    const/4 v3, 0x1

    goto :goto_1

    .line 567
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 568
    const/4 v0, 0x1

    goto :goto_1

    .line 573
    :cond_4
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interfaceStatusChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 579
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/4 v7, 0x5

    new-array v1, v7, [Ljava/lang/Object;

    .line 580
    const/4 v7, 0x0

    aput-object p1, v1, v7

    .line 581
    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 582
    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 583
    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 584
    const/4 v7, 0x4

    if-eqz v2, :cond_6

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    .line 585
    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 588
    if-eqz p2, :cond_7

    .line 589
    if-nez v2, :cond_5

    .line 590
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p1, v4, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 591
    .restart local v2       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 604
    :cond_5
    :goto_3
    monitor-exit v6

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 584
    goto :goto_2

    .line 595
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 598
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore interface down for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 599
    :cond_8
    if-eqz v2, :cond_5

    .line 600
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 601
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v4, 0x0

    .line 687
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 691
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    monitor-exit v5

    .line 697
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #regex:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 690
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v3           #regex:Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto :goto_1

    .line 694
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 12
    .parameter "iface"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 634
    const-string v9, "wifi"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 635
    .local v6, wifib:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 638
    .local v5, wifiService:Landroid/net/wifi/IWifiManager;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 639
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getHotspotEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 641
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getWifidisplayApEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eqz p1, :cond_0

    const-string v9, "wifi.softapconcurrent.interface"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 643
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softapconcurrent.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softapconcurrent.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return v7

    .line 646
    :cond_0
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softapconcurrent.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softapconcurrent.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 647
    goto :goto_0

    .line 650
    :cond_1
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getWifidisplayApEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz p1, :cond_2

    const-string v9, "wifi.softap.interface"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 652
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softap.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softap.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, e:Landroid/os/RemoteException;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] error to getHotspotEnabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eqz p1, :cond_6

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 673
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v9

    .line 674
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 675
    .local v4, regex:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    monitor-exit v9

    goto/16 :goto_0

    .line 678
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #regex:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 655
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softap.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softap.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 656
    goto/16 :goto_0

    .line 660
    :cond_3
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getHotspotEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v7, v8

    .line 661
    goto/16 :goto_0

    .line 674
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #e:Landroid/os/RemoteException;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 677
    .end local v4           #regex:Ljava/lang/String;
    :cond_5
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v7, v8

    goto/16 :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    move v7, v8

    .line 681
    goto/16 :goto_0
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 813
    return-void
.end method

.method public nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 4833
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4836
    :goto_0
    return-void

    .line 4834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFastDormancy(I)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 4801
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->IsSupportFastDormancy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4802
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFastDormancy enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4804
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "htctelephony"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 4806
    .local v1, ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v1, :cond_1

    .line 4808
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetFastDormancy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4816
    .end local v1           #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 4809
    .restart local v1       #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :catch_0
    move-exception v0

    .line 4810
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "exception on ihtcPhoneInterface.requestSetFastDormancy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4813
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "Tethering"

    const-string v3, "Could not get htcPhoneInterface!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 1697
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbTethering("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1700
    .local v0, usbManager:Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1701
    if-eqz p1, :cond_1

    .line 1702
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_0

    .line 1703
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1715
    :goto_0
    monitor-exit v2

    .line 1716
    return v4

    .line 1705
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1706
    const-string v1, "rndis"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1715
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1709
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1710
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_2

    .line 1711
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1713
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 11
    .parameter "iface"

    .prologue
    const/4 v7, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 816
    const-string v4, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tethering "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    if-nez p1, :cond_0

    move v5, v6

    .line 909
    :goto_0
    return v5

    .line 824
    :cond_0
    const/4 v1, 0x0

    .line 825
    .local v1, found:Z
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 826
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 827
    const/4 v1, 0x1

    .line 829
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 830
    const/4 v1, 0x1

    .line 832
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 833
    const/4 v1, 0x1

    .line 835
    :cond_3
    if-nez v1, :cond_4

    .line 836
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not allowed to be tethered"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    monitor-exit v8

    move v5, v6

    goto :goto_0

    .line 839
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    const/4 v3, 0x0

    .line 843
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 844
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v3, v0

    .line 845
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 848
    new-array v2, v7, [Ljava/lang/Object;

    .line 849
    .local v2, mParams:[Ljava/lang/Object;
    aput-object p1, v2, v5

    .line 850
    if-nez v3, :cond_5

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    .line 851
    if-nez v3, :cond_6

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v10

    .line 852
    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Integer;

    if-nez v3, :cond_7

    const/4 v4, -0x1

    :goto_3
    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v2, v8

    .line 853
    const/4 v4, 0x6

    invoke-direct {p0, v4, v2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 856
    if-nez v3, :cond_8

    .line 861
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to Tether an unknown iface :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 863
    goto/16 :goto_0

    .line 839
    .end local v2           #mParams:[Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 845
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 850
    .restart local v2       #mParams:[Ljava/lang/Object;
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v4

    goto :goto_1

    .line 851
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v4

    goto :goto_2

    .line 852
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v4

    goto :goto_3

    .line 865
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v4

    if-nez v4, :cond_9

    .line 870
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to Tether an unavailable iface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 872
    goto/16 :goto_0

    .line 908
    :cond_9
    invoke-virtual {v3, v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 9
    .parameter "iface"

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 913
    const-string v3, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Untethering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    if-nez p1, :cond_0

    move v4, v5

    .line 951
    :goto_0
    return v4

    .line 919
    :cond_0
    const/4 v2, 0x0

    .line 920
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 921
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v2, v0

    .line 922
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    new-array v1, v8, [Ljava/lang/Object;

    .line 926
    .local v1, mParams:[Ljava/lang/Object;
    aput-object p1, v1, v4

    .line 927
    if-nez v2, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v5

    .line 928
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v3, -0x1

    :goto_2
    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v1, v6

    .line 929
    const/4 v3, 0x7

    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 932
    if-nez v2, :cond_3

    move v4, v5

    .line 939
    goto :goto_0

    .line 922
    .end local v1           #mParams:[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 927
    .restart local v1       #mParams:[Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v3

    goto :goto_1

    .line 928
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v3

    goto :goto_2

    .line 941
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 948
    const/4 v4, 0x4

    goto :goto_0

    .line 950
    :cond_4
    invoke-virtual {v2, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 18

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070038

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 462
    .local v12, tetherableUsbRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070039

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 464
    .local v13, tetherableWifiRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x107003a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, tetherableBluetoothRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x107003d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 469
    .local v9, ifaceTypes:[I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v14, upstreamIfaceTypes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v1, v9

    .local v1, arr$:[I
    array-length v10, v1

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_0

    aget v7, v1, v8

    .line 471
    .local v7, i:I
    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 474
    .end local v7           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 475
    :try_start_0
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 476
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiDisplayRegexs:[Ljava/lang/String;

    .line 478
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 479
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 480
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    const-string v5, ""

    .line 486
    .local v5, cid:Ljava/lang/String;
    const/4 v3, 0x1

    .line 487
    .local v3, blHotspotCid:Z
    const/4 v4, 0x1

    .line 490
    .local v4, blHotspotNonCid:Z
    :try_start_1
    const-string v15, "ro.cid"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ro.wifi.hotspotUI."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v3, 0x1

    .line 493
    :goto_1
    const-string v15, "Tethering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "blHotspotCid:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v15, "ro.wifi.hotspotUI"

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v4, 0x1

    .line 503
    :goto_2
    const-string v15, "Tethering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "blHotSpotNonCid:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 505
    :cond_1
    sget-object v15, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 508
    :cond_2
    const-string v15, "ro.ril.multirab.throttling"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const/4 v2, 0x1

    .line 509
    .local v2, bSetPropertyMultiRAB:Z
    :goto_3
    const-string v15, "Tethering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bSetPropertyMultiRAB:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-boolean v15, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    if-nez v15, :cond_3

    .line 511
    const/4 v15, 0x1

    if-ne v2, v15, :cond_3

    .line 512
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    .line 516
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    if-nez v15, :cond_4

    .line 517
    sget-object v15, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 524
    :cond_4
    if-eqz v5, :cond_5

    const-string v15, "UTSI_040"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 525
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    .line 527
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherInit()V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 539
    return-void

    .line 480
    .end local v2           #bSetPropertyMultiRAB:Z
    .end local v3           #blHotspotCid:Z
    .end local v4           #blHotspotNonCid:Z
    .end local v5           #cid:Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 492
    .restart local v3       #blHotspotCid:Z
    .restart local v4       #blHotspotNonCid:Z
    .restart local v5       #cid:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 495
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 497
    :catch_0
    move-exception v6

    .line 498
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "Tethering"

    const-string v16, "Exception happened when get SystemProperties"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 508
    .end local v6           #e:Ljava/lang/Exception;
    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method
