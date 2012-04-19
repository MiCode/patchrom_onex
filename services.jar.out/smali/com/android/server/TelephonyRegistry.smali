.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$RegistryInfo;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mMessageWaiting:I

.field private mOtaspMode:I

.field private mPreciseCallState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateData:[Landroid/telephony/ServiceState;

.field private mServiceStateVoice:[Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 140
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 143
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    .line 146
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 148
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 150
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 151
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 154
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 161
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    .line 163
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 165
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 167
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 169
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 171
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 173
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 181
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 183
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 187
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 204
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 208
    .local v0, location:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 215
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    :cond_1
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 219
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 227
    :cond_3
    :goto_0
    return-void

    .line 221
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    goto :goto_0
.end method

.method private HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "errorCause"
    .parameter "apnCarrier"

    .prologue
    const/4 v4, 0x1

    .line 955
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    if-nez p2, :cond_0

    .line 958
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 960
    :cond_0
    if-eqz p3, :cond_1

    .line 961
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    :cond_1
    if-eqz p6, :cond_2

    .line 964
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 965
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 967
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 971
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 973
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 975
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v2, "entitleError"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    if-eqz p10, :cond_5

    .line 980
    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    :cond_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 984
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1769
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    .line 1771
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 1775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1777
    .local v0, ident:J
    if-nez p1, :cond_3

    .line 1778
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1791
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1793
    :cond_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1794
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1800
    :goto_1
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1801
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1803
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    :cond_1
    const-string v3, "phone_type"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1815
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1816
    return-void

    .line 1780
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1785
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1796
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1809
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1810
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1811
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1812
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1875
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1877
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneType"

    .prologue
    .line 1881
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1883
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1884
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1887
    :cond_0
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1888
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1891
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1892
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 10
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"

    .prologue
    .line 1830
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    .line 1834
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x1

    .line 1843
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    if-nez p2, :cond_0

    .line 1846
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1848
    :cond_0
    if-eqz p3, :cond_1

    .line 1849
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    :cond_1
    if-eqz p6, :cond_2

    .line 1852
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1853
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1854
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1855
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1859
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1861
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1863
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1864
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1866
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1867
    :cond_5
    const-string v2, "phone_type"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1870
    :cond_6
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1871
    return-void
.end method

.method private broadcastDataConnectionStateChangedLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4
    .parameter "anyDataConnectionState"
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "interfaceName"
    .parameter "ipAddress"
    .parameter "gwAddress"
    .parameter "isDataConnectivityPossible"
    .parameter "realipstate"
    .parameter "reason"

    .prologue
    .line 1971
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]broadcastDataConnectionStateChangedLTE() ++  anyDataConnectionState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gwAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1975
    .local v0, intent:Landroid/content/Intent;
    if-nez p9, :cond_0

    .line 1976
    const-string v1, "networkUnvailable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1978
    :cond_0
    if-eqz p11, :cond_1

    .line 1979
    const-string v1, "reason"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1982
    :cond_1
    const-string v1, "state"

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1983
    const-string v1, "apn"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1984
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    const-string v1, "ipVersion"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1989
    const-string v1, "apnTypeState"

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    const-string v1, "iface"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1991
    const-string v1, "ipAddress"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1992
    const-string v1, "igwaddress"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1994
    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM][BCST]---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] STATE_CHANGE_REASON_KEY(reason)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] DATA_APN_KEY(apn)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",DATA_APN_TYPES_KEY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] STATE_KEY(state) we made v4/v6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] DATA_APN_TYPE_STATE(state) we made v4/v6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] DATA_IPVERSION_REAL_STATE_KEY(realipstate)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p10}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ipVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM][BCST] ---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const-string v1, "realipstate"

    invoke-static {p10}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]broadcastDataConnectionStateChangedLTE()  -- anyDataConnectionState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apn[]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gwAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2011
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1682
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 1683
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1689
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1699
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1700
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1701
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1706
    :goto_1
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1708
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1709
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1711
    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1719
    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1720
    return-void

    .line 1693
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1703
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SERVICE_STATE_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1714
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1715
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1716
    .restart local v0       #data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1717
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .line 1690
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1724
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    .line 1726
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    const/high16 v5, 0x2000

    .line 1730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1732
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1742
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1743
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1744
    const-string v4, "android.intent.action.SIG_STR"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1751
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1752
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1753
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1755
    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1764
    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1765
    return-void

    .line 1736
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1746
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SIG_STR_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1758
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1759
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1761
    .restart local v0       #data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1762
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .line 1733
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 1906
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_0
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_1

    .line 1913
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_1
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 1895
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1897
    const/4 v1, 0x1

    .line 1902
    :goto_0
    return v1

    .line 1899
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;
    .locals 1
    .parameter "serviceStateList"

    .prologue
    .line 1179
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 1919
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1920
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1921
    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1923
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1925
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 700
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 701
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 702
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 704
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 705
    monitor-exit v3

    .line 709
    :goto_1
    return-void

    .line 702
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "r"
    .parameter "cellLocation"
    .parameter "phoneType"

    .prologue
    .line 1621
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1622
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 1624
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V
    .locals 3
    .parameter "r"
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 1632
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 1635
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    :goto_0
    return-void

    .line 1636
    :catch_0
    move-exception v0

    .line 1637
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V
    .locals 17
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "errorCause"
    .parameter "apnCarrier"

    .prologue
    .line 990
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 994
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnection: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1000
    const/4 v15, 0x0

    .line 1001
    .local v15, modified:Z
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1002
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 1005
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1006
    const/4 v15, 0x1

    .line 1020
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1021
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1022
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1023
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1024
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    .line 1025
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1027
    const/4 v15, 0x1

    .line 1029
    :cond_2
    if-eqz v15, :cond_6

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1035
    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 1037
    :try_start_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1039
    :catch_0
    move-exception v13

    .line 1040
    .local v13, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1046
    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1010
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1012
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1013
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1044
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1046
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 1047
    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1646
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    :goto_0
    return-void

    .line 1652
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1653
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1654
    .local v2, recordCount:I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1671
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1673
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #recordCount:I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public htcNotifyCallDisconnected(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 1073
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1078
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1079
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1080
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 1082
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1078
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1088
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "networkType"
    .parameter "gateway"
    .parameter "ipAddress"
    .parameter "stateTimeStamp"

    .prologue
    .line 1068
    return-void
