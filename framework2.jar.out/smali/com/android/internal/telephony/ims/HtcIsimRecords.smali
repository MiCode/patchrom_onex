.class public final Lcom/android/internal/telephony/ims/HtcIsimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcIsimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    }
.end annotation


# static fields
.field public static final ADDRESS_TYPE_FQDN_VALUE:I = 0x0

.field public static final ADDRESS_TYPE_IPV4_VALUE:I = 0x1

.field public static final ADDRESS_TYPE_IPV6_VALUE:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_APP_REFRESH:I = 0x14

.field private static final EVENT_CHANNEL_SELECTION_DONE:I = 0x15

.field private static final EVENT_GET_DOMAIN_DONE:I = 0x5

.field private static final EVENT_GET_GBABP_DONE:I = 0x8

.field private static final EVENT_GET_IMPI_DONE:I = 0x4

.field private static final EVENT_GET_IMPU_DONE:I = 0x6

.field private static final EVENT_GET_IST_DONE:I = 0x3

.field private static final EVENT_GET_P_CSCF_DONE:I = 0x7

.field private static final EVENT_ISIM_READY:I = 0x1

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final HTC_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mBtid:Ljava/lang/String;

.field mDOMAIN:Ljava/lang/String;

.field mHasISIM:Z

.field mIMPI:Ljava/lang/String;

