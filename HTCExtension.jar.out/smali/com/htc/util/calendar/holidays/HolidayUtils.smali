.class public Lcom/htc/util/calendar/holidays/HolidayUtils;
.super Ljava/lang/Object;
.source "HolidayUtils.java"


# static fields
.field public static final HOLIDAY_TYPE_CHINA:I = 0x1

.field public static final HOLIDAY_TYPE_JAPAN:I = 0x2

.field public static final HOLIDAY_TYPE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HolidayUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHolidayType()I
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isJapanHoildayEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x2

    .line 24
    :goto_0
    return v0

    .line 21
    :cond_0
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaHoildayEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaHoildayEnable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    const/high16 v0, 0x4000

    .line 39
    .local v0, FROM_VERSION:F
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, SUPPORT_LANGUAGE_CHINA:Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, SUPPORT_LANGUAGE_CHINESE:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, systemLanguage:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 48
    :cond_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    .line 70
    :cond_2
    :goto_0
    return v4

    .line 59
    :cond_3
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    move v4, v5

    .line 63
    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public static isChinaSku()Z
    .locals 1

    .prologue
    .line 75
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 78
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static isJapanHoildayEnable()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isJapanSku()Z

    move-result v0

    return v0
.end method

.method public static isJapanSku()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 106
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x51 -> :sswitch_0
        0xd1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isShowSolarHoilday()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v0

    return v0
.end method
