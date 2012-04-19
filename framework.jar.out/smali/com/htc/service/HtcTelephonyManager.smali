.class public Lcom/htc/service/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String; = "android.intent.action.PHONE_STATE_EXT"

.field public static final ICC_STATE_ABSENT:I = 0x1

.field public static final ICC_STATE_NETWORK_LOCKED:I = 0x4

.field public static final ICC_STATE_PIN_REQUIRED:I = 0x2

.field public static final ICC_STATE_PUK_REQUIRED:I = 0x3

.field public static final ICC_STATE_READY:I = 0x5

.field public static final ICC_STATE_UNKNOWN:I = 0x0

.field public static final ICC_TYPE_2G:I = 0x2

.field public static final ICC_TYPE_3G:I = 0x3

.field public static final ICC_TYPE_NO_ICC:I = 0x1

.field public static final ICC_TYPE_SIM:I = 0x1

.field public static final ICC_TYPE_SUB_ICC:I = 0x3

.field public static final ICC_TYPE_TITAN_LITE_SIM_CARD:I = 0x4

.field public static final ICC_TYPE_UIM:I = 0x2

.field public static final ICC_TYPE_UNKNOW:I = 0x0

.field public static final ICC_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phone_type"

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_SUB_GSM:I = 0x5

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x2

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x5

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x4

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x8

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x9

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x3

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x1

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x6

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x7

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field public static final UIM_STATE_ABSENT:I = 0x1

.field public static final UIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final UIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final UIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final UIM_STATE_READY:I = 0x5

.field public static final UIM_STATE_UNKNOWN:I

.field private static sInstance:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/htc/service/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/service/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IHtcTelephony;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method public static ctFeatureEnable()Z
    .locals 1

    .prologue
    .line 3454
    const/4 v0, 0x0

    return v0
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 2

    .prologue
    .line 3511
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_0

    .line 3512
    const/4 v0, 0x1

    .line 3515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dualPhoneEnable()Z
    .locals 2

    .prologue
    .line 3250
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_1

    .line 3252
    :cond_0
    const/4 v0, 0x1

    .line 3255
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefMainPhoneType()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 3267
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3277
    :cond_0
    :goto_0
    return v0

    .line 3274
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDefSubPhoneType()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3289
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3299
    :cond_0
    :goto_0
    return v0

    .line 3296
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3297
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getDefault()Lcom/htc/service/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-object v0
.end method