.field mIMPUList:[Ljava/lang/String;

.field mIsGbaSupported:Z

.field mIsimRecordsLoaded:Z

.field mKeyLifetime:Ljava/lang/String;

.field mPCSCFList:Landroid/os/Bundle;

.field mPCSCF_FQDN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPCSCF_IPV4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPCSCF_IPV6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRand:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 64
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "p"
    .parameter "iccHandler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 63
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 64
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    .line 100
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 102
    return-void
.end method

.method private ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 116
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 119
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForISIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0
.end method

.method private parserTLVRecord([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 581
    const/4 v1, 0x0

    .line 583
    .local v1, tlvValue:Ljava/lang/String;
    if-eqz p1, :cond_2

    array-length v3, p1

    if-le v3, v5, :cond_2

    .line 584
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, -0x80

    if-ne v3, v4, :cond_1

    .line 585
    aget-byte v0, p1, v5

    .line 587
    .local v0, tlvLength:I
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-lt v3, v0, :cond_0

    .line 588
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "UTF-8"

    invoke-direct {v2, p1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #tlvValue:Ljava/lang/String;
    .local v2, tlvValue:Ljava/lang/String;
    move-object v1, v2

    .line 600
    .end local v0           #tlvLength:I
    .end local v2           #tlvValue:Ljava/lang/String;
    .restart local v1       #tlvValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 590
    .restart local v0       #tlvLength:I
    :cond_0
    const-string v3, "GSM"

    const-string v4, "Wrong length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v3

    goto :goto_0

    .line 595
    .end local v0           #tlvLength:I
    :cond_1
    const-string v3, "GSM"

    const-string v4, "unknown tag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_2
    const-string v3, "GSM"

    const-string v4, "Empty tlv value or wrong length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearISimRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 699
    const-string v0, "GSM"

    const-string v1, "clearing ISIM records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 701
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPI(Ljava/lang/String;)V

    .line 702
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 703
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 704
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 705
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetDOMAIN(Ljava/lang/String;)V

    .line 706
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 707
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 708
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 709
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetIsGBASupported(Z)V

    .line 710
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 711
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 712
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 713
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 714
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 715
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 716
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 717
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccAppRefresh(Landroid/os/Handler;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForISIMReady(Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0
.end method

.method public fetchISimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 661
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 664
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    if-nez v1, :cond_1

    .line 666
    const-string v1, "GSM"

    const-string v2, "Started loading ISIM records"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->ensureISimSession(Landroid/os/Message;)V

    .line 668
    iput-boolean v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 670
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    invoke-static {v1}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 671
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasISIM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const-string v1, "GSM"

    const-string v2, "ISIM record loading already done, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 681
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 682
    const/16 v1, 0x6f07

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 683
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 685
    const/16 v1, 0x6f02

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 686
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 688
    const/16 v1, 0x6f03

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 689
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 691
    const/16 v1, 0x6f04

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 692
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "GSM"

    const-string v1, "ISIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 243
    const/4 v15, 0x0

    .line 246
    .local v15, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v22, :pswitch_data_0

    .line 572
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v15, :cond_1

    .line 573
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRecordLoaded()V

    .line 576
    :cond_1
    return-void

    .line 249
    :pswitch_1
    :try_start_1
    const-string v22, "GSM"

    const-string v23, "EVENT_ISIM_READY"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v9

    .line 569
    .local v9, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v22, "GSM"

    const-string v23, "Exception parsing RUIM record"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v15, :cond_1

    goto :goto_1

    .line 255
    .end local v9           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v22

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v23

    if-eqz v23, :cond_2

    if-eqz v15, :cond_2

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRecordLoaded()V

    .line 572
    :cond_2
    throw v22

    .line 260
    :pswitch_3
    :try_start_4
    const-string v22, "GSM"

    const-string v23, "EVENT_CHANNEL_SELECTION_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v15, 0x1

    .line 263
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 264
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 265
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ISIM problem: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v20, v22, v23

    .line 269
    .local v20, sid:I
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sessionId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/HtcIsimData;->SetSessionId(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    .line 272
    .local v4, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 273
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v12

    .line 279
    .local v12, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 280
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f02

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 281
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f03

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 282
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f04

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 283
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f07

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 286
    :cond_4
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f02

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 287
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f03

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 288
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f04

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 289
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f07

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 300
    .end local v4           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v20           #sid:I
    :pswitch_4
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_IST_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v15, 0x1

    .line 303
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 304
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 305
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (IST): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :cond_5
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 310
    .local v6, data:[B
    if-eqz v6, :cond_d

    array-length v0, v6

    move/from16 v22, v0

    if-lez v22, :cond_d

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v12

    .line 317
    .restart local v12       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v12, :cond_c

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 319
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    const/16 v23, 0x0

    aget-byte v22, v22, v23

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_6

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetIsGBASupported(Z)V

    .line 321
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "data[0]:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v24, v6, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mIsGbaSupported:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    .line 324
    .restart local v4       #app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v4, :cond_8

    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 327
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6fd5

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 319
    .end local v4           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_6
    const/16 v22, 0x0

    goto :goto_2

    .line 331
    .restart local v4       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6fd5

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 336
    :cond_8
    const-string v22, "GSM"

    const-string v23, "ISIM Application null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .end local v4           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_9
    const/16 v22, 0x0

    aget-byte v22, v6, v22

    and-int/lit8 v22, v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 339
    const/16 v22, 0x6f09

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 342
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 343
    const/16 v22, 0x0

    aget-byte v22, v6, v22

    and-int/lit8 v22, v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 344
    const/16 v22, 0x6f09

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 346
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 348
    :cond_b
    const-string v22, "GSM"

    const-string v23, "P-CSCF address service is not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    :cond_c
    const-string v22, "GSM"

    const-string v23, "IccFileHandler is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    .end local v12           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_d
    const-string v22, "GSM"

    const-string v23, "Empty EF_IST"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:[B
    :pswitch_5
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_IMPI_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v15, 0x1

    .line 370
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 372
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 373
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 374
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (IMPI): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    :cond_e
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 379
    .restart local v6       #data:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:[B
    :pswitch_6
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_DOMAIN_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v15, 0x1

    .line 392
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 394
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 395
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 396
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (DOMAIN): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    :cond_f
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 401
    .restart local v6       #data:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetDOMAIN(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:[B
    :pswitch_7
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_IMPU_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v15, 0x1

    .line 414
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 415
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    .line 416
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 417
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (IMPU): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    :cond_10
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 422
    .local v7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v13, impuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_12

    .line 424
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, s:I
    :goto_3
    move/from16 v0, v19

    if-ge v10, v0, :cond_12

    .line 425
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 426
    .local v17, record:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v21

    .line 428
    .local v21, uriValue:Ljava/lang/String;
    if-eqz v21, :cond_11

    .line 429
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 436
    .end local v10           #i:I
    .end local v17           #record:[B
    .end local v19           #s:I
    .end local v21           #uriValue:Ljava/lang/String;
    :cond_12
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_13

    .line 437
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 442
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 443
    new-instance v14, Landroid/content/Intent;

    const-string v22, "com.movial.gba_initialized"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 451
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v7           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v13           #impuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_8
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_GBABP_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 453
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14

    .line 454
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (GBABP): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 456
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 457
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 460
    :cond_14
    :try_start_5
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 461
    .restart local v6       #data:[B
    const/4 v10, 0x0

    .line 462
    .restart local v10       #i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aget-byte v16, v6, v10

    .line 464
    .local v16, len:I
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-static {v6, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 470
    add-int/lit8 v10, v16, 0x1

    .line 471
    .end local v11           #i:I
    .restart local v10       #i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-byte v16, v6, v10

    .line 472
    new-instance v22, Ljava/lang/String;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v11, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 477
    add-int v10, v11, v16

    .line 478
    .end local v11           #i:I
    .restart local v10       #i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-byte v16, v6, v10

    .line 479
    new-instance v22, Ljava/lang/String;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v11, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 483
    .end local v6           #data:[B
    .end local v11           #i:I
    .end local v16           #len:I
    :catch_1
    move-exception v8

    .line 484
    .local v8, e:Ljava/lang/Exception;
    :try_start_6
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to parse GBABP contents: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 486
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 487
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    goto/16 :goto_0

    .line 494
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v8           #e:Ljava/lang/Exception;
    :pswitch_9
    const-string v22, "GSM"

    const-string v23, "EVENT_APP_REFRESH"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 497
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 498
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v0, v22

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 499
    .local v18, result:[I
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EVENT_APP_REFRESH: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v22, 0x0

    aget v22, v18, v22

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 502
    const/16 v22, 0x1

    aget v22, v18, v22

    sparse-switch v22, :sswitch_data_0

    .line 510
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Not prepared to handle "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    goto/16 :goto_0

    .line 513
    :cond_15
    const-string v22, "GSM"

    const-string v23, "Unexpected: Some refresh for some other logical channel"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 520
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v18           #result:[I
    :pswitch_a
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_P_CSCF_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v15, 0x1

    .line 523
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 524
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 527
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 529
    .restart local v7       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .line 531
    .local v3, addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    const/4 v10, 0x0

    .restart local v10       #i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    .restart local v19       #s:I
    :goto_4
    move/from16 v0, v19

    if-ge v10, v0, :cond_19

    .line 532
    new-instance v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;

    .end local v3           #addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;-><init>(Lcom/android/internal/telephony/ims/HtcIsimRecords;[B)V

    .line 533
    .restart local v3       #addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    if-eqz v3, :cond_16

    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_16

    .line 536
    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    if-nez v22, :cond_17

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_16
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 538
    :cond_17
    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 540
    :cond_18
    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 546
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1a

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "address_type_fqdn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 551
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1b

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "address_type_ipv4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 556
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1c

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "address_type_ipv6"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 561
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetPCSCF(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
    .end packed-switch

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 645
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 650
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 201
    const-string v3, "GSM"

    const-string v4, "ISIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 207
    const-string v3, "gsm.icc.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_1
    :goto_0
    const-string v3, "READY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 218
    const-string v3, "GSM"

    const-string v4, "ISIMRecords: record load complete, but SIM is not ready state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    :goto_1
    return-void

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 209
    const-string v3, "gsm.icc.sub.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 211
    const-string v3, "gsm.icc.uim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 214
    :cond_5
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 224
    :cond_6
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 227
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, appId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .line 230
    .local v1, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_2

    .line 231
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": record load complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setAllRecordsLoaded(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    const-string v0, "GSM"

    const-string v1, "ISIMRecords onRadioOffOrNotAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 166
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onAllRecordsLoaded()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 192
    const-string v0, "GSM"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 2
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 145
    const-string v0, "GSM"

    const-string v1, "ISIMRecords onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 153
    const-string v0, "GSM"

    const-string v1, "ISIMRecords setVoiceMailNumber()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 172
    const-string v0, "GSM"

    const-string v1, "ISIMRecords setVoiceMessageWaiting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
