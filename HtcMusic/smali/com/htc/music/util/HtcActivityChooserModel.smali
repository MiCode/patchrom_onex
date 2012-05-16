.class public Lcom/htc/music/util/HtcActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "HtcActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/HtcActivityChooserModel$1;,
        Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;,
        Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;,
        Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;,
        Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;,
        Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;,
        Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;,
        Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;,
        Lcom/htc/music/util/HtcActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "[HtcActivityChooserModel]"

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/music/util/HtcActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultOrder:Z

.field private mReadShareHistoryCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/music/util/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;Lcom/htc/music/util/HtcActivityChooserModel$1;)V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;

    .line 288
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryMaxSize:I

    .line 298
    iput-boolean v3, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    .line 309
    iput-boolean v2, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 317
    iput-boolean v3, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    .line 329
    iput-boolean v2, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIsDefaultOrder:Z

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    .line 384
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iput-object p2, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/music/util/HtcActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/util/HtcActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/HtcActivityChooserModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIsDefaultOrder:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/HtcActivityChooserModel;ILjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/HtcActivityChooserModel;->setDefaultWeight(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/util/HtcActivityChooserModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    return p1
.end method

.method private addHisoricalRecord(Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;)Z
    .locals 3
    .parameter "historicalRecord"

    .prologue
    .line 746
    iget-object v2, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 748
    .local v0, added:Z
    if-eqz v0, :cond_0

    .line 749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 750
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 751
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->persistHistoricalData()V

    .line 752
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    .line 754
    :cond_0
    monitor-exit v2

    return v0

    .line 755
    .end local v0           #added:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/music/util/HtcActivityChooserModel;
    .locals 3
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    .line 361
    sget-object v2, Lcom/htc/music/util/HtcActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    :try_start_0
    sget-object v1, Lcom/htc/music/util/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel;

    .line 364
    .local v0, dataModel:Lcom/htc/music/util/HtcActivityChooserModel;
    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/htc/music/util/HtcActivityChooserModel;

    .end local v0           #dataModel:Lcom/htc/music/util/HtcActivityChooserModel;
    invoke-direct {v0, p0, p1}, Lcom/htc/music/util/HtcActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    .restart local v0       #dataModel:Lcom/htc/music/util/HtcActivityChooserModel;
    sget-object v1, Lcom/htc/music/util/HtcActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    invoke-direct {v0}, Lcom/htc/music/util/HtcActivityChooserModel;->readHistoricalData()V

    .line 370
    monitor-exit v2

    return-object v0

    .line 371
    .end local v0           #dataModel:Lcom/htc/music/util/HtcActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 1095
    const/4 v1, 0x0

    .line 1096
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-object v2

    .line 1099
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1103
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 1104
    const-string v0, "[HtcActivityChooserModel]"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1108
    const-string v0, "[HtcActivityChooserModel]"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1112
    :cond_3
    const/4 v6, 0x0

    .line 1113
    goto :goto_0

    .line 1116
    :cond_4
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1117
    .local v9, nValueIdx:I
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1119
    .local v8, nNameIdx:I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1121
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eq v12, v9, :cond_5

    if-ne v12, v8, :cond_7

    .line 1122
    :cond_5
    const-string v0, "[HtcActivityChooserModel]"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1126
    :cond_6
    const/4 v6, 0x0

    .line 1127
    goto :goto_0

    .line 1129
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1131
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1132
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1133
    .local v10, name:Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1134
    .local v11, value:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v10           #name:Ljava/lang/String;
    .end local v11           #value:I
    :cond_8
    move-object v2, v7

    .line 1137
    goto :goto_0
.end method

.method private loadActivitiesLocked()V
    .locals 8

    .prologue
    .line 780
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 781
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 782
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 783
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 785
    .local v5, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 786
    .local v4, resolveInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 787
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 788
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v7, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v7, p0, v3, v2}, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    .end local v0           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v4           #resolveInfoCount:I
    .end local v5           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    .line 799
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 797
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->notifyChanged()V

    goto :goto_1
.end method

