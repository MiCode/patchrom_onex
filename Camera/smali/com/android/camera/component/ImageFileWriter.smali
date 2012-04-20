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
    .line 41
    const-string v0, "Image File Writer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 33
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ImageFileWriter;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method private insertOneImageIntoMediaStore()V
    .locals 15

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v13

    .line 167
    .local v13, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v13}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v12

    .line 168
    .local v12, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v12, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - No camera activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneImageIntoMediaStore() - Save image file first"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    .line 181
    monitor-exit v1

    goto :goto_0

    .line 183
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

    .line 187
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 189
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/imaging/SaveImageTask;

    .line 190
    .local v5, saveTask:Lcom/android/camera/imaging/SaveImageTask;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    if-nez v5, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - No image to insert"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v5           #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 200
    .restart local v5       #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Lcom/android/camera/imaging/SaveImageTask;->insertIntoMediaStore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    const/16 v2, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_3
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

    .line 205
    :catch_0
    move-exception v14

    .line 207
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
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method private onImageSaveFailed(Lcom/android/camera/imaging/SaveImageTask;Lcom/android/camera/MediaSaveFailedReason;)V
    .locals 8
    .parameter "task"
    .parameter "reason"

    .prologue
    .line 241
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

    .line 249
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 250
    return-void
.end method

.method private onImageSaved(Lcom/android/camera/imaging/SaveImageTask;)V
    .locals 7
    .parameter "task"

    .prologue
    .line 226
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getFilePath()Lcom/android/camera/io/Path;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    .line 233
    .local v0, e:Lcom/android/camera/MediaEventArgs;
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 234
    return-void
.end method

.method private saveOneImage()V
    .locals 14

    .prologue
    const/16 v13, 0x3eb

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 261
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    .line 262
    .local v6, cameraActivity:Lcom/android/camera/HTCCamera;
    if-nez v6, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - No camera activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/imaging/SaveImageTask;

    .line 273
    .local v9, saveTask:Lcom/android/camera/imaging/SaveImageTask;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    if-nez v9, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - No image to save"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v9           #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 281
    .restart local v9       #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :cond_1
    iget-object v0, v7, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v0, v1, :cond_3

    .line 285
    :try_start_2
    invoke-virtual {v9}, Lcom/android/camera/imaging/SaveImageTask;->saveImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - Image saved, scheduling for media store data insertion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 291
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    const/16 v0, 0x3e9

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 297
    :catch_0
    move-exception v8

    .line 299
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

    goto :goto_1

    .line 295
    .end local v8           #ex:Ljava/lang/Throwable;
    :cond_2
    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    :try_start_7
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v9, v5, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 303
    :cond_3
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

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 51
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->removeAsyncMessages(I)V

    .line 52
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 59
    return-void

    .line 55
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
    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 87
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 75
    .local v0, hasPendingImageSaving:Z
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/android/camera/component/ImageFileWriter;->saveOneImage()V

    goto :goto_0

    .line 74
    .end local v0           #hasPendingImageSaving:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 79
    .restart local v0       #hasPendingImageSaving:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ImageFileWriter;->insertOneImageIntoMediaStore()V

    goto :goto_0

    .line 67
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
    .line 95
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 110
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/imaging/SaveImageTask;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ImageFileWriter;->onImageSaved(Lcom/android/camera/imaging/SaveImageTask;)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 103
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/imaging/SaveImageTask;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/android/camera/MediaSaveFailedReason;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageFileWriter;->onImageSaveFailed(Lcom/android/camera/imaging/SaveImageTask;Lcom/android/camera/MediaSaveFailedReason;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 123
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$1;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 136
    iget-object v1, v0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$2;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 146
    iget-object v1, v0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$3;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 156
    return-void
.end method
