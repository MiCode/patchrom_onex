.class Lcom/htc/util/calendar/holidays/JapanHoliday;
.super Lcom/htc/util/calendar/holidays/HolidayManager;
.source "HolidayManager.java"


# instance fields
.field private Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/holidays/HolidayManager;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    .line 76
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/HolidayManager;->mResource:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    .line 77
    return-void
.end method


# virtual methods
.method public getHoliday(III)Ljava/lang/String;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->set(III)V

    .line 83
    iget-object v0, p0, Lcom/htc/util/calendar/holidays/JapanHoliday;->Utils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    invoke-virtual {v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getHolidays()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
