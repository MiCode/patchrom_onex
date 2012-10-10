.class Lcom/htc/util/calendar/holidays/ChinaHoliday;
.super Lcom/htc/util/calendar/holidays/HolidayManager;
.source "HolidayManager.java"


# static fields
.field private static lunar:Lcom/htc/util/calendar/holidays/LunarUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/holidays/HolidayManager;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/HolidayManager;->mResource:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/htc/util/calendar/holidays/LunarUtils;->getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/LunarUtils;

    move-result-object v0

    sput-object v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    .line 54
    return-void
.end method


# virtual methods
.method public getHoliday(III)Ljava/lang/String;
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 58
    sget-object v1, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/util/calendar/holidays/LunarUtils;->set(III)V

    .line 59
    sget-object v1, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, solarHolidays:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 64
    .end local v0           #solarHolidays:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #solarHolidays:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/htc/util/calendar/holidays/ChinaHoliday;->lunar:Lcom/htc/util/calendar/holidays/LunarUtils;

    invoke-virtual {v1}, Lcom/htc/util/calendar/holidays/LunarUtils;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
