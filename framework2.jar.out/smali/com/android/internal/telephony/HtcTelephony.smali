.class public Lcom/android/internal/telephony/HtcTelephony;
.super Lcom/android/internal/telephony/IHtcTelephony$Stub;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephony$1;,
        Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephony$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephony$ECaveResult;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_HTC_CSIM_AUTH_RSP:I = 0x87

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES:I = 0x7b

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT:I = 0x7c

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE:I = 0x78

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT:I = 0x79

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PDN_CHANGE_TAKE_EFFECT:I = 0xa5

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO:I = 0x98

.field private static final CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_GET_LTE_TxRx_INFO:I = 0x96

.field private static final CMD_HTC_REQUEST_GET_LTE_TxRx_INFO_DONE:I = 0x97

.field private static final CMD_HTC_REQUEST_QUERY_PDN:I = 0xa0

.field private static final CMD_HTC_REQUEST_QUERY_PDN_CONT:I = 0xa1

.field private static final CMD_HTC_REQUEST_QUERY_PDN_RESULT:I = 0xa2

.field private static final CMD_HTC_REQUEST_SET_PDN:I = 0xa3

.field private static final CMD_HTC_REQUEST_SET_PDN_RESULT:I = 0xa4

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

.field private static final DBG:Z = false

.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field public static final HTCTELEPHONY_SERVICE:Ljava/lang/String; = "htctelephony"

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "HtcTelephony"

.field private static final ipTypes:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field private lastError:I

