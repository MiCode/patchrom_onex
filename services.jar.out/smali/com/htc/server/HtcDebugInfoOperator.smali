.class Lcom/htc/server/HtcDebugInfoOperator;
.super Lcom/htc/server/HtcInfoOperator;
.source "HtcDebugInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;,
        Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final COL_SC_APPNAME:Ljava/lang/String; = "shortcut_app_name"

.field private static final COL_SC_CLASSNAME:Ljava/lang/String; = "shortcut_class_name"

.field private static final COL_SC_ID:Ljava/lang/String; = "shortcut_id"

.field private static final COL_SC_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field private static final DB_SHORTCUT_LIST:Ljava/lang/String; = "shortcut_list"

.field private static final DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final URI_SHORTCUT_LIST:Landroid/net/Uri; = null

.field private static final URI_SHORTCUT_VISIBILITY:Landroid/net/Uri; = null

.field private static final mDebugInfoDiffPath:Ljava/lang/String; = "/data/system/deviceinfo_debug"


# instance fields
.field private keyguardManager:Landroid/app/KeyguardManager;

.field private final mContext:Landroid/content/Context;

.field private mForegroundProcess:Ljava/lang/String;

.field private mLastForegroundUpdateTime:J

.field private mProcessInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/HtcDeviceInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/os/ProcessStats;

