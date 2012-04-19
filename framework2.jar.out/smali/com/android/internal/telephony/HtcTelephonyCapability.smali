.class public Lcom/android/internal/telephony/HtcTelephonyCapability;
.super Ljava/lang/Object;
.source "HtcTelephonyCapability.java"


# static fields
.field public static final BUILT_ACCOUNT_CAPABILITIES:[I = null

.field public static final BUILT_ACCOUNT_FEATURE_FLAG_ICC_FOR_DATA_ONLY:I = -0x80000000

.field public static final BUILT_ACCOUNT_MAIN_FLAG_NV:I = 0x2

.field public static final BUILT_ACCOUNT_MAIN_FLAG_RUIM:I = 0x4

.field public static final BUILT_ACCOUNT_MAIN_FLAG_UICC:I = 0x10

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM:I = 0x1

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM_RUIM:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final BUILT_DATA_CAPABILITIES:I = 0x0

.field public static final BUILT_DATA_MAIN_FLAG_DEFAULT:I = 0x1

.field public static final BUILT_DATA_MAIN_FLAG_MM:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final BUILT_PHONE_CAPABILITIES:I = 0x0

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_DUAL_STAND_BY:I = 0x40000000

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_SINGLE_STAND_BY:I = 0x20000000

.field public static final BUILT_PHONE_FEATURE_FLAG_WORLD_PHONE:I = -0x80000000

.field public static final BUILT_PHONE_MAIN_FLAG_CDMA:I = 0x2

.field public static final BUILT_PHONE_MAIN_FLAG_GSM:I = 0x1

.field public static final BUILT_PHONE_MAIN_FLAG_GSM1:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final BUILT_RIL_CAPABILITIES:I = 0x0

.field public static final BUILT_RIL_MAIN_FLAG_AT_BASED:I = 0x1

.field public static final BUILT_RIL_MAIN_FLAG_QMI:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final BUILT_SMS_CAPABILITIES:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BUILT_TABLET_CAPABILITIES:I = 0x0

.field public static final BUILT_TABLET_FEATURE_PHONE_ENABLED:I = -0x80000000

.field public static final BUILT_TABLET_FEATURE_WIFI_ONLY:I = 0x40000000

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltPhoneCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltTabletCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_TABLET_CAPABILITIES:I

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltAccountCapabilites()[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltDataCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_DATA_CAPABILITIES:I

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltSmsCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_SMS_CAPABILITIES:I

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRilCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    .line 188
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBuiltAccountCapabilites()[I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 368
    const/4 v2, 0x0

    .line 371
    .local v2, preferNetworkMode:Ljava/lang/Integer;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v3, :sswitch_data_0

    .line 418
    if-nez v2, :cond_0

    .line 419
    const-string v3, "ro.telephony.default_network"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 422
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 443
    :pswitch_0
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 444
    .local v0, capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x1

    aput v3, v0, v4

    move-object v1, v0

    .line 445
    .end local v0           #capabilities:[I
    .local v1, capabilities:[I
    :goto_0
    return-object v1

    .line 374
    .end local v1           #capabilities:[I
    :sswitch_0
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 375
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    aput v3, v0, v4

    .line 376
    aget v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v0, v5

    move-object v1, v0

    .line 377
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 381
    .end local v1           #capabilities:[I
    :sswitch_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v3, :pswitch_data_1

    .line 388
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    .line 389
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    aput v3, v0, v4

    .line 390
    aget v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v0, v5

    move-object v1, v0

    .line 391
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 383
    .end local v1           #capabilities:[I
    :pswitch_1
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 384
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x1

    aput v3, v0, v4

    move-object v1, v0

    .line 385
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 395
    .end local v1           #capabilities:[I
    :sswitch_2
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 396
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x5

    aput v3, v0, v4

    move-object v1, v0

    .line 398
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 406
    .end local v1           #capabilities:[I
    :sswitch_3
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 407
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x10

    aput v3, v0, v4

    move-object v1, v0

    .line 408
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 411
    .end local v1           #capabilities:[I
    :sswitch_4
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    .line 412
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    aput v3, v0, v4

    .line 413
    aget v3, v0, v5

    const v4, -0x7ffffff0

    or-int/2addr v3, v4

    aput v3, v0, v5

    move-object v1, v0

    .line 415
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 424
    .end local v1           #capabilities:[I
    :pswitch_2
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 425
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    aput v3, v0, v4

    move-object v1, v0

    .line 426
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto :goto_0

    .line 429
    .end local v1           #capabilities:[I
    :pswitch_3
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    .line 430
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    aput v3, v0, v4

    .line 431
    aget v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    aput v3, v0, v5

    move-object v1, v0

    .line 432
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto/16 :goto_0

    .line 436
    .end local v1           #capabilities:[I
    :pswitch_4
    new-array v0, v5, [I

    aput v4, v0, v4

    .line 437
    .restart local v0       #capabilities:[I
    aget v3, v0, v4

    or-int/lit8 v3, v3, 0x10

    aput v3, v0, v4

    move-object v1, v0

    .line 438
    .end local v0           #capabilities:[I
    .restart local v1       #capabilities:[I
    goto/16 :goto_0

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x49 -> :sswitch_4
        0x50 -> :sswitch_1
        0x52 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_3
        0x97 -> :sswitch_2
        0x9d -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_3
        0xe0 -> :sswitch_3
    .end sparse-switch

    .line 422
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 374
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 381
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 388
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 411
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 429
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static final getBuiltDataCapabilities()I
    .locals 2

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, capabilities:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 464
    or-int/lit8 v0, v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 461
    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 462
    goto :goto_0

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x49 -> :sswitch_0
        0x52 -> :sswitch_0
        0x61 -> :sswitch_0
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltPhoneCapabilities()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, capabilities:I
    const/4 v1, 0x0

    .line 234
    .local v1, preferNetworkMode:Ljava/lang/Integer;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 272
    if-nez v1, :cond_0

    .line 273
    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 276
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 288
    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    .line 295
    :goto_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_1

    .line 321
    if-nez v1, :cond_1

    .line 322
    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 325
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 337
    :cond_2
    :goto_1
    :pswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_2

    .line 349
    :goto_2
    return v0

    .line 245
    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 246
    goto :goto_0

    .line 249
    :sswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_2

    .line 254
    or-int/lit8 v0, v0, 0x2

    .line 255
    goto :goto_0

    .line 251
    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 252
    goto :goto_0

    .line 260
    :sswitch_2
    or-int/lit8 v0, v0, 0x3

    .line 263
    goto :goto_0

    .line 266
    :sswitch_3
    or-int/lit8 v0, v0, 0x5

    .line 269
    goto :goto_0

    .line 279
    :pswitch_3
    or-int/lit8 v0, v0, 0x2

    .line 280
    goto :goto_0

    .line 283
    :pswitch_4
    or-int/lit8 v0, v0, 0x2

    .line 284
    goto :goto_0

    .line 303
    :sswitch_4
    or-int/2addr v0, v3

    .line 304
    goto :goto_1

    .line 307
    :sswitch_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_3

    .line 311
    or-int/2addr v0, v3

    .line 312
    goto :goto_1

    .line 316
    :sswitch_6
    const-string v2, "persist.radio.worldphone"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    or-int/2addr v0, v3

    goto :goto_1

    .line 328
    :pswitch_5
    or-int/2addr v0, v3

    .line 329
    goto :goto_1

    .line 340
    :sswitch_7
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    .line 341
    goto :goto_2

    .line 343
    :sswitch_8
    const/high16 v2, 0x2000

    or-int/2addr v0, v2

    .line 344
    goto :goto_2

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5c -> :sswitch_0
        0x70 -> :sswitch_2
        0x97 -> :sswitch_0
        0x9d -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_2
    .end sparse-switch

    .line 276
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 295
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_4
        0x2b -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x5c -> :sswitch_4
        0x97 -> :sswitch_4
        0x9d -> :sswitch_5
        0xaa -> :sswitch_4
        0xad -> :sswitch_4
        0xe0 -> :sswitch_4
    .end sparse-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 337
    :sswitch_data_2
    .sparse-switch
        0x70 -> :sswitch_7
        0xe3 -> :sswitch_8
        0xe4 -> :sswitch_7
    .end sparse-switch

    .line 249
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 307
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static final getBuiltRilCapabilities()I
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 479
    .local v0, capabilities:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 501
    or-int/lit8 v0, v0, 0x1

    .line 504
    :goto_0
    return v0

    .line 498
    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 499
    goto :goto_0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x3e -> :sswitch_0
        0x49 -> :sswitch_0
        0x52 -> :sswitch_0
        0x5b -> :sswitch_0
        0x61 -> :sswitch_0
        0x7c -> :sswitch_0
        0x89 -> :sswitch_0
        0x9f -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe3 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltSmsCapabilities()I
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, capabilities:I
    return v0
.end method

.method private static final getBuiltTabletCapabilities()I
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 356
    .local v0, capabilities:I
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v1, :cond_0

    .line 357
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 360
    :cond_0
    const-string v1, "ro.phone.function"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 364
    :cond_1
    return v0
.end method

.method public static getCapabilityLength([I)I
    .locals 1
    .parameter "builtCapabilities"

    .prologue
    .line 226
    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCapabilitiesEnabled(II)Z
    .locals 1
    .parameter "capabilities"
    .parameter "builtCapabilities"

    .prologue
    .line 198
    and-int v0, p1, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledInMultiCapabilities(I[I)Z
    .locals 5
    .parameter "capabilities"
    .parameter "builtMultiCapabilities"

    .prologue
    .line 210
    if-eqz p1, :cond_1

    .line 211
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 212
    .local v3, singleCapabilities:I
    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    const/4 v4, 0x1

    .line 217
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #singleCapabilities:I
    :goto_1
    return v4

    .line 211
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #singleCapabilities:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #singleCapabilities:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
