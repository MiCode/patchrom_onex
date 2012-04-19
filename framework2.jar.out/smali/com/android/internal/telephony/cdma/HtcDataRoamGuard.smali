.class public Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x2

.field private static final EVENT_GET_PREF_SYSTEM:I = 0x3

.field private static final EVENT_PENDING_AFTER_RADIO_READY:I = 0x2

.field private static final EVENT_RADIO_READY:I = 0x1

.field private static final EVENT_SET_PREF_SYSTEM:I = 0x4

.field public static final FIELD_ROAM_GUARD_DOMESTIC:I = 0x0

.field public static final FIELD_ROAM_GUARD_INTERNATIONAL:I = 0x1

.field public static final FIELD_ROAM_SETTING_DOMESTIC:I = 0x2

.field public static final FIELD_ROAM_SETTING_INTERNATIONAL:I = 0x3

.field public static final FIELD_ROAM_TOTAL:I = 0x4

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x3

.field public static final MODE_BOTH_DATA_ROAMING_ALLOW:I = 0x6

.field public static final MODE_BOTH_DATA_ROAMING_NOT_ALLOW:I = 0x0

.field public static final MODE_CONNECTION_ACCEPTED_BY_USER:I = 0x40000

.field private static final MODE_CONNECTION_MASK:I = 0x40000

.field public static final MODE_DATA_CONNED:I = 0x300

.field public static final MODE_DATA_CONNED_REQUEST_DISC:I = 0x400

.field public static final MODE_DATA_CONNED_REQUEST_DISC_CONN:I = 0x500

.field private static final MODE_DATA_MASK:I = 0xf00

.field public static final MODE_DATA_REQUEST_CONN:I = 0x100

.field public static final MODE_DATA_REQUEST_CONN_DISC:I = 0x200

.field private static final MODE_DATA_ROAMING_MASK:I = 0x6

.field private static final MODE_DATA_ROAM_GUARD_SETTING_MASK:I = 0x60

.field public static final MODE_DIALOG_DISPLAY:I = 0x100000

.field public static final MODE_DIALOG_HISTORY_ACCEPTED:I = 0x80000

.field private static final MODE_DIALOG_HISTORY_MASK:I = 0x80000

.field private static final MODE_DIALOG_MASK:I = 0x100000

.field public static final MODE_DOMESTIC_DATA_ROAMING_ALLOW:I = 0x2

.field public static final MODE_INTERNATIONAL_DATA_ROAMING_ALLOW:I = 0x4

.field public static final MODE_MOBILE_ALLOW_ENABLE:I = 0x800000

.field private static final MODE_MOBILE_ALLOW_MASK:I = 0x800000

.field public static final MODE_NETWORK_DOMESTIC_ROAMING:I = 0x4000000

.field public static final MODE_NETWORK_EXTERNAL_ROAMING:I = 0x2000000

.field public static final MODE_NETWORK_HOME:I = 0x0

.field public static final MODE_NETWORK_INTERNAL_ROAMING:I = 0x1000000

.field public static final MODE_NETWORK_INTERNATIONAL_ROAMING:I = 0x8000000

.field private static final MODE_NETWORK_MASK:I = 0xf000000

.field public static final MODE_ROAMING_ALLOW:I = 0x40000000

.field private static final MODE_ROAMING_MASK:I = 0x40000000

.field public static final MODE_SETTING_ALWAYS_ASK:I = 0x10000000

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_DISABLE:I = 0x0

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_ENABLE:I = 0x60

.field public static final MODE_SETTING_DEFAULT:I = 0x0

.field public static final MODE_SETTING_DOMESTIC_DATA_ROAM_GUARD_ENABLE:I = 0x20

.field public static final MODE_SETTING_INTERNATIONAL_DATA_ROAM_GUARD_ENABLE:I = 0x40

.field private static final MODE_SETTING_MASK:I = 0x30000000

.field public static final MODE_SETTING_NEVER_ASK:I = 0x20000000

.field private static final MODE_SYSTEM_MASK:I = -0x80000000

.field public static final MODE_SYSTEM_NONE_SWITCH_NETWORK:I = -0x80000000

.field public static final MODE_SYSTEM_QUERIED:I = 0x50000000

.field private static final MODE_SYSTEM_QUERIED_MASK:I = 0x50000000

.field public static final MODE_USER_ACCEPTED:I = 0x200000

.field private static final MODE_USER_MASK:I = 0x600000

.field public static final MODE_USER_REJECTED:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_Prefix:Ljava/lang/String; = "DGRD2"