.field private mScreenOn:Z

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/os/PowerManager;Landroid/content/Context;)V
    .locals 3
    .parameter "pm"
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/server/HtcInfoOperator;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 73
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/server/HtcDebugInfoOperator;->deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 74
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 80
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 83
    :cond_1
    iput-object p2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/app/KeyguardManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/server/HtcDebugInfoOperator;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->getShortcutVisibility(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 418
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->setTypeCurrentLocation()V

    .line 419
    return-object v0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 575
    const/4 v1, -0x1

    .line 576
    .local v1, index:I
    const/4 v2, -0x1

    .line 577
    .local v2, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 578
    if-ltz v1, :cond_0

    .line 580
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 587
    :goto_0
    return v2

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 620
    const/4 v1, -0x1

    .line 621
    .local v1, index:I
    const/4 v2, 0x0

    .line 622
    .local v2, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 623
    if-ltz v1, :cond_0

    .line 625
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 632
    :goto_0
    return-object v2

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 591
    if-nez p1, :cond_0

    .line 592
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Client statistic: context null, getShortcutInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-object v2

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 596
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v10, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;>;"
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    :cond_1
    const-string v0, "shortcut_app_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, appName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, className:Ljava/lang/String;
    new-instance v0, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;

    invoke-direct {v0, v7, v6}, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 611
    .end local v6           #appName:Ljava/lang/String;
    .end local v7           #className:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_4

    .line 612
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_3
    :goto_1
    const/4 v8, 0x0

    :cond_4
    move-object v2, v10

    .line 616
    goto :goto_0

    .line 608
    :catch_0
    move-exception v9

    .line 609
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    if-eqz v8, :cond_4

    .line 612
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 611
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 612
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_5
    const/4 v8, 0x0

    .line 611
    :cond_6
    throw v0
.end method

.method private getShortcutVisibility(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 553
    if-nez p1, :cond_0

    .line 554
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "Client statistic: context null, getShortcutVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return v9

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/server/HtcDebugInfoOperator;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 558
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 560
    .local v8, visible:Z
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "shortcut_visibility"

    invoke-direct {p0, v6, v0}, Lcom/htc/server/HtcDebugInfoOperator;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_4

    const/4 v8, 0x1

    .line 566
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_2
    :goto_2
    const/4 v6, 0x0

    :cond_3
    move v9, v8

    .line 571
    goto :goto_0

    :cond_4
    move v8, v9

    .line 561
    goto :goto_1

    .line 563
    :catch_0
    move-exception v7

    .line 564
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutVisibility() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    if-eqz v6, :cond_3

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 566
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_5
    const/4 v6, 0x0

    .line 566
    :cond_6
    throw v0
.end method

.method private getSimState()I
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method private getWeatherRes(Landroid/content/Context;)Lcom/htc/weather/StateResources;
    .locals 3
    .parameter "context"

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Client statistic: context null, getWeatherRes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    .line 411
    :cond_0
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    .line 412
    .local v0, mStateResources:Lcom/htc/weather/StateResources;
    invoke-virtual {v0, p1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateTimeInfo(Ljava/lang/String;)V
    .locals 14
    .parameter "processName"

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 96
    .local v8, now:J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v10, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v3, v8, v10

    .line 97
    .local v3, duration:J
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v11, v3

    iput-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 98
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v8, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 100
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v10, v10, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 101
    .local v7, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 102
    .local v6, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 104
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 107
    .local v1, CPUTime:J
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 108
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_1

    .line 109
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 111
    :cond_1
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 129
    .end local v1           #CPUTime:J
    :goto_1
    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 130
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    iget-object v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v6, v0

    .line 131
    if-eqz v6, :cond_2

    .line 132
    iget-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v12, v3

    iput-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 134
    :cond_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 112
    :cond_3
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 114
    iget-wide v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    sub-long v3, v8, v10

    .line 115
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4

    .line 116
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 118
    :cond_4
    iput-wide v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    goto :goto_1

    .line 121
    :cond_5
    iget-object v10, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 122
    .restart local v1       #CPUTime:J
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    sub-long v3, v1, v10

    .line 123
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    .line 124
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 126
    :cond_6
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    .line 137
    .end local v1           #CPUTime:J
    .end local v6           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_7
    return-void
.end method


# virtual methods
.method addANR(Ljava/lang/String;)V
    .locals 4
    .parameter "processName"

    .prologue
    .line 140
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 143
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 144
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    .line 145
    :cond_0
    return-void
.end method

.method addCrash(Ljava/lang/String;)V
    .locals 4
    .parameter "processName"

    .prologue
    .line 148
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_CRASH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 151
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 152
    iget v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 153
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 154
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v2

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKernelCrash()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method addRadioCrash()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method addSentErrorCount(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 92
    return-void
.end method

.method addSystemCrash()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method flush()V
    .locals 4

    .prologue
    .line 171
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "FLUSH, file path = /data/system/deviceinfo_debug"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->getSimState()I

    move-result v2

    iput v2, v1, Landroid/app/HtcDeviceInfo;->simState:I

    .line 174
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v2}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v0

    .line 175
    .local v0, diffInfo:Landroid/app/HtcDeviceInfo;
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logLocationInfo()V

    .line 176
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logStatusbarInfo()V

    .line 177
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logWallpaperInfo()V

    .line 178
    invoke-virtual {p0}, Lcom/htc/server/HtcDebugInfoOperator;->logLockscreenShortcutInfo()V

    .line 179
    sget-wide v1, Lcom/htc/server/HtcDebugInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Landroid/app/HtcDeviceInfo;->flush(J)Z

    .line 180
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 182
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v3, "/data/system/deviceinfo_debug"

    invoke-virtual {v1, v3}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 183
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method flushClientStatistic()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method flushUsageTime()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method getAppAliveTime(Ljava/lang/String;)J
    .locals 4
    .parameter "processName"

    .prologue
    .line 299
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 301
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v0, :cond_0

    .line 302
    iget-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    monitor-exit v3

    .line 305
    :goto_0
    return-wide v1

    .line 304
    :cond_0
    monitor-exit v3

    .line 305
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 304
    .end local v0           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method killAllProc()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 251
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "KILL_ALL_PROC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v2, v2, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 254
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    const/4 v0, 0x0

    .line 255
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 257
    .restart local v0       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 258
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 259
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method killProc(Ljava/lang/String;)V
    .locals 5
    .parameter "processName"

    .prologue
    const/4 v4, -0x1

    .line 235
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL_PROC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v1, v1, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 237
    .local v0, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/server/HtcDebugInfoOperator;->update(Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_0

    .line 239
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 240
    iput v4, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 241
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit v2

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logHWInfoTime()V
    .locals 2

    .prologue
    .line 355
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method logInstalledApp()V
    .locals 11

    .prologue
    .line 309
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v8, :cond_1

    .line 310
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "Client statistic: context null, logInstalledApp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v6, plainText:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 317
    .local v7, pm:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 321
    :try_start_0
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, j:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 324
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    .line 325
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, label:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .end local v5           #label:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 331
    const/4 v8, 0x0

    const-string v9, ";"

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .local v1, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_4

    .line 336
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 341
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    const/4 v6, 0x0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 344
    .end local v0           #aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #cipherText:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #j:I
    :catch_1
    move-exception v2

    .line 345
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "logInstalledApp fail"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method logLocationInfo()V
    .locals 14

    .prologue
    .line 359
    iget-object v12, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v12, :cond_0

    .line 360
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "Client statistic: context null, logLocationInfo"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v11, "unknown"

    .local v11, weather:Ljava/lang/String;
    const-string v5, "unknown"

    .local v5, location:Ljava/lang/String;
    const-string v1, "unknown"

    .local v1, city:Ljava/lang/String;
    const-string v6, "unknown"

    .local v6, network:Ljava/lang/String;
    const-string v10, "unknown"

    .line 365
    .local v10, time:Ljava/lang/String;
    :try_start_0
    const-string v12, "gsm.operator.alpha"

    const-string v13, "unknown"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-direct {p0}, Lcom/htc/server/HtcDebugInfoOperator;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v8

    .line 367
    .local v8, req:Lcom/htc/util/weather/WSPRequest;
    if-eqz v8, :cond_3

    .line 368
    iget-object v12, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v2

    .line 369
    .local v2, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 371
    iget-object v12, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/htc/server/HtcDebugInfoOperator;->getWeatherRes(Landroid/content/Context;)Lcom/htc/weather/StateResources;

    move-result-object v9

    .line 372
    .local v9, res:Lcom/htc/weather/StateResources;
    if-eqz v9, :cond_5

    .line 373
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 374
    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 375
    const-string v11, "unknown"

    .line 380
    .end local v9           #res:Lcom/htc/weather/StateResources;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 381
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    :cond_2
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 384
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 392
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    .end local v8           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_3
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 393
    .local v7, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 395
    .local v0, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_4

    .line 397
    sget-object v12, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v12, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 378
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v7           #plainText:Ljava/lang/StringBuilder;
    .restart local v2       #data:Lcom/htc/util/weather/WSPPData;
    .restart local v8       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v9       #res:Lcom/htc/weather/StateResources;
    :cond_5
    :try_start_2
    const-string v11, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 388
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    .end local v8           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v9           #res:Lcom/htc/weather/StateResources;
    :catch_0
    move-exception v4

    .line 389
    .local v4, ex:Ljava/lang/Exception;
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "logLocationInfo occures exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 399
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v7       #plainText:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 400
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "encrypt exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 402
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    const/4 v7, 0x0

    throw v12
.end method

.method logLockscreenShortcutInfo()V
    .locals 4

    .prologue
    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 507
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "Client statistic: context null, logLockscreenShortcutInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    move-result-object v1

    .line 511
    .local v1, threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    new-instance v2, Lcom/htc/server/HtcDebugInfoOperator$2;

    invoke-direct {v2, p0}, Lcom/htc/server/HtcDebugInfoOperator$2;-><init>(Lcom/htc/server/HtcDebugInfoOperator;)V

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    .end local v1           #threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "logLockscreenShortcutInfo exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method logSWInfoTime()V
    .locals 2

    .prologue
    .line 351
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method logStatusbarInfo()V
    .locals 4

    .prologue
    .line 424
    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->getInstance()Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;

    move-result-object v1

    .line 425
    .local v1, threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    new-instance v2, Lcom/htc/server/HtcDebugInfoOperator$1;

    invoke-direct {v2, p0}, Lcom/htc/server/HtcDebugInfoOperator$1;-><init>(Lcom/htc/server/HtcDebugInfoOperator;)V

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v1           #threadUtil:Lcom/htc/server/HtcDebugInfoOperator$ThreadUtil;
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "logStatusbarInfo exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method logWallpaperInfo()V
    .locals 8

    .prologue
    .line 467
    :try_start_0
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 468
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "Client statistic: context null, logWallpaperInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 473
    .local v0, cipherText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 474
    .local v3, mWallpaperComponent:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 475
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 477
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 478
    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 479
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 480
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v2           #label:Ljava/lang/CharSequence;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1

    .line 492
    sget-object v6, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v6, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    :cond_1
    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    .line 483
    .restart local v2       #label:Ljava/lang/CharSequence;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 499
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #mWallpaperComponent:Landroid/content/ComponentName;
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v5           #plainText:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "logWallpaperInfo exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 486
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v3       #mWallpaperComponent:Landroid/content/ComponentName;
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v5       #plainText:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #mWallpaperComponent:Landroid/content/ComponentName;
    const-string v6, "android"

    const-string v7, "ImageWallpaper"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .restart local v3       #mWallpaperComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 494
    :catch_1
    move-exception v1

    .line 495
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "logWallpaperInfo exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 497
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const/4 v5, 0x0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "RESET "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 269
    return-void
.end method

.method screenOff()V
    .locals 8

    .prologue
    .line 287
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_OFF pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_0

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 290
    .local v2, now_off:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 291
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 293
    .end local v0           #duration:J
    .end local v2           #now_off:J
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 294
    return-void

    .line 287
    :cond_1
    const-string v4, "off"

    goto :goto_0
.end method

.method screenOn()V
    .locals 8

    .prologue
    .line 274
    const-string v5, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCREEN_ON pre="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_1

    const-string v4, "on"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lastOn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v6, v6, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 276
    .local v2, now_on:J
    iget-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v4, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    sub-long v0, v2, v4

    .line 278
    .local v0, duration:J
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 280
    .end local v0           #duration:J
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mScreenOn:Z

    .line 281
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v2, v4, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    .line 282
    return-void

    .line 274
    .end local v2           #now_on:J
    :cond_1
    const-string v4, "off"

    goto :goto_0
.end method

.method setTop(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 197
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDebugInfoOperator;->mLastForegroundUpdateTime:J

    .line 199
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    .line 200
    return-void
.end method

.method startProc(IILjava/lang/String;)V
    .locals 7
    .parameter "pid"
    .parameter "group"
    .parameter "processName"

    .prologue
    const-wide/16 v4, 0x0

    .line 205
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 206
    .local v1, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v1, :cond_1

    .line 207
    new-instance v1, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {v1}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 208
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iput-object p3, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 209
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 210
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 211
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 212
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_0
    iget-object v4, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 219
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v1, v0

    .line 220
    if-eqz v1, :cond_0

    .line 221
    const-string v3, "HtcDeviceInfoManager"

    const-string v5, "process info already exist. why?"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    new-instance v2, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v2}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_1
    iput-object p3, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 225
    iput p1, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 226
    iput p2, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 227
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 228
    iget-object v3, p0, Lcom/htc/server/HtcDebugInfoOperator;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    return-void

    .line 214
    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_1
    iput p1, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 215
    iput p2, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 216
    iput-wide v4, v1, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v2       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v1       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    goto :goto_1
.end method

.method update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 189
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDebugInfoOperator;->mForegroundProcess:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDebugInfoOperator;->updateTimeInfo(Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 192
    return-void
.end method
