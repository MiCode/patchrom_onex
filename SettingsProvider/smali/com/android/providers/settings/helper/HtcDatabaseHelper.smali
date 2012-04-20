.class public Lcom/android/providers/settings/helper/HtcDatabaseHelper;
.super Ljava/lang/Object;
.source "HtcDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;,
        Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;
    }
.end annotation


# static fields
.field private static final HTC_DATABASE_VERSION:I = 0xe

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mContext:Landroid/content/Context;

.field private mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 56
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 57
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 58
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 69
    iput-object p1, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    .line 71
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 257
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method private closeCompiledStatements()V
    .locals 1

    .prologue
    .line 201
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, ">> closeCompiledStatements()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 206
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 207
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 208
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 210
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "<< closeCompiledStatements()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 213
    :cond_1
    return-void
.end method

.method private createProfileTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 495
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createProfileTable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 498
    :cond_0
    const-string v0, "CREATE TABLE profile (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    const-string v0, "CREATE INDEX profileIndex1 ON profile (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private initializeRequiredKeysOnCreate()V
    .locals 4

    .prologue
    .line 465
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v0, :cond_1

    .line 466
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t WIFI_ONLY_flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t hardware_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.serialno"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 472
    :cond_0
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "hardware_id"

    const-string v2, "ro.serialno"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    :cond_1
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 488
    return-void
.end method

.method private initializeRequiredKeysOnUpgrade()V
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 415
    return-void
.end method

.method private loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 13
    .parameter "stage"

    .prologue
    .line 919
    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v10

    const/high16 v11, 0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 920
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 921
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sense "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t support application storage locations settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 1010
    :cond_0
    return-void

    .line 928
    :cond_1
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v12, "htc_app_storage_loc_"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, HtcPrefixAppStorageLocStr:Ljava/lang/String;
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_UNKNOWN_STORAGE"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 939
    .local v3, UNKNOWN_STORAGE_TYPE:I
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_SD_CARD_STORAGE"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 943
    .local v2, SD_CARD_STORAGE_TYPE:I
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_PHONE_STORAGE"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 951
    .local v1, PHONE_STORAGE_TYPE:I
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v10, :cond_4

    .line 953
    move v6, v1

    .line 970
    .local v6, defValue:I
    :goto_0
    iget-object v10, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 971
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v7, intent:Landroid/content/Intent;
    const-string v10, "com.android.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const/16 v10, 0x80

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 980
    .local v9, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 981
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 983
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 984
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a app storage location settings, packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", label: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 993
    .local v5, databaseKey:Ljava/lang/String;
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v10, :cond_3

    .line 996
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.android.bluetooth"

    if-ne v10, v11, :cond_3

    .line 998
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    :cond_3
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 954
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #databaseKey:Ljava/lang/String;
    .end local v6           #defValue:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    if-eqz v10, :cond_5

    .line 958
    move v6, v2

    .restart local v6       #defValue:I
    goto/16 :goto_0

    .line 959
    .end local v6           #defValue:I
    :cond_5
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-eqz v10, :cond_6

    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    if-nez v10, :cond_6

    .line 963
    move v6, v1

    .restart local v6       #defValue:I
    goto/16 :goto_0

    .line 967
    .end local v6           #defValue:I
    :cond_6
    move v6, v3

    .restart local v6       #defValue:I
    goto/16 :goto_0
.end method

.method private loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "table"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 224
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    if-ne p1, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 229
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 230
    const/4 v1, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 232
    return-void

    .line 227
    .end local v0           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .restart local v0       #stmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method private loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 514
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_APPLICATION_AUTOMATIC_STARTUP"

    const-string v3, "htc_application_automatic_startup"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_application_automatic_startup()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_APPLICATION_NOTIFICATION"

    const-string v3, "htc_application_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_application_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method private loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 771
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CUSTOM_ORIENTATION"

    const-string v3, "custom_orientation"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_custom_orientation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method private loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 790
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "auto_time_zone"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_auto_time_zone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    return-void
.end method

.method private loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 802
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "COMPASS_WARNING"

    const-string v3, "compass_warning"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_compass_warning()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 810
    return-void
.end method

.method private loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 816
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_MESSAGE_NOTIFICATION"

    const-string v3, "charm_message_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_message_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_PHONE_NOTIFICATION"

    const-string v3, "charm_phone_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_phone_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_VOICE_MAIL_NOTIFICATION"

    const-string v3, "charm_voice_mail_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_voice_mail_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_MESSAGE_RECEIVED_NOTIFICATION"

    const-string v3, "charm_message_received_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_message_received_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 844
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_INDICATOR_SUPPORTED"

    const-string v3, "charm_indicator_supported"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_indicator_supported()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "htc_phone_notification_preview"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_phone_notification_preview()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "htc_message_notification_preview"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_message_notification_preview()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    return-void
.end method

.method private loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 866
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTCSPEAK_DEFALUT_LANG"

    const-string v3, "htcspeak_default_lang"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htcspeak_default_lang()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_MUSIC_BYPASS_ENABLED"

    const-string v3, "htc_music_bypass_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_music_bypass_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 880
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_GESTURES_ENABLED"

    const-string v3, "htc_gestures_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_gestures_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_ANIMATION_ENABLED"

    const-string v3, "htc_animation_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_animation_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WINDOW_ANIMATION_SCALE"

    const-string v3, "htc_window_animation_scale"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_window_animation_scale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_TRANSITION_ANIMATION_SCALE"

    const-string v3, "htc_transition_animation_scale"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_transition_animation_scale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 908
    return-void
.end method

.method private loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 541
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 545
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v0, :cond_0

    .line 546
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "accelerometer_rotation"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_accelerometer_rotation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    :cond_0
    return-void
.end method

.method private loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 563
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_NEW_MESSAGE_NOTIFICATION"

    const-string v3, "htc_new_message_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_new_message_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    return-void
.end method

.method private loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 578
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method private loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 602
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 605
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v0, v1, :cond_0

    .line 607
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 615
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    :cond_0
    return-void
.end method

.method private loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 632
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 635
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 643
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    :cond_0
    return-void
.end method

.method private loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 658
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 661
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "ENABLE_HTC_FASTBOOT"

    const-string v3, "enable_fastboot"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_fastboot_allowed()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    :cond_0
    return-void
.end method

.method private loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 677
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v0, v1, :cond_0

    .line 679
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_MODE_ENABLED"

    const-string v3, "htc_wireless_sleep_mode_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_mode_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_START_TIME"

    const-string v3, "htc_wireless_sleep_start_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_start_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_END_TIME"

    const-string v3, "htc_wireless_sleep_end_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_end_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    :cond_0
    return-void
.end method

.method private loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 713
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 716
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "INACTIVITY_TIME"

    const-string v3, "inactivity_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 724
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "INACTIVITY_TIME"

    const-string v3, "inactivity_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_inactivity_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 732
    :cond_0
    return-void
.end method

.method private onInternalCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->initializeRequiredKeysOnCreate()V

    .line 268
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->createProfileTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 270
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 271
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 272
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 273
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 274
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 275
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 276
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 277
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 278
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 279
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 280
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 281
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 282
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 283
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 284
    return-void
.end method

.method private onInternalFactoryPostCreate()V
    .locals 3

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, ">> onInternalFactoryPostCreate()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 298
    :cond_0
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "mobile_data"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "mobile_data"

    const-string v2, "0"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    :cond_1
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 311
    const-string v0, "<< onInternalFactoryPostCreate()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 313
    :cond_2
    return-void
.end method

.method private onInternalUpgrade(I)I
    .locals 5
    .parameter "oldHtcVersion"

    .prologue
    .line 316
    const-string v0, "upgrading to the version"

    .line 317
    .local v0, upgradeInfo:Ljava/lang/String;
    move v1, p1

    .line 319
    .local v1, upgradeVersion:I
    if-nez v1, :cond_0

    .line 320
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 322
    const/4 v1, 0x1

    .line 325
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 326
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 328
    const/4 v1, 0x2

    .line 331
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 332
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 334
    const/4 v1, 0x3

    .line 337
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 338
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 340
    const/4 v1, 0x4

    .line 343
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 344
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 346
    const/4 v1, 0x5

    .line 349
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 350
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 352
    const/4 v1, 0x6

    .line 355
    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 356
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 358
    const/4 v1, 0x7

    .line 361
    :cond_6
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 362
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 364
    const/16 v1, 0x8

    .line 367
    :cond_7
    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 368
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 370
    const/16 v1, 0x9

    .line 373
    :cond_8
    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 374
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 376
    const/16 v1, 0xa

    .line 379
    :cond_9
    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 380
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 382
    const/16 v1, 0xb

    .line 385
    :cond_a
    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 386
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 388
    const/16 v1, 0xc

    .line 391
    :cond_b
    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 392
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 394
    const/16 v1, 0xd

    .line 397
    :cond_c
    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    .line 398
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrading to the version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 400
    const/16 v1, 0xe

    .line 404
    :cond_d
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->initializeRequiredKeysOnUpgrade()V

    .line 406
    return v1
.end method

.method private removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V
    .locals 2
    .parameter "table"
    .parameter "key"

    .prologue
    .line 243
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    if-ne p1, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 248
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 250
    return-void

    .line 246
    .end local v0           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .restart local v0       #stmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method private setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, ">> setupCompiledStatements(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 181
    :cond_0
    const-string v0, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 183
    const-string v0, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 187
    const-string v0, "DELETE FROM system WHERE name=?;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 189
    const-string v0, "DELETE FROM secure WHERE name=?;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 192
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "<< setupCompiledStatements(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 195
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, ">> onCreate(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t Boot mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.bootmode"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 98
    :cond_1
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isFactoryMode:Z

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalFactoryPostCreate()V

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->closeCompiledStatements()V

    .line 106
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->insertHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 108
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 109
    const-string v0, "<< onCreate(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 111
    :cond_3
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 5
    .parameter "db"
    .parameter "oldGoogleVersion"
    .parameter "currentGoogleVersion"

    .prologue
    const/16 v4, 0xe

    .line 117
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 118
    const-string v2, ">> onUpgrade(...)"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t oldGoogleVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t currentGoogleVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    invoke-static {p1}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->queryHtcVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 130
    .local v0, oldVersion:I
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t oldHtcVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 132
    const-string v2, "\t currentHtcVersion: 14"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 136
    :cond_1
    if-eq v0, v4, :cond_3

    .line 138
    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalUpgrade(I)I

    move-result v1

    .line 144
    .local v1, upgradeVersion:I
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->closeCompiledStatements()V

    .line 146
    if-eq v1, v4, :cond_4

    .line 147
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 148
    const-string v2, "\t Upgrade failed!"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t upgradeVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 150
    const-string v2, "\t HTC_DATABASE_VERSION: 14"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 151
    const-string v2, "<< onUpgrade(...): false"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 153
    :cond_2
    const/4 v2, 0x0

    .line 167
    :goto_1
    return v2

    .line 140
    .end local v1           #upgradeVersion:I
    :cond_3
    const/16 v1, 0xe

    .restart local v1       #upgradeVersion:I
    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 158
    const/16 v2, 0xe

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->updateHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 159
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_5

    .line 165
    const-string v2, "<< onUpgrade(...): true"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 167
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