.method public static getDefaultPhoneType()I
    .locals 1

    .prologue
    .line 3458
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v0

    return v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;
    .locals 1

    .prologue
    .line 160
    const-string/jumbo v0, "htctelephonyinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 165
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPhoneType()I
    .locals 3

    .prologue
    .line 3312
    const-string v1, "gsm.main_phone_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3314
    .local v0, phoneType:I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3317
    .end local v0           #phoneType:I
    :goto_0
    return v0

    .restart local v0       #phoneType:I
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefMainPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 2
    .parameter "phoneName"

    .prologue
    .line 3367
    const/4 v0, 0x0

    .line 3369
    .local v0, phoneType:I
    if-nez p0, :cond_1

    .line 3370
    const/4 v0, 0x0

    .line 3384
    :cond_0
    :goto_0
    return v0

    .line 3371
    :cond_1
    const-string v1, "GSM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3372
    const/4 v0, 0x1

    goto :goto_0

    .line 3373
    :cond_2
    const-string v1, "CDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3374
    const/4 v0, 0x2

    goto :goto_0

    .line 3375
    :cond_3
    const-string v1, "SIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3376
    const/4 v0, 0x3

    goto :goto_0

    .line 3379
    :cond_4
    const-string v1, "SubGSM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3380
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSubPhoneType()I
    .locals 3

    .prologue
    .line 3337
    const-string v1, "gsm.sub_phone_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3339
    .local v0, phoneType:I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3342
    .end local v0           #phoneType:I
    :goto_0
    return v0

    .restart local v0       #phoneType:I
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefSubPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 2607
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3440
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3446
    :cond_0
    :goto_0
    return v0

    .line 3443
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3444
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 3446
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isMainPhone(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3420
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3426
    :cond_0
    :goto_0
    return v0

    .line 3423
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3424
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 3426
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3397
    packed-switch p0, :pswitch_data_0

    .line 3406
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3404
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setMainPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3323
    const-string v0, "gsm.main_phone_type"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    return-void
.end method

.method public static setSubPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3348
    const-string v0, "gsm.sub_phone_type"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 688
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->akaAuthentication([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 698
    :goto_0
    return-object v1

    .line 690
    :catch_0
    move-exception v0

    .line 692
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "akaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 695
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 697
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2387
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateAkaResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2396
    :goto_0
    return-object v1

    .line 2389
    :catch_0
    move-exception v0

    .line 2391
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2394
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2395
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2402
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2411
    :goto_0
    return-object v1

    .line 2404
    :catch_0
    move-exception v0

    .line 2406
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2409
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2410
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 2417
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateNafExternalKey([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2426
    :goto_0
    return-object v1

    .line 2419
    :catch_0
    move-exception v0

    .line 2421
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2424
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2425
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    .prologue
    .line 3626
    const-string v1, "HtcTelephonyManager"

    const-string v2, "cancelMissedCallsNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3634
    :goto_0
    return-void

    .line 3629
    :catch_0
    move-exception v0

    .line 3630
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3631
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3632
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    const/4 v1, 0x0

    .line 474
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->closeIccLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "closeIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 481
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 483
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 3

    .prologue
    .line 1107
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->confirmFirstDataRoaming()V

    .line 1120
    :goto_0
    return-void

    .line 1110
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1114
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "confirmFirstDataRoaming(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1116
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1118
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1193
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v1

    .line 1206
    :goto_0
    return v1

    .line 1196
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v0

    .line 1200
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "dialWithoutDelay(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1203
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1205
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2964
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHtcTelephony;->disableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2968
    :goto_0
    return-void

    .line 2966
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2965
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLTENetwork(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 3743
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3745
    const-string v2, "HtcTelephonyManager"

    const-string v3, "enableLTENetwork not support"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    :goto_0
    return v1

    .line 3748
    :cond_0
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    if-eqz p1, :cond_1

    .line 3750
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 3753
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3752
    :cond_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3754
    :catch_0
    move-exception v0

    .line 3755
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3757
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3758
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2947
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2951
    :goto_0
    return-void

    .line 2949
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2948
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableMpdp(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2080
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2081
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableMpdp(Z)V

    .line 2093
    :goto_0
    return-void

    .line 2083
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableMpdp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2085
    :catch_0
    move-exception v0

    .line 2087
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enableMpdp(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2089
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2091
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3902
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enablePS_W2G_Handover()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->enablePS_W2G_Handover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3909
    :goto_0
    return-void

    .line 3904
    :catch_0
    move-exception v0

    .line 3905
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3906
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3907
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2568
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableRegistrationState_wifi_call(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2574
    :goto_0
    return-void

    .line 2569
    :catch_0
    move-exception v0

    .line 2570
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2571
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2572
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveCallConnectTime()J
    .locals 5

    .prologue
    const-wide/16 v1, -0x1

    .line 1419
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1420
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallConnectTime()J

    move-result-wide v1

    .line 1432
    :goto_0
    return-wide v1

    .line 1422
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActiveCallConnectTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1426
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    const-string v4, "getActiveCallConnectTime(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1429
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1431
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1376
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1377
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1389
    :goto_0
    return-object v1

    .line 1379
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActiveCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1383
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getActiveCallNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1386
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1388
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2099
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getActivePDPList()[Ljava/lang/String;

    move-result-object v1

    .line 2112
    :goto_0
    return-object v1

    .line 2102
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePDPList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2104
    :catch_0
    move-exception v0

    .line 2106
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "enableMpdp(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2109
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2111
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1397
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1398
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1410
    :goto_0
    return-object v1

    .line 1400
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getBackgroundCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1402
    :catch_0
    move-exception v0

    .line 1404
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getBackgroundCallNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1407
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1409
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1502
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1503
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumber()Ljava/lang/String;

    move-result-object v1

    .line 1515
    :goto_0
    return-object v1

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1509
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCFUNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1512
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1514
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1562
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1563
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v1

    .line 1575
    :goto_0
    return-object v1

    .line 1565
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumberFromOperator()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1567
    :catch_0
    move-exception v0

    .line 1569
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCFUNumberFromOperator(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1572
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1574
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3182
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCallStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3188
    :goto_0
    return v1

    .line 3183
    :catch_0
    move-exception v0

    .line 3185
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3186
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3188
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCardCheckedState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3501
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCardCheckedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3505
    :goto_0
    return v1

    .line 3502
    :catch_0
    move-exception v0

    .line 3503
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3504
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3505
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 995
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCdmaMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1005
    :goto_0
    return-object v1

    .line 997
    :catch_0
    move-exception v0

    .line 999
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCdmaMin(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1002
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1004
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 6
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 2923
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2924
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 2925
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2932
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 2928
    :catch_0
    move-exception v2

    .line 2929
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "getCellLocationExt(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 2930
    goto :goto_0

    .line 2931
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 2932
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2757
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2762
    :goto_0
    return-object v1

    .line 2758
    :catch_0
    move-exception v0

    .line 2759
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2760
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2762
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentActiveCallDuration()J
    .locals 6

    .prologue
    .line 3886
    const-wide/16 v0, 0x0

    .line 3888
    .local v0, duration:J
    :try_start_0
    const-string v3, "HtcTelephonyManager"

    const-string v4, "getCurrentActiveCallDuration()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentActiveCallDuration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 3895
    :goto_0
    return-wide v0

    .line 3890
    :catch_0
    move-exception v2

    .line 3891
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentActiveCallDuration() remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3892
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3893
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentActiveCallDuration() null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentCallState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1697
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1698
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentCallState()I

    move-result v1

    .line 1710
    :goto_0
    return v1

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCurrentCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1702
    :catch_0
    move-exception v0

    .line 1704
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCurrentCallState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1707
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1709
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3218
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataActivityExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3224
    :goto_0
    return v1

    .line 3219
    :catch_0
    move-exception v0

    .line 3221
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3222
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3224
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3239
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3244
    :goto_0
    return v1

    .line 3240
    :catch_0
    move-exception v0

    .line 3242
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3243
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3244
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1085
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getDetailIccStatus()[I

    move-result-object v1

    .line 1098
    :goto_0
    return-object v1

    .line 1088
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDetailIccStatus()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1090
    :catch_0
    move-exception v0

    .line 1092
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getDetailIccStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1095
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1097
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 3831
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getDetailIccStatusExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getDetailIccStatusExt(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3835
    :goto_0
    return-object v1

    .line 3833
    :catch_0
    move-exception v0

    .line 3834
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDetailIccStatusExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2667
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2671
    :goto_0
    return-object v1

    .line 2668
    :catch_0
    move-exception v0

    .line 2669
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2670
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2671
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersionExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2650
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2654
    :goto_0
    return-object v1

    .line 2651
    :catch_0
    move-exception v0

    .line 2652
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2653
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2654
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDrxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3913
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getWifiDrxInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getDrxInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3920
    :goto_0
    return-object v1

    .line 3915
    :catch_0
    move-exception v0

    .line 3916
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDrxInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3918
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3919
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDrxInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 971
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 981
    :goto_0
    return-object v1

    .line 973
    :catch_0
    move-exception v0

    .line 975
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getEsn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 978
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 980
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 729
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getGlobalDataRoamingOption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 739
    :goto_0
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 733
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGlobalDataRoamingOption(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 736
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1129
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getGprsState()I

    move-result v1

    .line 1142
    :goto_0
    return v1

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getGprsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1136
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGprsState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1139
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1141
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 796
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 806
    :goto_0
    return-object v1

    .line 798
    :catch_0
    move-exception v0

    .line 800
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcDeviceId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 803
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 805
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 819
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 829
    :goto_0
    return-object v1

    .line 821
    :catch_0
    move-exception v0

    .line 823
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcDeviceSvn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 826
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 828
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 863
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 873
    :goto_0
    return-object v1

    .line 865
    :catch_0
    move-exception v0

    .line 867
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcIccSerialNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 870
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 872
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 907
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 917
    :goto_0
    return-object v1

    .line 909
    :catch_0
    move-exception v0

    .line 911
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcLine1AlphaTag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 914
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 916
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 885
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 895
    :goto_0
    return-object v1

    .line 887
    :catch_0
    move-exception v0

    .line 889
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcLine1Number(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 892
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 894
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 4
    .parameter "stack"

    .prologue
    const/4 v1, -0x1

    .line 1865
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v1

    .line 1878
    :goto_0
    return v1

    .line 1868
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getHtcNetworkType([Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1870
    :catch_0
    move-exception v0

    .line 1872
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcNetworkType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1875
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1877
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x3

    .line 3475
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcServiceStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3481
    :goto_0
    return v1

    .line 3476
    :catch_0
    move-exception v0

    .line 3478
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3479
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3481
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 841
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 851
    :goto_0
    return-object v1

    .line 843
    :catch_0
    move-exception v0

    .line 845
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcSubscriberId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 848
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 850
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 951
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 961
    :goto_0
    return-object v1

    .line 953
    :catch_0
    move-exception v0

    .line 955
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcVoiceMailAlphaTag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 958
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 960
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 929
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 939
    :goto_0
    return-object v1

    .line 931
    :catch_0
    move-exception v0

    .line 933
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcVoiceMailNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 936
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 938
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIccCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 2899
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2900
    const-string v0, "gsm.gsm.sim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2908
    :goto_0
    return-object v0

    .line 2902
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2903
    const-string v0, "gsm.sub.icc.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2905
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2906
    const-string v0, "gsm.cdma.uim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2908
    :cond_2
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 2856
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2857
    const-string v0, "gsm.gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2865
    :goto_0
    return-object v0

    .line 2859
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2860
    const-string v0, "gsm.sub.icc.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2862
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2863
    const-string v0, "gsm.cdma.uim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2865
    :cond_2
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 2880
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2881
    const-string v0, "gsm.gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2889
    :goto_0
    return-object v0

    .line 2883
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2884
    const-string v0, "gsm.sub.icc.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2886
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2887
    const-string v0, "gsm.cdma.uim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2889
    :cond_2
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccSerialNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "iccType"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2620
    if-ne p1, v2, :cond_0

    .line 2621
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    .line 2636
    :goto_0
    return-object v1

    .line 2623
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 2624
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2626
    :cond_1
    if-ne p1, v3, :cond_2

    .line 2627
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2629
    :cond_2
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2634
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2636
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccState(I)I
    .locals 5
    .parameter "iccType"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2815
    if-ne p1, v1, :cond_0

    .line 2816
    const-string v4, "gsm.icc.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2826
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2842
    :goto_1
    return v1

    .line 2818
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    if-ne p1, v3, :cond_1

    .line 2819
    const-string v4, "gsm.icc.sub.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 2821
    .end local v0           #prop:Ljava/lang/String;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 2822
    const-string v4, "gsm.icc.uim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 2824
    .end local v0           #prop:Ljava/lang/String;
    :cond_2
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 2829
    :cond_3
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 2830
    goto :goto_1

    .line 2832
    :cond_4
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 2833
    goto :goto_1

    .line 2835
    :cond_5
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2836
    const/4 v1, 0x4

    goto :goto_1

    .line 2838
    :cond_6
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2839
    const/4 v1, 0x5

    goto :goto_1

    .line 2842
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIccType()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3809
    const-string v2, "gsm.sim.types"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3810
    .local v0, iccType:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3811
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3812
    const/4 v1, 0x1

    .line 3823
    :cond_0
    :goto_0
    return v1

    .line 3813
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3814
    const/4 v1, 0x2

    goto :goto_0

    .line 3815
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3816
    const/4 v1, 0x3

    goto :goto_0

    .line 3817
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3818
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1588
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3537
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getKddiUserAgent()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3543
    :goto_0
    return-object v1

    .line 3538
    :catch_0
    move-exception v0

    .line 3539
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    const-string v1, ""

    goto :goto_0

    .line 3541
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3542
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    const-string v1, ""

    goto :goto_0
.end method

.method public getLTELastErrorCode()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 3712
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getLTELastErrorCode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3713
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "getLTELastErrorCode"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3719
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return v2

    .line 3714
    :catch_0
    move-exception v1

    .line 3715
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3717
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3718
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 491
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 501
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 495
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getLastError(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 498
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 500
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2722
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2727
    :goto_0
    return-object v1

    .line 2723
    :catch_0
    move-exception v0

    .line 2724
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2725
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2727
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2702
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2707
    :goto_0
    return-object v1

    .line 2703
    :catch_0
    move-exception v0

    .line 2704
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2705
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2707
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 3
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2980
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNeighboringCellInfoExt(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2984
    :goto_0
    return-object v1

    .line 2981
    :catch_0
    move-exception v0

    .line 2982
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2983
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2984
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkOperatorExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3017
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3018
    const-string v0, "gsm.gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3026
    :goto_0
    return-object v0

    .line 3020
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3021
    const-string v0, "gsm.sub.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3023
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3024
    const-string v0, "gsm.cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3026
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2996
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2997
    const-string v0, "gsm.gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3005
    :goto_0
    return-object v0

    .line 2999
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3000
    const-string v0, "gsm.sub.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3002
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3003
    const-string v0, "gsm.cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3005
    :cond_2
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkTypeExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x0

    .line 3070
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    .line 3071
    .local v1, telephony:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v1, :cond_0

    .line 3072
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNetworkTypeExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3082
    .end local v1           #telephony:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_0
    :goto_0
    return v2

    .line 3077
    :catch_0
    move-exception v0

    .line 3079
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3080
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3082
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3115
    invoke-virtual {p0, p1}, Lcom/htc/service/HtcTelephonyManager;->getNetworkTypeExt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3139
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 3117
    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    .line 3119
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 3121
    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    .line 3123
    :pswitch_4
    const-string v0, "HSDPA"

    goto :goto_0

    .line 3125
    :pswitch_5
    const-string v0, "HSUPA"

    goto :goto_0

    .line 3127
    :pswitch_6
    const-string v0, "HSPA"

    goto :goto_0

    .line 3129
    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    .line 3131
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 3133
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 3135
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 3137
    :pswitch_b
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 3115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 4
    .parameter "profileSlot"

    .prologue
    const/4 v1, 0x0

    .line 1720
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1721
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v1

    .line 1733
    :goto_0
    return-object v1

    .line 1723
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPdnSettings(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .line 1727
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1730
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1732
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 1778
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1788
    :goto_0
    return-object v1

    .line 1780
    :catch_0
    move-exception v0

    .line 1782
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings2(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1785
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1787
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2580
    const/4 v1, 0x0

    .line 2582
    .local v1, state:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPhoneState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2589
    :goto_0
    return-object v1

    .line 2583
    :catch_0
    move-exception v0

    .line 2584
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2585
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2586
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3947
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getPowerInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3954
    :goto_0
    return-object v1

    .line 3949
    :catch_0
    move-exception v0

    .line 3950
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3952
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3953
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1482
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1483
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPowerKeyFlag()Z

    move-result v1

    .line 1495
    :goto_0
    return v1

    .line 1485
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1487
    :catch_0
    move-exception v0

    .line 1489
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerKeyFlag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1492
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1494
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1826
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1827
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 1839
    :goto_0
    return v1

    .line 1829
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1831
    :catch_0
    move-exception v0

    .line 1833
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPreferredNetworkType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1836
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1838
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getScreenBusyState()Z
    .locals 4

    .prologue
    .line 2471
    const/4 v1, 0x0

    .line 2473
    .local v1, screenbusy:Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getScreenBusyState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2480
    :goto_0
    return v1

    .line 2474
    :catch_0
    move-exception v0

    .line 2475
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2476
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2477
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 4
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 668
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 677
    :goto_0
    return-object v1

    .line 670
    :catch_0
    move-exception v0

    .line 672
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 675
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 676
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1153
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getServiceState()I

    move-result v1

    .line 1166
    :goto_0
    return v1

    .line 1156
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1160
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getServiceState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1163
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1165
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2684
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2689
    :goto_0
    return-object v1

    .line 2685
    :catch_0
    move-exception v0

    .line 2686
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2687
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2689
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1035
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getSubsidyLockTypes()I

    move-result v1

    .line 1048
    :goto_0
    return v1

    .line 1038
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSubsidyLockTypes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1042
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSubsidyLockTypes(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1045
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1047
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1980
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1981
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v1

    .line 1993
    :goto_0
    return-object v1

    .line 1983
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1985
    :catch_0
    move-exception v0

    .line 1987
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getUSSDVerificationStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1990
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1992
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2018
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2019
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v1

    .line 2031
    :goto_0
    return-object v1

    .line 2021
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStrings()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2023
    :catch_0
    move-exception v0

    .line 2025
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getUSSDVerificationStrings(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2028
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2030
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUimState()I
    .locals 1

    .prologue
    .line 2797
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v0

    return v0
.end method

.method public getVTLoopBackMode()Z
    .locals 1

    .prologue
    .line 1673
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2775
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2780
    :goto_0
    return-object v1

    .line 2776
    :catch_0
    move-exception v0

    .line 2777
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2778
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2780
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2739
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2744
    :goto_0
    return-object v1

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2742
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2744
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3168
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getVoiceMessageCountExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3173
    :goto_0
    return v1

    .line 3169
    :catch_0
    move-exception v0

    .line 3170
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3171
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3173
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 4
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 3928
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 3929
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "handlePinMmi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 3940
    :goto_0
    return v1

    .line 3932
    :cond_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "handlePinMmiExt()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiExt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 3935
    :catch_0
    move-exception v0

    .line 3936
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3937
    :catch_1
    move-exception v0

    .line 3938
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hasIccCardExt(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3149
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->hasIccCardExt(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3155
    :goto_0
    return v1

    .line 3150
    :catch_0
    move-exception v0

    .line 3152
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3153
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3155
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasVTCall()Z
    .locals 1

    .prologue
    .line 1684
    const/4 v0, 0x0

    return v0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "9999999999"

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1308
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1309
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaEndCall()Z

    move-result v1

    .line 1321
    :goto_0
    return v1

    .line 1311
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1315
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "htcCdmaEndCall(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1318
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1320
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 3

    .prologue
    .line 1261
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaExitRadioPowerSaveMode()V

    .line 1274
    :goto_0
    return-void

    .line 1264
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v0

    .line 1268
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "htcCdmaExitRadioPowerSaveMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1270
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1272
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public htcModemLinkOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1284
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->htcModemLinkOn()Z

    move-result v1

    .line 1297
    :goto_0
    return v1

    .line 1287
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcModemLinkOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v0

    .line 1291
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "htcModemLinkOn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1294
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1296
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1524
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1525
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->isCallWaiting()Z

    move-result v1

    .line 1537
    :goto_0
    return v1

    .line 1527
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isCallWaiting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1531
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isCallWaiting(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1534
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1536
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCatServiceReady()Z
    .locals 4

    .prologue
    .line 2522
    const/4 v1, 0x0

    .line 2524
    .local v1, isReady:Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->isCatServiceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2531
    :goto_0
    return v1

    .line 2525
    :catch_0
    move-exception v0

    .line 2526
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isCatServiceReady(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2527
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2528
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isCatServiceReady(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnableLTENetwork()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3766
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3768
    const-string v3, "HtcTelephonyManager"

    const-string/jumbo v4, "isEnableLTENetwork not support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    :goto_0
    return v2

    .line 3771
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 3772
    .local v1, value:I
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnableLTENetwork:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3773
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3780
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 3784
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 3785
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnableLTENetwork remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3787
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3788
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnableLTENetwork null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3773
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isFdnEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1330
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1331
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->isFdnEnabled()Z

    move-result v1

    .line 1343
    :goto_0
    return v1

    .line 1333
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isFdnEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v0

    .line 1337
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "isFdnEnabled(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1340
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1342
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3463
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->isInService(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3469
    :goto_0
    return v1

    .line 3464
    :catch_0
    move-exception v0

    .line 3466
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3467
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3469
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoamingExt(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3037
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3038
    const-string/jumbo v0, "true"

    const-string v1, "gsm.gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3046
    :goto_0
    return v0

    .line 3040
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3041
    const-string/jumbo v0, "true"

    const-string v1, "gsm.sub.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3043
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3044
    const-string/jumbo v0, "true"

    const-string v1, "gsm.cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3046
    :cond_2
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUimPinEnabled()Z
    .locals 3

    .prologue
    .line 2786
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isUimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2791
    :goto_0
    return v1

    .line 2788
    :catch_0
    move-exception v0

    .line 2790
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "isUimPinEnabled(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2791
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyKeyEvent(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 2462
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyKeyEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2468
    :goto_0
    return-void

    .line 2463
    :catch_0
    move-exception v0

    .line 2464
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyKeyEvent(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2465
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2466
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyKeyEvent(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyScreenBusy(Z)V
    .locals 3
    .parameter "busy"

    .prologue
    .line 2452
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyScreenBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2458
    :goto_0
    return-void

    .line 2453
    :catch_0
    move-exception v0

    .line 2454
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyScreenBusy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2455
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2456
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "notifyScreenBusy(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 4
    .parameter "resMsg"

    .prologue
    .line 2484
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2485
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "CMD_DETATIL"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2486
    const-string v2, "RES_CODE"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getIntResCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2487
    const-string v2, "MENU_SELECT"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getMenuSelection()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2488
    const-string v2, "INPUT"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    const-string v2, "YES_NO"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getYesNo()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2490
    const-string v2, "CONFIRM"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getConfirm()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2493
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onCmdResponse(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2499
    :goto_0
    return-void

    .line 2494
    :catch_0
    move-exception v1

    .line 2495
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "onCmdResponse(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2496
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2497
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "onCmdResponse(): NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleEventList(IZ)V
    .locals 3
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 2503
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onHandleEventList(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2509
    :goto_0
    return-void

    .line 2504
    :catch_0
    move-exception v0

    .line 2505
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "onHandleEventList(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2506
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2507
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "onHandleEventList(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 2513
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onLanguageEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2519
    :goto_0
    return-void

    .line 2514
    :catch_0
    move-exception v0

    .line 2515
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendEventDownload(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2516
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2517
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendEventDownload(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    const/4 v1, 0x0

    .line 457
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 467
    :goto_0
    return v1

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "openIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 464
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 466
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public performEndCall()V
    .locals 4

    .prologue
    .line 3873
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "performEndCall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3881
    :goto_0
    return-void

    .line 3875
    :catch_0
    move-exception v0

    .line 3876
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performEndCall() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3877
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3878
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performEndCall() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performHtcPhoneAction(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 2059
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2060
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneAction(I)V

    .line 2072
    :goto_0
    return-void

    .line 2062
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->performHtcPhoneAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2064
    :catch_0
    move-exception v0

    .line 2066
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "performHtcPhoneAction(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2068
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2070
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public performHtcPhoneActionExt(II)V
    .locals 4
    .parameter "action"
    .parameter "phoneType"

    .prologue
    .line 3861
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "performHtcPhoneActionExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneActionExt(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3866
    :goto_0
    return-void

    .line 3863
    :catch_0
    move-exception v0

    .line 3864
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performHtcPhoneActionExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryCAVE()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryCAVE()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryCAVE(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryMD5()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryMD5()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryMD5(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public querySSDUpdate()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->querySSDUpdate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "querySSDUpdate(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 237
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryUIMAUTH()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryUIMAUTH()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryUIMAUTH(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 335
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryVPM()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryVPM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "queryVPM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 287
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "randu"

    .prologue
    const/4 v1, 0x0

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestCAVE(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 189
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCW_UW_DREG()V
    .locals 3

    .prologue
    .line 2257
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2258
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_DREG()V

    .line 2270
    :goto_0
    return-void

    .line 2260
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_DREG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2262
    :catch_0
    move-exception v0

    .line 2264
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestCW_UW_DREG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2266
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2268
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCW_UW_REG()V
    .locals 3

    .prologue
    .line 2238
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2239
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_REG()V

    .line 2251
    :goto_0
    return-void

    .line 2241
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_REG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2243
    :catch_0
    move-exception v0

    .line 2245
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestCW_UW_REG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2247
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2249
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestClearLocProcessDB()V
    .locals 2

    .prologue
    .line 3691
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestClearLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    return-void
.end method

.method public requestClearLocProcessDB_EXT()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3640
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestClearLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requesttClearLocProcessDB()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3647
    :goto_0
    return v1

    .line 3642
    :catch_0
    move-exception v0

    .line 3643
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesttClearLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3645
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3646
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requesttClearLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestConfigLocProcessDB(IIII)V
    .locals 2
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    .line 3703
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestConfigLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    return-void
.end method

.method public requestConfigLocProcessDB_EXT(IIII)Z
    .locals 5
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 3679
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestConfigLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestConfigLocProcessDB(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3686
    :goto_0
    return v1

    .line 3681
    :catch_0
    move-exception v0

    .line 3682
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConfigLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3684
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3685
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConfigLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1915
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1916
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestEhrpdDomainNameChangeState()I

    move-result v1

    .line 1928
    :goto_0
    return v1

    .line 1918
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestEhrpdDomainNameChangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1920
    :catch_0
    move-exception v0

    .line 1922
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestEhrpdDomainNameChangeState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1925
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1927
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2356
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2365
    :goto_0
    return-object v1

    .line 2358
    :catch_0
    move-exception v0

    .line 2360
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetBtid(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2363
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2364
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetBtid(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetCurrentLoc()V
    .locals 2

    .prologue
    .line 3699
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestGetCurrentLoc is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    return-void
.end method

.method public requestGetCurrentLoc_EXT()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3666
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetCurrentLoc_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetCurrentLoc()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3673
    :goto_0
    return-object v1

    .line 3668
    :catch_0
    move-exception v0

    .line 3669
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetCurrentLoc remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3671
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3672
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetCurrentLoc null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 552
    :goto_0
    return-object v1

    .line 545
    :catch_0
    move-exception v0

    .line 547
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetDOMAIN(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 550
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 551
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetDOMAIN(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1957
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1958
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDeviceCapability()I

    move-result v1

    .line 1970
    :goto_0
    return v1

    .line 1960
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDeviceCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1962
    :catch_0
    move-exception v0

    .line 1964
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetEhrpdDeviceCapability(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1967
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1969
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1936
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1937
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDisableCapability()I

    move-result v1

    .line 1949
    :goto_0
    return v1

    .line 1939
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDisableCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1941
    :catch_0
    move-exception v0

    .line 1943
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetEhrpdDisableCapability(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1946
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1948
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 709
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 718
    :goto_0
    return-object v1

    .line 711
    :catch_0
    move-exception v0

    .line 713
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetGID1(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 716
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 717
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetGID1(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetHasISIM()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2311
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetHasISIM()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2320
    :goto_0
    return v1

    .line 2313
    :catch_0
    move-exception v0

    .line 2315
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetHasISIM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2318
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2319
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetHasISIM(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 525
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 534
    :goto_0
    return-object v1

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 532
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 533
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 561
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 570
    :goto_0
    return-object v1

    .line 563
    :catch_0
    move-exception v0

    .line 565
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPU(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 568
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMPU(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 596
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 605
    :goto_0
    return-object v1

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMSI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 603
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 604
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIMSI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIsGBASupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2326
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIsGBASupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2335
    :goto_0
    return v1

    .line 2328
    :catch_0
    move-exception v0

    .line 2330
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIsGBASupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2333
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2334
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetIsGBASupported(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2371
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2380
    :goto_0
    return-object v1

    .line 2373
    :catch_0
    move-exception v0

    .line 2375
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetKeyLifetime(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2378
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2379
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetKeyLifetime(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetLTERFBandInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3610
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetLTERFBandInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTERFBandInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3619
    :goto_0
    return-object v1

    .line 3614
    :catch_0
    move-exception v0

    .line 3615
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTERFBandInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3617
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3618
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTERFBandInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetLTETxRxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3591
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetLTETxRxInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTETxRxInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3600
    :goto_0
    return-object v1

    .line 3595
    :catch_0
    move-exception v0

    .line 3596
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTETxRxInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3598
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3599
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetLTETxRxInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 624
    :goto_0
    return-object v1

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetMobileNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 622
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetMobileNumber(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 577
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 586
    :goto_0
    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 581
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCF(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 584
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 585
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCF(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 412
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCFAddress(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 410
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetPCSCFAddress(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2341
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2350
    :goto_0
    return-object v1

    .line 2343
    :catch_0
    move-exception v0

    .line 2345
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetRand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2348
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2349
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetRand(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetSIMType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2542
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetSIMType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2548
    :goto_0
    return v1

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetO2SIMType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2546
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2547
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetO2SIMType(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 384
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 393
    :goto_0
    return v1

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetVolteSipRegFailure(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 391
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 392
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetVolteSipRegFailure(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3727
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestGetWimaxNai"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetWimaxNai()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3734
    :goto_0
    return-object v1

    .line 3729
    :catch_0
    move-exception v0

    .line 3730
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetWimaxNai remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3732
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3733
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGetWimaxNai null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 8
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    const/4 v7, 0x0

    .line 2158
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 2171
    :goto_0
    return-object v0

    .line 2161
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestISIMRead(IIIII)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 2163
    :catch_0
    move-exception v6

    .line 2165
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestISIMRead(): RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 2166
    goto :goto_0

    .line 2168
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 2170
    .local v6, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v7

    .line 2171
    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 636
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 645
    :goto_0
    return-object v1

    .line 638
    :catch_0
    move-exception v0

    .line 640
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestImsAkaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 643
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 644
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestImsAkaAuthentication(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2279
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2283
    :goto_0
    return v1

    .line 2280
    :catch_0
    move-exception v0

    .line 2281
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2282
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2283
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    const/4 v1, 0x0

    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 298
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestMD5(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 301
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestQueryISIMSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2138
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2139
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestQueryISIMSupported()Z

    move-result v1

    .line 2151
    :goto_0
    return v1

    .line 2141
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestQueryISIMSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2143
    :catch_0
    move-exception v0

    .line 2145
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestQueryISIMSupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2148
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2150
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2199
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2200
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestResetWSIMState()Z

    move-result v1

    .line 2212
    :goto_0
    return v1

    .line 2202
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestResetWSIMState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2204
    :catch_0
    move-exception v0

    .line 2206
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestResetWSIMState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2209
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2211
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "randssd"

    .prologue
    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestSSDUpdate(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 223
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "authbs"

    .prologue
    const/4 v1, 0x0

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestSSDUpdateConfirm(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 3
    .parameter "ehrpdmode"

    .prologue
    .line 1896
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1897
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetEhrpdDisableCapability(I)V

    .line 1909
    :goto_0
    return-void

    .line 1899
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetEhrpdDisableCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1901
    :catch_0
    move-exception v0

    .line 1903
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetEhrpdDisableCapability(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1905
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1907
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2294
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetFastDormancy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2304
    :goto_0
    return-void

    .line 2296
    :catch_0
    move-exception v0

    .line 2298
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetFastDormancy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2300
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2302
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 2178
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2191
    :goto_0
    return-object v1

    .line 2181
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2183
    :catch_0
    move-exception v0

    .line 2185
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestSetISIMAUTH(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2188
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2190
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 3
    .parameter "lbsvalue"

    .prologue
    .line 2220
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2221
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetLBSNTFY(I)V

    .line 2233
    :goto_0
    return-void

    .line 2223
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetLBSNTFY(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2225
    :catch_0
    move-exception v0

    .line 2227
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetLBSNTFY(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2229
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2231
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetLocProcessDB(IIIIII[I)V
    .locals 2
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 3695
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestSetLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    return-void
.end method

.method public requestSetLocProcessDB_EXT(IIIIII[I)Z
    .locals 9
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 3653
    :try_start_0
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "requestSetLocProcessDB_EXT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSetLocProcessDB(IIIIII[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3660
    :goto_0
    return v0

    .line 3655
    :catch_0
    move-exception v8

    .line 3656
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSetLocProcessDB remote exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    const/4 v0, 0x0

    goto :goto_0

    .line 3658
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 3659
    .local v8, ex:Ljava/lang/NullPointerException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSetLocProcessDB null pointer exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 767
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 777
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 771
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "requestSetMultiRABTrafficThrottling(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 773
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 775
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestVPM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "requestVPM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 269
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPdnForSettingsChange()V
    .locals 3

    .prologue
    .line 1759
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1760
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange()V

    .line 1772
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->resetPdnForSettingsChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1764
    :catch_0
    move-exception v0

    .line 1766
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "resetPdnForSettingsChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1768
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1770
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPdnForSettingsChange2()V
    .locals 3

    .prologue
    .line 1808
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1818
    :goto_0
    return-void

    .line 1810
    :catch_0
    move-exception v0

    .line 1812
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "resetPdnForSettingsChange2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1814
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1816
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAT_BRIC()V
    .locals 3

    .prologue
    .line 1174
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAT_BRIC()V

    .line 1187
    :goto_0
    return-void

    .line 1177
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    .line 1181
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendAT_BRIC(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1183
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1185
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1244
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->sendAT_PushMail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1250
    :goto_0
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendAT_PushMail(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1247
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1248
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 1353
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1366
    :goto_0
    return-object v1

    .line 1356
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1360
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendAllowedCSIMCommand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1363
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1365
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 4
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    const/4 v1, 0x0

    .line 1596
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v1

    .line 1609
    :goto_0
    return-object v1

    .line 1599
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuth3GReq([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1601
    :catch_0
    move-exception v0

    .line 1603
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1606
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1608
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 4
    .parameter "szRAND"

    .prologue
    const/4 v1, 0x0

    .line 1616
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1617
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuthGSMReq([B)[B

    move-result-object v1

    .line 1629
    :goto_0
    return-object v1

    .line 1619
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuthGSMReq([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v0

    .line 1623
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1626
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1628
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendKddiSmsDeliver([B)Ljava/lang/Object;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 3566
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 3567
    :cond_0
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "sendKddiSmsDeliver - null or empty data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :goto_0
    return-object v1

    .line 3572
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSendKddiSmsDeliver([B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 3573
    :catch_0
    move-exception v0

    .line 3574
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendKddiSmsDeliver remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3576
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3577
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendKddiSmsDeliver null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 3
    .parameter "languageCode"

    .prologue
    .line 2117
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2118
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendLanguageChange(I)V

    .line 2130
    :goto_0
    return-void

    .line 2120
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendLanguageChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2122
    :catch_0
    move-exception v0

    .line 2124
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "sendLanguageChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2126
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2128
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 3523
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendMTRejectMessage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3527
    :goto_0
    return v1

    .line 3524
    :catch_0
    move-exception v0

    .line 3525
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3526
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3527
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 4
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    const/4 v1, 0x0

    .line 1543
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1544
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v1

    .line 1556
    :goto_0
    return v1

    .line 1546
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCFUNumber(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1550
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "setCFUNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1553
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1555
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 2433
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2443
    :goto_0
    return-void

    .line 2435
    :catch_0
    move-exception v0

    .line 2437
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setGbaBootstrappingParams(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2439
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2441
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 747
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGlobalDataRoamingOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 751
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setGlobalDataRoamingOption(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 753
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 755
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKddiOtaStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 3553
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setKddiOtaStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3559
    :goto_0
    return-void

    .line 3554
    :catch_0
    move-exception v0

    .line 3555
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3556
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3557
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 3
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 1740
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1741
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings(ILjava/lang/String;)V

    .line 1753
    :goto_0
    return-void

    .line 1743
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPdnSettings(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1745
    :catch_0
    move-exception v0

    .line 1747
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPdnSettings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1749
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1751
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 1794
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings2([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1804
    :goto_0
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1798
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPdnSettings2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1800
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1802
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 3

    .prologue
    .line 1462
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1463
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->setPowerKeyFlag()V

    .line 1475
    :goto_0
    return-void

    .line 1465
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1467
    :catch_0
    move-exception v0

    .line 1469
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPowerKeyFlag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1471
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1473
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1846
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1847
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 1859
    :goto_0
    return-void

    .line 1849
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1851
    :catch_0
    move-exception v0

    .line 1853
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1855
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1857
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2556
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType_wifi_call(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2563
    :goto_0
    return v1

    .line 2557
    :catch_0
    move-exception v0

    .line 2558
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2563
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2559
    :catch_1
    move-exception v0

    .line 2560
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setTimeZone(ZI)V
    .locals 3
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1222
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setTimeZone(ZI)V

    .line 1235
    :goto_0
    return-void

    .line 1225
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setTimeZone(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    .line 1229
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setTimeZone(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1231
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1233
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 2000
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2001
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2013
    :goto_0
    return-void

    .line 2003
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2005
    :catch_0
    move-exception v0

    .line 2007
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setUSSDVerificationStatus(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2009
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2011
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2042
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2043
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :goto_0
    return-void

    .line 2045
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2047
    :catch_0
    move-exception v0

    .line 2049
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setUSSDVerificationStrings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2051
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2053
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1656
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTLoopBackMode(Z)V

    .line 1669
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTLoopBackMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1661
    :catch_0
    move-exception v0

    .line 1663
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setVTLoopBackMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1665
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1667
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1635
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1636
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTSimulatedMode(Z)V

    .line 1648
    :goto_0
    return-void

    .line 1638
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTSimulatedMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1640
    :catch_0
    move-exception v0

    .line 1642
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "setVTSimulatedMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1644
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1646
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public showIncallScreen()V
    .locals 1

    .prologue
    .line 2594
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHtcTelephony;->showIncallScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2598
    :goto_0
    return-void

    .line 2596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2595
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 4
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 3841
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "supplyPinExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplyPinExt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3845
    :goto_0
    return v1

    .line 3843
    :catch_0
    move-exception v0

    .line 3844
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPinExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "puk"
    .parameter "newpin"
    .parameter "phoneType"

    .prologue
    .line 3851
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "supplyPukExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3855
    :goto_0
    return v1

    .line 3853
    :catch_0
    move-exception v0

    .line 3854
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPukExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "type"
    .parameter "pin"

    .prologue
    const/4 v1, 0x0

    .line 1060
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1073
    :goto_0
    return v1

    .line 1063
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v0

    .line 1067
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string/jumbo v3, "supplySubsidyLockPin(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1070
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1072
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 3

    .prologue
    .line 1441
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->switchHoldAndActiveCall()V

    .line 1454
    :goto_0
    return-void

    .line 1444
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->switchHoldAndActiveCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v0

    .line 1448
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "switchHoldAndActiveCall(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1450
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1452
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 424
    :catch_0
    move-exception v7

    .line 426
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "transmitIccBasicChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 427
    goto :goto_0

    .line 429
    .end local v7           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 431
    .local v7, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v8

    .line 432
    goto :goto_0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 450
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v8

    .line 444
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "transmitIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const/4 v0, 0x0

    goto :goto_0

    .line 447
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 449
    .local v8, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 450
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 8
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    .line 511
    :catch_0
    move-exception v7

    .line 513
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string/jumbo v1, "openIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "puk"
    .parameter "newpin"

    .prologue
    const/4 v1, 0x0

    .line 1016
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1023
    :goto_0
    return v1

    .line 1019
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1022
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1023
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public updateRegDregState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 359
    return-void
.end method

.method public updateRegDregState(II)V
    .locals 3
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->updateRegDregState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "updateRegDregState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 351
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 365
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephony;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string/jumbo v2, "updateSipInviteState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 371
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 373
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