.end method

.method public htcNotifyPreciseCallStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 1095
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1099
    :cond_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    .line 1101
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1103
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1104
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1105
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    .line 1107
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1103
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1113
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    .line 768
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    const-string v2, "notifySeparateServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 775
    if-eqz p1, :cond_2

    .line 776
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 778
    :cond_2
    if-eqz p2, :cond_3

    .line 779
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 781
    :cond_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_5

    .line 782
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 783
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4

    .line 784
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 781
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 787
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 14
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 233
    if-eqz p3, :cond_42

    .line 235
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 237
    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 239
    const/4 v6, 0x0

    .line 241
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 242
    .local v2, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 243
    .local v1, N:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v7, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_1e

    .line 244
    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_1d

    .line 255
    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .line 256
    .local v8, send:I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 257
    if-eqz p4, :cond_1c

    .line 258
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_2

    .line 262
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_22

    .line 265
    :cond_0
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 266
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 278
    :cond_1
    :goto_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 282
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 283
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 310
    :cond_2
    :goto_3
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_3

    .line 311
    :try_start_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    :cond_3
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_6

    .line 317
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 318
    :cond_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 319
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 321
    .local v4, gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_5

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_5
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 336
    :cond_6
    :goto_4
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_9

    .line 340
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 342
    :cond_7
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 343
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 355
    :cond_8
    :goto_5
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V

    .line 359
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 360
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 391
    :cond_9
    :goto_6
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_c

    .line 396
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 406
    :cond_a
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 407
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 418
    :cond_b
    :goto_7
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 422
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 423
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 444
    :cond_c
    :goto_8
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_f

    .line 448
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v9

    if-eqz v9, :cond_31

    .line 451
    :cond_d
    :try_start_9
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 452
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 464
    :cond_e
    :goto_9
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    .line 468
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 469
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 496
    :cond_f
    :goto_a
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_12

    .line 501
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 503
    :cond_10
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 504
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 516
    :cond_11
    :goto_b
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 519
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 520
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 541
    :cond_12
    :goto_c
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_15

    .line 547
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 549
    :cond_13
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 550
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 565
    :cond_14
    :goto_d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 570
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_38

    .line 571
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 597
    :cond_15
    :goto_e
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_18

    .line 602
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 604
    :cond_16
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 605
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 614
    :cond_17
    :goto_f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    .line 617
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 618
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    .line 638
    :cond_18
    :goto_10
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_1b

    .line 643
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 645
    :cond_19
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 646
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 658
    :cond_1a
    :goto_11
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 662
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 663
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    .line 685
    :cond_1b
    :goto_12
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_1c

    .line 687
    :try_start_e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    .line 693
    :cond_1c
    :goto_13
    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 697
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :goto_14
    return-void

    .line 243
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 249
    :cond_1e
    :try_start_10
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 250
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_11
    iput-object v2, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 251
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 252
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 253
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 693
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    :catchall_0
    move-exception v9

    :goto_15
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v9

    .line 269
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v8       #send:I
    :cond_1f
    :try_start_12
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 270
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_2

    .line 294
    :catch_0
    move-exception v3

    .line 295
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_13
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 273
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_20
    :try_start_14
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 274
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_2

    .line 286
    :cond_21
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 288
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_3

    .line 301
    :cond_22
    :try_start_15
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_3

    .line 302
    :catch_1
    move-exception v3

    .line 303
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_16
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_3

    .line 326
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_23
    :try_start_17
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 327
    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_24

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_24
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_4

    .line 332
    :catch_2
    move-exception v3

    .line 333
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_18
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_4

    .line 346
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_25
    :try_start_19
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 347
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_3

    goto/16 :goto_5

    .line 387
    :catch_3
    move-exception v3

    .line 388
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_1a
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_6

    .line 350
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_26
    :try_start_1b
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 351
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_5

    .line 363
    :cond_27
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 365
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V

    goto/16 :goto_6

    .line 374
    :cond_28
    iget v9, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    if-nez v9, :cond_29

    .line 375
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 380
    :goto_16
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    goto/16 :goto_6

    .line 377
    :cond_29
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v11, 0x1

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_3

    goto :goto_16

    .line 410
    :cond_2a
    :try_start_1c
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 411
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_4

    goto/16 :goto_7

    .line 440
    :catch_4
    move-exception v3

    .line 441
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_1d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_8

    .line 414
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_2b
    :try_start_1e
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 415
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_7

    .line 426
    :cond_2c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 428
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    goto/16 :goto_8

    .line 435
    :cond_2d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_4

    goto/16 :goto_8

    .line 455
    :cond_2e
    :try_start_1f
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 456
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_9

    .line 480
    :catch_5
    move-exception v3

    .line 481
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_20
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_a

    .line 459
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_2f
    :try_start_21
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 460
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 472
    :cond_30
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 474
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_5

    goto/16 :goto_a

    .line 487
    :cond_31
    :try_start_22
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_6

    goto/16 :goto_a

    .line 488
    :catch_6
    move-exception v3

    .line 489
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_23
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_a

    .line 507
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_32
    :try_start_24
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 508
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_7

    goto/16 :goto_b

    .line 537
    :catch_7
    move-exception v3

    .line 538
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_25
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto/16 :goto_c

    .line 511
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_33
    :try_start_26
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 512
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 522
    :cond_34
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 524
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    goto/16 :goto_c

    .line 532
    :cond_35
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_7

    goto/16 :goto_c

    .line 554
    :cond_36
    :try_start_27
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 555
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_8

    goto/16 :goto_d

    .line 593
    :catch_8
    move-exception v3

    .line 594
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_28
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto/16 :goto_e

    .line 559
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_37
    :try_start_29
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 560
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_d

    .line 575
    :cond_38
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 577
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    goto/16 :goto_e

    .line 587
    :cond_39
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_8

    goto/16 :goto_e

    .line 607
    :cond_3a
    :try_start_2a
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 608
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_9

    goto/16 :goto_f

    .line 634
    :catch_9
    move-exception v3

    .line 635
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_2b
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_10

    .line 610
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_3b
    :try_start_2c
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 611
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_f

    .line 620
    :cond_3c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 622
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    goto/16 :goto_10

    .line 629
    :cond_3d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_9

    goto/16 :goto_10

    .line 649
    :cond_3e
    :try_start_2d
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 650
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_a

    goto/16 :goto_11

    .line 681
    :catch_a
    move-exception v3

    .line 682
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_2e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto/16 :goto_12

    .line 653
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_3f
    :try_start_2f
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 654
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_11

    .line 666
    :cond_40
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 668
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_12

    .line 676
    :cond_41
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_a

    goto/16 :goto_12

    .line 688
    :catch_b
    move-exception v3

    .line 689
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_30
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    goto/16 :goto_13

    .line 695
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :cond_42
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14

    .line 693
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_15
.end method