.method private persistHistoricalData()V
    .locals 4

    .prologue
    .line 635
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 640
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 641
    monitor-exit v1

    .line 649
    :goto_0
    return-void

    .line 643
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    .line 645
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;Lcom/htc/music/util/HtcActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 648
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsLocked()V
    .locals 5

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 763
    .local v0, choiceRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryMaxSize:I

    sub-int v2, v3, v4

    .line 764
    .local v2, pruneCount:I
    if-gtz v2, :cond_1

    .line 774
    :cond_0
    return-void

    .line 767
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 768
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 769
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 808
    const/4 v4, 0x0

    .line 810
    .local v4, recordsRemoved:Z
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 811
    .local v1, historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 812
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    .line 813
    .local v0, historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    iget-object v5, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, recordPackageName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 816
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 817
    const/4 v4, 0x1

    .line 811
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    .end local v0           #historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    .end local v3           #recordPackageName:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 822
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 823
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    .line 825
    :cond_2
    return-void
.end method

.method private readHistoricalData()V
    .locals 4

    .prologue
    .line 612
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 614
    :cond_0
    monitor-exit v1

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mCanReadHistoricalData:Z

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 618
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 619
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;Lcom/htc/music/util/HtcActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 621
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setDefaultWeight(ILjava/util/List;)V
    .locals 4
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p2, actInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    const-string v0, "content://customization_settings/SettingTable/sharevia"

    .line 1074
    .local v0, customize_uri:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1075
    .local v1, defaultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1081
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.htctwitter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.dropbox.android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.cloudstorage.skydrive"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.notes"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-direct {p0, v1, p2, p1}, Lcom/htc/music/util/HtcActivityChooserModel;->setWeight(Ljava/util/HashMap;Ljava/util/List;I)V

    .line 1091
    return-void
.end method

.method private setWeight(Ljava/util/HashMap;Ljava/util/List;I)V
    .locals 16
    .parameter
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, actInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mIsDefaultOrder:Z

    .line 1144
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 1145
    add-int/lit8 v13, v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1146
    .local v12, packageName:Ljava/lang/String;
    if-nez v12, :cond_1

    .line 1144
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1148
    :cond_1
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move/from16 v0, p3

    if-ge v11, v0, :cond_0

    .line 1149
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v13, v13, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1150
    .local v10, infoPackageName:Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1152
    const/4 v6, 0x0

    .local v6, cnt:I
    :goto_2
    if-gt v6, v9, :cond_0

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1155
    .local v4, chosenActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v13, v4, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .local v5, chosenName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v13, v13, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->intent:Landroid/content/Intent;

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1160
    .local v2, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;

    if-eqz v13, :cond_2

    .line 1164
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1165
    .local v3, choiceIntentCopy:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v3}, Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Lcom/htc/music/util/HtcActivityChooserModel;Landroid/content/Intent;)Z

    move-result v7

    .line 1167
    .local v7, handled:Z
    if-eqz v7, :cond_2

    .line 1215
    .end local v2           #choiceIntent:Landroid/content/Intent;
    .end local v3           #choiceIntentCopy:Landroid/content/Intent;
    .end local v4           #chosenActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .end local v5           #chosenName:Landroid/content/ComponentName;
    .end local v6           #cnt:I
    .end local v7           #handled:Z
    .end local v10           #infoPackageName:Ljava/lang/String;
    .end local v11           #j:I
    .end local v12           #packageName:Ljava/lang/String;
    :goto_3
    return-void

    .line 1172
    .restart local v2       #choiceIntent:Landroid/content/Intent;
    .restart local v4       #chosenActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .restart local v5       #chosenName:Landroid/content/ComponentName;
    .restart local v6       #cnt:I
    .restart local v10       #infoPackageName:Ljava/lang/String;
    .restart local v11       #j:I
    .restart local v12       #packageName:Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/high16 v15, 0x3f80

    invoke-direct {v8, v5, v13, v14, v15}, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 1175
    .local v8, historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1176
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1178
    .local v1, added:Z
    if-eqz v1, :cond_3

    .line 1179
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 1180
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/util/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/util/HtcActivityChooserModel;->persistHistoricalData()V

    .line 1183
    :cond_3
    monitor-exit v14

    .line 1152
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1183
    .end local v1           #added:Z
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1148
    .end local v2           #choiceIntent:Landroid/content/Intent;
    .end local v4           #chosenActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .end local v5           #chosenName:Landroid/content/ComponentName;
    .end local v6           #cnt:I
    .end local v8           #historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1214
    .end local v10           #infoPackageName:Ljava/lang/String;
    .end local v11           #j:I
    .end local v12           #packageName:Ljava/lang/String;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    goto :goto_3
