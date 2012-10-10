.class public Lcom/android/internal/telephony/IccCardProxy;
.super Lcom/android/internal/telephony/IccCard;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final AID_ENTRY_INDEX_CSIM:I = 0x0

.field private static final AID_ENTRY_INDEX_USIM:I = 0x1

.field private static final CHECK_AID_NUM:I = 0x2

.field private static final CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

.field private static final CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

#the value of this static final field might be set in the static constructor
.field public static final ENABLED:Z = false

.field private static final ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType; = null

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"

.field private static final RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final RUIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final TEST_ICC:Ljava/util/ArrayList;

.field private static final UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

.field private static final USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;


# instance fields
.field AID_CSIM:Ljava/lang/String;

.field AID_USIM:Ljava/lang/String;

.field private mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

.field private mIccRecords:[Lcom/android/internal/telephony/IccRecords;

.field private mNvOperatorNumeric:Ljava/lang/String;

.field private mStkService:Lcom/android/internal/telephony/cat/CatService;

.field private mTestIcc:Z

.field private mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsUpdatedRegistrants:Landroid/os/RegistrantList;

.field private supportAID:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/IccCardProxy;->ENABLED:Z

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v1

    const-string v4, "999"

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->TEST_ICC:Ljava/util/ArrayList;

    .line 791
    new-array v0, v6, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 797
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 802
    new-array v0, v6, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 807
    new-array v0, v7, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 813
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->CSIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 817
    new-array v0, v7, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 823
    new-array v0, v5, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_ONLY_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 827
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v5

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v6

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 834
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 841
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-void

    :cond_1
    move v0, v1

    .line 56
    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/16 v5, 0x35

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    const-string v0, "Iccs"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    const-string v0, "A0000003431002"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_CSIM:Ljava/lang/String;

    .line 74
    const-string v0, "A0000000871002"

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_USIM:Ljava/lang/String;

    .line 80
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    .line 258
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 285
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/internal/telephony/BaseCommands;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3f8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3fa

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->resetIccDetailStatus()V

    .line 129
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 130
    return-void
.end method

.method private dispose_StkService()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 534
    :cond_0
    return-void
.end method

.method private searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 4
    .parameter "searchTypes"

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 561
    .local v1, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    if-nez v1, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getCdmaSubscriptionSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v2, v3, :cond_0

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, v3, :cond_1

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 567
    :cond_1
    if-nez v1, :cond_2

    .line 568
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v1

    .line 561
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_3
    return-object v1
.end method

.method private searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 4
    .parameter "searchTypes"

    .prologue
    .line 595
    const/4 v2, 0x0

    .line 597
    .local v2, operatorSpn:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 598
    if-nez v2, :cond_0

    .line 599
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 600
    .local v1, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 597
    .end local v1           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    return-object v2
.end method

.method private setUICCStatus()V
    .locals 14

    .prologue
    const/16 v13, 0xe

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, appIndex:I
    const/4 v2, 0x0

    .line 453
    .local v2, e_utran:Z
    const/4 v7, 0x0

    .line 459
    .local v7, provision:Z
    const/4 v3, 0x0

    .line 460
    .local v3, epsmmi:Z
    const/4 v4, 0x0

    .line 463
    .local v4, excpetion:Z
    const/4 v6, 0x0

    .line 464
    .local v6, operator:Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 465
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v9, v9, v1

    if-eqz v9, :cond_0

    .line 468
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, AID:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v13, :cond_0

    .line 470
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_USIM:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 473
    const-string v9, "IccCardProxy"

    const-string v10, "Support AID_USIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aput-boolean v11, v9, v11

    .line 475
    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 476
    .local v5, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_0

    .line 477
    instance-of v9, v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v9, :cond_0

    .line 478
    iget-boolean v2, v5, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    .line 480
    iget-boolean v3, v5, Lcom/android/internal/telephony/IccRecords;->mEPSMMI:Z

    .line 481
    iget-boolean v4, v5, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 483
    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v5           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 499
    .end local v0           #AID:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .restart local v0       #AID:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->AID_CSIM:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 488
    const-string v9, "IccCardProxy"

    const-string v10, "Support AID_CSIM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aput-boolean v11, v9, v12

    .line 490
    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 491
    .restart local v5       #iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_0

    .line 492
    instance-of v9, v5, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v9, :cond_0

    .line 493
    iget-boolean v7, v5, Lcom/android/internal/telephony/IccRecords;->mIMSI_M_Programmed:Z

    goto :goto_1

    .line 502
    .end local v0           #AID:Ljava/lang/String;
    .end local v5           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    const/4 v8, 0x0

    .line 503
    .local v8, uicc_type:I
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v11

    if-ne v9, v11, :cond_5

    if-ne v2, v11, :cond_5

    .line 504
    const/4 v8, 0x2

    .line 517
    :cond_3
    :goto_2
    const-string v9, "IccCardProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uicc_type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 520
    const-string v6, ""

    .line 524
    :cond_4
    invoke-virtual {p0, v7, v8, v6}, Lcom/android/internal/telephony/IccCardProxy;->broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V

    .line 526
    return-void

    .line 505
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v12

    if-eq v9, v11, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->supportAID:[Z

    aget-boolean v9, v9, v11

    if-ne v9, v11, :cond_3

    .line 509
    :cond_6
    if-nez v2, :cond_7

    if-ne v4, v11, :cond_7

    if-ne v3, v11, :cond_7

    .line 510
    const/4 v8, 0x2

    goto :goto_2

    .line 512
    :cond_7
    const/4 v8, 0x1

    goto :goto_2
.end method


# virtual methods
.method public checkTestIcc()Z
    .locals 3

    .prologue
    .line 246
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    return v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose_StkService()V

    .line 139
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/BaseCommands;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v1, :cond_3

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    aput-object v3, v1, v0

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 170
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_6

    .line 171
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aput-object v3, v1, v0

    .line 171
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_5
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 181
    .end local v0           #i:I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v1, :cond_7

    .line 182
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 183
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 185
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_8

    .line 187
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 189
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v1, :cond_9

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 191
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 193
    :cond_9
    return-void
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 12
    .parameter "appType"

    .prologue
    .line 848
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v10, :cond_4

    .line 850
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 851
    .local v9, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 871
    :goto_0
    move-object v0, v9

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v8, v0, v3

    .line 872
    .local v8, searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .local v1, arr$:[Lcom/android/internal/telephony/IccFileHandler;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v4, v1, v2

    .line 873
    .local v4, iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v7, 0x0

    .line 874
    .local v7, matchHandler:Z
    if-eqz v4, :cond_0

    .line 875
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 902
    :cond_0
    :goto_3
    if-eqz v7, :cond_2

    .line 910
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v2           #i$:I
    .end local v4           #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .end local v6           #len$:I
    .end local v7           #matchHandler:Z
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_4
    return-object v4

    .line 853
    .restart local v9       #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_0
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 854
    goto :goto_0

    .line 856
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 857
    goto :goto_0

    .line 859
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 860
    goto :goto_0

    .line 862
    :pswitch_3
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 863
    goto :goto_0

    .line 866
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->ISIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0

    .line 877
    .restart local v1       #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .restart local v2       #i$:I
    .restart local v4       #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v6       #len$:I
    .restart local v7       #matchHandler:Z
    .restart local v8       #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_5
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .line 878
    goto :goto_3

    .line 880
    :pswitch_6
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    .line 881
    goto :goto_3

    .line 883
    :pswitch_7
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .line 884
    goto :goto_3

    .line 886
    :pswitch_8
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    .line 887
    goto :goto_3

    .line 890
    :pswitch_9
    instance-of v7, v4, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .line 891
    goto :goto_3

    .line 893
    :pswitch_a
    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    if-nez v10, :cond_1

    const/4 v7, 0x1

    :goto_5
    goto :goto_3

    :cond_1
    const/4 v7, 0x0

    goto :goto_5

    .line 872
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 871
    .end local v4           #iccFileH:Lcom/android/internal/telephony/IccFileHandler;
    .end local v7           #matchHandler:Z
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 909
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_4
    const-string v10, "IccCardProxy"

    const-string v11, "Default IccFileHandler"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_4

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 875
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final getIccFileHandlers()[Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 981
    :cond_0
    const/4 v0, 0x0

    .line 983
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    goto :goto_0
.end method

.method public getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 3
    .parameter "appType"

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 581
    .local v1, operatorNumeric:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 582
    .local v0, iccRecd:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 583
    instance-of v2, v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_1

    .line 584
    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v0           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 590
    :cond_0
    :goto_0
    return-object v1

    .line 586
    .restart local v0       #iccRecd:Lcom/android/internal/telephony/IccRecords;
    :cond_1
    instance-of v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_0

    .line 587
    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v0           #iccRecd:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;
    .locals 12
    .parameter "appType"

    .prologue
    .line 918
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v10, :cond_4

    .line 920
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 921
    .local v9, searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 936
    :goto_0
    move-object v0, v9

    .local v0, arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v8, v0, v3

    .line 937
    .local v8, searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v1, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v4, v1, v2

    .line 938
    .local v4, iccRecord:Lcom/android/internal/telephony/IccRecords;
    const/4 v7, 0x0

    .line 939
    .local v7, matchRecord:Z
    if-eqz v4, :cond_0

    .line 940
    sget-object v10, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 961
    :cond_0
    :goto_3
    :pswitch_0
    if-eqz v7, :cond_2

    .line 968
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v2           #i$:I
    .end local v4           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v6           #len$:I
    .end local v7           #matchRecord:Z
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_4
    return-object v4

    .line 923
    .restart local v9       #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 924
    goto :goto_0

    .line 926
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 927
    goto :goto_0

    .line 929
    :pswitch_3
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 930
    goto :goto_0

    .line 932
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/IccCardProxy;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0

    .line 942
    .restart local v1       #arr$:[Lcom/android/internal/telephony/IccRecords;
    .restart local v2       #i$:I
    .restart local v4       #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .restart local v6       #len$:I
    .restart local v7       #matchRecord:Z
    .restart local v8       #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_5
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 943
    goto :goto_3

    .line 945
    :pswitch_6
    instance-of v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 946
    goto :goto_3

    .line 948
    :pswitch_7
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 949
    goto :goto_3

    .line 951
    :pswitch_8
    instance-of v7, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 952
    goto :goto_3

    .line 954
    :pswitch_9
    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-nez v10, :cond_1

    const/4 v7, 0x1

    :goto_5
    goto :goto_3

    :cond_1
    const/4 v7, 0x0

    goto :goto_5

    .line 937
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 936
    .end local v4           #iccRecord:Lcom/android/internal/telephony/IccRecords;
    .end local v7           #matchRecord:Z
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 967
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v8           #searchType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v9           #searchingTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_4
    const-string v10, "IccCardProxy"

    const-string v11, "Default IccRecords"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccRecords:Lcom/android/internal/telephony/IccRecords;

    goto :goto_4

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getRecordsLoaded()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .local v0, arr$:[Lcom/android/internal/telephony/IccRecords;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 311
    .local v2, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    .end local v0           #arr$:[Lcom/android/internal/telephony/IccRecords;
    .end local v1           #i$:I
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v3           #len$:I
    :cond_0
    :goto_1
    return v4

    .line 310
    .restart local v0       #arr$:[Lcom/android/internal/telephony/IccRecords;
    .restart local v1       #i$:I
    .restart local v2       #iccRec:Lcom/android/internal/telephony/IccRecords;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v2           #iccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 217
    .local v0, iccRecord:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryIccDetailStatus()V
    .locals 3

    .prologue
    .line 202
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 203
    .local v0, anyIccHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v1, "IccCardProxy"

    const-string v2, "No icc handler avaliable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 265
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 271
    :cond_0
    return-void
.end method

.method public registerForRecordsUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 292
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 294
    return-void
.end method

.method public setAllRecordsLoaded(Ljava/lang/String;)V
    .locals 11
    .parameter "appId"

    .prologue
    const/4 v10, 0x0

    .line 329
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    array-length v7, v7

    if-gtz v7, :cond_2

    .line 330
    :cond_0
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IccFileH empty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v7, v7

    if-gtz v7, :cond_4

    .line 336
    :cond_3
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIccRecords empty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    array-length v7, v7

    if-ge v2, v7, :cond_6

    .line 343
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v7, v7, v2

    if-eqz v7, :cond_5

    .line 344
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getRecordLoadedStatus()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 342
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->setUICCStatus()V

    .line 357
    sget-object v7, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, apnOperatorNumeric:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 361
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.apn.operator.numeric"

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x49

    if-eq v7, v8, :cond_9

    .line 366
    const-string v4, ""

    .line 367
    .local v4, operatorNumeric:Ljava/lang/String;
    const/4 v5, 0x0

    .line 368
    .local v5, operatorSpn:Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionSource:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 438
    :cond_8
    :goto_2
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Icc Operator:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", APN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionSource:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v4           #operatorNumeric:Ljava/lang/String;
    .end local v5           #operatorSpn:Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v10, v10, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 444
    const-string v7, "LOADED"

    invoke-virtual {p0, v7, v10}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    .restart local v4       #operatorNumeric:Ljava/lang/String;
    .restart local v5       #operatorSpn:Ljava/lang/String;
    :cond_a
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 373
    .local v6, searchTypes:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 411
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preferred icc type unknown for type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v5

    .line 413
    if-nez v5, :cond_b

    .line 414
    const-string v5, ""

    .line 419
    :cond_b
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.sim.operator.numeric"

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v3, ""

    .line 422
    .local v3, iso:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 424
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 432
    :cond_c
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.sim.operator.iso-country"

    invoke-virtual {v7, v8, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-eqz v5, :cond_8

    .line 435
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "gsm.sim.operator.alpha"

    invoke-virtual {v7, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    .end local v3           #iso:Ljava/lang/String;
    :pswitch_0
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 376
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v4

    .line 377
    if-nez v4, :cond_d

    .line 378
    const-string v4, ""

    .line 380
    :cond_d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v5

    .line 381
    if-nez v5, :cond_b

    .line 382
    const-string v5, ""

    goto :goto_3

    .line 386
    :pswitch_1
    sget-object v6, Lcom/android/internal/telephony/IccCardProxy;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 387
    const/4 v4, 0x0

    .line 388
    const/4 v2, 0x0

    :goto_5
    array-length v7, v6

    if-ge v2, v7, :cond_f

    if-nez v4, :cond_f

    .line 389
    if-nez v4, :cond_e

    .line 390
    aget-object v7, v6, v2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccCardProxy;->getIccOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v4

    .line 388
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 393
    :cond_f
    if-nez v4, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getCdmaSubscriptionSource()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_10

    .line 395
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    .line 397
    :cond_10
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    if-ne v7, v4, :cond_12

    .line 407
    :cond_11
    :goto_6
    sget-object v7, Lcom/android/internal/telephony/IccCardProxy;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v5

    .line 409
    goto :goto_3

    .line 403
    :cond_12
    if-nez v4, :cond_11

    .line 404
    const-string v4, ""

    goto :goto_6

    .line 426
    .restart local v3       #iso:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 427
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 428
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 429
    .local v1, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 4
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardProxy;->TEST_ICC:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-ne p2, v3, :cond_2

    .line 234
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    .line 238
    :goto_0
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTestIcc] mTestIcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 236
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mTestIcc:Z

    goto :goto_0
.end method

.method public setupIccOperatorNumericFromNV(Ljava/lang/String;)V
    .locals 1
    .parameter "nvOperatorNumeric"

    .prologue
    .line 551
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNvOperatorNumeric:Ljava/lang/String;

    goto :goto_0
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 279
    return-void
.end method

.method public unregisterForRecordsUpdated(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 302
    return-void
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 24
    .parameter "ics"

    .prologue
    .line 629
    const/16 v16, 0x0

    .line 630
    .local v16, numApps:I
    const/4 v13, 0x0

    .line 631
    .local v13, identifiedApps:I
    if-eqz p1, :cond_0

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v16

    .line 634
    :cond_0
    if-gez v16, :cond_1

    .line 635
    const/16 v16, 0x0

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v14, v0, [Lcom/android/internal/telephony/IccFileHandler;

    .line 640
    .local v14, mExistingIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v15, v0, [Lcom/android/internal/telephony/IccRecords;

    .line 644
    .local v15, mExistingIccRecords:[Lcom/android/internal/telephony/IccRecords;
    :goto_1
    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 646
    const/16 v18, 0x0

    .line 647
    .local v18, simSlotId:I
    const/16 v17, -0x1

    .line 648
    .local v17, simForStkService:I
    const/4 v9, 0x0

    .line 650
    .local v9, iccFileHandlerChange:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_10

    .line 651
    const/4 v6, 0x0

    .line 652
    .local v6, disposeExistingIccFileHandler:Z
    const/4 v5, 0x0

    .line 654
    .local v5, createNewIccFileHandler:Z
    const/4 v8, 0x0

    .line 655
    .local v8, icapp:Lcom/android/internal/telephony/IccCardApplication;
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_e

    .line 656
    move/from16 v0, v16

    if-ge v7, v0, :cond_d

    .line 657
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    .line 658
    aget-object v19, v14, v7

    if-nez v19, :cond_b

    .line 659
    const/4 v5, 0x1

    .line 682
    :cond_2
    :goto_3
    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    .line 683
    :cond_3
    const-string v20, "IccCardProxy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "update SIM card ap:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " - "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v8, :cond_f

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v9, 0x1

    .line 687
    :cond_4
    if-eqz v6, :cond_6

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    aget-object v20, v14, v7

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose_StkService()V

    .line 690
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 693
    :cond_5
    aget-object v19, v14, v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 694
    const/16 v19, 0x0

    aput-object v19, v14, v7

    .line 696
    :cond_6
    if-eqz v5, :cond_8

    .line 697
    const/4 v11, 0x0

    .line 698
    .local v11, icfh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v12, 0x0

    .line 699
    .local v12, icr:Lcom/android/internal/telephony/IccRecords;
    sget-object v19, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 740
    const/4 v11, 0x0

    .line 741
    const/4 v12, 0x0

    .line 744
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    aput-object v11, v19, v7

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    aput-object v12, v19, v7

    .line 746
    if-eqz v11, :cond_8

    .line 747
    add-int/lit8 v13, v13, 0x1

    .line 650
    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 638
    .end local v5           #createNewIccFileHandler:Z
    .end local v6           #disposeExistingIccFileHandler:Z
    .end local v7           #i:I
    .end local v8           #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v9           #iccFileHandlerChange:Z
    .end local v14           #mExistingIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    .end local v15           #mExistingIccRecords:[Lcom/android/internal/telephony/IccRecords;
    .end local v17           #simForStkService:I
    .end local v18           #simSlotId:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    goto/16 :goto_0

    .line 642
    .restart local v14       #mExistingIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    goto/16 :goto_1

    .line 661
    .restart local v5       #createNewIccFileHandler:Z
    .restart local v6       #disposeExistingIccFileHandler:Z
    .restart local v7       #i:I
    .restart local v8       #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v9       #iccFileHandlerChange:Z
    .restart local v15       #mExistingIccRecords:[Lcom/android/internal/telephony/IccRecords;
    .restart local v17       #simForStkService:I
    .restart local v18       #simSlotId:I
    :cond_b
    aget-object v19, v14, v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 662
    const/4 v6, 0x1

    .line 663
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 666
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    aget-object v20, v14, v7

    aput-object v20, v19, v7

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v19, v0

    aget-object v20, v15, v7

    aput-object v20, v19, v7

    .line 668
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 672
    :cond_d
    aget-object v19, v14, v7

    if-eqz v19, :cond_2

    .line 673
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 678
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    .line 679
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 683
    :cond_f
    const-string v19, "(null)"

    goto/16 :goto_4

    .line 702
    .restart local v11       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v12       #icr:Lcom/android/internal/telephony/IccRecords;
    :pswitch_0
    new-instance v11, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 703
    .restart local v11       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v12, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 704
    .restart local v12       #icr:Lcom/android/internal/telephony/IccRecords;
    if-gez v17, :cond_7

    .line 705
    move/from16 v17, v7

    goto/16 :goto_5

    .line 710
    :pswitch_1
    new-instance v11, Lcom/android/internal/telephony/gsm/UsimFileHandler;

    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 711
    .restart local v11       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v12, Lcom/android/internal/telephony/gsm/SIMRecords;

    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 712
    .restart local v12       #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 713
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-static {v0, v12, v1, v11, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    goto/16 :goto_5

    .line 718
    :pswitch_2
    new-instance v11, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 719
    .restart local v11       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v12, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v11}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 720
    .restart local v12       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_5

    .line 722
    :pswitch_3
    new-instance v11, Lcom/android/internal/telephony/cdma/CsimFileHandler;

    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CsimFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 723
    .restart local v11       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v12, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v11}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 724
    .restart local v12       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_5

    .line 727
    :pswitch_4
    new-instance v11, Lcom/android/internal/telephony/ims/ISIMFileHandler;

    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/android/internal/telephony/ims/ISIMFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;ILjava/lang/String;)V

    .line 728
    .restart local v11       #icfh:Lcom/android/internal/telephony/IccFileHandler;
    new-instance v12, Lcom/android/internal/telephony/ims/HtcIsimRecords;

    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v11}, Lcom/android/internal/telephony/ims/HtcIsimRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 729
    .restart local v12       #icr:Lcom/android/internal/telephony/IccRecords;
    goto/16 :goto_5

    .line 751
    .end local v5           #createNewIccFileHandler:Z
    .end local v6           #disposeExistingIccFileHandler:Z
    .end local v8           #icapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v11           #icfh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v12           #icr:Lcom/android/internal/telephony/IccRecords;
    :cond_10
    if-eqz v9, :cond_11

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->setupIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 756
    :cond_11
    if-nez v13, :cond_13

    .line 757
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    .line 758
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    .line 785
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 787
    return-void

    .line 761
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_14

    if-ltz v17, :cond_14

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mUsimStkFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:[Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v20, v0

    aget-object v20, v20, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mIccFileHandler:[Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v22, v0

    aget-object v22, v22, v17

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCardProxy;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 766
    :cond_14
    if-eqz v9, :cond_12

    .line 774
    sget-object v19, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v10

    .line 775
    .local v10, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-nez v10, :cond_15

    .line 776
    sget-object v19, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v10

    .line 780
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->setupIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    goto/16 :goto_6

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
