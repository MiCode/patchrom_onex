.class Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DMB_DONGLE_ENABLED:Ljava/lang/String; = "uimode_dmb_enabled"

.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final IS_SET_DESK_DOCK_PREFERRED:Ljava/lang/String; = "is_set_desk_dock_preferred"

.field private static final KEY_LAST_UPDATE_INTERVAL:Ljava/lang/String; = "LAST_UPDATE_INTERVAL"

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final LOG:Z = false

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_UPDATE_TWILIGHT:I = 0x0

.field private static final SENSE_VERSION_FOR_NEW_DOCKMODE_BEHAVIOR:F = 4.0f

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private final ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

.field private final HTC_DOCKAPP_CLASS_NAME:Ljava/lang/String;

.field private final HTC_DOCKAPP_PACKAGE_NAME:Ljava/lang/String;

.field private final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private mDeskDockDimScreenValue:I

.field private mDeskModeEnabled:Z

.field private final mDeskModeKeepsScreenOn:Z

.field private mDmbDongleEnabled:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbEnableS40DockModeBehavior:Z

.field private mbIsCarDockStateChanged:Z

.field private mbIsGoogleCarPanelAppExisting:Z

.field private mbIsHtcDockModeAppExist:Z

.field private mbIsHtcLocationExist:Z

.field private mbIsHtcSetupWizardInstalled:Z

.field private mbIsKeepsScreenOn4DeskMode:Z

.field private mfSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    .line 98
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 100
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 101
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 103
    iput v10, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 104
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 106
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 112
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 117
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 118
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 120
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 121
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 135
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    .line 140
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 146
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    .line 147
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    .line 148
    const-string v1, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

    .line 149
    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 151
    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 153
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    .line 155
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 157
    const/high16 v1, 0x4060

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mfSenseVersion:F

    .line 161
    const-string v1, "com.htc.android.htcsetupwizard"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

    .line 162
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    .line 164
    const-string v1, "com.htc.dockmode"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_DOCKAPP_PACKAGE_NAME:Ljava/lang/String;

    .line 165
    const-string v1, "com.htc.dockmode.DockNotifyActivity"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_DOCKAPP_CLASS_NAME:Ljava/lang/String;

    .line 181
    new-instance v1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    new-instance v1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    new-instance v1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance v1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 363
    new-instance v1, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    .line 1311
    new-instance v1, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 422
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    .line 424
    const-string v1, "uimode"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 427
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mfSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mfSenseVersion:F

    const/high16 v3, 0x4080

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbEnableS40DockModeBehavior:Z

    .line 431
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 433
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 435
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.action.UPDATE_NIGHT_MODE"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 442
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 446
    .local v7, powerManager:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 452
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 455
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v5, v1, Landroid/content/res/Configuration;->fontsize:I

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v1, v10

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_3

    move v1, v10

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 467
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ui_night_mode"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 472
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 473
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const-string v11, "deskdock_dim_screen"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 475
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 476
    new-instance v9, Lcom/android/server/UiModeManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    .line 477
    .local v9, settingsObserver:Lcom/android/server/UiModeManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 481
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 482
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 484
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 491
    :cond_0
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->checkAppPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    .line 492
    return-void

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #filter:Landroid/content/IntentFilter;
    .end local v7           #powerManager:Landroid/os/PowerManager;
    .end local v8           #settingsCursor:Landroid/database/Cursor;
    .end local v9           #settingsObserver:Lcom/android/server/UiModeManagerService$SettingsObserver;
    :cond_1
    move v1, v5

    .line 429
    goto/16 :goto_1

    .restart local v6       #filter:Landroid/content/IntentFilter;
    .restart local v7       #powerManager:Landroid/os/PowerManager;
    :cond_2
    move v1, v5

    .line 462
    goto :goto_2

    :cond_3
    move v1, v5

    .line 464
    goto :goto_3

    .line 428
    .end local v6           #filter:Landroid/content/IntentFilter;
    .end local v7           #powerManager:Landroid/os/PowerManager;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->launchHtcLocations()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbEnableS40DockModeBehavior:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->launchHtcDockMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->exitHtcLocations()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1210
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v2, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_2

    .line 1218
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1226
    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_3

    .line 1227
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1232
    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_4

    .line 1233
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1237
    :cond_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 1238
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    .line 1239
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1241
    .local v0, carModeOffIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1242
    .local v1, n:Landroid/app/Notification;
    const v2, 0x10804ec

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1243
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1244
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1245
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 1246
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040460

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040461

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1251
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v0           #carModeOffIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_5
    move v2, v3

    .line 1227
    goto :goto_1

    .line 1253
    :cond_6
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private adjustStatusBarDeskModeLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1260
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1279
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    .line 1280
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1286
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v2, :cond_2

    .line 1287
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_3

    .line 1289
    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1291
    .local v0, deskModeHomeIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1292
    .local v1, n:Landroid/app/Notification;
    const v2, 0x1080795

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1293
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1294
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1295
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 1296
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040556

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040557

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1301
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1308
    .end local v0           #deskModeHomeIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_2
    :goto_0
    return-void

    .line 1305
    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "category"

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    return-object v0
.end method

