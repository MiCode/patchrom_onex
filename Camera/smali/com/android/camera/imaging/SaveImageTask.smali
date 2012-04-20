.class public Lcom/android/camera/imaging/SaveImageTask;
.super Ljava/lang/Object;
.source "SaveImageTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public bitmap:Landroid/graphics/Bitmap;

.field public captureID:J

.field public dcfInfo:Lcom/android/camera/io/DCFInfo;

.field public fileFormat:Lcom/android/camera/io/FileFormat;

.field public gpsLocation:Landroid/location/Location;

.field public isLastImage:Z

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_ContentUri:Landroid/net/Uri;

.field private m_FilePath:Lcom/android/camera/io/Path;

.field private m_JpegRawDataSize:I

.field private m_MimeType:Ljava/lang/String;

.field private m_NativeJpegRawData:J

.field public postCounter:I

.field public storageSlot:Lcom/android/camera/io/StorageSlot;

.field public takenDateTime:J


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;[B)V
    .locals 0
    .parameter "cameraThread"
    .parameter "jpegRawData"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/camera/imaging/SaveImageTask;->setJpegRawData([B)Z

    .line 60
    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "root"
    .parameter "name"
    .parameter "extension"

    .prologue
    .line 67
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

    move-result-object v2

    .line 68
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .line 71
    .local v1, index:I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 74
    if-ltz v1, :cond_0

    .line 75
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    :cond_1
    return-object p2
.end method

.method private updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 4
    .parameter "cameraActivity"
    .parameter "prefKey"
    .parameter "value"

    .prologue
    .line 425
    if-eqz p2, :cond_0

    .line 426
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFileCounter() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/android/camera/io/DCFPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    .line 88
    .local v6, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v6, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "getAvailableFileName() - No camera activity"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-object v9

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, dcimPath:Ljava/lang/String;
    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    .line 97
    .local v4, dirCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    .line 98
    .local v5, fileCounter:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "getAvailableFileName() - Cannot get directory or file counter"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, dirPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static {v2, v3, v0}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, fileName:Ljava/lang/String;
    new-instance v9, Lcom/android/camera/io/DCFPath;

    new-instance v2, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-direct {v9, v7, v8, v2, v3}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    .line 116
    .local v9, path:Lcom/android/camera/io/DCFPath;
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v0}, Lcom/android/camera/imaging/SaveImageTask;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    iget-object v0, v9, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    new-instance v10, Lcom/android/camera/io/DCFPath;

    iget-object v0, v9, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget-object v3, v9, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    invoke-direct {v10, v0, v8, v2, v3}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    .end local v9           #path:Lcom/android/camera/io/DCFPath;
    .local v10, path:Lcom/android/camera/io/DCFPath;
    move-object v9, v10

    .line 126
    .end local v10           #path:Lcom/android/camera/io/DCFPath;
    .restart local v9       #path:Lcom/android/camera/io/DCFPath;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFilePath()Lcom/android/camera/io/Path;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    return-object v0
.end method

