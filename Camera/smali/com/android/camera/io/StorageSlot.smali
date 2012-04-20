.class public abstract Lcom/android/camera/io/StorageSlot;
.super Ljava/lang/Object;
.source "StorageSlot.java"


# static fields
.field public static final INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

.field public static final PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

.field public static final STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

.field public static final TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final directoryPath:Ljava/lang/String;

.field public final imageContentUri:Landroid/net/Uri;

.field public final videoContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/io/StorageCardSlot;

    invoke-direct {v0}, Lcom/android/camera/io/StorageCardSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    .line 16
    new-instance v0, Lcom/android/camera/io/PhoneStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/PhoneStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    .line 17
    new-instance v0, Lcom/android/camera/io/TabletStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/TabletStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    .line 18
    new-instance v0, Lcom/android/camera/io/InternalSmallStorageSlot;

    invoke-direct {v0}, Lcom/android/camera/io/InternalSmallStorageSlot;-><init>()V

    sput-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "imageContentUri"
    .parameter "videoContentUri"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    .line 35
    iput-object p3, p0, Lcom/android/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public static getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    .line 49
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInternalMemorySlot()Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasUniqueStorageSlot()Z
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 6

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 64
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/Throwable;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public abstract getState()Ljava/lang/String;
.end method

.method public isInternalMemory()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSupported()Z
.end method

.method public isWritable(Ljava/lang/String;)Z
    .locals 8
    .parameter "relativePath"

    .prologue
    const/4 v4, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 121
    .local v2, fullPath:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 126
    iget-object v5, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWritable() - \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not a directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0           #directory:Ljava/io/File;
    :goto_1
    return v4

    .line 115
    .end local v2           #fullPath:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fullPath:Ljava/lang/String;
    goto :goto_0

    .line 130
    .restart local v0       #directory:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    iget-object v5, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWritable() - Cannot create directory \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    .end local v0           #directory:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 152
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWritable() - Fail to check access right of \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v1           #ex:Ljava/lang/Throwable;
    .restart local v0       #directory:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 140
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_4

    .line 142
    iget-object v5, p0, Lcom/android/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWritable() - Cannot create temp file in directory \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 145
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    const/4 v4, 0x1

    goto/16 :goto_1
.end method
