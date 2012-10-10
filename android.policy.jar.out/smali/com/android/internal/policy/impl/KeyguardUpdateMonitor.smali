.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/HtcIfKeyguardUpdateMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SubSimExtraStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field private static final ACTION_CS_LOCK_CHANGE:Ljava/lang/String; = "com.htc.cs.system.remotelock"

.field private static final ACTION_DM_LOCK_CHANGE:Ljava/lang/String; = "com.htc.android.omadm.state.change"

.field private static final DEBUG:Z = false

.field private static final DEBUG_UPDATE:Z = false

.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I = 0x0

.field private static final EXTRA_VALUE_CS_LOCK_STATE:Ljava/lang/String; = "remotelock.enable"

.field private static final EXTRA_VALUE_DM_LOCK_STATE:Ljava/lang/String; = "dm.lawmo.lockstate"

.field private static final EXTRA_VALUE_DM_PIN_ENABLE:Ljava/lang/String; = "dm.lawmo.pinenable"

.field static final LOW_BATTERY_THRESHOLD:I = 0xf

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_LOCK_CHANGE:I = 0x12b

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_EXTRA_STATE_CHANGE:I = 0x12c

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SIM_STATE_CHANGE_DUAL:I = 0x136

.field private static final MSG_SUB_CARRIER_INFO_UPDATE:I = 0x135

.field private static final MSG_SUB_SIM_EXTRA_STATE_CHANGE:I = 0x137

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final PHONE_REQUEST_LOCKED:Ljava/lang/String; = "com.htc.intent.action.PHONE_REQUEST_LOCKED"

.field private static final SYSTEM_PROPERTY_DM_LOCK_STATE:Ljava/lang/String; = "ro.omadm.lockstate"

