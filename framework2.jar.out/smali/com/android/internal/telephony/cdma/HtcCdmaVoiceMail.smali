.class public Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;
.super Landroid/os/Handler;
.source "HtcCdmaVoiceMail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT__FETCH_CARRIER_ID:I = 0x1

.field private static final EVENT__FETCH_CARRIER_ID2:I = 0x2

.field private static final EVENT__FETCH_CARRIER_ID3:I = 0x3

.field private static final EVENT__MDN_SETUP:I = 0xb

.field private static final EVENT__MDN_TO_DEFAULT:I = 0xa

.field private static final EVENT__TAG_MDN_SETUP:I = 0xc

.field private static final EVENT__UPDATE_USIM_DONE:I = 0xd

.field private static final LOG_PREFIX:Ljava/lang/String; = "VM-"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final REASON_MDN_LOADED:I = 0x3

.field public static final REASON_NVREADY_DEFAULT_FILLIN:I = 0x2

.field public static final REASON_OTASP_UPDATE:I = 0x5

.field public static final REASON_POWERON_DEFAULT_FILLIN:I = 0x1

.field public static final REASON_RADIO_OFF:I = 0x4

.field public static final REASON_TAG_MDN_EXTERN_UPDATE:I = 0x6

.field private static final REQUEST_STATUS__CID_CHK:I = 0x2

.field private static final REQUEST_STATUS__NEED_RUN:I = 0x1

.field private static final REQUEST_STATUS__NONE:I


# instance fields
.field private mCarrierId:Ljava/lang/Integer;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private mVmRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;",
            ">;"
        }
    .end annotation
.end field

.field private spVoiceMail_count:Ljava/lang/String;

.field private spVoiceMail_number:Ljava/lang/String;

.field private spVoiceMail_tag:Ljava/lang/String;

.field private voicemailAlphaTag:Ljava/lang/String;

.field private voicemailNumber:Ljava/lang/String;

