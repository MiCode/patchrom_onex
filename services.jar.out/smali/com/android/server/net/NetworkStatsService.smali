.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$UidStatsKey;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final ENABLE_SAMPLE_AFTER_POLL:Z = true

.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final mDualGSMPhoneEnable:Z

.field private static final mDualPhoneEnable:Z


# instance fields
.field private dataUsageSupported:Z

.field private eMMCSupported:Z

.field private mActiveIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mAlarmManager:Landroid/app/IAlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDropBox:Landroid/os/DropBoxManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHistoryRxByte:J

.field private mHistoryTxByte:J

.field private mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

.field private mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

.field private mLastPersistUidSnapshot:Landroid/net/NetworkStats;

.field private mLastPhoneNetworkType:I

.field private mLastPhoneState:I

.field private mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

.field private mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

.field private mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

.field private mLastPollUidSnapshot:Landroid/net/NetworkStats;

.field private mLastRxByte:J

.field private mLastTxByte:J

.field private final mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

.field private mNetworkDevStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNetworkStatsLoaded:Z

.field private final mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

.field private mNetworkXtStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mOperations:Landroid/net/NetworkStats;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mRxTxFile:Lcom/android/internal/os/AtomicFile;

.field private final mRxTxLock:Ljava/lang/Object;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private final mUidFile:Lcom/android/internal/os/AtomicFile;

