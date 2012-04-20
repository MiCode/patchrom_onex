.class final Lcom/android/camera/CameraThread$FinalStorageCheckThread;
.super Lcom/android/camera/WorkerThread;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinalStorageCheckThread"
.end annotation


# static fields
.field private static final MSG_CHECK_CAN_RECORD:I = 0x2712

.field private static final MSG_CHECK_CAN_TAKE_PICTURE:I = 0x2711


# instance fields
.field private final m_Semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    .line 247
    const-string v0, "Final Storage Checker"

    invoke-direct {p0, v0}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->m_Semaphore:Ljava/util/concurrent/Semaphore;

    .line 248
    return-void
.end method

.method private checkForRecordingInternal(J)V
    .locals 7
    .parameter "pendingFileSize"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 260
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageState;

    .line 261
    .local v0, storageState:Lcom/android/camera/io/StorageState;
    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v2, "storage error"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    invoke-static {v1, v0, v5, p1, p2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V

    .line 266
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v1, v2, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    .line 289
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)V

    .line 274
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/RecordLimitCheck;->setRecordingLength(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)V

    .line 275
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v1, p1, p2, v5}, Lcom/android/camera/RecordLimitCheck;->remainTime(Lcom/android/camera/io/StorageSlot;JZ)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    sget-object v2, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    #calls: Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    invoke-static {v1, v2, v5, p1, p2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V

    .line 279
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v1, v2, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto/16 :goto_0
.end method

.method private checkForTakingPictureInternal(J)V
    .locals 7
    .parameter "pendingFileSize"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageState;

    .line 302
    .local v0, storageState:Lcom/android/camera/io/StorageState;
    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v0, v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v2, "storage error"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    invoke-static {v1, v0, v5, p1, p2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V

    .line 307
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v1, v2, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    .line 326
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->m_Semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 332
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    sget-object v2, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    #calls: Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    invoke-static {v1, v2, v5, p1, p2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V

    .line 316
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v1, v2, :cond_3

    .line 317
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 322
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v1, v5}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public checkForRecording(J)V
    .locals 0
    .parameter "pendingFileSize"

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForRecordingInternal(J)V

    .line 257
    return-void
.end method

.method public checkForTakingPicture(J)V
    .locals 0
    .parameter "pendingFileSize"

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForTakingPictureInternal(J)V

    .line 298
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 340
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 349
    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 352
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForRecordingInternal(J)V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForTakingPictureInternal(J)V

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final waitForCheck()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->m_Semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 360
    return-void
.end method