.method private checkAppPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .parameter "strAppPackage"

    .prologue
    const/4 v6, 0x0

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 907
    .local v3, nTimeBegin:J
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 908
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 910
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 911
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 914
    const/4 v6, 0x1

    .line 919
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v6
.end method

.method private existCurrentModeIfAny(I)V
    .locals 5
    .parameter "nNewEnteringMode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 873
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 874
    .local v0, nCurModeType:I
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_0

    if-eq p1, v4, :cond_0

    .line 877
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableDeskMode(I)V

    .line 879
    :cond_0
    and-int/lit8 v1, v0, 0x3

    if-ne v1, v3, :cond_1

    if-eq p1, v3, :cond_1

    .line 882
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_2

    if-eq p1, v3, :cond_2

    .line 887
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    .line 889
    :cond_2
    return-void
.end method

.method private exitHtcLocations()V
    .locals 2

    .prologue
    .line 842
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 844
    return-void
.end method

.method private getAutoLaunchCarDock(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, value:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_launch_car_dock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 747
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 748
    :goto_0
    return v1

    .line 747
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoLaunchDeskDock(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 754
    const/4 v1, 0x0

    .line 755
    .local v1, value:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_auto_launch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 757
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 758
    :goto_0
    return v1

    .line 757
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimScreenTimeoutValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 764
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasOOBEState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 847
    if-nez p1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return v0

    .line 850
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final isDeskDockState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 726
    packed-switch p0, :pswitch_data_0

    .line 732
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 730
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isGoogleCarPanelExisting(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 804
    const/4 v8, 0x0

    .line 805
    .local v8, result:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 807
    .local v5, nTimeBegin:J
    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 809
    .local v7, packageMgr:Landroid/content/pm/PackageManager;
    if-nez v7, :cond_0

    move v9, v8

    .line 833
    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .line 811
    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .local v4, intent:Landroid/content/Intent;
    const v10, 0x10080

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 814
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 818
    .local v3, info:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    .line 820
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "android.dock_home"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 821
    .local v1, bMetaDataValue:Z
    if-eqz v1, :cond_1

    .line 823
    const/4 v8, 0x1

    .end local v1           #bMetaDataValue:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    move v9, v8

    .line 833
    .restart local v9       #result:I
    goto :goto_0
.end method

.method private isHtcDockModeAppExisting(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 858
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 859
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 861
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 862
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.htc.dockmode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 865
    const/4 v4, 0x1

    .line 868
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method private isHtcLocationExisting(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 787
    .local v3, nTimeBegin:J
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 788
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 790
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 791
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.htc.laputa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 794
    const/4 v6, 0x1

    .line 799
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v6
.end method

.method private launchHtcDockMode(Z)V
    .locals 3
    .parameter "nDocked"

    .prologue
    .line 892
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Landroid/app/UiModeManager;->ACTION_DOCKMODE_SENSE40:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    .line 895
    .local v1, nEventType:I
    if-eqz p1, :cond_0

    .line 896
    const/4 v1, 0x0

    .line 900
    :goto_0
    sget-object v2, Landroid/app/UiModeManager;->EVENT_TYPE_DOCK_MODE_SENSE40:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 902
    return-void

    .line 898
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private launchHtcLocations()V
    .locals 3

    .prologue
    .line 837
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, naviIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method private setDockModePreferredActivity()V
    .locals 12

    .prologue
    .line 496
    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 497
    .local v7, pm:Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 498
    sget-object v9, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v10, "Not set preferred activity due to the instance of PackageManager is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const/high16 v9, 0x1

    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 504
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 505
    .local v2, count:I
    if-eqz v2, :cond_0

    .line 507
    new-array v1, v2, [Landroid/content/ComponentName;

    .line 509
    .local v1, components:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 511
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 512
    .local v8, r:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_2

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_3

    .line 509
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 515
    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v1, v4

    goto :goto_2

    .line 518
    .end local v8           #r:Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 519
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 521
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 522
    new-instance v3, Landroid/content/ComponentName;

    const-string v9, "com.htc.dockmode"

    const-string v10, "com.htc.dockmode.DockNotifyActivity"

    invoke-direct {v3, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .local v3, dockapp:Landroid/content/ComponentName;
    const-string v9, "com.htc.dockmode"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 524
    const v9, 0x108000

    invoke-virtual {v7, v6, v9, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 549
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 554
    :cond_0
    monitor-exit v1

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableDeskMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 574
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 579
    :cond_0
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    :goto_0
    return-void

    .line 1507
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1508
    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    const-string v0, "  mDockState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1510
    const-string v0, " mLastBroadcastState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1511
    const-string v0, "  mNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1512
    const-string v0, " mCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1513
    const-string v0, " mComputedNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1514
    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1517
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1518
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 1519
    const-string v0, "  mLocation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1521
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 559
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->existCurrentModeIfAny(I)V

    .line 561
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 563
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 568
    :cond_0
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDeskMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 584
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->existCurrentModeIfAny(I)V

    .line 586
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 588
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 593
    :cond_0
    monitor-exit v1

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentModeType()I
    .locals 2

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v0, 0xf

    monitor-exit v1

    return v0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDockState()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    return v0
.end method

.method public getNightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method isDoingNightMode()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 663
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 665
    :cond_0
    return-void
.end method

.method setDeskModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 670
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 672
    :cond_0
    return-void
.end method

.method setDmbDongleLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eq v0, p1, :cond_0

    .line 678
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 680
    :cond_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 605
    packed-switch p1, :pswitch_data_0

    .line 611
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 613
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    monitor-exit v3

    .line 626
    :goto_0
    return-void

    .line 617
    :cond_0
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_1

    .line 618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 619
    .local v0, ident:J
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 623
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 625
    .end local v0           #ident:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 633
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 634
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 635
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 637
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 641
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 642
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "uimode_dmb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_set_desk_dock_preferred"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 647
    .local v0, isSetDeskDockPreferred:I
    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setDockModePreferredActivity()V

    .line 649
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_set_desk_dock_preferred"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 652
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 653
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 654
    monitor-exit v4

    .line 655
    return-void

    .end local v0           #isSetDeskDockPreferred:I
    :cond_1
    move v3, v2

    .line 635
    goto :goto_0

    :cond_2
    move v1, v2

    .line 641
    goto :goto_1

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final updateConfigurationLocked(Z)V
    .locals 4
    .parameter "sendIt"

    .prologue
    .line 924
    const/4 v1, 0x1

    .line 925
    .local v1, uiMode:I
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_2

    .line 926
    const/4 v1, 0x3

    .line 932
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 933
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_4

    .line 934
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 935
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    :goto_1
    or-int/2addr v1, v2

    .line 946
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v2, :cond_6

    .line 982
    :cond_1
    :goto_3
    return-void

    .line 928
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_0

    .line 930
    const/4 v1, 0x2

    goto :goto_0

    .line 935
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 938
    :cond_4
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    goto :goto_2

    .line 942
    :cond_5
    and-int/lit8 v2, v1, -0x31

    or-int/lit8 v1, v2, 0x10

    goto :goto_2

    .line 953
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v2, :cond_1

    .line 968
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 970
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    if-eq v1, v2, :cond_1

    .line 971
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 972
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 974
    if-eqz p1, :cond_1

    .line 976
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method updateDockState(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 684
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 685
    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_6

    .line 686
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 687
    .local v0, mOldDockState:I
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 690
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_0

    .line 691
    monitor-exit v4

    .line 723
    .end local v0           #mOldDockState:I
    :goto_0
    return-void

    .line 694
    .restart local v0       #mOldDockState:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_1

    .line 695
    monitor-exit v4

    goto :goto_0

    .line 722
    .end local v0           #mOldDockState:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 699
    .restart local v0       #mOldDockState:I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchCarDock(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_2

    .line 700
    monitor-exit v4

    goto :goto_0

    .line 703
    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchDeskDock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v1, :cond_4

    .line 704
    monitor-exit v4

    goto :goto_0

    .line 706
    :cond_4
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_7

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 708
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 712
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_8

    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDmbDongleLocked(Z)V

    .line 714
    if-ne v0, v5, :cond_9

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 715
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_5

    .line 718
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 720
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 722
    .end local v0           #mOldDockState:I
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .restart local v0       #mOldDockState:I
    :cond_7
    move v3, v2

    .line 706
    goto :goto_1

    :cond_8
    move v3, v2

    .line 712
    goto :goto_2

    :cond_9
    move v1, v2

    .line 714
    goto :goto_3
.end method

.method final updateLocked(II)V
    .locals 16
    .parameter "enableFlags"
    .parameter "disableFlags"

    .prologue
    .line 985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 988
    .local v12, ident:J
    const/4 v9, 0x0

    .line 989
    .local v9, action:Ljava/lang/String;
    const/4 v15, 0x0

    .line 990
    .local v15, oldAction:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 992
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 1013
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_b

    .line 1014
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 1016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isGoogleCarPanelExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    .line 1017
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-nez v1, :cond_1

    .line 1018
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    .line 1019
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v1, :cond_9

    .line 1022
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1024
    const-string v9, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    .line 1077
    :cond_2
    :goto_1
    if-eqz v9, :cond_14

    .line 1090
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v2, intent:Landroid/content/Intent;
    const-string v1, "enableFlags"

    move/from16 v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    const-string v1, "disableFlags"

    move/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1098
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1146
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_19

    .line 1149
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-nez v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_19

    .line 1204
    :cond_4
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1206
    return-void

    .line 993
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 995
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_6

    .line 997
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    .line 1000
    :cond_6
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 1003
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    .line 1004
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 1008
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-nez v1, :cond_0

    .line 1009
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 1026
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_2

    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1029
    if-eqz v15, :cond_a

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1032
    :cond_a
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1033
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 1040
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_11

    .line 1042
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcDockModeAppExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_e

    .line 1048
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    .line 1056
    :goto_5
    if-eqz v15, :cond_c

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1059
    :cond_c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1060
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 1048
    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    .line 1054
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_10

    :cond_f
    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1204
    :catchall_0
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1054
    :cond_10
    const/4 v1, 0x0

    goto :goto_6

    .line 1063
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eqz v1, :cond_13

    .line 1064
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 1065
    if-eqz v15, :cond_12

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1068
    :cond_12
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1069
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 1073
    :cond_13
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1074
    move-object v9, v15

    goto/16 :goto_1

    .line 1100
    :cond_14
    const/4 v11, 0x0

    .line 1101
    .local v11, homeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_17

    .line 1102
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_15

    .line 1106
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_16

    .line 1137
    :cond_15
    :goto_7
    if-eqz v11, :cond_3

    .line 1139
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1140
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 1108
    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_15

    .line 1110
    const-string v1, "android.intent.category.CAR_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_7

    .line 1116
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_18

    .line 1118
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_15

    .line 1120
    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_7

    .line 1123
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_15

    .line 1127
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_15

    .line 1128
    const-string v1, "android.intent.category.HOME"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_7

    .line 1154
    .end local v11           #homeIntent:Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_4

    .line 1160
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 1164
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    const/4 v10, 0x1

    .line 1166
    .local v10, bIsATTSku:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_1a

    if-eqz v10, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    if-eqz v1, :cond_1d

    if-nez v10, :cond_1d

    :cond_1b
    const/4 v14, 0x1

    .line 1172
    .local v14, keepScreenOn:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v14, v1, :cond_4

    .line 1173
    if-eqz v14, :cond_1e

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_3

    .line 1164
    .end local v10           #bIsATTSku:Z
    .end local v14           #keepScreenOn:Z
    :cond_1c
    const/4 v10, 0x0

    goto :goto_8

    .line 1166
    .restart local v10       #bIsATTSku:Z
    :cond_1d
    const/4 v14, 0x0

    goto :goto_9

    .line 1176
    .restart local v14       #keepScreenOn:Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method updateTwilightLocked()V
    .locals 17

    .prologue
    .line 1449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-nez v4, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1452
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1455
    .local v2, currentTime:J
    new-instance v1, Lcom/android/server/TwilightCalculator;

    invoke-direct {v1}, Lcom/android/server/TwilightCalculator;-><init>()V

    .line 1456
    .local v1, tw:Lcom/android/server/TwilightCalculator;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 1458
    iget v4, v1, Lcom/android/server/TwilightCalculator;->mState:I

    if-nez v4, :cond_2

    .line 1459
    const/4 v14, 0x0

    .line 1465
    .local v14, nightMode:Z
    :goto_1
    const-wide/16 v12, 0x0

    .line 1466
    .local v12, nextUpdate:J
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1468
    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v12, v2, v4

    .line 1487
    :goto_2
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.android.server.action.UPDATE_NIGHT_MODE"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v16, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1490
    .local v15, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12, v13, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1493
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_0

    .line 1461
    .end local v12           #nextUpdate:J
    .end local v14           #nightMode:Z
    .end local v15           #pendingIntent:Landroid/app/PendingIntent;
    .end local v16           #updateIntent:Landroid/content/Intent;
    :cond_2
    const/4 v14, 0x1

    .restart local v14       #nightMode:Z
    goto :goto_1

    .line 1470
    .restart local v12       #nextUpdate:J
    :cond_3
    iget v11, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 1472
    .local v11, mLastTwilightState:I
    const-wide/32 v4, 0xea60

    add-long/2addr v12, v4

    .line 1473
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 1475
    const-wide/32 v4, 0x5265c00

    add-long v5, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 1480
    :cond_4
    const/4 v4, 0x1

    if-ne v11, v4, :cond_5

    .line 1481
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    add-long/2addr v12, v4

    goto :goto_2

    .line 1483
    :cond_5
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    add-long/2addr v12, v4

    goto :goto_2
.end method
