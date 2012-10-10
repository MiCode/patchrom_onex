.class public Lcom/htc/util/calendar/holidays/JapanHolidayUtils;
.super Ljava/lang/Object;
.source "JapanHolidayUtils.java"


# static fields
.field private static final INDEX_ADULT_DAY:I = 0x0

.field private static final INDEX_AGED_DAY:I = 0x2

.field private static final INDEX_AUTUMAL:I = 0x5

.field private static final INDEX_MARINE_DAY:I = 0x1

.field private static final INDEX_SPORT_DAY:I = 0x3

.field private static final INDEX_STR_COMPENSATORY:I = 0x6

.field private static final INDEX_VERNAL:I = 0x4

.field private static JapanHolidays:[Ljava/lang/String; = null

.field private static JapanHolidays_date:[Ljava/lang/String; = null

.field private static final STR_ADULT_DAY:Ljava/lang/String; = "AdultDay"

.field private static final STR_AGED_DAY:Ljava/lang/String; = "AgedDay"

.field private static final STR_AUTUMAL_DAY:Ljava/lang/String; = "AutumnalDay"

.field private static final STR_COMPENSATORY:Ljava/lang/String; = "Compensatory"

.field private static final STR_MARINE_DAY:Ljava/lang/String; = "MarineDay"

.field private static final STR_SPORT_DAY:Ljava/lang/String; = "SportsDay"

.field private static final STR_VERNAL_DAY:Ljava/lang/String; = "VernalDay"

.field private static final TAG:Ljava/lang/String; = "JapanHolidayUtils"

.field private static mCompensatoryHoliday:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentDate:Ljava/util/GregorianCalendar;

.field private static mJapanHolidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSpecailHoliday:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mYear:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;


# instance fields
.field private isAdultDay:Z

.field private isAgedDay:Z

.field private isAutumnalEquinox:Z

.field private isCompensatory:Z

.field private isCompensatoryDay:Z

.field private isMarineDay:Z

.field private isSpecialHoloiday:Z

.field private isSportsDay:Z

.field private isVernalEquinox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 5
    .parameter "rec"

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    .line 29
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    .line 30
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    .line 31
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    .line 32
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    .line 33
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    .line 34
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 35
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 36
    iput-boolean v4, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    .line 119
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 120
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 121
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 122
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 123
    const v2, 0x409000c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays:[Ljava/lang/String;

    .line 124
    const v2, 0x409000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays_date:[Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays:[Ljava/lang/String;

    array-length v1, v2

    .line 127
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 128
    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays_date:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->JapanHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private calculateSpecialDay(Ljava/util/GregorianCalendar;)V
    .locals 12
    .parameter "cal"

    .prologue
    const/16 v11, 0xe

    const/4 v7, 0x7

    const-wide v9, 0x3fcf003686a4ca4fL

    const/4 v8, 0x1

    .line 337
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, stryear:Ljava/lang/String;
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const-string v2, ""

    .line 341
    .local v2, holiday:Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v7}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 342
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AdultDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v4, v5, v11}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 345
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MarineDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v4, v5, v11}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 348
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AgedDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/16 v5, 0x9

    invoke-static {v4, v5, v7}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v2

    .line 351
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SportsDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-wide v4, 0x4034d7d566cf41f2L

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    int-to-double v6, v6

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    div-int/lit8 v6, v6, 0x4

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v1, v4

    .line 354
    .local v1, VernalDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "VernalDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-wide v4, 0x40373fb15b573eabL

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    int-to-double v6, v6

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x7bc

    div-int/lit8 v6, v6, 0x4

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    .line 358
    .local v0, AutumnalDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AutumnalDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v0           #AutumnalDay:I
    .end local v1           #VernalDay:I
    .end local v2           #holiday:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkCompensatory()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 366
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 367
    .local v2, month:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 368
    .local v3, date:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 369
    .local v1, year:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v9, :cond_1

    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 372
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 373
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    move v5, v4

    move v6, v4

    .line 374
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 376
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v8, v4, :cond_1

    .line 378
    invoke-virtual {v0, v10, v9}, Ljava/util/GregorianCalendar;->add(II)V

    .line 380
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 385
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, com:Ljava/lang/String;
    sget-object v4, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Compensatory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    .end local v7           #com:Ljava/lang/String;
    .end local v8           #i:I
    :cond_1
    return-void
.end method

.method private checkSpecialHoliday(III)V
    .locals 15
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    .line 250
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 252
    add-int/lit8 v7, p2, 0x1

    .line 254
    .local v7, monthOffset:I
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, strdate:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, strmonth:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, stryear:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, strDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, AdultDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, MarineDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, AgedDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, SportDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, VernalDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, AutumnalDay:Ljava/lang/String;
    sget-object v12, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Compensatory"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    .local v3, CompensatoryDay:Ljava/lang/String;
    const-string v12, "JapanHolidayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Special holiday AdultDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & MarineDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & AgedDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & SportDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & VernalDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & AutumnalDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & CompensatoryDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " & strDay is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 283
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    .line 284
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 287
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 288
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    .line 289
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 292
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 293
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    .line 294
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 298
    :cond_2
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 299
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 300
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 308
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 309
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    .line 310
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    .line 315
    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 316
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 317
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 322
    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 323
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    .line 324
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 328
    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 329
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    .line 330
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    .line 332
    :cond_7
    return-void
.end method

.method private static getAdultDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 532
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAgedDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/htc/util/calendar/holidays/JapanHolidayUtils;
    .locals 1
    .parameter "rec"

    .prologue
    .line 107
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    invoke-direct {v0, p0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    .line 110
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->singleHolidayUtils:Lcom/htc/util/calendar/holidays/JapanHolidayUtils;

    return-object v0
.end method

.method private static getMarineDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMondaybyMonth(III)Ljava/lang/String;
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "week_days"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 497
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 498
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1, v6}, Ljava/util/Calendar;->set(III)V

    .line 500
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 501
    .local v4, weekDay:I
    const/4 v1, 0x2

    .line 502
    .local v1, monDay:I
    const/4 v3, 0x1

    .line 504
    .local v3, sunDay:I
    const/4 v2, 0x0

    .line 507
    .local v2, sumOfDay:I
    if-ne v4, v1, :cond_0

    .line 508
    move v2, p2

    .line 521
    :goto_0
    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 513
    :cond_0
    if-ne v4, v3, :cond_1

    .line 514
    rsub-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v1

    add-int/2addr v5, p2

    add-int/lit8 v2, v5, -0x7

    goto :goto_0

    .line 517
    :cond_1
    rsub-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v1

    add-int v2, v5, p2

    goto :goto_0
.end method

.method private static getSecondSunDayOfMay()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 653
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 654
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 656
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 657
    .local v3, weekDay:I
    const/4 v2, 0x1

    .line 658
    .local v2, sunDay:I
    const/4 v1, 0x0

    .line 659
    .local v1, sumDay:I
    if-ne v3, v2, :cond_0

    .line 660
    const/4 v1, 0x7

    .line 665
    :goto_0
    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 663
    :cond_0
    rsub-int/lit8 v4, v3, 0x7

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x7

    goto :goto_0
.end method

.method private getSolarHoliday(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 7
    .parameter "cal"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 149
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, lmon:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, lday:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, aOtherFormat:Ljava/lang/String;
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    :goto_2
    return-object v3

    .line 149
    .end local v0           #aOtherFormat:Ljava/lang/String;
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 152
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 170
    .restart local v0       #aOtherFormat:Ljava/lang/String;
    .restart local v1       #lday:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    sget-object v3, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 174
    :cond_3
    const-string v3, ""

    goto :goto_2
.end method

.method private static getSpecialDate(Ljava/util/GregorianCalendar;I)Ljava/lang/String;
    .locals 14
    .parameter "cal"
    .parameter "index"

    .prologue
    const/16 v10, 0xe

    const/4 v9, 0x7

    const-wide v12, 0x3fcf003686a4ca4fL

    const/4 v11, 0x1

    .line 557
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, year:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, month:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, date:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, strdate:Ljava/lang/String;
    const-string v3, ""

    .line 566
    .local v3, holiday:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 648
    const-string v7, ""

    :goto_0
    return-object v7

    .line 570
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AdultDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 572
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 573
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_0
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 578
    goto :goto_0

    .line 582
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MarineDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 585
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_1
    move-object v7, v3

    .line 591
    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-static {v7, v8, v10}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 594
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AgedDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 596
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_2
    move-object v7, v3

    .line 601
    goto/16 :goto_0

    .line 598
    :cond_2
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8, v10}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 604
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SportsDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 606
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_3
    move-object v7, v3

    .line 611
    goto/16 :goto_0

    .line 608
    :cond_3
    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v8, 0x9

    invoke-static {v7, v8, v9}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 614
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VernalDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 616
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_4
    move-object v7, v3

    .line 624
    goto/16 :goto_0

    .line 618
    :cond_4
    const-wide v7, 0x4034d7d566cf41f2L

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    int-to-double v9, v9

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    div-int/lit8 v9, v9, 0x4

    int-to-double v9, v9

    sub-double/2addr v7, v9

    double-to-int v1, v7

    .line 622
    .local v1, VernalDay:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 627
    .end local v1           #VernalDay:I
    :pswitch_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AutumnalDay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 629
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :goto_5
    move-object v7, v3

    .line 637
    goto/16 :goto_0

    .line 631
    :cond_5
    const-wide v7, 0x40373fb15b573eabL

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    int-to-double v9, v9

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    invoke-virtual {p0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x7bc

    div-int/lit8 v9, v9, 0x4

    int-to-double v9, v9

    sub-double/2addr v7, v9

    double-to-int v0, v7

    .line 634
    .local v0, AutumnalDay:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "9"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 640
    .end local v0           #AutumnalDay:I
    :pswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Compensatory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 642
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holiday:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #holiday:Ljava/lang/String;
    :cond_6
    move-object v7, v3

    .line 645
    goto/16 :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSpecialHoliday()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v0, ""

    .line 195
    .local v0, specialholiday:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v0, "\u79cb\u5206\u306e\u65e5"

    .line 197
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAutumnalEquinox:Z

    .line 201
    :cond_0
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    if-eqz v1, :cond_1

    .line 202
    const-string/jumbo v0, "\u6625\u5206\u306e\u65e5"

    .line 203
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isVernalEquinox:Z

    .line 207
    :cond_1
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    if-eqz v1, :cond_2

    .line 208
    const-string/jumbo v0, "\u632f\u66ff\u4f11\u65e5"

    .line 209
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatoryDay:Z

    .line 210
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    .line 213
    :cond_2
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    if-eqz v1, :cond_3

    .line 214
    const-string/jumbo v0, "\u6d77\u306e\u65e5"

    .line 215
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isMarineDay:Z

    .line 219
    :cond_3
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    if-eqz v1, :cond_4

    .line 221
    const-string/jumbo v0, "\u656c\u8001\u306e\u65e5"

    .line 222
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAgedDay:Z

    .line 226
    :cond_4
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    if-eqz v1, :cond_5

    .line 228
    const-string/jumbo v0, "\u6210\u4eba\u306e\u65e5"

    .line 229
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isAdultDay:Z

    .line 233
    :cond_5
    iget-boolean v1, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    if-eqz v1, :cond_6

    .line 235
    const-string/jumbo v0, "\u4f53\u80b2\u306e\u65e5"

    .line 236
    iput-boolean v2, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSportsDay:Z

    .line 239
    :cond_6
    return-object v0
.end method

.method private static getSportsDay(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getMondaybyMonth(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCompensatoryHoliday()Z
    .locals 13

    .prologue
    .line 399
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 400
    .local v2, month:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 401
    .local v3, date:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 406
    .local v1, year:I
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 409
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 411
    .local v0, calThuesday:Ljava/util/GregorianCalendar;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 412
    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 414
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 415
    .local v4, calThursday:Ljava/util/GregorianCalendar;
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 416
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 417
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 419
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v10}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 420
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 422
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isHoliday(Ljava/util/GregorianCalendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    const/4 v5, 0x1

    .line 438
    .end local v0           #calThuesday:Ljava/util/GregorianCalendar;
    .end local v4           #calThursday:Ljava/util/GregorianCalendar;
    :goto_0
    return v5

    .line 429
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x2d

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 431
    .local v12, strDay:Ljava/lang/String;
    sget-object v5, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCompensatoryHoliday:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Compensatory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 433
    .local v11, CompensatoryDay:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 434
    const/4 v5, 0x1

    goto :goto_0

    .line 438
    .end local v11           #CompensatoryDay:Ljava/lang/String;
    .end local v12           #strDay:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isHoliday(Ljava/util/GregorianCalendar;)Z
    .locals 12
    .parameter "cal"

    .prologue
    const/16 v11, 0x9

    const/4 v6, 0x1

    const/4 v10, 0x5

    const/4 v9, 0x2

    .line 449
    invoke-virtual {p1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, year:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, month:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, date:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v11, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, tempmonth:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    if-ge v7, v11, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, tempdate:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, temp:Ljava/lang/String;
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mSpecailHoliday:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 492
    :cond_0
    :goto_2
    return v6

    .line 453
    .end local v2           #temp:Ljava/lang/String;
    .end local v3           #tempdate:Ljava/lang/String;
    .end local v4           #tempmonth:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 457
    .restart local v4       #tempmonth:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 489
    .restart local v2       #temp:Ljava/lang/String;
    .restart local v3       #tempdate:Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mJapanHolidays:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 492
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private isSunday(Ljava/util/GregorianCalendar;)Z
    .locals 2
    .parameter "cal"

    .prologue
    const/4 v0, 0x1

    .line 442
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHolidays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isSpecialHoloiday:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->isCompensatory:Z

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSpecialHoliday()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->getSolarHoliday(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected set(III)V
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 65
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 68
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    sget-object v1, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "JapanHolidayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacularSpecialDay for year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->calculateSpecialDay(Ljava/util/GregorianCalendar;)V

    .line 72
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mYear:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sget-object v2, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->checkSpecialHoliday(III)V

    .line 79
    invoke-direct {p0}, Lcom/htc/util/calendar/holidays/JapanHolidayUtils;->checkCompensatory()V

    .line 102
    return-void
.end method
