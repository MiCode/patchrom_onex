.class public final Lcom/android/camera/io/DCFUtility;
.super Ljava/lang/Object;
.source "DCFUtility.java"


# static fields
.field public static final DCF_DIRECTORY_START_NUMBER:I = 0x64

.field public static final DCF_FILE_START_NUMBER:I = 0x1

.field public static final DCF_MAX_DIRECTORY_NUMBER:I = 0x3e7

.field public static final DCF_MAX_FILE_COUNT:I = 0x270f

.field public static final DCF_MAX_FILE_NUMBER:I = 0x270f

.field public static final DCF_ROOT_DIRECTORY:Ljava/lang/String; = "DCIM"

.field private static final TAG:Ljava/lang/String; = "DCFUtility"

.field private static final m_DCFInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/io/DCFInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_EnumFilesForDirCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

.field private static final m_EnumFilesForFileCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/android/camera/io/DCFUtility$1;

    invoke-direct {v0}, Lcom/android/camera/io/DCFUtility$1;-><init>()V

    sput-object v0, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForDirCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    .line 198
    new-instance v0, Lcom/android/camera/io/DCFUtility$2;

    invoke-direct {v0}, Lcom/android/camera/io/DCFUtility$2;-><init>()V

    sput-object v0, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForFileCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDcimDirectory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "rootDirectory"

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string v4, "DCIM"

    invoke-static {p1, v4}, Lcom/android/camera/io/FileUtility;->backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    const-string v4, "DCFUtility"

    const-string v5, "Cannot backup \'DCIM\' directory."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return v3

    .line 52
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, dcimDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    const-string v4, "DCFUtility"

    const-string v5, "Cannot create new \'DCIM\' directory."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    sget-object v4, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    monitor-enter v4

    .line 62
    :try_start_0
    sget-object v3, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/DCFInfo;

    .line 64
    .local v0, dcfInfo:Lcom/android/camera/io/DCFInfo;
    iget-object v3, v0, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    const-string v5, "null"

    invoke-static {p0, v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 65
    iget-object v3, v0, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    const-string v5, "null"

    invoke-static {p0, v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    .end local v0           #dcfInfo:Lcom/android/camera/io/DCFInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkFileExistence(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Z
    .locals 2
    .parameter "directory"
    .parameter "dcfInfo"
    .parameter "counter"
    .parameter "format"

    .prologue
    .line 78
    invoke-static {p1, p2, p3}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static ensureDirectoryExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "rootDirectory"
    .parameter "outerDirName"
    .parameter "directoryNumber"
    .parameter "dirSuffix"

    .prologue
    const/4 v2, -0x1

    .line 88
    const/16 v3, 0x3e7

    if-le p3, v3, :cond_1

    .line 91
    invoke-static {p0, p1}, Lcom/android/camera/io/DCFUtility;->backupDcimDirectory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const-string v3, "DCFUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot backup \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return v2

    .line 98
    :cond_0
    const/16 p3, 0x64

    .line 102
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    const-string v3, "DCFUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .end local v0           #dir:Ljava/io/File;
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    const-string v2, "DCFUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a directory. Creating new directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/android/camera/io/DCFUtility;->ensureDirectoryExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    :cond_3
    move v2, p3

    .line 126
    goto/16 :goto_0

    .line 119
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    const-string v3, "DCFUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final findLatestDirectoryCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I
    .locals 5
    .parameter "directory"
    .parameter "dcfInfo"

    .prologue
    .line 183
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x63

    aput v4, v1, v3

    .line 184
    .local v1, maxDirCounter:[I
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 185
    .local v2, params:[Ljava/lang/Object;
    sget-object v3, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForDirCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    invoke-static {p0, v3, v2}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 186
    const/4 v3, 0x0

    aget v3, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #maxDirCounter:[I
    .end local v2           #params:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "DCFUtility"

    const-string v4, "findLatestDirectoryCounter() - Cannot find directory counter"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static findLatestMainFileCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I
    .locals 5
    .parameter "directory"
    .parameter "dcfInfo"

    .prologue
    .line 249
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    .line 250
    .local v1, maxFileCounter:[I
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 251
    .local v2, params:[Ljava/lang/Object;
    sget-object v3, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForFileCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    invoke-static {p0, v3, v2}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 252
    const/4 v3, 0x0

    aget v3, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1           #maxFileCounter:[I
    .end local v2           #params:[Ljava/lang/Object;
    :goto_0
    return v3

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "DCFUtility"

    const-string v4, "findLatestMainFileCounter() - Cannot find file counter"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z
    .locals 7
    .parameter "settings"
    .parameter "rootDirectory"
    .parameter "dcfInfo"
    .parameter "format"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/android/camera/io/DCFInfo;",
            "Lcom/android/camera/io/FileFormat;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p4, resultDirCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .local p5, resultFileCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->Cache:Lcom/android/camera/io/FileUtility$InformationSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    return v0
.end method

.method public static findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z
    .locals 11
    .parameter "settings"
    .parameter "rootDirectory"
    .parameter "dcfInfo"
    .parameter "format"
    .parameter "fileCountSource"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/android/camera/io/DCFInfo;",
            "Lcom/android/camera/io/FileFormat;",
            "Lcom/android/camera/io/FileUtility$InformationSource;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p5, resultDirCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .local p6, resultFileCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v8, p2, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    const/16 v9, 0x64

    iget v10, p2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    invoke-static {p0, v8, v9, v10}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v1

    .line 274
    .local v1, dirCounter:I
    iget-object v8, p2, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    invoke-static {p0, v8, v9, v10}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v5

    .line 277
    .local v5, fileCounter:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, dirPath:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 279
    .local v6, t:J
    const/16 v8, 0x270f

    invoke-static {v2, v8, p4}, Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I

    move-result v4

    .line 280
    .local v4, fileCount:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 281
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - File count in \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    add-int/lit8 v5, v5, 0x1

    .line 285
    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v5, v8, :cond_0

    const/16 v8, 0x270f

    if-lt v4, v8, :cond_2

    .line 287
    :cond_0
    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-lt v1, v8, :cond_1

    .line 289
    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - No more directory and file counters"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v8, 0x0

    .line 371
    .end local v1           #dirCounter:I
    .end local v2           #dirPath:Ljava/lang/String;
    .end local v4           #fileCount:I
    .end local v5           #fileCounter:I
    .end local v6           #t:J
    :goto_0
    return v8

    .line 292
    .restart local v1       #dirCounter:I
    .restart local v2       #dirPath:Ljava/lang/String;
    .restart local v4       #fileCount:I
    .restart local v5       #fileCounter:I
    .restart local v6       #t:J
    :cond_1
    const/4 v5, 0x1

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 297
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    new-instance v8, Lcom/android/camera/io/FileCounter;

    invoke-direct {v8, v5}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-static {v2, p2, v8, p3}, Lcom/android/camera/io/DCFUtility;->checkFileExistence(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 300
    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Scan for latest directory and file counters"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1, p2}, Lcom/android/camera/io/DCFUtility;->findLatestDirectoryCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I

    move-result v1

    .line 304
    if-gez v1, :cond_3

    .line 306
    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Cannot find latest directory counter"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v8, 0x0

    goto :goto_0

    .line 309
    :cond_3
    const/16 v8, 0x64

    if-ge v1, v8, :cond_4

    .line 310
    const/16 v1, 0x64

    .line 311
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v2, p2}, Lcom/android/camera/io/DCFUtility;->findLatestMainFileCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I

    move-result v5

    .line 315
    if-gez v5, :cond_5

    .line 317
    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Cannot find latest file counter"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v8, 0x0

    goto :goto_0

    .line 321
    :cond_5
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Latest directory counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", file counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 328
    const/16 v8, 0x270f

    invoke-static {v2, v8, p4}, Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I

    move-result v4

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 330
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - File count in \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v5, v8, :cond_6

    const/16 v8, 0x270f

    if-lt v4, v8, :cond_8

    .line 336
    :cond_6
    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-lt v1, v8, :cond_7

    .line 338
    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - No more directory and file counters"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 341
    :cond_7
    const/4 v5, 0x0

    .line 342
    add-int/lit8 v1, v1, 0x1

    .line 343
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 351
    :cond_8
    invoke-static {p1}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 353
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Cannot create directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 356
    :cond_9
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 358
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Cannot create directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 363
    :cond_a
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Directory counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", file counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p5

    iput-object v8, v0, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    .line 365
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p6

    iput-object v8, v0, Lcom/android/camera/Reference;->target:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 368
    .end local v1           #dirCounter:I
    .end local v2           #dirPath:Ljava/lang/String;
    .end local v4           #fileCount:I
    .end local v5           #fileCounter:I
    .end local v6           #t:J
    :catch_0
    move-exception v3

    .line 370
    .local v3, ex:Ljava/lang/Throwable;
    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Cannot find next available counters"

    invoke-static {v8, v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I
    .locals 4
    .parameter "settings"
    .parameter "preferenceKey"
    .parameter "minCounter"
    .parameter "maxCounter"

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 394
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 384
    .restart local p2
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 385
    .local v0, counter:I
    if-lt v0, p2, :cond_0

    .line 387
    if-le v0, p3, :cond_2

    move p2, p3

    .line 388
    goto :goto_0

    :cond_2
    move p2, v0

    .line 389
    goto :goto_0

    .line 391
    .end local v0           #counter:I
    :catch_0
    move-exception v1

    .line 393
    .local v1, ex:Ljava/lang/Throwable;
    const-string v2, "DCFUtility"

    const-string v3, "getCounterFromPreference() - Cannot read counter from preference"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;
    .locals 2
    .parameter "storageSlot"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    const-string v1, "DCIM"

    invoke-static {v0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;
    .locals 2
    .parameter "dcfInfo"
    .parameter "counter"

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryPath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;
    .locals 1
    .parameter "dcfInfo"
    .parameter "storageSlot"
    .parameter "dirCounter"

    .prologue
    .line 419
    invoke-static {p1}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/camera/io/DCFUtility;->getDirectoryPath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryPath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;
    .locals 1
    .parameter "dcfInfo"
    .parameter "rootDirectory"
    .parameter "dirCounter"

    .prologue
    .line 423
    invoke-static {p0, p2}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;
    .locals 7
    .parameter "dcfInfo"
    .parameter "counter"
    .parameter "format"

    .prologue
    const/4 v6, 0x1

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    .local v1, fileName:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget v3, p1, Lcom/android/camera/io/FileCounter;->mainCounter:I

    .line 435
    .local v3, mainCounter:I
    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    .line 437
    iget v4, p0, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_0

    .line 438
    add-int/lit16 v3, v3, 0x3e8

    .line 441
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :goto_1
    iget v4, p0, Lcom/android/camera/io/DCFInfo;->subCounterDigits:I

    if-lez v4, :cond_3

    .line 449
    const/4 v0, 0x1

    .line 450
    .local v0, base:I
    iget v2, p0, Lcom/android/camera/io/DCFInfo;->subCounterDigits:I

    .local v2, i:I
    :goto_2
    if-lez v2, :cond_2

    .line 451
    mul-int/lit8 v0, v0, 0xa

    .line 450
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 440
    .end local v0           #base:I
    .end local v2           #i:I
    :cond_0
    add-int/lit16 v3, v3, 0x2710

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 452
    .restart local v0       #base:I
    .restart local v2       #i:I
    :cond_2
    const/16 v4, 0x5f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/camera/io/FileCounter;->subCounter:I

    mul-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .end local v0           #base:I
    .end local v2           #i:I
    :cond_3
    if-eqz p2, :cond_4

    .line 457
    iget-object v4, p2, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getFilePath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;
    .locals 1
    .parameter "dcfInfo"
    .parameter "storageSlot"
    .parameter "dirCounter"
    .parameter "fileCounter"
    .parameter "format"

    .prologue
    .line 468
    invoke-static {p1}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/android/camera/io/DCFUtility;->getFilePath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;
    .locals 2
    .parameter "dcfInfo"
    .parameter "rootDirectory"
    .parameter "dirCounter"
    .parameter "fileCounter"
    .parameter "format"

    .prologue
    .line 472
    invoke-static {p0, p2}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, p4}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "rootDirectory"
    .parameter "dirSuffix"

    .prologue
    .line 483
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 484
    .local v1, dirNameSuffixLength:I
    add-int/lit8 v0, v1, 0x3

    .line 485
    .local v0, dirNameLength:I
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 486
    .local v3, params:[Ljava/lang/Object;
    new-instance v4, Lcom/android/camera/io/DCFUtility$3;

    invoke-direct {v4, v0, v1, p1}, Lcom/android/camera/io/DCFUtility$3;-><init>(IILjava/lang/String;)V

    invoke-static {p0, v4, v3}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 532
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 537
    .end local v0           #dirNameLength:I
    .end local v1           #dirNameSuffixLength:I
    .end local v3           #params:[Ljava/lang/Object;
    :goto_0
    return v4

    .line 534
    :catch_0
    move-exception v2

    .line 536
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "DCFUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get last directory number in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static isDcimDirectoryWritable(Lcom/android/camera/io/StorageSlot;)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 549
    const-string v0, "slot"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_0
    const-string v0, "DCIM"

    invoke-virtual {p0, v0}, Lcom/android/camera/io/StorageSlot;->isWritable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V
    .locals 2
    .parameter "dcfInfo"

    .prologue
    .line 562
    if-nez p0, :cond_0

    .line 564
    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    sget-object v1, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 569
    :try_start_0
    sget-object v0, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V
    .locals 7
    .parameter "settings"
    .parameter "dcfInfo"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 579
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 581
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - No file counter preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    invoke-static {p0, v2, v4, v3}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v1

    .line 587
    .local v1, fileCounter:I
    add-int/lit8 v1, v1, -0x1

    .line 588
    if-ge v1, v4, :cond_1

    .line 590
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 593
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    invoke-static {p0, v2, v5, v3}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v0

    .line 596
    .local v0, dirCounter:I
    if-le v0, v5, :cond_2

    .line 598
    add-int/lit8 v0, v0, -0x1

    .line 599
    iget v1, p1, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    .line 600
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Restore directory counter to "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " and file counter to "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 617
    .end local v0           #dirCounter:I
    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    .restart local v0       #dirCounter:I
    :cond_2
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Reach minimum file and directory counters"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/4 v1, 0x1

    goto :goto_1

    .line 611
    .end local v0           #dirCounter:I
    :cond_3
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Reach minimum file counter, but no directory counter preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v1, 0x1

    goto :goto_1
.end method
