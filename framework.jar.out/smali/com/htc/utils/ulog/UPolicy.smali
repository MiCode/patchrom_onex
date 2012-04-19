.class public final Lcom/htc/utils/ulog/UPolicy;
.super Ljava/lang/Object;
.source "UPolicy.java"

# interfaces
.implements Lcom/htc/utils/ulog/Policy;


# static fields
.field private static final APPID_SENSE_DOT_COM:Ljava/lang/String; = "sense.com"

#the value of this static final field might be set in the static constructor
.field private static final IS_DEBUG_ULOG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_EFFECTIVE_DATE_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_LESS_THAN_SENSE_40:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_POLICY_ENABLED:Z = false

.field public static final KEY_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field public static final KEY_DUE_DATE:Ljava/lang/String; = "due_date"

.field public static final KEY_SECOND_SWITCH_OF_ERROR_REPORT:Ljava/lang/String; = "second_switch_of_error_report"

.field public static final KEY_SECOND_SWITCH_OF_USER_PROFILING:Ljava/lang/String; = "second_switch_of_usage_report"

.field public static final KEY_SETTINGS_ERROR_REPORT:Ljava/lang/String; = "settings_error_report"

.field public static final KEY_SETTINGS_SENSE_DOT_COM:Ljava/lang/String; = "settings_sense_dot_com"

.field public static final KEY_SETTINGS_USER_PROFILING:Ljava/lang/String; = "settings_user_profiling"

.field private static final TAG:Ljava/lang/String; = "UPolicy"

.field private static sInit:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sPolicy:Landroid/os/Bundle;

.field private static final sRemoteCallback:Landroid/os/IRemoteCallback;

.field private static sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# instance fields
.field private mAllPolicies:Landroid/os/Bundle;

.field private mAppId:Ljava/lang/String;

.field private mAppPolicies:Landroid/os/Bundle;

.field private mIsSenseDotComAppId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    .line 43
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense30()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_EFFECTIVE_DATE_ENABLED:Z

    .line 44
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense40()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    .line 45
    const-string/jumbo v0, "ulog.enable_logcat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    .line 270
    sput-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    .line 276
    new-instance v0, Lcom/htc/utils/ulog/UPolicy$1;

    invoke-direct {v0}, Lcom/htc/utils/ulog/UPolicy$1;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sRemoteCallback:Landroid/os/IRemoteCallback;

    return-void

    :cond_1
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "appid"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iput-object p1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "sense.com"

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/utils/ulog/UPolicy;->mIsSenseDotComAppId:Z

    .line 70
    :cond_2
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v0, :cond_3

    .line 71
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 72
    :cond_3
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v0, :cond_4

    .line 73
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->setPolicies()V

    .line 75
    :cond_4
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v0, :cond_5

    const-string v0, "UPolicy"

    const-string v1, "[canLogUserProfiling] enabled in engineering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_5
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v0, :cond_0

    const-string v0, "UPolicy"

    const-string v1, "[canLogUserProfiling] normal case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    return-object p0
.end method