.field private waitingMails:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/PhoneNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "notifier"
    .parameter "countPartSharePref"
    .parameter "numberPartSharePref"
    .parameter "tagPartSharePref"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 363
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 59
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_count:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_tag:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private cdmaAccountInNV()Z
    .locals 5

    .prologue
    .line 141
    sget-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 142
    .local v0, accountType:I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_0

    .line 143
    const/4 v4, 0x1

    .line 146
    .end local v0           #accountType:I
    :goto_1
    return v4

    .line 141
    .restart local v0       #accountType:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0           #accountType:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 5
    .parameter "completedRequest"

    .prologue
    const/4 v4, 0x0

    .line 388
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM-done request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .line 396
    .local v0, request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    invoke-static {v1, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 399
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 404
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .line 407
    .restart local v0       #request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    if-nez v0, :cond_1

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 415
    :cond_2
    if-eqz v0, :cond_3

    .line 420
    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    .line 423
    .end local v0           #request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    :cond_3
    return-void
.end method

.method private decodeCarrierId(Landroid/os/AsyncResult;)Ljava/lang/Integer;
    .locals 5
    .parameter "ar"

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, cid:Ljava/lang/Integer;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 474
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, command:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    .end local v1           #command:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 476
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getGsmIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 3

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, iccr:Lcom/android/internal/telephony/IccRecords;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 209
    .local v0, iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_0

    .line 210
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 216
    .end local v0           #iccCdPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_0
    :goto_0
    return-object v1

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSIMRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    goto :goto_0
.end method

.method private mdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 6
    .parameter "request"

    .prologue
    const/4 v1, 0x2

    .line 616
    if-nez p1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 621
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 623
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v1, :cond_1

    .line 624
    iput v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    .line 625
    const/4 v0, 0x1

    iget v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 631
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    iget v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V

    .line 634
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0
.end method

.method private mdnToDefault(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 531
    if-nez p1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v2, 0x0

    .line 536
    .local v2, forceUpdate:Z
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, currentMdn:Ljava/lang/String;
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    packed-switch v0, :pswitch_data_0

    .line 598
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 600
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v5, :cond_3

    .line 601
    iput v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    .line 602
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 540
    :pswitch_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v0, v4, :cond_4

    .line 543
    :cond_1
    const/4 v2, 0x0

    .line 577
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 578
    const/4 v3, 0x0

    .line 610
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    iget v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V

    .line 612
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    .line 545
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v5, :cond_5

    .line 547
    iput v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    .line 548
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 552
    :cond_5
    const/4 v2, 0x1

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 566
    :sswitch_0
    const/4 v2, 0x0

    .line 567
    goto :goto_1

    .line 575
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 582
    :pswitch_2
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    .line 583
    const/4 v3, 0x0

    .line 584
    goto :goto_2

    .line 586
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 588
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v5, :cond_7

    .line 589
    iput v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    .line 590
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 593
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6f -> :sswitch_0
        0x71 -> :sswitch_0
        0x75 -> :sswitch_0
        0x8b -> :sswitch_0
    .end sparse-switch
.end method

.method private needCarrierId()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->cdmaAccountInNV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-eqz v1, :cond_0

    .line 522
    :cond_2
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 523
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    .locals 2
    .parameter "msg"

    .prologue
    .line 366
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    .line 367
    .local v0, request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 369
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 377
    const/4 v0, 0x0

    .line 383
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mVmRequestList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private tagMdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 638
    if-nez p1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 642
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->needCarrierId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 644
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    if-ge v0, v1, :cond_1

    .line 645
    iput v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestStatus:I

    .line 646
    iget v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 652
    :cond_1
    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    iget v5, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V

    .line 654
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->useGsmSIMtoStoreNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->getGsmIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v6

    .line 656
    .local v6, iccr:Lcom/android/internal/telephony/IccRecords;
    if-eqz v6, :cond_2

    .line 657
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM-Update SIM, by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 667
    .end local v6           #iccr:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto/16 :goto_0
.end method

.method private updateCarrierId(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 3
    .parameter "ar"
    .parameter "cid"

    .prologue
    .line 482
    if-eqz p2, :cond_0

    .line 483
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    .line 485
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 486
    .local v0, onComplete:Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 487
    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 490
    :cond_1
    return-void
.end method

.method private updateNumber(Landroid/content/SharedPreferences;ZLjava/lang/String;Ljava/lang/Integer;I)V
    .locals 6
    .parameter "sp"
    .parameter "forceUpdate"
    .parameter "currentMdn"
    .parameter "nvCarrierId"
    .parameter "reason"

    .prologue
    .line 166
    move-object v0, p1

    .line 167
    .local v0, spf:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    :cond_0
    const/4 v2, 0x0

    .line 171
    .local v2, voiceMailNum:Ljava/lang/String;
    const/4 v1, 0x0

    .line 172
    .local v1, updateSp:Z
    if-eqz p2, :cond_3

    .line 173
    const/4 v1, 0x1

    .line 174
    move-object v2, p3

    .line 188
    :cond_1
    :goto_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM-Update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v1, :cond_2

    .line 195
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    .line 196
    invoke-direct {p0, v0, v2, p4, p5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateNumberToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 203
    :cond_2
    return-void

    .line 177
    :cond_3
    if-eqz v0, :cond_4

    .line 178
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_4
    if-nez v2, :cond_1

    .line 181
    if-eqz p4, :cond_5

    const/4 v1, 0x1

    .line 182
    :goto_1
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 181
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateNumberToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 3
    .parameter "sp"
    .parameter "number"
    .parameter "nvCarrierId"
    .parameter "reason"

    .prologue
    .line 151
    move-object v1, p1

    .line 152
    .local v1, spf:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    :cond_0
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private updateUsimDone(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->completeVmRequest(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    .line 677
    return-void
.end method

.method private useGsmSIMtoStoreNumber()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 493
    sget-object v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v0, v2, v1

    .line 494
    .local v0, cdmaAccount:I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 497
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_1

    .line 500
    const/4 v1, 0x1

    .line 503
    :cond_1
    return v1
.end method


# virtual methods
.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 8

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->useGsmSIMtoStoreNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->getGsmIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 256
    .local v0, iccr:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 302
    .end local v0           #iccr:Lcom/android/internal/telephony/IccRecords;
    .end local v2           #number:Ljava/lang/String;
    .local v3, number:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 268
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 269
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 270
    .local v4, sp:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 271
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->spVoiceMail_number:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query SP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    move-object v3, v2

    .line 279
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto :goto_0

    .line 284
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    .line 286
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 288
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query SPM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 291
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto/16 :goto_0

    .line 295
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 296
    .local v1, id:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM-done query DB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCarrierId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->voicemailNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 302
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto/16 :goto_0

    .line 295
    .end local v1           #id:I
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getWaitingMails()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 433
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 468
    :goto_0
    :pswitch_0
    return-void

    .line 435
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mdnToDefault(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    .line 441
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->processVmRequestMessage(Landroid/os/Message;)Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->tagMdnSetup(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    .line 444
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "C8F8000000"

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 448
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 449
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->decodeCarrierId(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v1

    .line 450
    .local v1, cid:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "C826401F00"

    const/4 v4, 0x3

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateCarrierId(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 459
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cid:Ljava/lang/Integer;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 460
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->decodeCarrierId(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateCarrierId(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 463
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->updateUsimDone(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;)V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public increaseWaitingMails(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 117
    return-void
.end method

.method public resetAlphaTagToDefault(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 331
    return-void
.end method

.method public setAlphaTag(Ljava/lang/String;I)V
    .locals 0
    .parameter "alphaTag"
    .parameter "reason"

    .prologue
    .line 339
    return-void
.end method

.method public setNumber(Ljava/lang/String;I)V
    .locals 2
    .parameter "number"
    .parameter "reason"

    .prologue
    .line 240
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V

    .line 241
    .local v0, request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    .line 242
    iput p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    .line 243
    iput-object p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    .line 244
    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void
.end method

.method public setNumberToDefault(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 225
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V

    .line 226
    .local v0, request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    .line 227
    iput p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    .line 228
    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method

.method public setTagAndNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"
    .parameter "reason"

    .prologue
    .line 312
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V

    .line 313
    .local v0, request:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    .line 314
    iput p4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->reason:I

    .line 315
    iput-object p1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->tag:Ljava/lang/String;

    .line 316
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->number:Ljava/lang/String;

    .line 317
    iput-object p3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->response:Landroid/os/Message;

    .line 318
    iget v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->requestType:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public setWaitingMails(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 125
    return-void
.end method