# instance fields
.field private final Setting_DATA_ROAMING_GUARD_to_MODE:[I

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mNotification:[I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mRoamingType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-array v1, v6, [I

    aput v3, v1, v3

    const/high16 v2, 0x1000

    aput v2, v1, v4

    const/high16 v2, 0x2000

    aput v2, v1, v5

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    .line 237
    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    .line 899
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    .line 1176
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 52
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    const-string v1, "New HtcDataRoamGuard"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 59
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 62
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 65
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 69
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    .line 86
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 90
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial HtcDataRoamGuard mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    return-void

    .line 72
    :cond_6
    const/4 v0, 0x0

    .line 74
    .local v0, dataRoamSetting:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 79
    const/4 v0, 0x0

    .line 81
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_1

    .line 899
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamGuardSettingsChange(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamAllowSettingsChange(ZZ)V

    return-void
.end method

.method private blockedBySprintDataRoamGuard()Z
    .locals 4

    .prologue
    const/high16 v3, 0xf00

    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, blocking:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    const-string v1, "Domestic roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x1

    .line 1062
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1063
    const-string v1, "international roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1064
    const/4 v0, 0x1

    .line 1067
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedBySprintDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1068
    return v0
.end method

.method private createNotificationObject(IZ)[I
    .locals 10
    .parameter "newMode"
    .parameter "turnRoamAllowOff"

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1470
    const/high16 v6, 0x60

    and-int/2addr v6, p1

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_0

    move v0, v4

    .line 1472
    .local v0, disabledByCancel:Z
    :goto_0
    const/4 v2, 0x0

    .line 1473
    .local v2, displayDialog:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1474
    and-int v6, p1, v8

    if-ne v6, v8, :cond_1

    move v2, v4

    .line 1479
    :goto_1
    and-int v6, p1, v9

    if-ne v6, v9, :cond_4

    move v1, v4

    .line 1480
    .local v1, discDisplayed:Z
    :goto_2
    const/4 v6, 0x4

    new-array v3, v6, [I

    .line 1481
    .local v3, notifications:[I
    if-eqz v0, :cond_5

    move v6, v4

    :goto_3
    aput v6, v3, v5

    .line 1482
    if-eqz v2, :cond_6

    move v6, v4

    :goto_4
    aput v6, v3, v4

    .line 1483
    const/4 v7, 0x2

    if-eqz v1, :cond_7

    move v6, v4

    :goto_5
    aput v6, v3, v7

    .line 1484
    const/4 v6, 0x3

    if-eqz p2, :cond_8

    :goto_6
    aput v4, v3, v6

    .line 1485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabledByCancel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",displayDialog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",discDisplayed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",turnRoamAllowOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1486
    return-object v3

    .end local v0           #disabledByCancel:Z
    .end local v1           #discDisplayed:Z
    .end local v2           #displayDialog:Z
    .end local v3           #notifications:[I
    :cond_0
    move v0, v5

    .line 1470
    goto :goto_0

    .restart local v0       #disabledByCancel:Z
    .restart local v2       #displayDialog:Z
    :cond_1
    move v2, v5

    .line 1474
    goto :goto_1

    .line 1476
    :cond_2
    and-int v6, p1, v8

    if-ne v6, v8, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_7
    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_7

    :cond_4
    move v1, v5

    .line 1479
    goto :goto_2

    .restart local v1       #discDisplayed:Z
    .restart local v3       #notifications:[I
    :cond_5
    move v6, v5

    .line 1481
    goto :goto_3

    :cond_6
    move v6, v5

    .line 1482
    goto :goto_4

    :cond_7
    move v6, v5

    .line 1483
    goto :goto_5

    :cond_8
    move v4, v5

    .line 1484
    goto :goto_6
.end method

.method private getEnhancedRoamingSettings(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1619
    const/4 v0, 0x0

    .line 1620
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting enhanced roaming with field index which is out of range. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->logE(Ljava/lang/String;)V

    .line 1651
    :goto_0
    return v0

    .line 1623
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1626
    goto :goto_0

    .line 1629
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1632
    goto :goto_0

    .line 1635
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1638
    goto :goto_0

    .line 1641
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1644
    goto :goto_0

    .line 1620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private haveSprintDataRoamAllowSettingsChange(ZZ)V
    .locals 11
    .parameter "allowDomRoam"
    .parameter "allowIntRoam"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x2

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    .line 810
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v5, 0x6

    .line 811
    .local v2, prevAllow:I
    const/4 v0, 0x0

    .line 812
    .local v0, currAllow:I
    if-eqz p1, :cond_0

    move v0, v4

    .line 813
    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 814
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 815
    if-ne v2, v0, :cond_2

    .line 897
    :goto_0
    return-void

    .line 820
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v5, v5, -0x7

    or-int v1, v5, v0

    .line 821
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 822
    const/4 v3, 0x0

    .line 823
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    const v5, -0x600001

    and-int/2addr v1, v5

    .line 824
    and-int/lit8 v5, v1, 0x6

    packed-switch v5, :pswitch_data_0

    .line 891
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 894
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowDomRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowIntRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 896
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 826
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :pswitch_1
    const/high16 v5, 0xf00

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 827
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v5, v4, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_8

    .line 829
    :cond_6
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 830
    and-int/2addr v1, v7

    .line 831
    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    .line 832
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 834
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 838
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 839
    and-int/2addr v1, v7

    goto :goto_1

    .line 844
    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_b

    .line 845
    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    .line 846
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 847
    and-int/2addr v1, v7

    .line 848
    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    .line 849
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 851
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 855
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 856
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 858
    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_3

    .line 859
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 860
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 864
    :pswitch_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v10, :cond_e

    .line 865
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_d

    .line 866
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 867
    and-int/2addr v1, v7

    .line 868
    and-int v4, v1, v9

    if-ne v4, v9, :cond_c

    .line 869
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 871
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 875
    :cond_d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 876
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 878
    :cond_e
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_3

    .line 879
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 880
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 884
    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 885
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 886
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private haveSprintDataRoamGuardSettingsChange(ZZ)V
    .locals 11
    .parameter "enableDomRoamGuard"
    .parameter "enableIntRoamGuard"

    .prologue
    const/high16 v10, 0x10

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 553
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v4, 0x60

    .line 554
    .local v2, prevGuard:I
    const/4 v0, 0x0

    .line 555
    .local v0, currGuard:I
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 556
    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x40

    .line 557
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 558
    if-ne v2, v0, :cond_2

    .line 630
    :goto_0
    return-void

    .line 563
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v4, v4, -0x61

    or-int v1, v4, v0

    .line 564
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 565
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 566
    sparse-switch v0, :sswitch_data_0

    .line 623
    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 625
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 629
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 568
    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 569
    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 571
    :cond_6
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 572
    and-int/2addr v1, v6

    .line 573
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 574
    or-int/2addr v1, v10

    goto :goto_1

    .line 579
    :cond_7
    and-int/2addr v1, v6

    goto :goto_1

    .line 584
    :sswitch_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_9

    .line 585
    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_8

    .line 586
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 587
    and-int/2addr v1, v6

    .line 588
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 589
    or-int/2addr v1, v10

    goto :goto_1

    .line 594
    :cond_8
    and-int/2addr v1, v6

    goto :goto_1

    .line 597
    :cond_9
    and-int/2addr v1, v6

    .line 599
    goto :goto_1

    .line 601
    :sswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 602
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 603
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 604
    and-int/2addr v1, v6

    .line 605
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 606
    or-int/2addr v1, v10

    goto/16 :goto_1

    .line 611
    :cond_a
    and-int/2addr v1, v6

    goto/16 :goto_1

    .line 614
    :cond_b
    and-int/2addr v1, v6

    .line 616
    goto/16 :goto_1

    .line 618
    :sswitch_3
    and-int/2addr v1, v6

    .line 619
    const v4, -0x600001

    and-int/2addr v1, v4

    goto/16 :goto_1

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private haveSprintERIupdate(IIZ)V
    .locals 11
    .parameter "eriId"
    .parameter "dataGuardRequest"
    .parameter "showRoamIcon"

    .prologue
    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const/4 v7, 0x0

    const v6, -0x100001

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, newNetworkArea:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingType()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "roamingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 393
    const/high16 v2, 0x800

    .line 403
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    .line 404
    .local v0, currNetworkArea:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",newNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 405
    if-ne v0, v2, :cond_4

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRG not support, ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 473
    :cond_1
    :goto_1
    return-void

    .line 394
    .end local v0           #currNetworkArea:I
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 395
    const/high16 v2, 0x400

    goto :goto_0

    .line 398
    :cond_3
    if-eqz p3, :cond_0

    .line 399
    const/high16 v2, 0x200

    goto :goto_0

    .line 413
    .restart local v0       #currNetworkArea:I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Domestic roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Domestic roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 419
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    .line 421
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 422
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 423
    sparse-switch v2, :sswitch_data_0

    .line 465
    :cond_5
    :goto_2
    invoke-direct {p0, v1, v3, v7, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 467
    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 471
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_1

    .line 425
    :sswitch_0
    and-int/2addr v1, v6

    .line 426
    and-int/2addr v1, v10

    .line 427
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 428
    goto :goto_2

    .line 430
    :sswitch_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 431
    and-int v4, v1, v8

    if-eq v4, v8, :cond_7

    .line 432
    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    .line 433
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 441
    :cond_7
    :goto_3
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 442
    const-string v4, "Domestic data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 443
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 437
    :cond_8
    const-string v4, "Domestic data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 438
    and-int/2addr v1, v6

    .line 439
    and-int/2addr v1, v10

    goto :goto_3

    .line 447
    :sswitch_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 448
    and-int v4, v1, v8

    if-eq v4, v8, :cond_9

    .line 449
    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    .line 450
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 458
    :cond_9
    :goto_4
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 459
    const-string v4, "international data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 460
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 454
    :cond_a
    const-string v4, "International data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 455
    and-int/2addr v1, v6

    .line 456
    and-int/2addr v1, v10

    goto :goto_4

    .line 423
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private haveSprintMobileAllowStatusChange(Z)V
    .locals 10
    .parameter "allowMobileData"

    .prologue
    const/high16 v9, 0x10

    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v8, -0x100001

    const/high16 v7, 0x4

    .line 694
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    .line 695
    .local v2, prevAllow:I
    if-eqz p1, :cond_0

    move v0, v3

    .line 696
    .local v0, currAllow:I
    :goto_0
    if-ne v2, v0, :cond_1

    .line 736
    :goto_1
    return-void

    .end local v0           #currAllow:I
    :cond_0
    move v0, v4

    .line 695
    goto :goto_0

    .line 700
    .restart local v0       #currAllow:I
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 701
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 702
    if-ne v0, v3, :cond_4

    .line 703
    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 730
    :cond_2
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 733
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 735
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_1

    .line 707
    :sswitch_1
    and-int/lit8 v3, v1, 0x20

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    .line 708
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 709
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 710
    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    .line 716
    :sswitch_2
    and-int/lit8 v3, v1, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_2

    .line 717
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 718
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 719
    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    .line 727
    :cond_4
    and-int/2addr v1, v8

    goto :goto_2

    .line 703
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isDataConnected(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 1490
    const/4 v0, 0x0

    .line 1491
    .local v0, isDataConnected:Z
    and-int/lit16 v1, p1, 0xf00

    sparse-switch v1, :sswitch_data_0

    .line 1498
    :goto_0
    return v0

    .line 1495
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1491
    nop

    :sswitch_data_0
    .sparse-switch
        0x300 -> :sswitch_0
        0x400 -> :sswitch_0
        0x500 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDataRoamGuardFunctionEnabled()Z
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, DRGSupport:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1363
    :goto_0
    return v0

    .line 1361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoamGuardSupported()Z
    .locals 4

    .prologue
    .line 1345
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v0

    .line 1346
    .local v0, eriCarrierId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1347
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    .line 1348
    const/4 v0, 0x3

    .line 1351
    :cond_0
    const/4 v1, 0x0

    .line 1352
    .local v1, supported:Z
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1353
    const/4 v1, 0x1

    .line 1355
    :cond_1
    return v1
.end method

.method private isDataRoaming(I)Z
    .locals 3
    .parameter "givenMode"

    .prologue
    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, dataRoam:Z
    and-int/lit16 v1, p1, 0xf00

    .line 1507
    .local v1, dataStatus:I
    const/16 v2, 0x300

    if-eq v1, v2, :cond_0

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    .line 1508
    :cond_0
    const/high16 v2, 0xf00

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    .line 1528
    :cond_1
    :goto_0
    return v0

    .line 1510
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1511
    const/high16 v2, 0x3000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 1512
    const/4 v0, 0x1

    goto :goto_0

    .line 1516
    :cond_2
    const/4 v0, 0x1

    .line 1518
    goto :goto_0

    .line 1520
    :sswitch_1
    const/4 v0, 0x1

    .line 1521
    goto :goto_0

    .line 1524
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1508
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 1659
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 1666
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return-void
.end method

.method private reEnableSprintGuardDialog(Z)V
    .locals 8
    .parameter "isReenableRejected"

    .prologue
    const/high16 v3, 0x60

    const/high16 v7, 0x10

    const v6, -0x100001

    const/high16 v5, 0x80

    const/4 v4, 0x0

    .line 1126
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1127
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1128
    .local v0, newMode:I
    if-eqz p1, :cond_3

    .line 1129
    and-int v2, v0, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 1130
    const v2, -0x600001

    and-int/2addr v0, v2

    .line 1131
    and-int/lit8 v2, v0, 0x60

    if-eqz v2, :cond_0

    .line 1132
    and-int/2addr v0, v6

    .line 1133
    and-int v2, v0, v5

    if-ne v2, v5, :cond_0

    .line 1134
    or-int/2addr v0, v7

    .line 1137
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1171
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1172
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1174
    .end local v0           #newMode:I
    :cond_2
    return-void

    .line 1141
    .restart local v0       #newMode:I
    :cond_3
    and-int v2, v0, v3

    if-nez v2, :cond_1

    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, tryEnableDialog:Z
    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 1162
    :cond_4
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_5

    .line 1163
    and-int v2, v0, v5

    if-ne v2, v5, :cond_5

    .line 1164
    and-int v2, v0, v6

    or-int v0, v2, v7

    .line 1167
    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_0

    .line 1147
    :sswitch_1
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 1148
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1149
    const/4 v1, 0x1

    goto :goto_1

    .line 1154
    :sswitch_2
    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 1155
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1156
    const/4 v1, 0x1

    goto :goto_1

    .line 1143
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1567
    const-string v0, "Initialize enhanced roaming."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_guard_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1577
    return-void
.end method

.method private storeSetting(I)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 1368
    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 1369
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1371
    :cond_0
    if-gez v0, :cond_1

    .line 1372
    const/4 v0, 0x0

    .line 1375
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1377
    return-void
.end method

.method private updateDataRoamingNotification(ILjava/lang/Boolean;)V
    .locals 7
    .parameter "newMode"
    .parameter "requestConnectionStatus"

    .prologue
    const v6, 0x42022

    const/4 v5, 0x0

    .line 1532
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v0

    .line 1533
    .local v0, origDataRoam:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v1

    .line 1534
    .local v1, updateDataRoam:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "origDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",updateDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1535
    if-eqz p2, :cond_0

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestConnectionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1539
    :cond_0
    if-eqz v1, :cond_1

    .line 1540
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    .line 1541
    const/4 v1, 0x0

    .line 1545
    :cond_1
    if-eq v0, v1, :cond_2

    .line 1546
    if-eqz v1, :cond_3

    .line 1548
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1562
    :cond_2
    :goto_0
    return-void

    .line 1555
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v6, v5, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updatePreferSystem(I)V
    .locals 11
    .parameter "statusCdmaRoamingMode"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0xf00

    const v8, -0x100001

    const/high16 v7, 0x80

    const/high16 v6, 0x4000

    .line 1193
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateSprintPreferSystem(I)V

    .line 1249
    :goto_0
    return-void

    .line 1197
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    .line 1198
    .local v0, currIsEnabled:Z
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    .line 1199
    .local v2, newMode:I
    if-eqz p1, :cond_1

    if-ne p1, v10, :cond_2

    .line 1201
    :cond_1
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    .line 1203
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    .line 1204
    .local v1, newIsEnabled:Z
    if-eq v0, v1, :cond_4

    .line 1205
    const/4 v3, 0x0

    .line 1207
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    if-eqz v1, :cond_7

    .line 1208
    const/high16 v4, 0x3000

    and-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 1243
    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v10, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1246
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1248
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1210
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :sswitch_0
    and-int v4, v2, v9

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_3

    .line 1211
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 1212
    and-int v4, v2, v7

    if-ne v4, v7, :cond_5

    .line 1213
    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    .line 1216
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1220
    :sswitch_1
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    .line 1221
    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    .line 1222
    and-int v4, v2, v7

    if-ne v4, v7, :cond_6

    .line 1223
    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    .line 1226
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1230
    :sswitch_2
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    .line 1231
    and-int v4, v2, v6

    if-eq v4, v6, :cond_3

    .line 1232
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1239
    :cond_7
    const v4, -0x600001

    and-int/2addr v2, v4

    .line 1240
    and-int/2addr v2, v8

    .line 1241
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1208
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateSprintPreferSystem(I)V
    .locals 11
    .parameter "statusCdmaRoamingMode"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 1252
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    .line 1253
    .local v0, currIsEnabled:Z
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    .line 1254
    .local v2, newMode:I
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1256
    :cond_0
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    .line 1258
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    .line 1259
    .local v1, newIsEnabled:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1260
    if-eq v0, v1, :cond_3

    .line 1261
    const/4 v3, 0x0

    .line 1262
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    if-eqz v1, :cond_e

    .line 1263
    and-int/lit8 v4, v2, 0x6

    packed-switch v4, :pswitch_data_0

    .line 1335
    :cond_2
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1338
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1340
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1341
    return-void

    .line 1265
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :pswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 1266
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_5

    :cond_4
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_7

    .line 1268
    :cond_5
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1269
    and-int/2addr v2, v6

    .line 1270
    and-int v4, v2, v8

    if-ne v4, v8, :cond_6

    .line 1271
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1273
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1277
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1278
    and-int/2addr v2, v6

    goto :goto_0

    .line 1283
    :pswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_a

    .line 1284
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9

    .line 1285
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1286
    and-int/2addr v2, v6

    .line 1287
    and-int v4, v2, v8

    if-ne v4, v8, :cond_8

    .line 1288
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1290
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1294
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1295
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1297
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_2

    .line 1298
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1299
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1303
    :pswitch_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_d

    .line 1304
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_c

    .line 1305
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1306
    and-int/2addr v2, v6

    .line 1307
    and-int v4, v2, v8

    if-ne v4, v8, :cond_b

    .line 1308
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1310
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1314
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1315
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1317
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_2

    .line 1318
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1319
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1323
    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 1324
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1325
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1331
    :cond_e
    const v4, -0x600001

    and-int/2addr v2, v4

    .line 1332
    and-int/2addr v2, v6

    .line 1333
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V
    .locals 8
    .parameter "newMode"
    .parameter "requestConnectionStatus"
    .parameter "userRequest"
    .parameter "turnRoamAllowOff"

    .prologue
    .line 1380
    const/4 v3, 0x0

    .line 1381
    .local v3, notify:Z
    const/high16 v5, 0x60

    and-int/2addr v5, p1

    const/high16 v6, 0x40

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    :goto_1
    if-eq v5, v6, :cond_0

    .line 1383
    const/4 v3, 0x1

    .line 1385
    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 1386
    const/4 v3, 0x1

    .line 1388
    :cond_1
    const/high16 v5, 0x8

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x8

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    .line 1389
    const/4 v3, 0x1

    .line 1391
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0xf00

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0xf00

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_3

    .line 1392
    const/4 v3, 0x1

    .line 1396
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, p1, 0x6

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x6

    if-eq v5, v6, :cond_5

    .line 1397
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    and-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1398
    const-string v5, "roaming allow change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1399
    const/4 v3, 0x1

    .line 1402
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    and-int/lit8 v5, p1, 0x4

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_5

    .line 1403
    const-string v5, "roaming allow change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1404
    const/4 v3, 0x1

    .line 1408
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_7

    and-int/lit8 v5, p1, 0x60

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x60

    if-eq v5, v6, :cond_7

    .line 1409
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    and-int/lit8 v5, p1, 0x20

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x20

    if-eq v5, v6, :cond_6

    .line 1410
    const-string v5, "roaming guard change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1411
    const/4 v3, 0x1

    .line 1414
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    and-int/lit8 v5, p1, 0x40

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x40

    if-eq v5, v6, :cond_7

    .line 1415
    const-string v5, "roaming guard change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1416
    const/4 v3, 0x1

    .line 1420
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",turnRoamAllowOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",userRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1421
    if-nez v3, :cond_8

    if-eqz p4, :cond_e

    .line 1423
    :cond_8
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v2

    .line 1424
    .local v2, notification:[I
    const/4 v0, 0x0

    .line 1425
    .local v0, bNotify:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v5, 0x4

    if-ge v1, v5, :cond_c

    .line 1427
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v1

    aget v6, v2, v1

    if-eq v5, v6, :cond_9

    .line 1428
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v2, v1

    aput v6, v5, v1

    .line 1429
    const/4 v0, 0x1

    .line 1425
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1381
    .end local v0           #bNotify:Z
    .end local v1           #i:I
    .end local v2           #notification:[I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1432
    .restart local v0       #bNotify:Z
    .restart local v1       #i:I
    .restart local v2       #notification:[I
    :cond_c
    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1433
    :cond_d
    const-string v5, "updateStatusAndConnection.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1434
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1439
    .end local v0           #bNotify:Z
    .end local v1           #i:I
    .end local v2           #notification:[I
    :cond_e
    if-eqz p2, :cond_10

    .line 1440
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1441
    .local v4, requestConnect:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestConnect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1442
    if-eqz v4, :cond_f

    const/high16 v5, 0x80

    and-int/2addr v5, p1

    const/high16 v6, 0x80

    if-ne v5, v6, :cond_10

    .line 1445
    :cond_f
    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v5, :cond_12

    .line 1448
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1450
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v5, Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    .line 1467
    .end local v4           #requestConnect:Z
    :cond_10
    :goto_3
    return-void

    .line 1455
    .restart local v4       #requestConnect:Z
    :cond_11
    const-string v5, "updateStatusAndConnection: do nothing for VZW,..."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1462
    :cond_12
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    goto :goto_3
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 8

    .prologue
    const/high16 v7, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x4000

    const/high16 v5, 0x4

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, blocking:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedBySprintDataRoamGuard()Z

    move-result v1

    .line 1025
    :goto_0
    return v1

    .line 998
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 999
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 1000
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1

    .line 1001
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    .line 1002
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 1003
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_2

    move v0, v1

    .line 1024
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedByDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1025
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1003
    goto :goto_1

    .line 1006
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1011
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 1012
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1013
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    .line 1014
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_6

    .line 1015
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 1018
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 97
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 98
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 102
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "CDMA"

    const-string v1, "HtcDatatRoamGuard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const v5, -0x50000001

    const/high16 v4, 0x5000

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 116
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HtcDataRoamGuard drop event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 122
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 127
    :pswitch_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 128
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 134
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 137
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 138
    .local v2, statusCdmaRoamingMode:I
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_0

    .line 143
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_3
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 150
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 151
    .local v1, responseMsg:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 152
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 153
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 147
    .end local v1           #responseMsg:Landroid/os/Message;
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 9
    .parameter "dataState"

    .prologue
    const/high16 v8, 0x10

    const v7, -0x40001

    .line 901
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 902
    .local v3, newMode:I
    and-int/lit16 v1, v3, 0xf00

    .line 903
    .local v1, currDataReqState:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currDataReqState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 904
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_5

    .line 905
    if-nez v1, :cond_3

    .line 906
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    .line 914
    :cond_0
    :goto_0
    const/high16 v5, 0x60

    and-int/2addr v5, v3

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 915
    and-int v5, v3, v7

    const/high16 v6, 0x4

    or-int v3, v5, v6

    .line 916
    const v5, -0x600001

    and-int/2addr v3, v5

    .line 928
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_8

    and-int v5, v3, v8

    if-ne v5, v8, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 931
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v4

    .line 932
    .local v4, notification:[I
    const/4 v0, 0x0

    .line 933
    .local v0, bNotify:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v5, 0x4

    if-ge v2, v5, :cond_7

    .line 935
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v2

    aget v6, v4, v2

    if-eq v5, v6, :cond_2

    .line 936
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v4, v2

    aput v6, v5, v2

    .line 937
    const/4 v0, 0x1

    .line 933
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 908
    .end local v0           #bNotify:Z
    .end local v2           #i:I
    .end local v4           #notification:[I
    :cond_3
    const/16 v5, 0x100

    if-ne v1, v5, :cond_4

    .line 909
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    goto :goto_0

    .line 911
    :cond_4
    const/16 v5, 0x200

    if-ne v1, v5, :cond_0

    .line 912
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x400

    goto :goto_0

    .line 919
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_1

    .line 922
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_1

    .line 924
    :cond_6
    and-int/lit16 v3, v3, -0xf01

    .line 925
    and-int/2addr v3, v7

    goto :goto_1

    .line 941
    .restart local v0       #bNotify:Z
    .restart local v2       #i:I
    .restart local v4       #notification:[I
    :cond_7
    if-eqz v0, :cond_8

    .line 942
    const-string v5, "dataState.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 943
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 947
    .end local v0           #bNotify:Z
    .end local v2           #i:I
    .end local v4           #notification:[I
    :cond_8
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 949
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mode=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 951
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 952
    return-void
.end method

.method public haveERIupdate(IIZ)V
    .locals 11
    .parameter "eriId"
    .parameter "dataGuardRequest"
    .parameter "showRoamIcon"

    .prologue
    const/high16 v10, 0x3000

    const/high16 v9, 0x4000

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintERIupdate(IIZ)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v2, 0x0

    .line 303
    .local v2, newNetworkArea:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    .line 305
    if-eqz p2, :cond_3

    .line 306
    const/high16 v2, 0x200

    .line 319
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    .line 320
    .local v0, currNetworkArea:I
    if-ne v0, v2, :cond_5

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v0           #currNetworkArea:I
    :cond_3
    const/high16 v2, 0x100

    goto :goto_1

    .line 314
    :cond_4
    if-eqz p3, :cond_2

    .line 315
    const/high16 v2, 0x200

    goto :goto_1

    .line 329
    .restart local v0       #currNetworkArea:I
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    .line 331
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 332
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 333
    sparse-switch v2, :sswitch_data_0

    .line 378
    :cond_6
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 380
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 384
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_0

    .line 335
    :sswitch_0
    and-int/2addr v1, v6

    .line 336
    const v4, -0x600001

    and-int/2addr v1, v4

    .line 337
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 338
    goto :goto_2

    .line 340
    :sswitch_1
    if-nez v0, :cond_8

    .line 341
    and-int v4, v1, v10

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_6

    .line 342
    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    .line 343
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 344
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 345
    and-int v4, v1, v8

    if-ne v4, v8, :cond_6

    .line 346
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    goto :goto_2

    .line 353
    :cond_8
    and-int v4, v1, v10

    if-nez v4, :cond_6

    .line 354
    and-int/2addr v1, v6

    .line 355
    const v4, -0x600001

    and-int/2addr v1, v4

    .line 356
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 361
    :sswitch_2
    and-int v4, v1, v9

    if-ne v4, v9, :cond_a

    .line 362
    and-int v4, v1, v10

    const/high16 v5, 0x2000

    if-eq v4, v5, :cond_6

    .line 363
    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    .line 364
    const/high16 v4, 0x60

    and-int/2addr v4, v1

    if-nez v4, :cond_9

    and-int v4, v1, v8

    if-ne v4, v8, :cond_9

    .line 366
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 368
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 373
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveMobileAllowStatusChange(Z)V
    .locals 10
    .parameter "allowMobileData"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v9, -0x100001

    const/high16 v8, 0x4000

    const/high16 v7, 0x4

    .line 633
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 634
    const-string v3, "SPCS roaming enhancement enabled: haveMobileAllowStatusChange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintMobileAllowStatusChange(Z)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v5

    if-nez v5, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x52

    if-ne v5, v6, :cond_3

    .line 641
    :cond_2
    const-string v3, "ignore haveMobileAllowStatusChange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    .line 646
    .local v2, prevAllow:I
    if-eqz p1, :cond_6

    move v0, v3

    .line 647
    .local v0, currAllow:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 651
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 652
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 653
    if-ne v0, v3, :cond_7

    .line 654
    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 685
    :cond_4
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 688
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 690
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .end local v0           #currAllow:I
    .end local v1           #newMode:I
    :cond_6
    move v0, v4

    .line 646
    goto :goto_1

    .line 658
    .restart local v0       #currAllow:I
    .restart local v1       #newMode:I
    :sswitch_1
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x1000

    if-ne v3, v5, :cond_4

    .line 659
    and-int v3, v1, v7

    if-eq v3, v7, :cond_4

    .line 660
    and-int v3, v1, v8

    if-ne v3, v8, :cond_4

    .line 661
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_4

    .line 662
    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    .line 669
    :sswitch_2
    and-int v3, v1, v8

    if-ne v3, v8, :cond_4

    .line 670
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x2000

    if-eq v3, v5, :cond_4

    .line 671
    and-int v3, v1, v7

    if-eq v3, v7, :cond_4

    .line 672
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_4

    .line 673
    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    .line 682
    :cond_7
    and-int/2addr v1, v9

    goto :goto_2

    .line 654
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 11
    .parameter "allowRoam"

    .prologue
    const v10, -0x100001

    const/high16 v9, 0xf00

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const/high16 v4, 0x4000

    .line 739
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 740
    const-string v4, "haveRoamAllowSettingChange: Sprint roaming enable, ignore it"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v4

    .line 744
    .local v2, prevAllow:I
    if-eqz p1, :cond_4

    move v0, v4

    .line 745
    .local v0, currAllow:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 750
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x40000001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 752
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 753
    const/4 v3, 0x0

    .line 755
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    const v5, -0x600001

    and-int/2addr v1, v5

    .line 756
    const/high16 v5, 0x3000

    and-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 801
    :cond_2
    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 804
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 806
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 744
    .end local v0           #currAllow:I
    .end local v1           #newMode:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 758
    .restart local v0       #currAllow:I
    .restart local v1       #newMode:I
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :sswitch_0
    and-int v5, v1, v9

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_2

    .line 759
    and-int v5, v1, v4

    if-ne v5, v4, :cond_6

    .line 760
    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    .line 761
    and-int/2addr v1, v10

    .line 762
    and-int v4, v1, v8

    if-ne v4, v8, :cond_5

    .line 763
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 765
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 769
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 774
    :sswitch_1
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    .line 775
    and-int v5, v1, v4

    if-ne v5, v4, :cond_8

    .line 776
    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    .line 777
    and-int/2addr v1, v10

    .line 778
    and-int v4, v1, v8

    if-ne v4, v8, :cond_7

    .line 779
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 781
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 785
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 790
    :sswitch_2
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    .line 791
    and-int v5, v1, v4

    if-ne v5, v4, :cond_9

    .line 792
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 795
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public reEnableGuardDialog(Z)V
    .locals 9
    .parameter "isReenableRejected"

    .prologue
    const/high16 v8, 0x10

    const v7, -0x100001

    const/high16 v6, 0x3000

    const/high16 v5, 0x80

    const/4 v4, 0x0

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reEnableGuardDialog: isReenableRejected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableSprintGuardDialog(Z)V

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1079
    .local v0, newMode:I
    if-eqz p1, :cond_4

    .line 1080
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_3

    .line 1081
    const v2, -0x600001

    and-int/2addr v0, v2

    .line 1082
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_2

    .line 1083
    and-int/2addr v0, v7

    .line 1084
    and-int v2, v0, v5

    if-ne v2, v5, :cond_2

    .line 1085
    or-int/2addr v0, v8

    .line 1088
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1119
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1120
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1092
    :cond_4
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 1093
    const/4 v1, 0x0

    .line 1094
    .local v1, tryEnableDialog:Z
    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 1109
    :cond_5
    :goto_2
    :sswitch_0
    if-eqz v1, :cond_6

    .line 1110
    const/high16 v2, 0x4000

    and-int/2addr v2, v0

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_6

    and-int v2, v0, v5

    if-ne v2, v5, :cond_6

    .line 1112
    and-int v2, v0, v7

    or-int v0, v2, v8

    .line 1115
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_1

    .line 1098
    :sswitch_1
    and-int v2, v0, v6

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_5

    .line 1099
    const/4 v1, 0x1

    goto :goto_2

    .line 1103
    :sswitch_2
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_5

    .line 1104
    const/4 v1, 0x1

    goto :goto_2

    .line 1094
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1179
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1180
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1182
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1183
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 162
    return-void
.end method

.method public setSettingTo(I)V
    .locals 11
    .parameter "setting"

    .prologue
    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    const/high16 v6, 0x4000

    .line 478
    const/high16 v4, 0x3000

    and-int v0, p1, v4

    .line 479
    .local v0, guardSetting:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0x3000

    and-int v2, v4, v5

    .line 480
    .local v2, prevSetting:I
    if-ne v0, v2, :cond_0

    .line 550
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    .line 486
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0x30000001

    and-int/2addr v4, v5

    or-int v1, v4, v0

    .line 488
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 489
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 490
    sparse-switch v0, :sswitch_data_0

    .line 543
    :cond_1
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 545
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 549
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 492
    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_5

    .line 493
    and-int v4, v1, v6

    if-ne v4, v6, :cond_4

    .line 494
    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    .line 495
    and-int/2addr v1, v7

    .line 496
    and-int v4, v1, v9

    if-ne v4, v9, :cond_3

    .line 497
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 499
    :cond_3
    and-int/2addr v1, v10

    .line 500
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 504
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 508
    :cond_5
    and-int/2addr v1, v7

    .line 509
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 511
    goto :goto_1

    .line 513
    :sswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 514
    and-int v4, v1, v6

    if-ne v4, v6, :cond_7

    .line 515
    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    .line 516
    and-int/2addr v1, v7

    .line 517
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 518
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 520
    :cond_6
    and-int/2addr v1, v10

    .line 521
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 525
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 530
    :sswitch_2
    and-int/2addr v1, v7

    .line 531
    and-int/2addr v1, v10

    .line 532
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 533
    and-int v4, v1, v6

    if-ne v4, v6, :cond_8

    .line 534
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 537
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 490
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setUserDialogResponse(ZZ)V
    .locals 8
    .parameter "accept"
    .parameter "remember"

    .prologue
    const/high16 v7, 0x2000

    const/high16 v6, 0x8

    const v5, -0x80001

    const v4, -0x600001

    .line 955
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 956
    .local v0, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 957
    const/4 v1, 0x0

    .line 958
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 960
    .local v2, turnAllowRoamOff:Z
    const v3, -0x100001

    and-int/2addr v0, v3

    .line 961
    if-eqz p2, :cond_2

    .line 962
    if-eqz p1, :cond_1

    .line 963
    const v3, -0x30000001

    and-int/2addr v3, v0

    or-int v0, v3, v7

    .line 964
    and-int v3, v0, v5

    or-int v0, v3, v6

    .line 965
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    .line 966
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 985
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 988
    .end local v1           #requestConnectionStatus:Ljava/lang/Boolean;
    .end local v2           #turnAllowRoamOff:Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserDialogResponse accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "remember="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 990
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 991
    return-void

    .line 969
    .restart local v1       #requestConnectionStatus:Ljava/lang/Boolean;
    .restart local v2       #turnAllowRoamOff:Z
    :cond_1
    const v3, -0x40000001

    and-int/2addr v0, v3

    .line 970
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 971
    const/4 v2, 0x1

    goto :goto_0

    .line 975
    :cond_2
    if-eqz p1, :cond_3

    .line 976
    and-int v3, v0, v4

    const/high16 v4, 0x20

    or-int v0, v3, v4

    .line 977
    and-int v3, v0, v5

    or-int v0, v3, v6

    .line 978
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 981
    :cond_3
    and-int v3, v0, v4

    const/high16 v4, 0x40

    or-int v0, v3, v4

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1187
    return-void
.end method