.method private static canLog(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 11
    .parameter "appBundle"
    .parameter "category"

    .prologue
    const/4 v4, 0x0

    .line 310
    if-eqz p0, :cond_4

    .line 311
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 312
    .local v0, cateBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 313
    const-string v7, "enable"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 314
    .local v6, keyBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 315
    const-string v7, "due_date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 316
    .local v2, dueDate:J
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    .line 317
    .local v4, expired:Z
    :cond_0
    :goto_0
    const-string v7, "1"

    const-string v8, "enable"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 318
    .local v5, isEnabled:Z
    const/4 v1, 0x0

    .line 319
    .local v1, defaultValue:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v7, "default_value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 321
    :cond_1
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v7, :cond_2

    const-string v7, "UPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[canLog] category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", due date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", default value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0           #cateBundle:Landroid/os/Bundle;
    .end local v1           #defaultValue:Ljava/lang/String;
    .end local v2           #dueDate:J
    .end local v4           #expired:Z
    .end local v5           #isEnabled:Z
    .end local v6           #keyBundle:Landroid/os/Bundle;
    :cond_2
    :goto_1
    return v5

    .line 316
    .restart local v0       #cateBundle:Landroid/os/Bundle;
    .restart local v2       #dueDate:J
    .restart local v6       #keyBundle:Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-gez v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .end local v0           #cateBundle:Landroid/os/Bundle;
    .end local v2           #dueDate:J
    .end local v6           #keyBundle:Landroid/os/Bundle;
    :cond_4
    move v5, v4

    .line 328
    goto :goto_1
.end method

.method private canLog(Ljava/lang/String;)Z
    .locals 2
    .parameter "category"

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 178
    .local v0, appPolicy:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    .line 180
    .end local v0           #appPolicy:Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static canLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "appid"
    .parameter "category"

    .prologue
    .line 332
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    .line 334
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 335
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 336
    .local v1, appBundle:Landroid/os/Bundle;
    invoke-static {v1, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    .line 339
    .end local v0           #allPolicy:Landroid/os/Bundle;
    .end local v1           #appBundle:Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static canLogErrorReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 347
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_2

    .line 350
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 351
    :cond_2
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportSettingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static canLogUserProfiling(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 364
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_2

    .line 367
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 368
    :cond_2
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isEnabledByUser(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized checkLatestPolicy()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    .line 186
    const-string v0, "UPolicy"

    const-string v1, "[checkLatestPolicy] policy changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->setPolicies()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static init()V
    .locals 5

    .prologue
    .line 286
    sget-object v3, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 287
    :try_start_0
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_0

    .line 288
    const-string/jumbo v2, "userbehavior"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 289
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v2

    sput-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    .line 291
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 293
    :try_start_1
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    sget-object v4, Lcom/htc/utils/ulog/UPolicy;->sRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v4}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->registerPolicyListener(Landroid/os/IRemoteCallback;)Z

    .line 294
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-interface {v2}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->getPolicy()Landroid/os/Bundle;

    move-result-object v2

    sput-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_0
    :try_start_2
    const-string v2, "UPolicy"

    const-string v4, "IUserBehaviorLoggingService reference is gotten !"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    .line 306
    :cond_0
    :goto_1
    monitor-exit v3

    .line 307
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 302
    :cond_1
    :try_start_3
    const-string v2, "UPolicy"

    const-string v4, "IUserBehaviorLoggingService reference is null !"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static isEnabledByUser(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 207
    move-object v0, p0

    .line 208
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 209
    const-string/jumbo v2, "settings_user_profiling"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 210
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings_user_profiling value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isErrorReportSettingEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 197
    move-object v0, p0

    .line 198
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v2, "settings_error_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 200
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings_error_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 232
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    if-eqz v2, :cond_2

    .line 233
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfErrorReportEnabled, ver < 4.0] always return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    const/4 v1, 0x1

    .line 245
    :cond_1
    :goto_0
    return v1

    .line 237
    :cond_2
    move-object v0, p0

    .line 238
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 239
    const-string/jumbo v2, "second_switch_of_error_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 240
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_1

    const-string v2, "[isSecondSwitchOfErrorReportEnabled, ver >= 4.0] UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "second_switch_of_error_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v1           #b:Z
    :cond_3
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_4

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfErrorReportEnabled, ver >= 4.0] turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 254
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    if-eqz v2, :cond_2

    .line 255
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfUserProfilingEnabled, ver < 4.0] always return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const/4 v1, 0x1

    .line 266
    :cond_1
    :goto_0
    return v1

    .line 259
    :cond_2
    move-object v0, p0

    .line 260
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 261
    const-string/jumbo v2, "second_switch_of_usage_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 262
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_1

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSecondSwitchOfUserProfilingEnabled, ver >= 4.0] second_switch_of_usage_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v1           #b:Z
    :cond_3
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_4

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfUserProfilingEnabled, ver > 4.0] turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSenseDotComEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 217
    move-object v0, p0

    .line 218
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 219
    const-string/jumbo v2, "settings_sense_dot_com"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 220
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings_sense_dot_com value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPolicies()V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    .line 168
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public canLogErrorReport(Ljava/lang/String;)Z
    .locals 2
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_2

    .line 89
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 90
    :cond_2
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 92
    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportSettingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public canLogUserProfiling(Ljava/lang/String;)Z
    .locals 2
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 105
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v1, :cond_2

    .line 108
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 109
    :cond_2
    sget-boolean v1, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 114
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isEnabledByUser(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "category"
    .parameter "key"

    .prologue
    .line 127
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v7, :cond_1

    .line 128
    const-string v6, ""

    .line 159
    :cond_0
    :goto_0
    return-object v6

    .line 129
    :cond_1
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v7, :cond_2

    .line 130
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 131
    :cond_2
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v7, :cond_5

    .line 132
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 134
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 135
    .local v0, appPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 137
    .local v1, cateBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 139
    .local v5, keyBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_5

    .line 140
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, value:Ljava/lang/String;
    const-string v7, "due_date"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 144
    .local v3, dueDate:J
    const/4 v2, 0x0

    .line 145
    .local v2, defaultValue:Ljava/lang/String;
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 146
    const-string v7, "default_value"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 147
    move-object v6, v2

    .line 149
    :cond_3
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v7, :cond_4

    const-string v7, "UPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", due date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", default value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_4
    if-nez v6, :cond_0

    const-string v6, ""

    goto/16 :goto_0

    .line 159
    .end local v0           #appPolicy:Landroid/os/Bundle;
    .end local v1           #cateBundle:Landroid/os/Bundle;
    .end local v2           #defaultValue:Ljava/lang/String;
    .end local v3           #dueDate:J
    .end local v5           #keyBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto/16 :goto_0
.end method
