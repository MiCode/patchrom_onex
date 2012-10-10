.class Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;
.super Lcom/android/camera/imaging/SaveImageTask;
.source "ContinuousBurstController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ContinuousBurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBurstImageTask"
.end annotation


# instance fields
.field private final imageDirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private final index:I

.field private final m_Controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/component/ContinuousBurstController;",
            ">;"
        }
    .end annotation
.end field

.field private final outerDirectoryCounter:Lcom/android/camera/io/FileCounter;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/ContinuousBurstController;I[BZ)V
    .locals 1
    .parameter "controller"
    .parameter "index"
    .parameter "jpegRawData"
    .parameter "isLastPicture"

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    .line 182
    iput-boolean p4, p0, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    .line 183
    iput p2, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    .line 184
    invoke-static {}, Lcom/android/camera/component/ContinuousBurstController;->access$000()Lcom/android/camera/io/DCFInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 185
    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->outerDirectoryCounter:Lcom/android/camera/io/FileCounter;

    .line 186
    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$200(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    .line 187
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    .line 188
    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/android/camera/io/DCFPath;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 197
    iget-object v2, p0, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->outerDirectoryCounter:Lcom/android/camera/io/FileCounter;

    invoke-static {v2, v3, v4}, Lcom/android/camera/io/DCFUtility;->getDirectoryPath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, dirPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    iget v3, v3, Lcom/android/camera/io/FileCounter;->mainCounter:I

    add-int/lit16 v3, v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_BURST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    add-int/lit16 v3, v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, fileName:Ljava/lang/String;
    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    if-ne v2, v5, :cond_0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_COVER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v3, v3, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v2, Lcom/android/camera/io/DCFPath;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->outerDirectoryCounter:Lcom/android/camera/io/FileCounter;

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected onImageSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "filePath"
    .parameter "ex"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController;

    .line 238
    .local v0, controller:Lcom/android/camera/component/ContinuousBurstController;
    if-eqz v0, :cond_0

    .line 240
    #setter for: Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z
    invoke-static {v0, v6}, Lcom/android/camera/component/ContinuousBurstController;->access$302(Lcom/android/camera/component/ContinuousBurstController;Z)Z

    .line 241
    iget-boolean v1, p0, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    if-eqz v1, :cond_0

    .line 242
    const/16 v2, 0x2717

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v5, v4

    aput-object p1, v5, v6

    move-object v1, v0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 244
    :cond_0
    return-void
.end method

.method protected onImageSaved(Lcom/android/camera/io/Path;)V
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController;

    .line 224
    .local v0, controller:Lcom/android/camera/component/ContinuousBurstController;
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    const/16 v1, 0x2719

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/component/ContinuousBurstController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V
    .locals 12
    .parameter "success"
    .parameter "contentUri"
    .parameter "filePath"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 252
    iget-boolean v0, p0, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/component/ContinuousBurstController;

    .line 255
    .local v7, controller:Lcom/android/camera/component/ContinuousBurstController;
    if-eqz v7, :cond_3

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 260
    const/4 v6, 0x0

    .line 261
    .local v6, bucketID:Ljava/lang/String;
    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "Query bucketID - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v2, v10

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 273
    .local v8, cursorImage:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 277
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 278
    const-string v0, "bucket_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 292
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query bucketID - end , result is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v8           #cursorImage:Landroid/database/Cursor;
    :cond_2
    const/16 v2, 0x2717

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v6, v5, v10

    aput-object p3, v5, v11

    move-object v0, v7

    move-object v1, v7

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 300
    .end local v6           #bucketID:Ljava/lang/String;
    .end local v7           #controller:Lcom/android/camera/component/ContinuousBurstController;
    :cond_3
    return-void

    .line 280
    .restart local v6       #bucketID:Ljava/lang/String;
    .restart local v7       #controller:Lcom/android/camera/component/ContinuousBurstController;
    .restart local v8       #cursorImage:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 282
    .local v9, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while querying image file"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 292
    .end local v9           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 284
    :catch_1
    move-exception v9

    .line 286
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while querying image file"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v0, values:Landroid/content/ContentValues;
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 310
    const-string v1, "favorite"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const-string v1, "favorite"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