.end method

.method private sortActivities()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;

    iget-object v2, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;->sort(Ljava/util/List;Ljava/util/List;)V

    .line 681
    invoke-virtual {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->notifyChanged()V

    .line 683
    :cond_0
    monitor-exit v1

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->loadActivitiesLocked()V

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public chooseActivity(I)Landroid/content/Intent;
    .locals 9
    .parameter "index"

    .prologue
    .line 503
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 505
    .local v2, chosenActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v3, chosenName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v6, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 510
    .local v0, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 512
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;

    if-eqz v6, :cond_0

    .line 514
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 515
    .local v1, choiceIntentCopy:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v1}, Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Lcom/htc/music/util/HtcActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 517
    .local v4, handled:Z
    if-eqz v4, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 526
    .end local v0           #choiceIntent:Landroid/content/Intent;
    .end local v1           #choiceIntentCopy:Landroid/content/Intent;
    .end local v4           #handled:Z
    :goto_0
    return-object v0

    .line 522
    .restart local v0       #choiceIntent:Landroid/content/Intent;
    :cond_0
    new-instance v5, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/high16 v8, 0x3f80

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 524
    .local v5, historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Lcom/htc/music/util/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;)Z

    goto :goto_0
.end method

.method public clearIntent()V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 734
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 736
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    .line 476
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 477
    .local v1, activityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 478
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 479
    .local v2, currentActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    .line 483
    .end local v2           #currentActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .end local v3           #i:I
    :goto_1
    return v3

    .line 477
    .restart local v2       #currentActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v2           #currentActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 565
    :goto_0
    return-object v0

    .line 564
    :cond_0
    monitor-exit v1

    .line 565
    const/4 v0, 0x0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .prologue
    .line 716
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_0
    iget v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 727
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    monitor-exit v1

    .line 434
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSpecialPackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v4, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1422
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1423
    .local v1, removedApList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    iget-object v3, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1425
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1427
    .local v2, resolveInfo:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    iget-object v3, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1429
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1440
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1           #removedApList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    .end local v2           #resolveInfo:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1434
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    .restart local v1       #removedApList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1436
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1438
    :cond_4
    const-string v3, "lala"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query, after remove:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setActivitySorter(Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;)V
    .locals 2
    .parameter "activitySorter"

    .prologue
    .line 661
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_0

    .line 663
    monitor-exit v1

    .line 668
    :goto_0
    return-void

    .line 665
    :cond_0
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivitySorter:Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;

    .line 666
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    .line 667
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 580
    iget-object v5, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 581
    .local v2, newDefaultActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 584
    .local v3, oldDefaultActivity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_0

    .line 586
    iget v5, v3, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v6, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a0

    add-float v4, v5, v6

    .line 592
    .local v4, weight:F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v0, defaultName:Landroid/content/ComponentName;
    new-instance v1, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6, v4}, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 597
    .local v1, historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Lcom/htc/music/util/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;)Z

    .line 598
    return-void

    .line 589
    .end local v0           #defaultName:Landroid/content/ComponentName;
    .end local v1           #historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    .end local v4           #weight:F
    :cond_0
    const/high16 v4, 0x3f80

    .restart local v4       #weight:F
    goto :goto_0
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .parameter "historyMaxSize"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    :try_start_0
    iget v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_0

    .line 702
    monitor-exit v1

    .line 708
    :goto_0
    return-void

    .line 704
    :cond_0
    iput p1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryMaxSize:I

    .line 705
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 706
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V

    .line 707
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-direct {p0}, Lcom/htc/music/util/HtcActivityChooserModel;->loadActivitiesLocked()V

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnChooseActivityListener(Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel;->mActivityChoserModelPolicy:Lcom/htc/music/util/HtcActivityChooserModel$OnChooseActivityListener;

    .line 537
    return-void
.end method
