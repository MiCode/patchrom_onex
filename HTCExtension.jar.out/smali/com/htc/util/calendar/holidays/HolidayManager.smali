.class public abstract Lcom/htc/util/calendar/holidays/HolidayManager;
.super Ljava/lang/Object;
.source "HolidayManager.java"


# static fields
.field private static holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;


# instance fields
.field protected mResource:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/holidays/HolidayManager;->mResource:Landroid/content/res/Resources;

    .line 23
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/holidays/HolidayManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    const-class v1, Lcom/htc/util/calendar/holidays/HolidayManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit v1

    return-object v0

    .line 31
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaHoildayEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Lcom/htc/util/calendar/holidays/ChinaHoliday;

    invoke-direct {v0, p0}, Lcom/htc/util/calendar/holidays/ChinaHoliday;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    .line 36
    :cond_1
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isJapanHoildayEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/htc/util/calendar/holidays/JapanHoliday;

    invoke-direct {v0, p0}, Lcom/htc/util/calendar/holidays/JapanHoliday;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected abstract getHoliday(III)Ljava/lang/String;
.end method

.method public getHolidays(III)Ljava/lang/String;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 40
    sget-object v0, Lcom/htc/util/calendar/holidays/HolidayManager;->holidaymanager:Lcom/htc/util/calendar/holidays/HolidayManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/util/calendar/holidays/HolidayManager;->getHoliday(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