.method public notifyCWDataConnection(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1054
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1058
    const-string v1, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1061
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 6
    .parameter "cfi"

    .prologue
    .line 848
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 864
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 852
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 853
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 854
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 856
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 862
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 863
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallForwardingChangedExt(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    .line 1335
    const-string v3, "notifyCallForwardingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1338
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1340
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1341
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 1343
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1344
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    .line 1352
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1353
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1354
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 1356
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1357
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 1359
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1352
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1346
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1347
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1365
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1349
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1350
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1360
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1361
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1365
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 712
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 730
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 716
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 717
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 718
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 719
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 721
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 728
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 727
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 728
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 729
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCallStateExt(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 1187
    const-string v3, "notifyCallStateExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1192
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1194
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 1195
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 1199
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 1200
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1201
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    .line 1211
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1212
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1213
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 1216
    :try_start_1
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1218
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1222
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1211
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1203
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p3, v3, :cond_6

    .line 1204
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1205
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 1228
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1207
    :cond_6
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 1208
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1209
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 1223
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1224
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1228
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1229
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 6
    .parameter "cellLocation"

    .prologue
    .line 1139
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1143
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 1144
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1145
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 1147
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1154
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1155
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocationExt(Landroid/os/Bundle;I)V
    .locals 4
    .parameter "cellLocation"
    .parameter "phoneType"

    .prologue
    .line 1582
    const-string v2, "notifyCellLocationExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1585
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1586
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 1587
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 1588
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    .line 1596
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 1597
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1598
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 1599
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 1596
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1590
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 1591
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 1602
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1593
    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1594
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 1602
    .restart local v0       #i:I
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 867
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 871
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 872
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 873
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 875
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 882
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 881
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 882
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivityExt(II)V
    .locals 5
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1369
    const-string v3, "notifyDataActivityExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1372
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1373
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1374
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 1376
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1377
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    .line 1385
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1386
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1387
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1389
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1390
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 1392
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1385
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1379
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1380
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1398
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1382
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1383
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1393
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1394
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1398
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 14
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    .line 888
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 897
    const/4 v12, 0x0

    .line 898
    .local v12, modified:Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 900
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_1

    .line 902
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 903
    const/4 v12, 0x1

    .line 917
    :cond_1
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 918
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 919
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 920
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 921
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_2

    .line 922
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 924
    const/4 v12, 0x1

    .line 926
    :cond_2
    if-eqz v12, :cond_6

    .line 931
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 932
    .local v13, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 934
    :try_start_1
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 936
    :catch_0
    move-exception v10

    .line 937
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 943
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 907
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 910
    const/4 v12, 0x1

    goto :goto_1

    .line 941
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 943
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 944
    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionExt(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    .locals 17
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "phoneType"

    .prologue
    .line 1404
    const-string v3, "notifyDataConnectionExt()"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1408
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isDataConnectivityPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' apn=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1413
    const/4 v15, 0x0

    .line 1414
    .local v15, modified:Z
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1415
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_1

    .line 1419
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1420
    const/4 v15, 0x1

    .line 1434
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1435
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1436
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1437
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1438
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v3, v0, :cond_2

    .line 1439
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1441
    const/4 v15, 0x1

    .line 1445
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_9

    .line 1446
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_3

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1451
    const/4 v15, 0x1

    .line 1465
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v3, v0, :cond_4

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 1472
    const/4 v15, 0x1

    .line 1535
    :cond_4
    :goto_3
    if-eqz v15, :cond_10

    .line 1540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1541
    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_5

    .line 1543
    :try_start_1
    invoke-static/range {p10 .. p10}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1544
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1547
    :cond_6
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move/from16 v0, p1

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-interface {v3, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1548
    :catch_0
    move-exception v13

    .line 1549
    .local v13, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1555
    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1424
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1426
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1427
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1455
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1458
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1475
    :cond_9
    const/4 v3, 0x5

    move/from16 v0, p10

    if-ne v0, v3, :cond_c

    .line 1476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_a

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1480
    const/4 v15, 0x1

    .line 1493
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 1494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 1495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v3, v0, :cond_4

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 1500
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 1483
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1486
    const/4 v15, 0x1

    goto :goto_5

    .line 1503
    :cond_c
    const/4 v3, 0x2

    move/from16 v0, p10

    if-ne v0, v3, :cond_4

    .line 1504
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 1505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_d

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1509
    const/4 v15, 0x1

    .line 1523
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v3, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v3, v0, :cond_4

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 1530
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 1513
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1516
    const/4 v15, 0x1

    goto :goto_6

    .line 1553
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1555
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_10
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p9

    move/from16 v12, p10

    .line 1556
    invoke-direct/range {v3 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1118
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailedExt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneType"

    .prologue
    .line 1561
    const-string v0, "notifyDataConnectionFailedExt()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1578
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 17
    .parameter "anyDataConnectionState"
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "interfaceName"
    .parameter "ipAddress"
    .parameter "gwAddress"
    .parameter "isDataConnectivityPossible"
    .parameter "networkType"
    .parameter "realipstate"
    .parameter "reason"

    .prologue
    .line 1932
    const-string v2, "TelephonyRegistry"

    const-string v3, "[QCTMM] notifyDataConnectionLTE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1961
    :goto_0
    return-void

    .line 1937
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1938
    :try_start_0
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 1939
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 1940
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1941
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1942
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1943
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1945
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QCTMM] to phonelistener anyDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, i:I
    :goto_1
    if-ltz v15, :cond_2

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1948
    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 1950
    :try_start_1
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QCTMM] r.callback.onDataConnectionStateChanged anyDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move/from16 v0, p1

    move/from16 v1, p10

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1946
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 1952
    :catch_0
    move-exception v14

    .line 1953
    .local v14, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1957
    .end local v14           #ex:Landroid/os/RemoteException;
    .end local v15           #i:I
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v15       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1958
    invoke-direct/range {v2 .. v13}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChangedLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 823
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 845
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 829
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    .line 831
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 832
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 836
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 844
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 843
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 844
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyMessageWaitingChangedExt(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "phoneType"

    .prologue
    .line 1300
    const-string v3, "notifyMessageWaitingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1332
    :goto_0
    return-void

    .line 1303
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1306
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1309
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1310
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    .line 1318
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1319
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1320
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 1322
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1323
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 1325
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1318
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1312
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1313
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    goto :goto_1

    .line 1331
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1315
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1316
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    goto :goto_1

    .line 1326
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1327
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1331
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .parameter "otaspMode"

    .prologue
    .line 1159
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1163
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1164
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1165
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 1167
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1174
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1173
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1174
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 733
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    if-eqz p1, :cond_0

    .line 741
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 742
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 744
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 745
    monitor-exit v4

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 748
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 750
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    if-nez v2, :cond_4

    .line 751
    monitor-exit v4

    goto :goto_0

    .line 754
    :cond_4
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 756
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 762
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 763
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 764
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method public notifyServiceStateExt(Landroid/telephony/ServiceState;I)V
    .locals 5
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1233
    const-string v2, "notifyServiceStateExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1236
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1238
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 1241
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 1242
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    .line 1250
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_6

    .line 1251
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1252
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1253
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 1250
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1244
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    .line 1245
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1256
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1247
    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1248
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1256
    .restart local v0       #i:I
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7
    .parameter "signalStrength"

    .prologue
    .line 791
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 817
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 795
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 796
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 797
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2

    .line 799
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 804
    :cond_2
    :goto_2
    :try_start_2
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 806
    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 807
    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_3
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 815
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 800
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .line 801
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 814
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 815
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0
.end method

.method public notifySignalStrengthExt(Landroid/telephony/SignalStrength;I)V
    .locals 8
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    const/4 v7, 0x1

    .line 1261
    const-string v4, "notifySignalStrengthExt()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1265
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1266
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1268
    :cond_1
    if-ne p2, v7, :cond_6

    .line 1269
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1277
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_8

    .line 1278
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1279
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    .line 1280
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 1282
    :cond_3
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 1283
    if-ne p2, v7, :cond_5

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 1286
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1287
    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_4

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_4
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1277
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1271
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    .line 1272
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1295
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1274
    :cond_7
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1275
    :try_start_3
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1289
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1290
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1295
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1296
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "r"
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    .line 1182
    return-void
.end method

.method public sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "r"
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1610
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1613
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :goto_0
    return-void

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method
