.class public final Lcom/android/camera/component/ImageFileWriter;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ImageFileWriter.java"


# static fields
.field private static final MSG_EXECUTE_TASK:I = 0x3e9

.field private static final MSG_IMAGE_SAVED:I = 0x3ea

.field private static final MSG_IMAGE_SAVE_FAILED:I = 0x3eb

.field public static final NAME:Ljava/lang/String; = "Image File Writer"


# instance fields
.field private final m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/imaging/SaveImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SaveTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/imaging/SaveImageTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 54
    const-string v0, "Image File Writer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ImageFileWriter;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageFileWriter;->prepareInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method private insertOneImageIntoMediaStore()V
    .locals 15

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v13

    .line 206
    .local v13, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v13}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v12

    .line 207
    .local v12, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v12, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - No camera activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneImageIntoMediaStore() - Save image file first"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    .line 220
    monitor-exit v1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 228
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    monitor-exit v1

    goto :goto_0

    .line 234
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 233
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/imaging/SaveImageTask;

    .line 234
    .local v5, saveTask:Lcom/android/camera/imaging/SaveImageTask;
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    if-nez v5, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - No image to insert"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Lcom/android/camera/imaging/SaveImageTask;->insertIntoMediaStore()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    const/16 v2, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_4
    const/16 v8, 0x3eb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x2

    :try_start_5
    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v11, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v11, v0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 249
    :catch_0
    move-exception v14

    .line 251
    .local v14, ex:Ljava/lang/Throwable;
    const/16 v8, 0x3eb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v11, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v11, v0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method private onImageSaveFailed(Lcom/android/camera/imaging/SaveImageTask;Lcom/android/camera/MediaSaveFailedReason;)V
    .locals 8
    .parameter "task"
    .parameter "reason"

    .prologue
    .line 285
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getFilePath()Lcom/android/camera/io/Path;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    .line 293
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 294
    return-void
.end method

.method private onImageSaved(Lcom/android/camera/imaging/SaveImageTask;)V
    .locals 7
    .parameter "task"

    .prologue
    .line 270
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getFilePath()Lcom/android/camera/io/Path;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    .line 277
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 278
    return-void
.end method

.method private prepare(Lcom/android/camera/io/StorageSlot;)V
    .locals 3
    .parameter "storageSlot"

    .prologue
    .line 301
    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    .line 302
    .local v0, worker:Lcom/android/camera/ISharedBackgroundWorker;
    if-eqz v0, :cond_1

    .line 304
    new-instance v1, Lcom/android/camera/component/ImageFileWriter$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/ImageFileWriter$5;-><init>(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V

    invoke-interface {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Cannot do preparation in background thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - No ISharedBackgroundWorker interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareInternal(Lcom/android/camera/io/StorageSlot;)V
    .locals 10
    .parameter "storageSlot"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal("

    const-string v3, ") - Start"

    invoke-static {v0, v2, p1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v9, storageSlots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/io/StorageSlot;>;"
    if-nez p1, :cond_3

    .line 327
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Clear cached file count"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->clearCachedFileCount(Ljava/lang/String;)V

    .line 340
    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    .line 341
    .local v5, dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/camera/Reference;

    invoke-direct {v6}, Lcom/android/camera/Reference;-><init>()V

    .line 342
    .local v6, fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/io/StorageSlot;

    .line 344
    .local v7, checkingSlot:Lcom/android/camera/io/StorageSlot;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Get directory/file counters for "

    invoke-static {v0, v2, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    invoke-static {v7}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, dcimPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->FileSystem:Lcom/android/camera/io/FileUtility$InformationSource;

    invoke-static/range {v0 .. v6}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Cannot get directory/file counters"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 333
    .end local v1           #dcimPath:Ljava/lang/String;
    .end local v5           #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v6           #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v7           #checkingSlot:Lcom/android/camera/io/StorageSlot;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_4
    iget-object v0, p1, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    goto :goto_1

    .line 350
    .restart local v5       #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v6       #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - End"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private saveOneImage()V
    .locals 14

    .prologue
    const/16 v13, 0x3eb

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 395
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    .line 396
    .local v6, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v6, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - No camera activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/imaging/SaveImageTask;

    .line 407
    .local v9, saveTask:Lcom/android/camera/imaging/SaveImageTask;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-nez v9, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - No image to save"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v9           #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 415
    .restart local v9       #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :cond_1
    iget-object v0, v7, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v0, v1, :cond_4

    .line 419
    :try_start_2
    invoke-virtual {v9}, Lcom/android/camera/imaging/SaveImageTask;->saveImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - Image saved, scheduling for media store data insertion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 424
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 426
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    .line 429
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveOneMedia() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 434
    :catch_0
    move-exception v8

    .line 436
    .local v8, ex:Ljava/lang/Throwable;
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v9, v5, v10

    sget-object v0, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v0, v5, v11

    move-object v0, p0

    move-object v1, p0

    move v2, v13

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_2

    .line 432
    .end local v8           #ex:Ljava/lang/Throwable;
    :cond_3
    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    :try_start_6
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v9, v5, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 440
    :cond_4
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v9, v5, v10

    sget-object v0, Lcom/android/camera/MediaSaveFailedReason;->NoStorage:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v0, v5, v11

    move-object v0, p0

    move-object v1, p0

    move v2, v13

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 64
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->removeAsyncMessages(I)V

    .line 65
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 72
    return-void

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 100
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 88
    .local v0, hasPendingImageSaving:Z
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/camera/component/ImageFileWriter;->saveOneImage()V

    goto :goto_0

    .line 87
    .end local v0           #hasPendingImageSaving:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 92
    .restart local v0       #hasPendingImageSaving:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ImageFileWriter;->insertOneImageIntoMediaStore()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 108
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 123
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/imaging/SaveImageTask;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ImageFileWriter;->onImageSaved(Lcom/android/camera/imaging/SaveImageTask;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 116
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/imaging/SaveImageTask;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/android/camera/MediaSaveFailedReason;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageFileWriter;->onImageSaveFailed(Lcom/android/camera/imaging/SaveImageTask;Lcom/android/camera/MediaSaveFailedReason;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 136
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$1;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 149
    iget-object v1, v0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$2;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 159
    iget-object v1, v0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$3;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$4;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/component/ImageFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V

    .line 195
    return-void
.end method

.method public resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V
    .locals 6
    .parameter "handle"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "resumeUpdatingMediaStore() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 371
    .local v0, count:I
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Handle count : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    if-nez v0, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_2

    .line 375
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    .line 374
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 380
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Invalid handle"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    monitor-exit v3

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #count:I
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public suspendUpdatingMediaStore()Lcom/android/camera/Handle;
    .locals 5

    .prologue
    .line 451
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "SuspendUpdatingDB"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, handle:Lcom/android/camera/SessionHandle;
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "suspendUpdatingMediaStore() - Handle count : "

    iget-object v4, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    monitor-exit v2

    .line 459
    return-object v0

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