.field private static final SYSTEM_PROPERTY_DM_PIN_ENABLE:Ljava/lang/String; = "ro.omadm.pinenable"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static mIccStatusInfo:[I

.field private static mNetworkLockType:I

.field private static mRUIMNetworkLockType:I

.field private static mRUIMStatusInfo:[I

.field private static mSIMNetworkLockType:I

.field private static mSIMStatusInfo:[I

.field private static mSUBSIMNetworkLockType:I

.field private static mSUBSIMStatusInfo:[I


# instance fields
.field private mAvailableTimeStamp:J

.field private mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

.field private mCSLockState:Z

.field private mClockVisible:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDMLockState:I

.field private mDMPinEnable:Z

.field private mDeviceLock:Z

.field private mDeviceProvisioned:Z

.field private mFailedAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mHtcIccStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcInfoPlusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIccStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoPlusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialUnlockMode:Z

.field private mKeyboardFlyHeight:I

.field private mKeyguardBypassEnabled:Z

.field private mNeedToShowAnimation:Z

.field private mNeedToWaitFirstFrame:Z

.field private mPasswordTimeout:Z

.field private mPhoneState:I

.field private mRingMode:I

.field private mServiceStatus:I

.field private mShowing:Z

.field private mSimExtraStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSubServiceStatus:I

.field private mSubSimExtraStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSubSimState:Lcom/android/internal/telephony/IccCard$State;

.field public mSubTelephonyPlmn:Ljava/lang/CharSequence;

.field public mSubTelephonySpn:Ljava/lang/CharSequence;

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mUimState:Lcom/android/internal/telephony/IccCard$State;

.field private mUnlockExtraType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 116
    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    .line 184
    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    .line 186
    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    .line 188
    new-array v0, v1, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 108
    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    .line 113
    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 125
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    .line 126
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    .line 128
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    .line 129
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    .line 159
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowing:Z

    .line 160
    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    .line 161
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    .line 162
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    .line 163
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    .line 164
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPasswordTimeout:Z

    .line 168
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToShowAnimation:Z

    .line 172
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInitialUnlockMode:Z

    .line 179
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    .line 180
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 181
    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    .line 190
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    .line 191
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    .line 193
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    .line 194
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    .line 1354
    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    .line 1375
    iput v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnlockExtraType:I

    .line 1385
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToWaitFirstFrame:Z

    .line 352
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 356
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x111000e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    .line 420
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "device_provisioned"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 425
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v4, :cond_0

    .line 426
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 439
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "device_provisioned"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 445
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "device_provisioned"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v3, v5

    .line 447
    .local v3, provisioned:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v3, v4, :cond_0

    .line 448
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 449
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x134

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    .end local v3           #provisioned:Z
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 458
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    .line 460
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 464
    :cond_1
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v7, 0x64

    invoke-direct {v4, v5, v7, v6, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 466
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 469
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    .line 475
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 483
    const-string v4, "android.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v4, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v4, "com.htc.intent.action.PHONE_REQUEST_LOCKED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    :cond_3
    const-string v4, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 698
    .local v2, filter2:Landroid/content/IntentFilter;
    const-string v4, "com.htc.android.omadm.state.change"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v4, "com.htc.cs.system.remotelock"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p1, v4, v2, v5, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 721
    const-string v4, "ro.omadm.lockstate"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    .line 722
    const-string v4, "ro.omadm.pinenable"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    .line 724
    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    if-lez v4, :cond_4

    .line 725
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x12b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 729
    :cond_4
    return-void

    .line 357
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "KeyguardUpdateMonitor"

    const-string v7, "NameNotFoundException : mHtcContext == null"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    iput-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcContext:Landroid/content/Context;

    goto/16 :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move v4, v6

    .line 420
    goto/16 :goto_1

    :cond_6
    move v3, v6

    .line 445
    goto/16 :goto_2
.end method

.method private DualhandleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;Z)V
    .locals 5
    .parameter "simArgs"
    .parameter "isSubPhone"

    .prologue
    .line 1433
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 1439
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1440
    if-eqz p2, :cond_1

    .line 1441
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    .line 1442
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1444
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1446
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1447
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1451
    .end local v0           #i:I
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    .line 1452
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1453
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1454
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1453
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1456
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1457
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1460
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1461
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1467
    .end local v0           #i:I
    :cond_4
    if-eqz p2, :cond_6

    .line 1468
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    .line 1469
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1470
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1471
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1473
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1474
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1478
    .end local v0           #i:I
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_9

    .line 1479
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1480
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1481
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1480
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1483
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1484
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;->onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 1483
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1487
    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1488
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1494
    .end local v0           #i:I
    :cond_9
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mUimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mSubSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSubSimExtraStateChange(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSubCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DualhandleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getServiceStatusFrom(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    return p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDeviceLockChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimExtraStateChange(IILjava/lang/String;)V

    return-void
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 951
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcContext:Landroid/content/Context;

    const v1, 0x204012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getServiceStatusFrom(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 922
    const-string v0, "networkState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 931
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 932
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 939
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 936
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 939
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 960
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 966
    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .parameter "batteryStatus"

    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 781
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 782
    if-eqz v0, :cond_0

    .line 783
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .locals 5

    .prologue
    .line 798
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_0
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 2

    .prologue
    .line 863
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    :cond_0
    return-void
.end method

.method private handleDeviceLockChange()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 849
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    if-gt v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    if-eqz v2, :cond_1

    .line 851
    .local v0, deviceLock:Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    if-eq v0, v2, :cond_2

    .line 852
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    .line 854
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 855
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDeviceLockChange(Z)V

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 849
    .end local v0           #deviceLock:Z
    .end local v1           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 858
    .restart local v0       #deviceLock:Z
    :cond_2
    return-void
.end method

.method private handleSimExtraStateChange(IILjava/lang/String;)V
    .locals 3
    .parameter "provisioned"
    .parameter "icc_type"
    .parameter "operator"

    .prologue
    .line 835
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 836
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;->onSimExtraStateChanged(ZILjava/lang/String;)V

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 836
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 839
    :cond_1
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 3
    .parameter "simArgs"

    .prologue
    .line 811
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 818
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    .line 819
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 820
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private handleSubCarrierInfoUpdate()V
    .locals 4

    .prologue
    .line 1420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;->onRefreshSubCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1424
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;->onRefreshSubCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1426
    :cond_1
    return-void
.end method

.method private handleSubSimExtraStateChange(IILjava/lang/String;)V
    .locals 3
    .parameter "provisioned"
    .parameter "icc_type"
    .parameter "operator"

    .prologue
    .line 1133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1134
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;->onSubSimExtraStateChanged(ZILjava/lang/String;)V

    .line 1133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1137
    :cond_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .prologue
    .line 769
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    :cond_0
    return-void
.end method

.method private static isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 912
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 881
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 882
    .local v0, nowPluggedIn:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 883
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 888
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 908
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 883
    goto :goto_0

    .line 893
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 898
    :cond_3
    if-nez v0, :cond_5

    .line 900
    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v6, 0xf

    if-ge v5, v6, :cond_4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 904
    :cond_4
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_5
    move v3, v4

    .line 908
    goto :goto_1
.end method

.method public static isDualPhoneDevice()Z
    .locals 1

    .prologue
    .line 1405
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1407
    :cond_0
    const/4 v0, 0x1

    .line 1409
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 874
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DualremoveCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1506
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1508
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1509
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1510
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1511
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1513
    return-void
.end method

.method public clearFailedAttempts()V
    .locals 2

    .prologue
    .line 1252
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAvailableTimeStamp:J

    .line 1256
    return-void
.end method

.method public getAvailableTimeStamp()J
    .locals 2

    .prologue
    .line 1276
    iget-wide v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAvailableTimeStamp:J

    return-wide v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getDeviceLock()Z
    .locals 1

    .prologue
    .line 1295
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceLock:Z

    return v0
.end method

.method public getDeviceLockType()I
    .locals 2

    .prologue
    .line 1300
    const/4 v0, 0x0

    .line 1302
    .local v0, type:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCSLockState:Z

    if-eqz v1, :cond_0

    .line 1303
    or-int/lit8 v0, v0, 0x1

    .line 1306
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMLockState:I

    if-lez v1, :cond_1

    .line 1307
    or-int/lit8 v0, v0, 0x2

    .line 1310
    :cond_1
    return v0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    return-object v0
.end method

.method public getIccDetailStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1599
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1600
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1601
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    .line 1609
    :goto_0
    return-object v0

    .line 1603
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    goto :goto_0

    .line 1606
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1607
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    goto :goto_0

    .line 1609
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    goto :goto_0
.end method

.method public getIccState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1350
    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    if-lez v3, :cond_0

    move v0, v1

    .line 1351
    .local v0, fly:Z
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    if-lez v3, :cond_1

    :goto_1
    return v1

    .end local v0           #fly:Z
    :cond_0
    move v0, v2

    .line 1350
    goto :goto_0

    .restart local v0       #fly:Z
    :cond_1
    move v1, v2

    .line 1351
    goto :goto_1
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    return v0
.end method

.method public getKeyguardInitialMode()Z
    .locals 1

    .prologue
    .line 1661
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInitialUnlockMode:Z

    return v0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    .prologue
    .line 1166
    sget v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetworkLockType:I

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPasswordTimeout:Z

    return v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDMPinEnable:Z

    return v0
.end method

.method public getShowing()Z
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowing:Z

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1559
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1566
    :goto_0
    return-object v0

    .line 1561
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1563
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1564
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1566
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getSubNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 1647
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    return v0
.end method

.method public getSubSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSubTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 1587
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1590
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getUnlockType()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnlockExtraType:I

    return v0
.end method

.method protected handleDeviceProvisioned()V
    .locals 3

    .prologue
    .line 732
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDeviceProvisioned()V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 738
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 740
    :cond_1
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 744
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    .line 751
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 752
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    .end local v0           #i:I
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 748
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 754
    .restart local v0       #i:I
    :cond_3
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 758
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    .line 759
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_0
    return-void
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardBypassEnabled()Z
    .locals 2

    .prologue
    .line 1200
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "System is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyguardBypassEnabled:Z

    goto :goto_0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    .prologue
    .line 1330
    monitor-enter p0

    .line 1331
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToShowAnimation:Z

    monitor-exit p0

    return v0

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStuckNetworkLock()Z
    .locals 2

    .prologue
    .line 1396
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd9

    if-ne v0, v1, :cond_0

    .line 1397
    const/4 v0, 0x1

    .line 1399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToWaitFirstFrame:Z

    return v0
.end method

.method public registerHtcIccStateCallback(Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    :goto_0
    return-void

    .line 1545
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 1551
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHtcInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    :goto_0
    return-void

    .line 1554
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another INFOPlus callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    :goto_0
    return-void

    .line 1536
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 1074
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1075
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1076
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 1079
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mServiceStatus:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1081
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 1086
    :cond_0
    return-void
.end method

.method public registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1524
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 1525
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoPlusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    :goto_0
    return-void

    .line 1528
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another INFOPlus callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1101
    :cond_0
    return-void
.end method

.method public registerSubSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    :goto_0
    return-void

    .line 1121
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another Sub SIM callback"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 977
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DualremoveCallback(Ljava/lang/Object;)V

    .line 988
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 984
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimExtraStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 1272
    iput-wide p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mAvailableTimeStamp:J

    .line 1273
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1140
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1141
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1142
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 1

    .prologue
    .line 1259
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1260
    return-void
.end method

.method public reportPinUnlocked(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1571
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1572
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1580
    :goto_0
    return-void

    .line 1573
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1574
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1575
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1576
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1578
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public reportSimAbsent()V
    .locals 1

    .prologue
    .line 1194
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1195
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 3

    .prologue
    .line 1184
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1186
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    .line 1188
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1190
    :cond_0
    return-void
.end method

.method public reportSubSimUnlocked()V
    .locals 1

    .prologue
    .line 1635
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1636
    return-void
.end method

.method public reportUimPinUnlocked()V
    .locals 1

    .prologue
    .line 1639
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1640
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public setInitialModeToUnlock(Z)V
    .locals 0
    .parameter "setToUnlockMode"

    .prologue
    .line 1666
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInitialUnlockMode:Z

    .line 1667
    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 1358
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1359
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1360
    .local v0, fly:I
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    .line 1368
    .end local v0           #fly:I
    :goto_0
    return-void

    .line 1362
    :cond_0
    if-lez p1, :cond_1

    .line 1363
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    goto :goto_0

    .line 1366
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mKeyboardFlyHeight:I

    goto :goto_0
.end method

.method public setKeyboardFly(Z)V
    .locals 1
    .parameter "bFly"

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, height:I
    if-eqz p1, :cond_0

    .line 1344
    const/4 v0, -0x1

    .line 1346
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    .line 1347
    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 1319
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPasswordTimeout:Z

    .line 1320
    return-void
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 1336
    monitor-enter p0

    .line 1337
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToShowAnimation:Z

    .line 1338
    monitor-exit p0

    .line 1339
    return-void

    .line 1338
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShowing(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1284
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShowing:Z

    .line 1285
    return-void
.end method

.method public setUnlockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1377
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnlockExtraType:I

    .line 1378
    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 1387
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNeedToWaitFirstFrame:Z

    .line 1388
    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateIccDetailStatus(III)V
    .locals 3
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1615
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1616
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1617
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    aput p2, v0, v1

    .line 1618
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRUIMStatusInfo:[I

    aput p3, v0, v2

    .line 1632
    :goto_0
    return-void

    .line 1620
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p2, v0, v1

    .line 1621
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p3, v0, v2

    goto :goto_0

    .line 1624
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1625
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    aput p2, v0, v1

    .line 1626
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSUBSIMStatusInfo:[I

    aput p3, v0, v2

    goto :goto_0

    .line 1628
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p2, v0, v1

    .line 1629
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSIMStatusInfo:[I

    aput p3, v0, v2

    goto :goto_0
.end method

.method public updateNetworkLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1170
    sput p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetworkLockType:I

    .line 1171
    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 2
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 1161
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1162
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIccStatusInfo:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1163
    return-void
.end method