.method public final getJpegRawData(Z)[B
    .locals 7
    .parameter "removeFromNativeBuffer"

    .prologue
    const-wide/16 v5, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJpegRawData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - native buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-wide v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 155
    iget-wide v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v1, v2, p1}, Lcom/android/camera/io/NativeBuffer;->get(JZ)[B

    move-result-object v0

    .line 156
    .local v0, jpegRawData:[B
    if-eqz p1, :cond_0

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_JpegRawDataSize:I

    .line 159
    iput-wide v5, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    .line 161
    :cond_0
    if-nez v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v0           #jpegRawData:[B
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getJpegRawDataSize()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_JpegRawDataSize:I

    return v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public insertIntoMediaStore()Z
    .locals 13

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/imaging/SaveImageTask;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 182
    .local v10, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 183
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - No camera activity"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/imaging/SaveImageTask;->onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V

    .line 187
    const/4 v1, 0x0

    .line 238
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v10           #cameraThread:Lcom/android/camera/CameraThread;
    :goto_0
    return v1

    .line 189
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v10       #cameraThread:Lcom/android/camera/CameraThread;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - No storage slot"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/imaging/SaveImageTask;->onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V

    .line 193
    const/4 v1, 0x0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - No file path"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/imaging/SaveImageTask;->onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    iget-object v2, v2, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    iget-object v3, v3, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/imaging/SaveImageTask;->gpsLocation:Landroid/location/Location;

    iget-wide v5, p0, Lcom/android/camera/imaging/SaveImageTask;->takenDateTime:J

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v8}, Lcom/android/camera/imaging/SaveImageTask;->prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v9}, Lcom/android/camera/MediaProvider;->insertImage(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/android/camera/io/FileFormat;)Landroid/net/Uri;

    move-result-object v11

    .line 216
    .local v11, contentUri:Landroid/net/Uri;
    if-nez v11, :cond_3

    .line 218
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "Save image - Content URI = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 225
    :goto_1
    iput-object v11, p0, Lcom/android/camera/imaging/SaveImageTask;->m_ContentUri:Landroid/net/Uri;

    .line 228
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v1, v11, v2}, Lcom/android/camera/imaging/SaveImageTask;->onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V

    .line 231
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save image - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v10           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v11           #contentUri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 236
    .local v12, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - Exception occurred while inserting data into media store"

    invoke-static {v1, v2, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/imaging/SaveImageTask;->onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V

    .line 238
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected onImageSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "filePath"
    .parameter "ex"

    .prologue
    .line 252
    return-void
.end method

.method protected onImageSaved(Lcom/android/camera/io/Path;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 246
    return-void
.end method

.method protected onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V
    .locals 0
    .parameter "success"
    .parameter "contentUri"
    .parameter "filePath"

    .prologue
    .line 258
    return-void
.end method

.method protected onSaveImageToFile(Lcom/android/camera/io/Path;)V
    .locals 8
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v2, 0x0

    .line 269
    .local v2, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 272
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_1
    iget-wide v4, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 274
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/imaging/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    .line 275
    .local v1, jpegRawData:[B
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .end local v1           #jpegRawData:[B
    :goto_0
    if-eqz v3, :cond_5

    .line 296
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    move-object v2, v3

    .line 298
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 278
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #jpegRawData:[B
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get JPEG raw data from native buffer"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 285
    .end local v1           #jpegRawData:[B
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 287
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v0, ex:Ljava/io/IOException;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v4

    .line 280
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/camera/imaging/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 281
    iget-object v4, p0, Lcom/android/camera/imaging/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 291
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v0, ex:Ljava/lang/Throwable;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while saving image to file"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 283
    .end local v0           #ex:Ljava/lang/Throwable;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No image to save"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 295
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 289
    :catch_2
    move-exception v0

    goto :goto_4

    .line 285
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :cond_5
    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveImage()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 313
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "saveImage() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 318
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 319
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v0, :cond_0

    .line 321
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "Save image - No camera activity"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v1           #cameraThread:Lcom/android/camera/CameraThread;
    :goto_0
    return v6

    .line 324
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v1       #cameraThread:Lcom/android/camera/CameraThread;
    :cond_0
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v7, :cond_1

    .line 326
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "Save image - No storage slot"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 369
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v1           #cameraThread:Lcom/android/camera/CameraThread;
    :catch_0
    move-exception v3

    .line 371
    .local v3, ex:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "Cannot find available image file location, please check the storage card"

    invoke-static {v7, v8, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v7, v3}, Lcom/android/camera/imaging/SaveImageTask;->onImageSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v1       #cameraThread:Lcom/android/camera/CameraThread;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    if-nez v7, :cond_2

    .line 332
    sget-object v7, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    iput-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 335
    :cond_2
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    if-nez v7, :cond_3

    .line 336
    sget-object v7, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iput-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 339
    :cond_3
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v7}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v7

    if-nez v7, :cond_4

    .line 341
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save image - Storage slot \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 375
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v1           #cameraThread:Lcom/android/camera/CameraThread;
    :catch_1
    move-exception v3

    .line 377
    .local v3, ex:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "Exception while compressing image."

    invoke-static {v7, v8, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v7, v3}, Lcom/android/camera/imaging/SaveImageTask;->onImageSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 346
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v1       #cameraThread:Lcom/android/camera/CameraThread;
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/imaging/SaveImageTask;->getAvailableFileName()Lcom/android/camera/io/DCFPath;

    move-result-object v5

    .line 347
    .local v5, path:Lcom/android/camera/io/DCFPath;
    iget-object v4, v5, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    .line 348
    .local v4, fileName:Ljava/lang/String;
    iget-object v2, v5, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 349
    .local v2, directoryName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save image - directory name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", file name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "onSaveImageToFile() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/android/camera/imaging/SaveImageTask;->onSaveImageToFile(Lcom/android/camera/io/Path;)V

    .line 354
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v8, "onSaveImageToFile() - end"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v7, v5, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v7, :cond_5

    .line 358
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v7, v7, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    iget v8, v8, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/imaging/SaveImageTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    .line 359
    :cond_5
    iget-object v7, v5, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v7, :cond_6

    .line 360
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v7, v7, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget v8, v8, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/imaging/SaveImageTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    .line 363
    :cond_6
    iput-object v5, p0, Lcom/android/camera/imaging/SaveImageTask;->m_FilePath:Lcom/android/camera/io/Path;

    .line 364
    iget-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v7, v7, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/camera/imaging/SaveImageTask;->m_MimeType:Ljava/lang/String;

    .line 367
    invoke-virtual {p0, v5}, Lcom/android/camera/imaging/SaveImageTask;->onImageSaved(Lcom/android/camera/io/Path;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    iget-object v6, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v7, "saveImage() - end"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public final setJpegRawData([B)Z
    .locals 5
    .parameter "jpegRawData"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 393
    iget-wide v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 395
    iget-wide v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v1, v2}, Lcom/android/camera/io/NativeBuffer;->remove(J)V

    .line 396
    iput-wide v3, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    .line 397
    iput v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_JpegRawDataSize:I

    .line 401
    :cond_0
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 403
    invoke-static {p1}, Lcom/android/camera/io/NativeBuffer;->add([B)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    .line 404
    iget-wide v1, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot save JPEG raw data to native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegRawData() - native buffer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/imaging/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/imaging/SaveImageTask;->m_JpegRawDataSize:I

    .line 415
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