.field private mUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsService$UidStatsKey;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStatsLoaded:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->mDualPhoneEnable:Z

    .line 266
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->mDualGSMPhoneEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"

    .prologue
    .line 278
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 9
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"
    .parameter "time"
    .parameter "systemDir"
    .parameter "settings"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 288
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 222
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    .line 227
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    .line 229
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    .line 231
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    .line 234
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 236
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 248
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 251
    new-instance v3, Landroid/net/NetworkStats;

    const/16 v4, 0xa

    invoke-direct {v3, v6, v7, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    .line 272
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxLock:Ljava/lang/Object;

    .line 273
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->eMMCSupported:Z

    .line 844
    new-instance v3, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 856
    new-instance v3, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 865
    new-instance v3, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 877
    new-instance v3, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    new-instance v3, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    new-instance v3, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 926
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    .line 927
    iput v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    .line 933
    new-instance v3, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 2036
    new-instance v3, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 289
    const-string v3, "missing Context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 290
    const-string v3, "missing INetworkManagementService"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/INetworkManagementService;

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 291
    const-string v3, "missing IAlarmManager"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IAlarmManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 292
    const-string v3, "missing TrustedTime"

    invoke-static {p4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/TrustedTime;

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 293
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const-string v4, "missing TelephonyManager"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 294
    const-string v3, "missing NetworkStatsSettings"

    invoke-static {p6, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 296
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 298
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v3, "NetworkStats"

    invoke-virtual {v2, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "NetworkStats"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 301
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 302
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 304
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "netstats.bin"

    invoke-direct {v4, p5, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    .line 305
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "netstats_xt.bin"

    invoke-direct {v4, p5, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    .line 306
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "netstats_uid.bin"

    invoke-direct {v4, p5, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    .line 309
    const-string v0, ""

    .line 311
    .local v0, devName:Ljava/lang/String;
    :try_start_0
    const-string v3, "skylink"

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->getEmmcDevName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    const-string v0, ""

    .line 314
    const-string v3, "NetworkStats"

    const-string v4, "can not get Dev Name from EMMC"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    const-string v3, ""

    if-eq v0, v3, :cond_1

    .line 320
    iput-boolean v8, p0, Lcom/android/server/net/NetworkStatsService;->eMMCSupported:Z

    .line 321
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Dev Name from EMMC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/block/"

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxFile:Lcom/android/internal/os/AtomicFile;

    .line 324
    iput-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryTxByte:J

    .line 325
    iput-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryRxByte:J

    .line 326
    iput-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mLastTxByte:J

    .line 327
    iput-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mLastRxByte:J

    .line 329
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get dev name for skylink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return p1
.end method

.method private bootstrapStats()V
    .locals 5

    .prologue
    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1027
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 1028
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1029
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1035
    :goto_0
    return-void

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem reading network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "uidSnapshot"

    .prologue
    .line 2008
    invoke-virtual {p0}, Landroid/net/NetworkStats;->groupedByIface()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;
    .locals 9
    .parameter "before"
    .parameter "current"
    .parameter "collectStale"
    .parameter "type"

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0xa

    .line 1947
    if-eqz p1, :cond_1

    .line 1949
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1982
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 1950
    .restart local p2
    :catch_0
    move-exception v1

    .line 1951
    .local v1, e:Landroid/net/NetworkStats$NonMonotonicException;
    const-string v3, "NetworkStats"

    const-string v4, "found non-monotonic values; saving to dropbox"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1955
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found non-monotonic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values at left["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->leftIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] - right["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->rightIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    const-string v3, "left="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->left:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1958
    const-string v3, "right="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/NetworkStats$NonMonotonicException;->right:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1959
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    const-string v4, "netstats_error"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p2, p1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Z)Landroid/net/NetworkStats;
    :try_end_1
    .catch Landroid/net/NetworkStats$NonMonotonicException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    goto :goto_0

    .line 1964
    :catch_1
    move-exception v2

    .line 1971
    .local v2, e1:Landroid/net/NetworkStats$NonMonotonicException;
    const-string v3, "NetworkStats"

    const-string v4, "found non-monotonic values; returning empty delta"

    invoke-static {v3, v4, v2}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1973
    new-instance p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-direct {p2, v7, v8, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0

    .line 1976
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #e:Landroid/net/NetworkStats$NonMonotonicException;
    .end local v2           #e1:Landroid/net/NetworkStats$NonMonotonicException;
    .restart local p2
    :cond_1
    if-nez p3, :cond_0

    .line 1982
    new-instance p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-direct {p2, v7, v8, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    goto/16 :goto_0
.end method

.method private dumpDataUsageDetail(IZ)V
    .locals 37
    .parameter "uid"
    .parameter "uidForeground"

    .prologue
    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 671
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkStatsService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    .line 672
    .local v7, mobileTemplate:Landroid/net/NetworkTemplate;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v34

    .line 674
    .local v34, wifiTemplate:Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Landroid/os/INetworkManagementService;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v8

    .line 675
    .local v8, nStats:Landroid/net/NetworkStats;
    const/4 v3, 0x0

    .line 677
    .local v3, entry:Landroid/net/NetworkStats$Entry;
    const-wide/16 v28, 0x0

    .line 678
    .local v28, uidFgWifiRxBytes:J
    const-wide/16 v30, 0x0

    .line 680
    .local v30, uidFgWifiTxBytes:J
    const-wide/16 v20, 0x0

    .line 681
    .local v20, uidBgWifiRxBytes:J
    const-wide/16 v22, 0x0

    .line 683
    .local v22, uidBgWifiTxBytes:J
    const-wide/16 v24, 0x0

    .line 684
    .local v24, uidFgMobileRxBytes:J
    const-wide/16 v26, 0x0

    .line 686
    .local v26, uidFgMobileTxBytes:J
    const-wide/16 v16, 0x0

    .line 687
    .local v16, uidBgMobileRxBytes:J
    const-wide/16 v18, 0x0

    .line 689
    .local v18, uidBgMobileTxBytes:J
    const-wide/16 v12, 0x0

    .line 690
    .local v12, totalRx:J
    const-wide/16 v14, 0x0

    .line 692
    .local v14, totalTx:J
    invoke-virtual {v8}, Landroid/net/NetworkStats;->size()I

    move-result v11

    .line 693
    .local v11, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v11, :cond_5

    .line 694
    invoke-virtual {v8, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 696
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v35, v0

    add-long v12, v12, v35

    .line 697
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v35, v0

    add-long v14, v14, v35

    .line 699
    iget v0, v3, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 700
    const/4 v6, 0x0

    .line 701
    .local v6, mobileMatch:Z
    const/16 v33, 0x0

    .line 703
    .local v33, wifiMatch:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v35, v0

    iget-object v0, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkIdentitySet;

    .line 704
    .local v5, identSet:Lcom/android/server/net/NetworkIdentitySet;
    if-eqz v5, :cond_0

    .line 705
    move-object/from16 v0, v34

    invoke-static {v0, v5}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v33

    .line 706
    if-nez v33, :cond_0

    .line 707
    invoke-static {v7, v5}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    .line 711
    :cond_0
    iget v0, v3, Landroid/net/NetworkStats$Entry;->set:I

    move/from16 v35, v0

    if-nez v35, :cond_3

    .line 712
    if-eqz v33, :cond_2

    .line 713
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v35, v0

    add-long v20, v20, v35

    .line 714
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v35, v0

    add-long v22, v22, v35

    .line 693
    .end local v5           #identSet:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #mobileMatch:Z
    .end local v33           #wifiMatch:Z
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 715
    .restart local v5       #identSet:Lcom/android/server/net/NetworkIdentitySet;
    .restart local v6       #mobileMatch:Z
    .restart local v33       #wifiMatch:Z
    :cond_2
    if-eqz v6, :cond_1

    .line 716
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v35, v0

    add-long v16, v16, v35

    .line 717
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v35, v0

    add-long v18, v18, v35

    goto :goto_1

    .line 721
    :cond_3
    iget v0, v3, Landroid/net/NetworkStats$Entry;->set:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 722
    if-eqz v33, :cond_4

    .line 723
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v35, v0

    add-long v28, v28, v35

    .line 724
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v35, v0

    add-long v30, v30, v35

    goto :goto_1

    .line 725
    :cond_4
    if-eqz v6, :cond_1

    .line 726
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v35, v0

    add-long v24, v24, v35

    .line 727
    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v35, v0

    add-long v26, v26, v35

    goto :goto_1

    .line 737
    .end local v5           #identSet:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #mobileMatch:Z
    .end local v33           #wifiMatch:Z
    :cond_5
    const/4 v9, 0x0

    .line 738
    .local v9, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 742
    :cond_6
    if-eqz v9, :cond_8

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v32

    .line 744
    .local v32, uidName:Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v35, 0x100

    move/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 745
    .local v10, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_9

    const-string v35, "[>>>] "

    :goto_3
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    const-string v35, " RefD = "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 747
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 748
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 749
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 750
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 751
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 752
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 753
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 754
    const-string v35, ", "

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 756
    const-string v35, "NetworkStats"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v3           #entry:Landroid/net/NetworkStats$Entry;
    .end local v4           #i:I
    .end local v7           #mobileTemplate:Landroid/net/NetworkTemplate;
    .end local v8           #nStats:Landroid/net/NetworkStats;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #size:I
    .end local v12           #totalRx:J
    .end local v14           #totalTx:J
    .end local v16           #uidBgMobileRxBytes:J
    .end local v18           #uidBgMobileTxBytes:J
    .end local v20           #uidBgWifiRxBytes:J
    .end local v22           #uidBgWifiTxBytes:J
    .end local v24           #uidFgMobileRxBytes:J
    .end local v26           #uidFgMobileTxBytes:J
    .end local v28           #uidFgWifiRxBytes:J
    .end local v30           #uidFgWifiTxBytes:J
    .end local v32           #uidName:Ljava/lang/String;
    .end local v34           #wifiTemplate:Landroid/net/NetworkTemplate;
    :cond_7
    :goto_4
    return-void

    .line 742
    .restart local v3       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v4       #i:I
    .restart local v7       #mobileTemplate:Landroid/net/NetworkTemplate;
    .restart local v8       #nStats:Landroid/net/NetworkStats;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    .restart local v11       #size:I
    .restart local v12       #totalRx:J
    .restart local v14       #totalTx:J
    .restart local v16       #uidBgMobileRxBytes:J
    .restart local v18       #uidBgMobileTxBytes:J
    .restart local v20       #uidBgWifiRxBytes:J
    .restart local v22       #uidBgWifiTxBytes:J
    .restart local v24       #uidFgMobileRxBytes:J
    .restart local v26       #uidFgMobileTxBytes:J
    .restart local v28       #uidFgWifiRxBytes:J
    .restart local v30       #uidFgWifiTxBytes:J
    .restart local v34       #wifiTemplate:Landroid/net/NetworkTemplate;
    :cond_8
    const-string v32, "unknown"

    goto/16 :goto_2

    .line 745
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v32       #uidName:Ljava/lang/String;
    :cond_9
    const-string v35, "[<<<] "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 757
    .end local v3           #entry:Landroid/net/NetworkStats$Entry;
    .end local v4           #i:I
    .end local v7           #mobileTemplate:Landroid/net/NetworkTemplate;
    .end local v8           #nStats:Landroid/net/NetworkStats;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #size:I
    .end local v12           #totalRx:J
    .end local v14           #totalTx:J
    .end local v16           #uidBgMobileRxBytes:J
    .end local v18           #uidBgMobileTxBytes:J
    .end local v20           #uidBgWifiRxBytes:J
    .end local v22           #uidBgWifiTxBytes:J
    .end local v24           #uidFgMobileRxBytes:J
    .end local v26           #uidFgMobileTxBytes:J
    .end local v28           #uidFgWifiRxBytes:J
    .end local v30           #uidFgWifiTxBytes:J
    .end local v32           #uidName:Ljava/lang/String;
    .end local v34           #wifiTemplate:Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v35

    goto :goto_4
.end method

.method private ensureUidStatsLoadedLocked()V
    .locals 1

    .prologue
    .line 1534
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-nez v0, :cond_0

    .line 1535
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readUidStatsLocked()V

    .line 1536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 1538
    :cond_0
    return-void
.end method

.method private estimateNetworkBuckets()I
    .locals 4

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkMaxHistory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I
    .locals 4
    .parameter "existing"
    .parameter "newBucketDuration"

    .prologue
    .line 2020
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private estimateUidBuckets()I
    .locals 4

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidMaxHistory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .parameter "ident"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStatsHistory;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p2, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 1408
    .local v2, existing:Landroid/net/NetworkStatsHistory;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v0

    .line 1409
    .local v0, bucketDuration:J
    const/4 v3, 0x0

    .line 1410
    .local v3, updated:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_1

    .line 1411
    new-instance v3, Landroid/net/NetworkStatsHistory;

    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    const/16 v4, 0xa

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1418
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 1419
    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v3

    .line 1412
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 1413
    new-instance v3, Landroid/net/NetworkStatsHistory;

    .end local v3           #updated:Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v0, v1}, Lcom/android/server/net/NetworkStatsService;->estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1415
    .restart local v3       #updated:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 1422
    goto :goto_1
.end method

.method private findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkStatsLocked(Lcom/android/server/net/NetworkIdentitySet;Ljava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1430
    new-instance v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 1431
    .local v3, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 1434
    .local v2, existing:Landroid/net/NetworkStatsHistory;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v0

    .line 1435
    .local v0, bucketDuration:J
    const/4 v4, 0x0

    .line 1436
    .local v4, updated:Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_1

    .line 1437
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    const/16 v5, 0xa

    invoke-direct {v4, v0, v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1444
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 1445
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v4

    .line 1438
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    .line 1439
    new-instance v4, Landroid/net/NetworkStatsHistory;

    .end local v4           #updated:Landroid/net/NetworkStatsHistory;
    invoke-static {v2, v0, v1}, Lcom/android/server/net/NetworkStatsService;->estimateResizeBuckets(Landroid/net/NetworkStatsHistory;J)I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 1441
    .restart local v4       #updated:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 1448
    goto :goto_1
.end method

.method private generateRandomLocked([Ljava/lang/String;)V
    .locals 51
    .parameter "args"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1866
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 1867
    .local v42, totalBytes:J
    const/4 v11, 0x2

    aget-object v11, p1, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    .line 1869
    .local v44, totalTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 1870
    .local v37, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v41

    .line 1871
    .local v41, specialUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v30, 0x3

    .local v30, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    move/from16 v0, v30

    if-ge v0, v11, :cond_0

    .line 1873
    :try_start_0
    aget-object v11, p1, v30

    const/4 v12, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 1874
    :catch_0
    move-exception v27

    .line 1875
    .local v27, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1879
    .end local v27           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v36

    .line 1880
    .local v36, otherUidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ApplicationInfo;

    .line 1881
    .local v34, info:Landroid/content/pm/ApplicationInfo;
    const-string v11, "android.permission.INTERNET"

    move-object/from16 v0, v34

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, v34

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1883
    move-object/from16 v0, v34

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1887
    .end local v34           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v36}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1889
    .local v35, otherUidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1890
    .local v6, end:J
    sub-long v4, v6, v44

    .line 1892
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1893
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1894
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 1896
    new-instance v38, Ljava/util/Random;

    invoke-direct/range {v38 .. v38}, Ljava/util/Random;-><init>()V

    .line 1897
    .local v38, r:Ljava/util/Random;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .end local v31           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/net/NetworkIdentitySet;

    .line 1898
    .local v33, ident:Lcom/android/server/net/NetworkIdentitySet;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v26

    .line 1899
    .local v26, devHistory:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v50

    .line 1901
    .local v50, xtHistory:Landroid/net/NetworkStatsHistory;
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1902
    .local v49, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1904
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 1905
    invoke-static/range {v35 .. v35}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1906
    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1909
    :cond_4
    const/16 v28, 0x1

    .line 1910
    .local v28, first:Z
    move-wide/from16 v39, v42

    .line 1911
    .local v39, remainingBytes:J
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 1912
    .local v46, uid:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 1914
    .local v3, defaultHistory:Landroid/net/NetworkStatsHistory;
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v46

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v10

    .line 1917
    .local v10, foregroundHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-long v11, v11

    div-long v47, v42, v11

    .line 1919
    .local v47, uidBytes:J
    invoke-virtual/range {v38 .. v38}, Ljava/util/Random;->nextFloat()F

    move-result v29

    .line 1920
    .local v29, fractionDefault:F
    move-wide/from16 v0, v47

    long-to-float v11, v0

    mul-float v11, v11, v29

    float-to-long v8, v11

    .line 1921
    .local v8, defaultBytes:J
    move-wide/from16 v0, v47

    long-to-float v11, v0

    const/high16 v12, 0x3f80

    sub-float v12, v12, v29

    mul-float/2addr v11, v12

    float-to-long v15, v11

    .line 1923
    .local v15, foregroundBytes:J
    invoke-virtual/range {v3 .. v9}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJ)V

    move-wide v11, v4

    move-wide v13, v6

    .line 1924
    invoke-virtual/range {v10 .. v16}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJ)V

    .line 1926
    if-eqz v28, :cond_5

    .line 1927
    add-long v11, v4, v6

    const-wide/16 v13, 0x2

    div-long v18, v11, v13

    .line 1928
    .local v18, bumpTime:J
    const-wide/32 v11, 0x5265c00

    add-long v20, v18, v11

    const-wide/32 v22, 0xc800000

    const-wide/16 v24, 0x0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v25}, Landroid/net/NetworkStatsHistory;->recordData(JJJJ)V

    .line 1930
    const/16 v28, 0x0

    .line 1933
    .end local v18           #bumpTime:J
    :cond_5
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1934
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1935
    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1936
    move-object/from16 v0, v50

    invoke-virtual {v0, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_2

    .line 1939
    .end local v3           #defaultHistory:Landroid/net/NetworkStatsHistory;
    .end local v8           #defaultBytes:J
    .end local v10           #foregroundHistory:Landroid/net/NetworkStatsHistory;
    .end local v15           #foregroundBytes:J
    .end local v26           #devHistory:Landroid/net/NetworkStatsHistory;
    .end local v28           #first:Z
    .end local v29           #fractionDefault:F
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v33           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v39           #remainingBytes:J
    .end local v46           #uid:I
    .end local v47           #uidBytes:J
    .end local v49           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v50           #xtHistory:Landroid/net/NetworkStatsHistory;
    :cond_6
    return-void
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 2057
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2059
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getEmmcDevName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2166
    const/4 v8, 0x0

    .line 2167
    .local v8, reader:Lcom/android/internal/util/ProcFileReader;
    const/4 v4, 0x0

    .line 2168
    .local v4, emmcInfo:Ljava/io/File;
    const/4 v2, 0x0

    .line 2170
    .local v2, devName:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v11, ""

    if-ne p0, v11, :cond_1

    .line 2171
    :cond_0
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invaild input name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2175
    :cond_1
    const/4 v7, 0x0

    .line 2178
    .local v7, i:I
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v11, "/proc/"

    const-string v12, "emmc"

    invoke-direct {v5, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    .end local v4           #emmcInfo:Ljava/io/File;
    .local v5, emmcInfo:Ljava/io/File;
    :try_start_1
    new-instance v9, Lcom/android/internal/util/ProcFileReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v11}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2180
    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v9, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_2
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 2182
    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2183
    add-int/lit8 v7, v7, 0x1

    .line 2184
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 2185
    .local v1, dev:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v10

    .line 2186
    .local v10, size:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 2187
    .local v6, eraseSize:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, dName:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 2191
    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2192
    const-string v11, "NetworkStats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2194
    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2195
    const-string v11, "NetworkStats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "find block: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2202
    .end local v0           #dName:Ljava/lang/String;
    .end local v1           #dev:Ljava/lang/String;
    .end local v6           #eraseSize:Ljava/lang/String;
    .end local v10           #size:Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2205
    return-object v2

    .line 2199
    .end local v5           #emmcInfo:Ljava/io/File;
    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #emmcInfo:Ljava/io/File;
    .restart local v8       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v3

    .line 2200
    .local v3, e:Ljava/lang/Exception;
    :goto_0
    :try_start_3
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "problem get dev name for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2202
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    .end local v4           #emmcInfo:Ljava/io/File;
    .restart local v5       #emmcInfo:Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #emmcInfo:Ljava/io/File;
    .restart local v4       #emmcInfo:Ljava/io/File;
    goto :goto_1

    .end local v4           #emmcInfo:Ljava/io/File;
    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #emmcInfo:Ljava/io/File;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5           #emmcInfo:Ljava/io/File;
    .restart local v4       #emmcInfo:Ljava/io/File;
    move-object v8, v9

    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v8       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_1

    .line 2199
    .end local v4           #emmcInfo:Ljava/io/File;
    .restart local v5       #emmcInfo:Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5           #emmcInfo:Ljava/io/File;
    .restart local v4       #emmcInfo:Ljava/io/File;
    goto :goto_0

    .end local v4           #emmcInfo:Ljava/io/File;
    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #emmcInfo:Ljava/io/File;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #emmcInfo:Ljava/io/File;
    .restart local v4       #emmcInfo:Ljava/io/File;
    move-object v8, v9

    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v8       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_0
.end method

.method private getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;
    .locals 8
    .parameter "template"
    .parameter "fields"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStatsHistory;"
        }
    .end annotation

    .prologue
    .line 480
    .local p3, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 482
    :try_start_0
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->estimateNetworkBuckets()I

    move-result v4

    invoke-direct {v0, v6, v7, v4, p2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 484
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 485
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v3}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 486
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 487
    .local v1, history:Landroid/net/NetworkStatsHistory;
    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 493
    .end local v0           #combined:Landroid/net/NetworkStatsHistory;
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 492
    .restart local v0       #combined:Landroid/net/NetworkStatsHistory;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getHistoryForNetworkDev(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryForNetworkXt(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;ILjava/util/HashMap;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J
    .locals 7
    .parameter "template"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 568
    .local p2, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 569
    .local v3, start:J
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 570
    .local v2, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 571
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 572
    .local v0, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 575
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    return-wide v3
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1992
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v1

    .line 1993
    .local v1, tetheredIfacePairs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2003
    .end local v1           #tetheredIfacePairs:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1994
    :catch_0
    move-exception v0

    .line 2001
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string v3, "problem reading network stats"

    invoke-static {v2, v3, v0}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2003
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0
.end method

.method private static getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "phoneType"

    .prologue
    .line 2064
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2066
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberIdExt(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;
    .locals 14
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 536
    .local p6, source:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 538
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 540
    .local v6, now:J
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/4 v4, 0x1

    invoke-direct {v12, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 541
    .local v12, stats:Landroid/net/NetworkStats;
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 542
    .local v9, entry:Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 545
    .local v8, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual/range {p6 .. p6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkIdentitySet;

    .line 546
    .local v11, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-static {p1, v11}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 548
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 550
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 551
    const/4 v2, -0x1

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 552
    const/4 v2, 0x0

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 553
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 554
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 555
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 556
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 558
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 563
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v6           #now:J
    .end local v8           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v9           #entry:Landroid/net/NetworkStats$Entry;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v12           #stats:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 562
    .restart local v6       #now:J
    .restart local v8       #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v9       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #stats:Landroid/net/NetworkStats;
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v12
.end method

.method private getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 527
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 531
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJLjava/util/HashMap;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 2156
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    :goto_0
    return-void

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log.wtf exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private performNetworkDevPollLocked(Landroid/net/NetworkStats;J)V
    .locals 11
    .parameter "networkDevSnapshot"
    .parameter "currentTime"

    .prologue
    .line 1159
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 1161
    .local v9, unknownIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v10, "dev"

    invoke-direct {p0, v3, p1, v4, v10}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1163
    .local v6, delta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 1165
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 1166
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_1

    .line 1167
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1168
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 1169
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_0

    .line 1170
    iget-object v3, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1166
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkDevStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v3, p2

    .line 1175
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 1178
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 1183
    return-void
.end method

.method private performNetworkXtPollLocked(Landroid/net/NetworkStats;J)V
    .locals 11
    .parameter "networkXtSnapshot"
    .parameter "currentTime"

    .prologue
    .line 1189
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 1191
    .local v9, unknownIface:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v10, "xt"

    invoke-direct {p0, v3, p1, v4, v10}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1193
    .local v6, delta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 1195
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 1196
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_1

    .line 1197
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1198
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 1199
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_0

    .line 1200
    iget-object v3, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1196
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1204
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkXtStatsLocked(Lcom/android/server/net/NetworkIdentitySet;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v3, p2

    .line 1205
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 1208
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1213
    return-void
.end method

.method private performPoll(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1052
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1056
    monitor-exit v1

    .line 1057
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1056
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 30
    .parameter "flags"

    .prologue
    .line 1065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1067
    .local v20, startRealtime:J
    and-int/lit8 v27, p1, 0x1

    if-eqz v27, :cond_5

    const/4 v12, 0x1

    .line 1068
    .local v12, persistNetwork:Z
    :goto_0
    and-int/lit8 v27, p1, 0x2

    if-eqz v27, :cond_6

    const/16 v17, 0x1

    .line 1069
    .local v17, persistUid:Z
    :goto_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const/4 v11, 0x1

    .line 1072
    .local v11, persistForce:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v5

    .line 1074
    .local v5, currentTime:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPersistThreshold()J

    move-result-wide v23

    .line 1081
    .local v23, threshold:J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v22

    .line 1084
    .local v22, tetherSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-interface/range {v27 .. v28}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v25

    .line 1085
    .local v25, uidSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1086
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performUidPollLocked(Landroid/net/NetworkStats;J)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v8

    .line 1090
    .local v8, networkDevSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performNetworkDevPollLocked(Landroid/net/NetworkStats;J)V

    .line 1093
    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1094
    .local v10, networkXtSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/android/server/net/NetworkStatsService;->performNetworkXtPollLocked(Landroid/net/NetworkStats;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "devp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v13

    .line 1114
    .local v13, persistNetworkDevDelta:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "xtp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v15

    .line 1116
    .local v15, persistNetworkXtDelta:J
    cmp-long v27, v13, v23

    if-gtz v27, :cond_0

    cmp-long v27, v15, v23

    if-lez v27, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 1118
    .local v9, networkOverThreshold:Z
    :goto_4
    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    if-eqz v9, :cond_2

    .line 1119
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 1120
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 1121
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkDevSnapshot:Landroid/net/NetworkStats;

    .line 1122
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1125
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->eMMCSupported:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkRxTxStatsLocked()V

    .line 1132
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mLastPersistUidSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "uidp"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v18

    .line 1134
    .local v18, persistUidDelta:J
    if-nez v11, :cond_3

    if-eqz v17, :cond_4

    cmp-long v27, v18, v23

    if-lez v27, :cond_4

    .line 1135
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 1136
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mLastPersistUidSnapshot:Landroid/net/NetworkStats;

    .line 1146
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->performSample()V

    .line 1150
    new-instance v26, Landroid/content/Intent;

    const-string v27, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v26, updatedIntent:Landroid/content/Intent;
    const/high16 v27, 0x4000

    invoke-virtual/range {v26 .. v27}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1153
    .end local v8           #networkDevSnapshot:Landroid/net/NetworkStats;
    .end local v9           #networkOverThreshold:Z
    .end local v10           #networkXtSnapshot:Landroid/net/NetworkStats;
    .end local v13           #persistNetworkDevDelta:J
    .end local v15           #persistNetworkXtDelta:J
    .end local v18           #persistUidDelta:J
    .end local v22           #tetherSnapshot:Landroid/net/NetworkStats;
    .end local v25           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v26           #updatedIntent:Landroid/content/Intent;
    :goto_5
    return-void

    .line 1067
    .end local v5           #currentTime:J
    .end local v11           #persistForce:Z
    .end local v12           #persistNetwork:Z
    .end local v17           #persistUid:Z
    .end local v23           #threshold:J
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1068
    .restart local v12       #persistNetwork:Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1069
    .restart local v17       #persistUid:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1072
    .restart local v11       #persistForce:Z
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto/16 :goto_3

    .line 1096
    .restart local v5       #currentTime:J
    .restart local v23       #threshold:J
    :catch_0
    move-exception v7

    .line 1103
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v27, "NetworkStats"

    const-string v28, "problem reading network stats"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1106
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 1108
    .local v7, e:Landroid/os/RemoteException;
    goto :goto_5

    .line 1116
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v8       #networkDevSnapshot:Landroid/net/NetworkStats;
    .restart local v10       #networkXtSnapshot:Landroid/net/NetworkStats;
    .restart local v13       #persistNetworkDevDelta:J
    .restart local v15       #persistNetworkXtDelta:J
    .restart local v22       #tetherSnapshot:Landroid/net/NetworkStats;
    .restart local v25       #uidSnapshot:Landroid/net/NetworkStats;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4
.end method

.method private performSample()V
    .locals 43

    .prologue
    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkBucketDuration()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v37

    .line 1264
    .local v37, largestBucketSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v39

    .line 1265
    .local v39, now:J
    :goto_0
    rem-long v8, v39, v37

    sub-long v8, v39, v8

    add-long v6, v8, v37

    .line 1266
    .local v6, end:J
    sub-long v4, v6, v37

    .line 1268
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v32

    .line 1269
    .local v32, trustedTime:J
    :goto_1
    const-wide v34, 0x7fffffffffffffffL

    .line 1271
    .local v34, devHistoryStart:J
    const/4 v3, 0x0

    .line 1272
    .local v3, template:Landroid/net/NetworkTemplate;
    const/16 v36, 0x0

    .line 1273
    .local v36, devTotal:Landroid/net/NetworkStats$Entry;
    const/16 v42, 0x0

    .line 1274
    .local v42, xtTotal:Landroid/net/NetworkStats$Entry;
    const/16 v41, 0x0

    .line 1278
    .local v41, uidTotal:Landroid/net/NetworkStats$Entry;
    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->mDualPhoneEnable:Z

    if-eqz v2, :cond_2

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v2, v8}, Lcom/android/server/net/NetworkStatsService;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileCdma(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1280
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1282
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1283
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1285
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJJ)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/android/server/net/NetworkStatsService;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1292
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1294
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1295
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1297
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJJ)V

    .line 1344
    :goto_2
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1345
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1347
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1348
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1349
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJJ)V

    .line 1354
    return-void

    .line 1264
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v32           #trustedTime:J
    .end local v34           #devHistoryStart:J
    .end local v36           #devTotal:Landroid/net/NetworkStats$Entry;
    .end local v39           #now:J
    .end local v41           #uidTotal:Landroid/net/NetworkStats$Entry;
    .end local v42           #xtTotal:Landroid/net/NetworkStats$Entry;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    goto/16 :goto_0

    .line 1268
    .restart local v4       #start:J
    .restart local v6       #end:J
    .restart local v39       #now:J
    :cond_1
    const-wide/16 v32, -0x1

    goto/16 :goto_1

    .line 1302
    .restart local v3       #template:Landroid/net/NetworkTemplate;
    .restart local v32       #trustedTime:J
    .restart local v34       #devHistoryStart:J
    .restart local v36       #devTotal:Landroid/net/NetworkStats$Entry;
    .restart local v41       #uidTotal:Landroid/net/NetworkStats$Entry;
    .restart local v42       #xtTotal:Landroid/net/NetworkStats$Entry;
    :cond_2
    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->mDualGSMPhoneEnable:Z

    if-eqz v2, :cond_3

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/android/server/net/NetworkStatsService;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1304
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1306
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1307
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1309
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJJ)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v8, 0x5

    invoke-static {v2, v8}, Lcom/android/server/net/NetworkStatsService;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileSubGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1316
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1318
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1319
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1321
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJJ)V

    goto/16 :goto_2

    .line 1328
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v2, p0

    .line 1329
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v36

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->getHistoryStartLocked(Landroid/net/NetworkTemplate;Ljava/util/HashMap;)J

    move-result-wide v34

    move-object/from16 v2, p0

    .line 1331
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkXt(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v42

    .line 1332
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v41

    .line 1334
    move-object/from16 v0, v36

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v36

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v36

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v36

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v30, v0

    invoke-static/range {v8 .. v35}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJJ)V

    goto/16 :goto_2
.end method

.method private performUidPollLocked(Landroid/net/NetworkStats;J)V
    .locals 14
    .parameter "uidSnapshot"
    .parameter "currentTime"

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1221
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const-string v12, "uid"

    invoke-direct {p0, v3, p1, v4, v12}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1223
    .local v6, delta:Landroid/net/NetworkStats;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    const/4 v12, 0x0

    const-string v13, "uidop"

    invoke-direct {p0, v3, v4, v12, v13}, Lcom/android/server/net/NetworkStatsService;->computeStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;ZLjava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1225
    .local v10, operationsDelta:Landroid/net/NetworkStats;
    invoke-virtual {v6}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v1, p2, v3

    .line 1227
    .local v1, timeStart:J
    const/4 v5, 0x0

    .line 1228
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v11, 0x0

    .line 1229
    .local v11, operationsEntry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v7, v3, :cond_4

    .line 1230
    invoke-virtual {v6, v7, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1231
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-object v4, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkIdentitySet;

    .line 1232
    .local v8, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v8, :cond_2

    .line 1233
    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-gtz v3, :cond_0

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-gtz v3, :cond_0

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-gtz v3, :cond_0

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-lez v3, :cond_1

    .line 1235
    :cond_0
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dropping UID delta from unknown iface: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1241
    :cond_2
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget v4, v5, Landroid/net/NetworkStats$Entry;->uid:I

    iget v12, v5, Landroid/net/NetworkStats$Entry;->set:I

    iget v13, v5, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v10, v3, v4, v12, v13}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v9

    .line 1242
    .local v9, j:I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    .line 1243
    invoke-virtual {v10, v9, v11}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v11

    .line 1244
    iget-wide v3, v11, Landroid/net/NetworkStats$Entry;->operations:J

    iput-wide v3, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1247
    :cond_3
    iget v3, v5, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v5, Landroid/net/NetworkStats$Entry;->set:I

    iget v12, v5, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-direct {p0, v8, v3, v4, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v3, p2

    .line 1249
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 1252
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v9           #j:I
    :cond_4
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1253
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollOperationsSnapshot:Landroid/net/NetworkStats;

    .line 1254
    return-void
.end method

.method private readNetworkDevStatsLocked()V
    .locals 2

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 1455
    return-void
.end method

.method private readNetworkRxTxStatsLocked()V
    .locals 7

    .prologue
    .line 1466
    const/4 v1, 0x0

    .line 1468
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1471
    .end local v1           #in:Ljava/io/DataInputStream;
    .local v2, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1472
    .local v3, magic:I
    const v4, 0x414e4554

    if-eq v3, v4, :cond_0

    .line 1473
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1478
    .end local v3           #magic:I
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1479
    .end local v2           #in:Ljava/io/DataInputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :goto_0
    :try_start_2
    const-string v4, "NetworkStats"

    const-string v5, "problem reading network rx/tx stats: "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1481
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1483
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1476
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v3       #magic:I
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryTxByte:J

    .line 1477
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryRxByte:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1481
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 1482
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1481
    .end local v3           #magic:I
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 1478
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V
    .locals 12
    .parameter "inputFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, output:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1491
    const/4 v4, 0x0

    .line 1493
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1496
    .end local v4           #in:Ljava/io/DataInputStream;
    .local v5, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1497
    .local v6, magic:I
    const v9, 0x414e4554

    if-eq v6, v9, :cond_0

    .line 1498
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected magic: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1517
    .end local v6           #magic:I
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 1529
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1531
    :goto_1
    return-void

    .line 1501
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 1502
    .local v8, version:I
    packed-switch v8, :pswitch_data_0

    .line 1514
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1519
    .end local v6           #magic:I
    .end local v8           #version:I
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 1526
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_3
    const-string v9, "NetworkStats"

    const-string v10, "problem reading network stats"

    invoke-static {v9, v10, v0}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1529
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .line 1505
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #magic:I
    .restart local v8       #version:I
    :pswitch_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 1506
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v7, :cond_1

    .line 1507
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 1508
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-direct {v1, v5}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 1509
    .local v1, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1506
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1529
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v4, v5

    .line 1530
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1529
    .end local v2           #i:I
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v6           #magic:I
    .end local v7           #size:I
    .end local v8           #version:I
    .restart local v5       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1519
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1517
    :catch_3
    move-exception v9

    goto :goto_0

    .line 1502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private readNetworkXtStatsLocked()V
    .locals 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStats(Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 1460
    return-void
.end method

.method private readUidStatsLocked()V
    .locals 20

    .prologue
    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 1546
    const/4 v7, 0x0

    .line 1548
    .local v7, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1551
    .end local v7           #in:Ljava/io/DataInputStream;
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 1552
    .local v11, magic:I
    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 1553
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1597
    .end local v11           #magic:I
    :catch_0
    move-exception v17

    move-object v7, v8

    .line 1609
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1611
    :goto_1
    return-void

    .line 1556
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1557
    .local v16, version:I
    packed-switch v16, :pswitch_data_0

    .line 1594
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1599
    .end local v11           #magic:I
    .end local v16           #version:I
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 1606
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_3
    const-string v17, "NetworkStats"

    const-string v18, "problem reading uid stats"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1609
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    .line 1575
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    .restart local v16       #version:I
    :pswitch_0
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1576
    .local v6, identSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v6, :cond_3

    .line 1577
    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v5, v8}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 1579
    .local v5, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1580
    .local v13, size:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_5
    if-ge v9, v13, :cond_2

    .line 1581
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1582
    .local v15, uid:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1584
    .local v12, set:I
    :goto_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 1586
    .local v14, tag:I
    new-instance v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    invoke-direct {v10, v5, v15, v12, v14}, Lcom/android/server/net/NetworkStatsService$UidStatsKey;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 1587
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    new-instance v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {v3, v8}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 1588
    .local v3, history:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1580
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1582
    .end local v3           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v12           #set:I
    .end local v14           #tag:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_6

    .line 1576
    .end local v15           #uid:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1609
    .end local v4           #i:I
    .end local v5           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #identSize:I
    .end local v9           #j:I
    .end local v13           #size:I
    :cond_3
    :pswitch_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 1610
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1609
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v11           #magic:I
    .end local v16           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1599
    :catch_2
    move-exception v2

    goto :goto_2

    .line 1597
    :catch_3
    move-exception v17

    goto/16 :goto_0

    .line 1557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerGlobalAlert()V
    .locals 6

    .prologue
    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPersistThreshold()J

    move-result-wide v0

    .line 456
    .local v0, alertBytes:J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v1}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    .end local v0           #alertBytes:J
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem registering for global alert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 441
    .local v2, currentRealtime:J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v2           #currentRealtime:J
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeUidLocked(I)V
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    .line 1360
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1363
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1365
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1366
    .local v2, knownKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1369
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1370
    .local v1, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v5, p1, :cond_0

    .line 1372
    iget v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-nez v5, :cond_1

    .line 1373
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 1374
    .local v4, uidHistory:Landroid/net/NetworkStatsHistory;
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsService;->findOrCreateUidStatsLocked(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 1376
    .local v3, removedHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 1378
    .end local v3           #removedHistory:Landroid/net/NetworkStatsHistory;
    .end local v4           #uidHistory:Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1383
    .end local v1           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_2
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    if-eqz v5, :cond_3

    .line 1384
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v5, p1}, Landroid/net/NetworkStats;->withoutUid(I)Landroid/net/NetworkStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    .line 1385
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollUidSnapshot:Landroid/net/NetworkStats;

    invoke-static {v5}, Lcom/android/server/net/NetworkStatsService;->computeNetworkXtSnapshotFromUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPollNetworkXtSnapshot:Landroid/net/NetworkStats;

    .line 1389
    :cond_3
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1392
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 1393
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 407
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkDevStatsLocked()V

    .line 409
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkXtStatsLocked()V

    .line 412
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->eMMCSupported:Z

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeNetworkRxTxStatsLocked()V

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->writeUidStatsLocked()V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 421
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 422
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 423
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 424
    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    .line 425
    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .parameter "template"
    .parameter "identSet"

    .prologue
    .line 2028
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 2029
    .local v1, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2030
    const/4 v2, 0x1

    .line 2033
    .end local v1           #ident:Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 959
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 963
    monitor-exit v1

    .line 964
    return-void

    .line 961
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 963
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 10

    .prologue
    .line 981
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 985
    :try_start_0
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v8}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 992
    .local v7, states:[Landroid/net/NetworkState;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 994
    move-object v0, v7

    .local v0, arr$:[Landroid/net/NetworkState;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v0, v2

    .line 1003
    .local v6, state:Landroid/net/NetworkState;
    iget-object v8, v6, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v6, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_2

    .line 1007
    :cond_0
    iget-object v8, v6, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 1009
    .local v4, iface:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 1010
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v3, :cond_1

    .line 1011
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1012
    .restart local v3       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 994
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v4           #iface:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 986
    .end local v0           #arr$:[Landroid/net/NetworkState;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #state:Landroid/net/NetworkState;
    .end local v7           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v1

    .line 1018
    :cond_3
    return-void
.end method

.method private writeNetworkDevStatsLocked()V
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    .line 1616
    return-void
.end method

.method private writeNetworkRxTxStatsLocked()V
    .locals 9

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService;->getSummaryForTxByte()J

    move-result-wide v5

    .line 1628
    .local v5, totalTx:J
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService;->getSummaryForRxByte()J

    move-result-wide v3

    .line 1630
    .local v3, totalRx:J
    const/4 v1, 0x0

    .line 1632
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1633
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1635
    .local v2, out:Ljava/io/DataOutputStream;
    const v7, 0x414e4554

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1636
    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1637
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1639
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1640
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7, v1}, Lcom/android/internal/os/AtomicFile;->finishWriteNoSync(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    .end local v2           #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "NetworkStats"

    const-string v8, "problem writing rx/tx stats: "

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    if-eqz v1, :cond_0

    .line 1644
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method private writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V
    .locals 23
    .parameter
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkIdentitySet;",
            "Landroid/net/NetworkStatsHistory;",
            ">;",
            "Lcom/android/internal/os/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1655
    .local p1, input:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Landroid/net/NetworkStatsHistory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1657
    .local v16, systemCurrentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v18

    .line 1659
    .local v18, trustedCurrentTime:J
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1660
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getNetworkMaxHistory()J

    move-result-wide v13

    .line 1662
    .local v13, maxHistory:J
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 1663
    .local v10, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    .line 1664
    .local v4, beforeSize:I
    sub-long v20, v6, v13

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    .line 1665
    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    .line 1667
    .local v3, afterSize:I
    const/16 v20, 0x18

    move/from16 v0, v20

    if-le v4, v0, :cond_0

    div-int/lit8 v20, v4, 0x2

    move/from16 v0, v20

    if-ge v3, v0, :cond_0

    .line 1669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    .local v5, builder:Ljava/lang/StringBuilder;
    const-string v20, "yikes, dropping more than half of history"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1671
    const-string v20, "systemCurrentTime="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1672
    const-string v20, "trustedCurrentTime="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1673
    const-string v20, "maxHistory="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1674
    const-string v20, "beforeSize="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1675
    const-string v20, "afterSize="

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    move-object/from16 v20, v0

    const-string v21, "netstats_error"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1681
    .end local v3           #afterSize:I
    .end local v4           #beforeSize:I
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v6           #currentTime:J
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #maxHistory:J
    .end local v16           #systemCurrentTime:J
    .end local v18           #trustedCurrentTime:J
    :cond_1
    const/4 v9, 0x0

    .line 1683
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 1684
    new-instance v15, Ljava/io/DataOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1686
    .local v15, out:Ljava/io/DataOutputStream;
    const v20, 0x414e4554

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1687
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1689
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1690
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkIdentitySet;

    .line 1691
    .local v12, ident:Lcom/android/server/net/NetworkIdentitySet;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 1692
    .restart local v10       #history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v12, v15}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1693
    invoke-virtual {v10, v15}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1698
    .end local v10           #history:Landroid/net/NetworkStatsHistory;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v15           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    .line 1705
    .local v8, e:Ljava/io/IOException;
    const-string v20, "NetworkStats"

    const-string v21, "problem writing stats"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1707
    if-eqz v9, :cond_2

    .line 1708
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1711
    .end local v8           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 1696
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #out:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 1697
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/android/internal/os/AtomicFile;->finishWriteNoSync(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private writeNetworkXtStatsLocked()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->writeNetworkStats(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    .line 1621
    return-void
.end method

.method private writeUidStatsLocked()V
    .locals 22

    .prologue
    .line 1716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStatsLoaded:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1717
    const-string v18, "NetworkStats"

    const-string v19, "asked to write UID stats when not loaded; skipping"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1727
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidMaxHistory()J

    move-result-wide v15

    .line 1728
    .local v15, maxUidHistory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTagMaxHistory()J

    move-result-wide v13

    .line 1729
    .local v13, maxTagHistory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1730
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 1733
    .local v6, history:Landroid/net/NetworkStatsHistory;
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 1734
    sub-long v18, v2, v15

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    goto :goto_1

    .line 1736
    :cond_2
    sub-long v18, v2, v13

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/net/NetworkStatsHistory;->removeBucketsBefore(J)V

    goto :goto_1

    .line 1742
    .end local v2           #currentTime:J
    .end local v6           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v13           #maxTagHistory:J
    .end local v15           #maxUidHistory:J
    :cond_3
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 1743
    .local v12, keysByIdent:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1744
    .restart local v10       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1745
    .local v11, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    if-nez v11, :cond_4

    .line 1746
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1747
    iget-object v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    :cond_4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1752
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    :cond_5
    const/4 v5, 0x0

    .line 1754
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1755
    new-instance v17, Ljava/io/DataOutputStream;

    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1757
    .local v17, out:Ljava/io/DataOutputStream;
    const v18, 0x414e4554

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1758
    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1760
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1761
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/net/NetworkIdentitySet;

    .line 1762
    .local v9, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1763
    .restart local v11       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 1765
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1766
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1767
    .restart local v10       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 1768
    .restart local v6       #history:Landroid/net/NetworkStatsHistory;
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1769
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1770
    iget v0, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1771
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1777
    .end local v6           #history:Landroid/net/NetworkStatsHistory;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    .end local v17           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 1784
    .local v4, e:Ljava/io/IOException;
    const-string v18, "NetworkStats"

    const-string v19, "problem writing stats"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/android/server/net/NetworkStatsService;->logWTF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1786
    if-eqz v5, :cond_0

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto/16 :goto_0

    .line 1775
    .end local v4           #e:Ljava/io/IOException;
    .restart local v17       #out:Ljava/io/DataOutputStream;
    :cond_7
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/internal/os/AtomicFile;->finishWriteNoSync(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 332
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 333
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1794
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    const-string v14, "NetworkStats"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1797
    .local v2, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v11, :cond_0

    aget-object v1, v3, v6

    .line 1798
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1797
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1801
    .end local v1           #arg:Ljava/lang/String;
    :cond_0
    const-string v12, "full"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1803
    .local v4, fullHistory:Z
    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1805
    :try_start_0
    const-string v12, "generate"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1806
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->generateRandomLocked([Ljava/lang/String;)V

    .line 1807
    const-string v12, "Generated stub stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    monitor-exit v13

    .line 1859
    .end local v6           #i$:I
    :goto_1
    return-void

    .line 1811
    .restart local v6       #i$:I
    :cond_1
    const-string v12, "poll"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1812
    const/16 v12, 0x103

    invoke-direct {p0, v12}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1813
    const-string v12, "Forced poll"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    monitor-exit v13

    goto :goto_1

    .line 1858
    .end local v6           #i$:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1817
    .restart local v6       #i$:I
    :cond_2
    :try_start_1
    const-string v12, "Active interfaces:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1818
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1819
    .local v8, iface:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1820
    .local v7, ident:Lcom/android/server/net/NetworkIdentitySet;
    const-string v12, "  iface="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    const-string v12, " ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1824
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v8           #iface:Ljava/lang/String;
    :cond_3
    const-string v12, "Known historical dev stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1825
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1826
    .restart local v7       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkDevStats:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1827
    .local v5, history:Landroid/net/NetworkStatsHistory;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_3

    .line 1831
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_4
    const-string v12, "Known historical xt stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkIdentitySet;

    .line 1833
    .restart local v7       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkXtStats:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1834
    .restart local v5       #history:Landroid/net/NetworkStatsHistory;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_4

    .line 1838
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v7           #ident:Lcom/android/server/net/NetworkIdentitySet;
    :cond_5
    const-string v12, "detail"

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1841
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 1843
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1844
    .local v10, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1845
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1847
    const-string v12, "Detailed UID stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 1849
    .local v9, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const-string v12, "  ident="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v12}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    const-string v12, " uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1851
    const-string v12, " set="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    invoke-static {v12}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    const-string v12, " tag="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    invoke-static {v12}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1854
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 1855
    .restart local v5       #history:Landroid/net/NetworkStatsHistory;
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0, v4}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    goto :goto_5

    .line 1858
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    .end local v9           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v10           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsService$UidStatsKey;>;"
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    .line 789
    return-void
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 626
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const-string v6, "NetworkStats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 632
    .local v3, networkLayer:Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 635
    .local v0, dataLayer:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 636
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 637
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 638
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 639
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 636
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 643
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 644
    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 3
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->getHistoryForNetworkDev(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 9
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"

    .prologue
    .line 499
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v7, "NetworkStats"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 502
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 505
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidBucketDuration()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->estimateUidBuckets()I

    move-result v5

    invoke-direct {v0, v7, v8, v5, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 507
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 508
    .local v3, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    const/4 v5, -0x1

    if-eq p3, v5, :cond_1

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    if-ne v5, p3, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 509
    .local v4, setMatches:Z
    :goto_1
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v5}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    if-ne v5, p2, :cond_0

    if-eqz v4, :cond_0

    iget v5, v3, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-ne v5, p4, :cond_0

    .line 511
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 512
    .local v1, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 517
    .end local v0           #combined:Landroid/net/NetworkStatsHistory;
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v4           #setMatches:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 508
    .restart local v0       #combined:Landroid/net/NetworkStatsHistory;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 516
    .end local v3           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 13
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter "includeTags"

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->ensureUidStatsLoadedLocked()V

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 589
    .local v5, now:J
    new-instance v11, Landroid/net/NetworkStats;

    sub-long v1, p4, p2

    const/16 v3, 0x18

    invoke-direct {v11, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 590
    .local v11, stats:Landroid/net/NetworkStats;
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 591
    .local v8, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .line 593
    .local v7, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;

    .line 594
    .local v10, key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    iget-object v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsService;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    if-eqz v1, :cond_1

    if-eqz p6, :cond_0

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidStats:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v1, p2

    move-wide/from16 v3, p4

    .line 599
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 601
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 602
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->uid:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 603
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->set:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->set:I

    .line 604
    iget v1, v10, Lcom/android/server/net/NetworkStatsService$UidStatsKey;->tag:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->tag:I

    .line 605
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 606
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 607
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 608
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 609
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 611
    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 613
    :cond_2
    invoke-virtual {v11, v8}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 620
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v5           #now:J
    .end local v7           #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v8           #entry:Landroid/net/NetworkStats$Entry;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsService$UidStatsKey;
    .end local v11           #stats:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 619
    .restart local v5       #now:J
    .restart local v7       #historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v8       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #stats:Landroid/net/NetworkStats;
    :cond_3
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v11
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 3
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getSummaryForNetworkDev(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForRxByte()J
    .locals 10

    .prologue
    .line 817
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v6, "NetworkStats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxLock:Ljava/lang/Object;

    monitor-enter v5

    .line 828
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 829
    .local v0, currentRx:J
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mLastRxByte:J

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .line 830
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryRxByte:J

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsService;->mLastRxByte:J

    sub-long v8, v0, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryRxByte:J

    .line 832
    :cond_0
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastRxByte:J

    .line 833
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryRxByte:J

    .line 834
    .local v2, totalRx:J
    monitor-exit v5

    .line 835
    return-wide v2

    .line 834
    .end local v0           #currentRx:J
    .end local v2           #totalRx:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSummaryForTxByte()J
    .locals 10

    .prologue
    .line 795
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v6, "NetworkStats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mRxTxLock:Ljava/lang/Object;

    monitor-enter v5

    .line 805
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 806
    .local v0, currentTx:J
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mLastTxByte:J

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .line 807
    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryTxByte:J

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsService;->mLastTxByte:J

    sub-long v8, v0, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryTxByte:J

    .line 809
    :cond_0
    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastTxByte:J

    .line 810
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mHistoryTxByte:J

    .line 811
    .local v2, totalTx:J
    monitor-exit v5

    .line 812
    return-wide v2

    .line 811
    .end local v0           #currentTx:J
    .end local v2           #totalTx:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public incrementOperationCount(III)V
    .locals 17
    .parameter "uid"
    .parameter "tag"
    .parameter "operationCount"

    .prologue
    .line 649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v0, p1

    if-eq v1, v0, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    if-gez p3, :cond_1

    .line 654
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count can only be incremented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_1
    if-nez p2, :cond_2

    .line 657
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count must have specific tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 661
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 662
    .local v4, set:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mOperations:Landroid/net/NetworkStats;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 664
    monitor-exit v16

    .line 665
    return-void

    .line 664
    .end local v4           #set:I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .parameter "uid"
    .parameter "uidForeground"

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 770
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 771
    .local v1, set:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 772
    .local v0, oldSet:I
    if-eq v0, v1, :cond_1

    .line 773
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 782
    :cond_1
    monitor-exit v3

    .line 783
    return-void

    .line 782
    .end local v0           #oldSet:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 337
    const-string v6, "net.qtaguid_enabled"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->dataUsageSupported:Z

    .line 339
    iget-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->dataUsageSupported:Z

    if-nez v5, :cond_1

    .line 396
    :goto_1
    return-void

    .line 337
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 344
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkDevStatsLocked()V

    .line 349
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkXtStatsLocked()V

    .line 352
    iget-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->eMMCSupported:Z

    if-eqz v5, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkRxTxStatsLocked()V

    .line 356
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsLoaded:Z

    .line 357
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStats()V

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, connFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 367
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, tetherFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 371
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, pollFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 375
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, removedFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 379
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, shutdownFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    :goto_2
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 392
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 393
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 395
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v6, "dropbox"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/DropBoxManager;

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mDropBox:Landroid/os/DropBoxManager;

    goto/16 :goto_1

    .line 357
    .end local v0           #connFilter:Landroid/content/IntentFilter;
    .end local v1           #pollFilter:Landroid/content/IntentFilter;
    .end local v2           #removedFilter:Landroid/content/IntentFilter;
    .end local v3           #shutdownFilter:Landroid/content/IntentFilter;
    .end local v4           #tetherFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 384
    .restart local v0       #connFilter:Landroid/content/IntentFilter;
    .restart local v1       #pollFilter:Landroid/content/IntentFilter;
    .restart local v2       #removedFilter:Landroid/content/IntentFilter;
    .restart local v3       #shutdownFilter:Landroid/content/IntentFilter;
    .restart local v4       #tetherFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