.field private mCSIMResult:Landroid/os/Bundle;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlatformSignature:[Landroid/content/pm/Signature;

.field private mShareSignature:[Landroid/content/pm/Signature;

.field private mSignatureLock:Ljava/lang/Object;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field private rejectAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1943
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "IPv4"

    aput-object v1, v0, v2

    const-string v1, "IPv6"

    aput-object v1, v0, v3

    const-string v1, "IPv4v6"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    .line 2000
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Vzw:[Ljava/lang/String;

    .line 2001
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ota"

    aput-object v1, v0, v2

    const-string v1, "internet"

    aput-object v1, v0, v3

    const-string v1, "pam"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Spcs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "phone"
    .parameter "ci"

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;-><init>()V

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    .line 2875
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    .line 968
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 969
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    .line 970
    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    .line 971
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 972
    const-string v0, "HtcTelephony"

    const-string v1, "new HtcTelephony in framework"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/HtcTelephony;IILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcTelephony;->pdnUpdateResponse(IILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcTelephony;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephony;->lastError:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/HtcTelephony;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephony;->pdnChangeTakeEffect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony;->pdnQueryContResult(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony;->pdnQueryResponse(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    return-void
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 3
    .parameter "os"
    .parameter "data"

    .prologue
    .line 1285
    array-length v0, p2

    .line 1288
    .local v0, len:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 1289
    const/16 v0, 0xff

    .line 1290
    const-string v1, "HtcTelephony"

    const-string v2, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1294
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1295
    return-void
.end method

.method private callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z
    .locals 13
    .parameter "givenSignature"
    .parameter "uid"
    .parameter "delayWhenNotMatch"

    .prologue
    .line 2934
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 2935
    .local v7, packages:[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v10, v7

    if-lez v10, :cond_4

    .line 2944
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 2945
    .local v8, pkgSignatures:[Landroid/content/pm/Signature;
    if-eqz v8, :cond_4

    array-length v10, v8

    if-lez v10, :cond_4

    .line 2946
    iget-object v11, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2947
    if-nez p1, :cond_0

    .line 2949
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2954
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2956
    if-eqz p1, :cond_3

    array-length v10, p1

    if-lez v10, :cond_3

    .line 2957
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    .line 2958
    .local v9, sig:Landroid/content/pm/Signature;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 2959
    .local v6, matchSig:Landroid/content/pm/Signature;
    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2963
    const/4 v10, 0x1

    .line 2979
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    .end local v9           #sig:Landroid/content/pm/Signature;
    :goto_3
    return v10

    .line 2954
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 2958
    .restart local v1       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #matchSig:Landroid/content/pm/Signature;
    .restart local v9       #sig:Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2957
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 2969
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v9           #sig:Landroid/content/pm/Signature;
    :cond_3
    const-string v10, "HtcTelephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No signature found : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    const/4 v10, 0x1

    goto :goto_3

    .line 2974
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 2976
    const-wide/16 v10, 0x1388

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2979
    :cond_5
    :goto_4
    const/4 v10, 0x0

    goto :goto_3

    .line 2977
    :catch_0
    move-exception v10

    goto :goto_4

    .line 2950
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method private callingWithPlatformSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 2916
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getCallingUid()I

    move-result v0

    .line 2917
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 2918
    :cond_0
    const/4 v1, 0x1

    .line 2920
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private callingWithShareSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 2925
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getCallingUid()I

    move-result v0

    .line 2926
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2927
    const/4 v1, 0x1

    .line 2929
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mShareSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 1

    .prologue
    .line 2870
    const/4 v0, 0x0

    return v0
.end method

.method public static dualPhoneEnable()Z
    .locals 1

    .prologue
    .line 2784
    const/4 v0, 0x0

    return v0
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1103
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1104
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/16 v11, 0x7d

    new-instance v1, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 1108
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1111
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1114
    :cond_1
    return-object v10
.end method

.method public static getDefMainPhoneType()I
    .locals 1

    .prologue
    .line 2790
    const/4 v0, -0x1

    return v0
.end method

.method public static getDefSubPhoneType()I
    .locals 1

    .prologue
    .line 2796
    const/4 v0, -0x1

    return v0
.end method

.method public static getMainPhoneType()I
    .locals 1

    .prologue
    .line 2802
    const/4 v0, -0x1

    return v0
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2
    .parameter "mPm"
    .parameter "packageName"

    .prologue
    .line 2898
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2900
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 2905
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2911
    .end local v0           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 2910
    :catch_0
    move-exception v1

    .line 2911
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 1
    .parameter "phoneName"

    .prologue
    .line 2824
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubPhoneType()I
    .locals 1

    .prologue
    .line 2813
    const/4 v0, -0x1

    return v0
.end method

.method private initSignatureChecking(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2885
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2886
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 2887
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2888
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.phone"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    .line 2889
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.providers.contacts"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mShareSignature:[Landroid/content/pm/Signature;

    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2892
    :cond_0
    monitor-exit v1

    .line 2893
    return-void

    .line 2892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2842
    const/4 v0, 0x0

    return v0
.end method

.method public static isMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2836
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2830
    const/4 v0, 0x0

    return v0
.end method

.method private pdnChangeTakeEffect()V
    .locals 10

    .prologue
    .line 2332
    const/4 v0, 0x0

    .line 2334
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v6, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2337
    :goto_0
    const/4 v4, 0x0

    .line 2338
    .local v4, mmdt:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2339
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v6, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2341
    .end local v4           #mmdt:Ljava/lang/Object;
    :cond_0
    if-eqz v4, :cond_2

    .line 2342
    const/4 v5, 0x0

    .line 2344
    .local v5, phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    const/4 v3, 0x0

    .line 2346
    .local v3, methodReset:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v7, "resetRadioForDisconnectingPdn"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2347
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2348
    .local v1, disconnectPdn:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2349
    const-string v6, "HtcTelephony"

    const-string v7, "Need reset the Radio due to some specific PDN has been modified"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_3

    .line 2351
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    .line 2357
    :cond_1
    :goto_1
    if-nez v5, :cond_4

    .line 2358
    const-string v6, "disconnectAllConnections"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2359
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "getNewMPDNTable"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    const-string v6, "HtcTelephony"

    const-string v7, "Teardown data connections for new PDN"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    .end local v1           #disconnectPdn:Ljava/lang/Boolean;
    .end local v3           #methodReset:Ljava/lang/reflect/Method;
    .end local v5           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_2
    :goto_2
    return-void

    .line 2353
    .restart local v1       #disconnectPdn:Ljava/lang/Boolean;
    .restart local v3       #methodReset:Ljava/lang/reflect/Method;
    .restart local v5       #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v6, :cond_1

    .line 2354
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    goto :goto_1

    .line 2363
    :cond_4
    const-string v6, "setDataConnectionAsDesired"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2364
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x1

    const/4 v6, 0x0

    check-cast v6, Landroid/os/Message;

    aput-object v6, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    const/4 v6, 0x0

    check-cast v4, Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/DataConnectionTracker;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2370
    .end local v1           #disconnectPdn:Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 2371
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "HtcTelephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to make current PDN setting take effect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2335
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #methodReset:Ljava/lang/reflect/Method;
    .end local v5           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method private pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 11
    .parameter "request"

    .prologue
    .line 2004
    if-eqz p1, :cond_3

    .line 2005
    iget-object v8, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 2006
    .local v7, queryCmds:[Ljava/lang/String;
    if-eqz v7, :cond_7

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 2008
    const/4 v1, 0x0

    .line 2009
    .local v1, msg:Landroid/os/Message;
    const/4 v8, 0x3

    new-array v2, v8, [Ljava/lang/Object;

    .line 2011
    .local v2, msgDataArray:[Ljava/lang/Object;
    const/4 v8, 0x2

    aget-object v5, v7, v8

    .line 2012
    .local v5, pdnType:Ljava/lang/String;
    const-string v8, "HtcTelephony"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 2014
    :cond_0
    const/4 v6, -0x1

    .line 2016
    .local v6, project:I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2018
    :goto_0
    const/4 v0, 0x0

    .line 2019
    .local v0, knownPdns:[Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 2023
    :goto_1
    if-eqz v0, :cond_4

    .line 2024
    const/4 v8, 0x0

    aput-object v0, v2, v8

    .line 2025
    const/4 v8, 0x0

    aget-object v5, v0, v8

    .line 2026
    iget-object v8, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v9, 0xa1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2036
    .end local v0           #knownPdns:[Ljava/lang/String;
    .end local v6           #project:I
    :goto_2
    const/4 v4, 0x0

    .line 2037
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v3, 0x0

    .line 2038
    .local v3, networkType:I
    if-eqz v5, :cond_1

    .line 2040
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 2042
    :goto_3
    sparse-switch v3, :sswitch_data_1

    .line 2055
    :cond_1
    :goto_4
    if-eqz v4, :cond_6

    .line 2056
    const/4 v8, 0x1

    aput-object v4, v2, v8

    .line 2057
    const/4 v8, 0x2

    aput-object p1, v2, v8

    .line 2058
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2059
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2060
    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/HtcTelephony;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2061
    const/4 v7, 0x0

    .line 2072
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgDataArray:[Ljava/lang/Object;
    .end local v3           #networkType:I
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v5           #pdnType:Ljava/lang/String;
    :cond_2
    :goto_5
    if-nez v7, :cond_3

    .line 2073
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2074
    monitor-enter p1

    .line 2075
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2076
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2079
    .end local v7           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2020
    .restart local v0       #knownPdns:[Ljava/lang/String;
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #msgDataArray:[Ljava/lang/Object;
    .restart local v5       #pdnType:Ljava/lang/String;
    .restart local v6       #project:I
    .restart local v7       #queryCmds:[Ljava/lang/String;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_1

    .line 2021
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_1

    .line 2029
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 2033
    .end local v0           #knownPdns:[Ljava/lang/String;
    .end local v6           #project:I
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v9, 0xa2

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_2

    .line 2044
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :sswitch_2
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x1

    invoke-direct {v4, v5, v8}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2045
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_4

    .line 2047
    :sswitch_3
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x2

    invoke-direct {v4, v5, v8}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2048
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_4

    .line 2050
    :sswitch_4
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x4

    invoke-direct {v4, v5, v8}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_4

    .line 2065
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 2069
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgDataArray:[Ljava/lang/Object;
    .end local v3           #networkType:I
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v5           #pdnType:Ljava/lang/String;
    :cond_7
    const-string v9, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN parm incorrect "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v7, :cond_8

    array-length v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/4 v7, 0x0

    goto :goto_5

    .line 2069
    :cond_8
    const-string v8, "null"

    goto :goto_6

    .line 2076
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 2041
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #msgDataArray:[Ljava/lang/Object;
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v5       #pdnType:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3

    .line 2017
    .end local v3           #networkType:I
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v6       #project:I
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 2019
    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 2042
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private pdnQueryContResult(ILandroid/os/AsyncResult;)V
    .locals 13
    .parameter "resultType"
    .parameter "ar"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2082
    iget-object v8, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, [Ljava/lang/Object;

    .line 2083
    .local v4, msgDataArray:[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 2085
    .local v7, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 2087
    aget-object v8, v4, v12

    check-cast v8, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object v7, v8

    check-cast v7, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2088
    iget-object v8, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p1, v8, v7}, Lcom/android/internal/telephony/HtcTelephony;->processQueryPdnFromModem(ILjava/lang/Object;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    .line 2091
    const/4 v8, 0x0

    aget-object v8, v4, v8

    check-cast v8, [Ljava/lang/String;

    move-object v2, v8

    check-cast v2, [Ljava/lang/String;

    .line 2092
    .local v2, knownPdns:[Ljava/lang/String;
    aget-object v8, v4, v11

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    move-object v5, v8

    check-cast v5, Lcom/android/internal/telephony/APNParam;

    .line 2093
    .local v5, pdnParam:Lcom/android/internal/telephony/APNParam;
    iget-object v8, v5, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, currPdn:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2095
    .local v1, index:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    aget-object v8, v2, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2096
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    :cond_0
    array-length v8, v2

    if-ge v1, v8, :cond_1

    .line 2099
    const-string v8, "HtcTelephony"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    new-instance v6, Lcom/android/internal/telephony/APNParam;

    aget-object v8, v2, v1

    iget v9, v5, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-direct {v6, v8, v9}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2101
    .end local v5           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .local v6, pdnParam:Lcom/android/internal/telephony/APNParam;
    iget-object v8, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v9, 0xa1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2102
    .local v3, msg:Landroid/os/Message;
    aput-object v6, v4, v11

    .line 2103
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2104
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/HtcTelephony;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2105
    const/4 v7, 0x0

    move-object v5, v6

    .line 2114
    .end local v0           #currPdn:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #knownPdns:[Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v6           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 2115
    monitor-enter v7

    .line 2116
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 2117
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2119
    :cond_2
    return-void

    .line 2110
    :cond_3
    const-string v9, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v8, v4, v11

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    iget-object v8, v8, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    aget-object v8, v4, v12

    check-cast v8, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object v7, v8

    check-cast v7, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    goto :goto_1

    .line 2117
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v0       #currPdn:Ljava/lang/String;
    .restart local v1       #index:I
    .restart local v2       #knownPdns:[Ljava/lang/String;
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v6       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_4
    move-object v5, v6

    .end local v6           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v5       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_1
.end method

.method private pdnQueryResponse(ILandroid/os/AsyncResult;)V
    .locals 6
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2122
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 2123
    .local v1, msgDataArray:[Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2125
    .local v2, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Lcom/android/internal/telephony/APNParam;

    check-cast v3, Lcom/android/internal/telephony/APNParam;

    iget-object v0, v3, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2126
    .local v0, currPdn:Ljava/lang/String;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2127
    const-string v3, "HtcTelephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query PDN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->processQueryPdnFromModem(ILjava/lang/Object;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    .line 2134
    :goto_0
    monitor-enter v2

    .line 2135
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2136
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    return-void

    .line 2131
    :cond_0
    const-string v3, "HtcTelephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query PDN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2136
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 13
    .parameter "request"

    .prologue
    const/4 v12, 0x6

    const/4 v7, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 2212
    if-eqz p1, :cond_3

    .line 2213
    const/4 v0, 0x0

    .line 2215
    .local v0, commandSend:Z
    iget-object v5, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 2216
    .local v4, queryCmds:[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2217
    new-instance v3, Lcom/android/internal/telephony/APNParam;

    invoke-direct {v3}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 2218
    .local v3, pdnParam:Lcom/android/internal/telephony/APNParam;
    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0xa4

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2219
    .local v1, msg:Landroid/os/Message;
    array-length v5, v4

    const/4 v8, 0x7

    if-ne v5, v8, :cond_4

    .line 2220
    const-string v5, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 2222
    const/4 v2, 0x0

    .line 2224
    .local v2, networkType:I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v2

    .line 2226
    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 2235
    iput v11, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2239
    :goto_1
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 2241
    :goto_2
    aget-object v5, v4, v10

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2243
    const/4 v5, 0x3

    :try_start_2
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_3
    iput v6, v3, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 2245
    :goto_4
    aget-object v5, v4, v11

    if-eqz v5, :cond_1

    .line 2246
    sget-object v5, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2247
    :goto_5
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    if-lez v5, :cond_1

    aget-object v5, v4, v11

    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2248
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    goto :goto_5

    .line 2228
    :sswitch_0
    iput v6, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_1

    .line 2231
    :sswitch_1
    iput v10, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_1

    :cond_0
    move v6, v7

    .line 2243
    goto :goto_3

    .line 2252
    :cond_1
    const/4 v5, 0x5

    :try_start_3
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 2254
    :goto_6
    aget-object v5, v4, v12

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 2301
    .end local v2           #networkType:I
    :goto_7
    if-eqz v3, :cond_2

    .line 2302
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2303
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/HtcTelephony;->setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z

    move-result v0

    .line 2306
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_2
    if-nez v0, :cond_3

    .line 2307
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2308
    monitor-enter p1

    .line 2309
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2310
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2313
    .end local v0           #commandSend:Z
    .end local v4           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2256
    .restart local v0       #commandSend:Z
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v3       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v4       #queryCmds:[Ljava/lang/String;
    :cond_4
    array-length v5, v4

    const/16 v8, 0xb

    if-ne v5, v8, :cond_7

    .line 2257
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 2258
    const-string v5, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/4 v2, 0x0

    .line 2261
    .restart local v2       #networkType:I
    const/4 v5, 0x1

    :try_start_5
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    .line 2263
    :goto_8
    sparse-switch v2, :sswitch_data_1

    .line 2272
    iput v11, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2275
    :goto_9
    aget-object v5, v4, v10

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2277
    const/4 v5, 0x3

    :try_start_6
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2280
    :goto_a
    const/4 v5, 0x4

    :try_start_7
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_b
    iput v5, v3, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2282
    :goto_c
    const/4 v5, 0x5

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 2283
    aget-object v5, v4, v12

    if-eqz v5, :cond_6

    .line 2284
    sget-object v5, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2285
    :goto_d
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    if-lez v5, :cond_6

    aget-object v5, v4, v12

    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2286
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    goto :goto_d

    .line 2265
    :sswitch_2
    iput v6, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_9

    .line 2268
    :sswitch_3
    iput v10, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_9

    :cond_5
    move v5, v7

    .line 2280
    goto :goto_b

    .line 2290
    :cond_6
    const/4 v5, 0x7

    :try_start_8
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2293
    :goto_e
    const/16 v5, 0x8

    :try_start_9
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->authType:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2295
    :goto_f
    const/16 v5, 0x9

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 2296
    const/16 v5, 0xa

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_7

    .line 2299
    .end local v2           #networkType:I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 2310
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catchall_0
    move-exception v5

    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v5

    .line 2294
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #networkType:I
    .restart local v3       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_0
    move-exception v5

    goto :goto_f

    .line 2291
    :catch_1
    move-exception v5

    goto :goto_e

    .line 2281
    :catch_2
    move-exception v5

    goto :goto_c

    .line 2278
    :catch_3
    move-exception v5

    goto :goto_a

    .line 2262
    :catch_4
    move-exception v5

    goto :goto_8

    .line 2253
    :catch_5
    move-exception v5

    goto/16 :goto_6

    .line 2244
    :catch_6
    move-exception v5

    goto/16 :goto_4

    .line 2240
    :catch_7
    move-exception v5

    goto/16 :goto_2

    .line 2225
    :catch_8
    move-exception v5

    goto/16 :goto_0

    .line 2226
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 2263
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private pdnUpdateResponse(IILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2316
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2317
    .local v0, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v1, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2318
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    monitor-enter v0

    .line 2320
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2321
    monitor-exit v0

    .line 2322
    return-void

    .line 2321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private printException()V
    .locals 0

    .prologue
    .line 991
    return-void
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 10
    .parameter "resultType"
    .parameter "result"
    .parameter "request"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1946
    move-object v5, p2

    check-cast v5, Lcom/android/internal/telephony/APNParam;

    .line 1947
    .local v5, resultAPNParam:Lcom/android/internal/telephony/APNParam;
    if-eqz v5, :cond_a

    .line 1948
    const/4 v3, 0x6

    .line 1949
    .local v3, itemsAdd:I
    packed-switch p1, :pswitch_data_0

    .line 1952
    :goto_0
    iget-object v6, p3, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v4, v6

    check-cast v4, [Ljava/lang/String;

    .line 1953
    .local v4, prevResults:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1954
    .local v0, currResults:[Ljava/lang/String;
    if-nez v4, :cond_b

    .line 1955
    add-int/lit8 v6, v3, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 1956
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    .line 1965
    :cond_0
    if-lt v3, v7, :cond_1

    .line 1966
    :try_start_0
    array-length v6, v0

    sub-int/2addr v6, v3

    iget-object v9, v5, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v9, v0, v6

    .line 1968
    :cond_1
    const/4 v6, 0x2

    if-lt v3, v6, :cond_2

    .line 1969
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    iget v9, v5, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v6

    .line 1971
    :cond_2
    const/4 v6, 0x3

    if-lt v3, v6, :cond_3

    .line 1972
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v9, v6, 0x2

    iget v6, v5, Lcom/android/internal/telephony/APNParam;->state:I

    if-eqz v6, :cond_c

    move v6, v7

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 1974
    :cond_3
    const/4 v6, 0x4

    if-lt v3, v6, :cond_4

    .line 1975
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x3

    iget-object v7, v5, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 1977
    :cond_4
    const/4 v6, 0x5

    if-lt v3, v6, :cond_5

    .line 1978
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v7, v6, 0x4

    iget v6, v5, Lcom/android/internal/telephony/APNParam;->type:I

    if-ltz v6, :cond_d

    iget v6, v5, Lcom/android/internal/telephony/APNParam;->type:I

    sget-object v8, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_d

    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    iget v8, v5, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v6, v6, v8

    :goto_2
    aput-object v6, v0, v7

    .line 1981
    :cond_5
    const/4 v6, 0x6

    if-lt v3, v6, :cond_6

    .line 1982
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x5

    iget v7, v5, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1984
    :cond_6
    const/4 v6, 0x7

    if-lt v3, v6, :cond_7

    .line 1985
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x6

    iget v7, v5, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1987
    :cond_7
    const/16 v6, 0x8

    if-lt v3, v6, :cond_8

    .line 1988
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x7

    iget-object v7, v5, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 1990
    :cond_8
    const/16 v6, 0x9

    if-lt v3, v6, :cond_9

    .line 1991
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x8

    iget-object v7, v5, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 1993
    :cond_9
    iput-object v0, p3, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    .end local v0           #currResults:[Ljava/lang/String;
    .end local v3           #itemsAdd:I
    .end local v4           #prevResults:[Ljava/lang/String;
    :cond_a
    :goto_3
    return-void

    .line 1950
    .restart local v3       #itemsAdd:I
    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_0

    .line 1959
    .restart local v0       #currResults:[Ljava/lang/String;
    .restart local v4       #prevResults:[Ljava/lang/String;
    :cond_b
    array-length v6, v4

    add-int/2addr v6, v3

    new-array v0, v6, [Ljava/lang/String;

    .line 1960
    const/4 v2, 0x0

    .local v2, index:I
    :goto_4
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 1961
    aget-object v6, v4, v2

    aput-object v6, v0, v2

    .line 1960
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #index:I
    :cond_c
    move v6, v8

    .line 1972
    goto :goto_1

    .line 1978
    :cond_d
    :try_start_1
    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v6, v6, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1994
    :catch_0
    move-exception v1

    .line 1995
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "HtcTelephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing PDN ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1949
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z
    .locals 13
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    .line 1874
    const/4 v8, 0x0

    .line 1876
    .local v8, querySuccess:Z
    const/4 v0, 0x0

    .line 1878
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v9, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 1881
    :goto_0
    const/4 v5, 0x0

    .line 1882
    .local v5, mmdt:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1883
    iget-object v9, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v9, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 1886
    .end local v5           #mmdt:Ljava/lang/Object;
    :cond_0
    if-eqz v5, :cond_1

    .line 1887
    const/4 v3, 0x0

    .line 1889
    .local v3, methodAPNParam_get:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v9, "getAPNParams"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/internal/telephony/APNParam;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 1892
    :goto_1
    if-eqz v3, :cond_2

    .line 1893
    const/4 v9, 0x2

    iput v9, p2, Landroid/os/Message;->arg2:I

    .line 1895
    const/4 v9, 0x2

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1896
    const/4 v8, 0x1

    .line 1940
    .end local v3           #methodAPNParam_get:Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    return v8

    .line 1897
    .restart local v3       #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1898
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "HtcTelephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1902
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v7, -0x1

    .line 1904
    .local v7, profileIndex:I
    :try_start_3
    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    .line 1916
    :cond_3
    if-ltz v7, :cond_1

    .line 1917
    const/4 v4, 0x0

    .line 1918
    .local v4, methodName:Ljava/lang/String;
    iget v9, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v9, :pswitch_data_0

    .line 1930
    :goto_3
    :pswitch_0
    const/4 v9, 0x2

    :try_start_4
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v0, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1931
    const/4 v9, 0x1

    iput v9, p2, Landroid/os/Message;->arg2:I

    .line 1932
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1933
    const/4 v8, 0x1

    goto :goto_2

    .line 1905
    .end local v4           #methodName:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1906
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v9, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    .line 1907
    .local v6, msgDataArray:[Ljava/lang/Object;
    if-eqz v6, :cond_3

    array-length v9, v6

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, v6, v9

    if-eqz v9, :cond_3

    .line 1908
    const/4 v9, 0x0

    aget-object v9, v6, v9

    check-cast v9, [Ljava/lang/String;

    move-object v2, v9

    check-cast v2, [Ljava/lang/String;

    .line 1909
    .local v2, knownPdns:[Ljava/lang/String;
    array-length v9, v2

    add-int/lit8 v7, v9, -0x1

    .line 1910
    :goto_4
    if-ltz v7, :cond_3

    aget-object v9, v2, v7

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1911
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 1920
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #knownPdns:[Ljava/lang/String;
    .end local v6           #msgDataArray:[Ljava/lang/Object;
    .restart local v4       #methodName:Ljava/lang/String;
    :pswitch_1
    const-string v4, "get3GPPAPNParams"

    .line 1921
    goto :goto_3

    .line 1923
    :pswitch_2
    const-string v4, "getEHRPDAPNParams"

    .line 1924
    goto :goto_3

    .line 1926
    :pswitch_3
    const-string v4, "getLTEAPNParams"

    goto :goto_3

    .line 1934
    :catch_2
    move-exception v1

    .line 1935
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v9, "HtcTelephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1890
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #methodName:Ljava/lang/String;
    .end local v7           #profileIndex:I
    :catch_3
    move-exception v9

    goto/16 :goto_1

    .line 1879
    .end local v3           #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v9

    goto/16 :goto_0

    .line 1918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 935
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 936
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 940
    .local v1, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 941
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 944
    monitor-enter v1

    .line 945
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 947
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v2

    goto :goto_0

    .line 952
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 953
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 952
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 964
    return-void
.end method

.method public static setMainPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2808
    return-void
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z
    .locals 12
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    .line 2147
    const/4 v6, 0x0

    .line 2149
    .local v6, setSuccess:Z
    const/4 v0, 0x0

    .line 2151
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v7, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 2154
    :goto_0
    const/4 v4, 0x0

    .line 2155
    .local v4, mmdt:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2156
    iget-object v7, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v7, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2159
    .end local v4           #mmdt:Ljava/lang/Object;
    :cond_0
    if-eqz v4, :cond_1

    .line 2160
    const/4 v2, 0x0

    .line 2162
    .local v2, methodAPNParam_set:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v7, "setAPNParams"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lcom/android/internal/telephony/APNParam;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 2165
    :goto_1
    if-eqz v2, :cond_2

    .line 2166
    iput v11, p2, Landroid/os/Message;->arg2:I

    .line 2168
    const/4 v7, 0x2

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2169
    const/4 v6, 0x1

    .line 2208
    .end local v2           #methodAPNParam_set:Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    return v6

    .line 2170
    .restart local v2       #methodAPNParam_set:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2171
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN2 error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2175
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v5, -0x1

    .line 2177
    .local v5, profileIndex:I
    :try_start_3
    iget-object v7, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 2180
    :goto_3
    if-ltz v5, :cond_1

    .line 2181
    const/4 v3, 0x0

    .line 2182
    .local v3, methodName:Ljava/lang/String;
    iget v7, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v7, :pswitch_data_0

    .line 2195
    :goto_4
    :pswitch_0
    const/4 v7, 0x7

    :try_start_4
    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2198
    const/4 v7, 0x1

    iput v7, p2, Landroid/os/Message;->arg2:I

    .line 2199
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p2, v7, v8

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2201
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 2184
    :pswitch_1
    const-string v3, "set3GPPAPNParams"

    .line 2185
    goto :goto_4

    .line 2187
    :pswitch_2
    const-string v3, "setEHRPDAPNParams"

    .line 2188
    goto :goto_4

    .line 2190
    :pswitch_3
    const-string v3, "setLTEAPNParams"

    goto :goto_4

    .line 2202
    :catch_1
    move-exception v1

    .line 2203
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v7, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2178
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #methodName:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto/16 :goto_3

    .line 2163
    .end local v5           #profileIndex:I
    :catch_3
    move-exception v7

    goto/16 :goto_1

    .line 2152
    .end local v2           #methodAPNParam_set:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v7

    goto/16 :goto_0

    .line 2182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setSubPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2819
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 6
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 1332
    const/4 v1, 0x0

    .line 1333
    .local v1, result:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1334
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x87

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1340
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1344
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1345
    return-object v1

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtcTelephony"

    const-string v4, "interrupted while trying to sendAllowedCSIMCommand"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1344
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1233
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1234
    const-string v2, "HtcTelephony"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_0
    return-object v1

    .line 1238
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1240
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1244
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1245
    const-string v2, "HtcTelephony"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_0
    return-object v1

    .line 1249
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1251
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 1255
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1256
    const-string v2, "HtcTelephony"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :goto_0
    return-object v1

    .line 1260
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1262
    .local v0, result:Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public cancelMissedCallsNotification()V
    .locals 2

    .prologue
    .line 3020
    const-string v0, "HtcTelephony"

    const-string v1, "cancelMissedCallsNotification() implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->cancelMissedCallsNotification()V

    .line 3023
    :cond_0
    return-void
.end method

.method public checkTestIcc()Z
    .locals 2

    .prologue
    .line 1815
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->checkTestIcc()Z

    move-result v0

    .line 1818
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 1137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1138
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1139
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1142
    .local v0, err:Ljava/lang/Integer;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1144
    const/4 v1, 0x1

    .line 1146
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 2

    .prologue
    .line 1543
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->confirmFirstDataRoaming()V

    .line 1546
    :cond_0
    return-void
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 1583
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->dialWithoutDelay(Landroid/content/Intent;)Z

    .line 1586
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2716
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 976
    const-string v0, "HtcTelephony"

    const-string v1, "dispose in framework"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2709
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2476
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->enableMpdp(Z)V

    .line 2479
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2678
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2681
    if-eqz p1, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 2686
    :cond_0
    return-void

    .line 2679
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 981
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    const-string v1, "HtcTelephony"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "HtcTelephony"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveCallConnectTime()J
    .locals 2

    .prologue
    .line 1690
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveCallConnectTime()J

    move-result-wide v0

    .line 1693
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1674
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 1677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2484
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    .line 2487
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1682
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 1685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1720
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    .line 1723
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1744
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v0

    .line 1747
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2763
    const/4 v0, 0x0

    return v0
.end method

.method public getCardCheckedState()I
    .locals 1

    .prologue
    .line 2865
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationExt(I)Landroid/os/Bundle;
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 2700
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentActiveCallDuration()J
    .locals 2

    .prologue
    .line 3043
    const-string v0, "HtcTelephony"

    const-string v1, "getCurrentActiveCallDuration() implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentCallState()I
    .locals 2

    .prologue
    .line 1830
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentCallState()I

    move-result v0

    .line 1833
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2770
    const/4 v0, 0x0

    return v0
.end method

.method public getDataStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2778
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 2

    .prologue
    .line 1529
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDetailIccStatus()[I

    move-result-object v0

    .line 1532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 3

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 1362
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 2

    .prologue
    .line 1553
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v0

    .line 1556
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1807
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1810
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 2
    .parameter "stack"

    .prologue
    .line 2396
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v0

    .line 2399
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2857
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    .line 1443
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1758
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v0

    .line 1761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2989
    const-string v0, ""

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephony;->lastError:I

    return v0
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 1
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
    .line 2723
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkTypeExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2731
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2739
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 2
    .parameter "profileSlot"

    .prologue
    .line 1843
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v0

    .line 1846
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 1865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    const/16 v0, 0xa0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2658
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerKeyFlag()Z
    .locals 2

    .prologue
    .line 1712
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPowerKeyFlag()Z

    move-result v0

    .line 1715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 2

    .prologue
    .line 2380
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2382
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType()I

    move-result v0

    .line 2383
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRejectAllCalls()Z
    .locals 3

    .prologue
    .line 2587
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] getRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    return v0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 1219
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 1220
    :cond_0
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1226
    :goto_0
    return-object v0

    .line 1224
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1226
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 2

    .prologue
    .line 1565
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    .line 1568
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 2

    .prologue
    .line 1503
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubsidyLockTypes()I

    move-result v0

    .line 1506
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2436
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    .line 2439
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2449
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    .line 2452
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTLoopBackMode()Z
    .locals 2

    .prologue
    .line 1800
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVTLoopBackMode()Z

    move-result v0

    .line 1803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTSimulatedMode()Z
    .locals 2

    .prologue
    .line 1787
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVTSimulatedMode()Z

    .line 1790
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2755
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCardExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2747
    const/4 v0, 0x0

    return v0
.end method

.method public hasVTCall()Z
    .locals 2

    .prologue
    .line 1822
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasVTCall()Z

    move-result v0

    .line 1825
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .locals 2

    .prologue
    .line 1647
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcCdmaEndCall()Z

    move-result v0

    .line 1650
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 2

    .prologue
    .line 1622
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcCdmaExitRadioPowerSaveMode()V

    .line 1625
    :cond_0
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 2

    .prologue
    .line 1632
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v0

    .line 1635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 2

    .prologue
    .line 1728
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isCallWaiting()Z

    move-result v0

    .line 1731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 1657
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isFdnEnabled()Z

    move-result v0

    .line 1660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2849
    const/4 v0, 0x0

    return v0
.end method

.method public isUimPinEnabled()Z
    .locals 1

    .prologue
    .line 2696
    const/4 v0, 0x0

    return v0
.end method

.method public launchCallForwardingSettings()V
    .locals 3

    .prologue
    .line 2596
    const-string v1, "HtcTelephony"

    const-string v2, "[NFC] launchCallForwardingSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2601
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2602
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2603
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2605
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyKeyEvent(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 2650
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2651
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2652
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyKeyEvent keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 2655
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 4
    .parameter "busy"

    .prologue
    .line 2637
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2638
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2639
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyScreenBusy busy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->updateIdleScreenState(Z)V

    .line 2642
    :cond_0
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1129
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1132
    .local v0, channel:Ljava/lang/Integer;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public performHtcPhoneAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 2469
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->performHtcPhoneAction(I)V

    .line 2472
    :cond_0
    return-void
.end method

.method public performHtcPhoneActionExt(II)V
    .locals 2
    .parameter "action"
    .parameter "phoneType"

    .prologue
    .line 3037
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    return-void
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randu"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestCW_UW_DREG()V
    .locals 2

    .prologue
    .line 2547
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2549
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestCW_UW_DREG()V

    .line 2550
    :cond_0
    return-void
.end method

.method public requestCW_UW_REG()V
    .locals 2

    .prologue
    .line 2541
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestCW_UW_REG()V

    .line 2544
    :cond_0
    return-void
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 2

    .prologue
    .line 2412
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestEhrpdDomainNameChangeState()I

    move-result v0

    .line 2415
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetDOMAIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 2

    .prologue
    .line 2426
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDeviceCapability()I

    move-result v0

    .line 2429
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 2

    .prologue
    .line 2419
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDisableCapability()I

    move-result v0

    .line 2422
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 1185
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPU()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phonetype"

    .prologue
    .line 1173
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 1188
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1197
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetLTERFBandInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3011
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephony"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    const/16 v2, 0x98

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3014
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetLTETxRxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3004
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephony"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    const/16 v2, 0x96

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3007
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1168
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetPCSCF()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "ifc_name"

    .prologue
    .line 1070
    const/16 v1, 0x7b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1071
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1072
    const/4 v0, 0x0

    .line 1074
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 1191
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 2

    .prologue
    .line 1067
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 2511
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 2514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 1203
    if-nez p1, :cond_0

    .line 1204
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :goto_0
    return-object v0

    .line 1208
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1209
    const-string v1, "HtcTelephony"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1215
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    .line 2556
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2557
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1030
    .local v0, paraMD5:[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestQueryISIMSupported()Z
    .locals 2

    .prologue
    .line 2503
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestQueryISIMSupported()Z

    move-result v0

    .line 2506
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 2

    .prologue
    .line 2525
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestResetWSIMState()Z

    move-result v0

    .line 2528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randssd"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "authbs"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSendKddiSmsDeliver([B)Landroid/os/Bundle;
    .locals 1
    .parameter "data"

    .prologue
    .line 2998
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 2
    .parameter "ehrpdmode"

    .prologue
    .line 2406
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetEhrpdDisableCapability(I)V

    .line 2409
    :cond_0
    return-void
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2564
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetFastDormancy: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2567
    :cond_0
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 2518
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .parameter "lbsvalue"

    .prologue
    .line 2534
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetLBSNTFY(I)V

    .line 2537
    :cond_0
    return-void
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1376
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetMultiRABTrafficThrottling: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resetPdnForSettingsChange()V
    .locals 2

    .prologue
    .line 1856
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->resetPdnForSettingsChange()V

    .line 1859
    :cond_0
    return-void
.end method

.method public resetPdnForSettingsChange2()V
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2327
    const/16 v0, 0xa5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->sendRequestAsync(I)V

    .line 2329
    :cond_0
    return-void
.end method

.method public sendAT_BRIC()V
    .locals 2

    .prologue
    .line 1575
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->sendAT_BRIC()V

    .line 1578
    :cond_0
    return-void
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1608
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->sendAT_PushMail(II)V

    .line 1611
    :cond_0
    return-void
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 1666
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1669
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 2
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    .line 1766
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v0

    .line 1769
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 2
    .parameter "szRAND"

    .prologue
    .line 1773
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendCmmbAuthGSMReq([B)[B

    move-result-object v0

    .line 1776
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 2
    .parameter "languageCode"

    .prologue
    .line 2492
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendLanguageChange(I)V

    .line 2495
    :cond_0
    return-void
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2984
    const/4 v0, 0x0

    return v0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 1736
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    .line 1739
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 1267
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1268
    const-string v1, "HtcTelephony"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :goto_0
    return-void

    .line 1271
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 1272
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 1273
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 1275
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1277
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1278
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1279
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1281
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephony;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 1369
    :cond_0
    return-void
.end method

.method public setKddiOtaStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2994
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 2
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 1850
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setPdnSettings(ILjava/lang/String;)V

    .line 1853
    :cond_0
    return-void
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    const/16 v0, 0xa3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2144
    :cond_0
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "activePhone"

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1080
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPowerKeyFlag()V
    .locals 2

    .prologue
    .line 1705
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setPowerKeyFlag()V

    .line 1708
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2387
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(I)V

    .line 2390
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2667
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 2668
    const/16 v1, 0x94

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2669
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2670
    const/4 v1, 0x1

    .line 2673
    .end local v0           #err:Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRejectAllCalls(Z)V
    .locals 3
    .parameter "reject"

    .prologue
    .line 2577
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] setRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    .line 2579
    return-void
.end method

.method public setTimeZone(ZI)V
    .locals 2
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1599
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTimeZone(ZI)V

    .line 1602
    :cond_0
    return-void
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 2443
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2446
    :cond_0
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2460
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    :cond_0
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1794
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVTLoopBackMode(Z)V

    .line 1797
    :cond_0
    return-void
.end method

.method public setVTSimulatedMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1781
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVTSimulatedMode(Z)V

    .line 1784
    :cond_0
    return-void
.end method

.method public showIncallScreen()V
    .locals 0

    .prologue
    .line 2663
    return-void
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 2
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 3032
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "phoneType"

    .prologue
    .line 3027
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    const/4 v0, 0x0

    return v0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "pin"

    .prologue
    .line 1517
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 2

    .prologue
    .line 1698
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->switchHoldAndActiveCall()V

    .line 1701
    :cond_0
    return-void
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1119
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephony;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1124
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephony;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newpin"

    .prologue
    .line 1491
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 4
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1050
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1062
    return-void
.end method
