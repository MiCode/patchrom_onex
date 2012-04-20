.class Lcom/android/camera/SnapboothThread$MainHandler;
.super Landroid/os/Handler;
.source "SnapboothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/SnapboothThread;Lcom/android/camera/SnapboothThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread$MainHandler;-><init>(Lcom/android/camera/SnapboothThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    .line 230
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 234
    :sswitch_0
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - START_PREVIEW"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 237
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 238
    .local v5, status:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Boolean;

    .line 240
    .local v26, isCapturing:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$500(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string v3, "SnapboothThread"

    const-string v4, "Taking picture, start preview later"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    invoke-static/range {v3 .. v9}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto :goto_0

    .line 256
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    if-nez v26, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v5, v3}, Lcom/android/camera/SnapboothThread;->startPreview(IZ)V

    .line 258
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - START_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    .line 264
    .end local v5           #status:I
    .end local v26           #isCapturing:Ljava/lang/Boolean;
    :sswitch_1
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - STOP_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->stopPreview()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$900(Lcom/android/camera/SnapboothThread;)V

    .line 266
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - STOP_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :sswitch_2
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CLOSE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 291
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v3}, Lcom/android/camera/SnapboothThread;->closeCamera()V

    .line 295
    :goto_2
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CLOSE_CAMERA end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :pswitch_0
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x2

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 276
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 280
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v3}, Lcom/android/camera/SnapboothThread;->closeCamera()V

    goto :goto_2

    .line 284
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 285
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_2

    .line 300
    :sswitch_3
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CANCEL_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$500(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    const-string v3, "SnapboothThread"

    const-string v4, "Taking picture, send CANCEL_CAPTURE message again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0xa

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/camera/SnapboothThread$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    :goto_3
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CANCEL_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->cancelCapture()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1000(Lcom/android/camera/SnapboothThread;)V

    goto :goto_3

    .line 316
    :sswitch_4
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - RECHECK_STORAGE_STATE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->endCheckStorageState()I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1100(Lcom/android/camera/SnapboothThread;)I

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1200(Lcom/android/camera/SnapboothThread;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->endCheckStorageState()I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1100(Lcom/android/camera/SnapboothThread;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->notifyStorageState()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1300(Lcom/android/camera/SnapboothThread;)V

    .line 323
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - RECHECK_STORAGE_STATE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :sswitch_5
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CREATE_MULTISHOT_BITMAP start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1400(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v7}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v4

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1502(Lcom/android/camera/SnapboothThread;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/rotate/UIRotation;

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1500(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    const-string v3, "SnapboothThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Allocate portrait image bitmap "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    sget v4, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1402(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 356
    :cond_4
    :goto_4
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CREATE_MULTISHOT_BITMAP end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :cond_5
    const-string v3, "SnapboothThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Allocate landscape image bitmap "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    sget v4, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1402(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    .line 362
    :sswitch_6
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 366
    const-string v3, "SnapboothThread"

    const-string v4, "CANCEL_CAPTURE message detected, operation canceled !"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 372
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #setter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v4, v3}, Lcom/android/camera/SnapboothThread;->access$702(Lcom/android/camera/SnapboothThread;Z)Z

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 378
    const-string v3, "SnapboothThread"

    const-string v4, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->capture()Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1600(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 382
    const-string v3, "SnapboothThread"

    const-string v4, "Storage card is not available, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #calls: Lcom/android/camera/SnapboothThread;->onFirstPreviewFrameArrived([B)V
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1700(Lcom/android/camera/SnapboothThread;[B)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 387
    :cond_8
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :sswitch_7
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 397
    const-string v3, "SnapboothThread"

    const-string v4, "CANCEL_CAPTURE message detected, operation canceled !"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v27, v3

    check-cast v27, [B

    .line 403
    .local v27, jpegdata:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 404
    .local v31, thisShutterNum:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->endCheckStorageState()I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1100(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/16 v20, 0x1

    .line 406
    .local v20, canStoreImage:Z
    :goto_5
    if-nez v27, :cond_10

    .line 407
    const-string v3, "SnapboothThread"

    const-string v4, "!!!!!!!! jpegdata == null !!!!!!!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 413
    new-instance v29, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 414
    .local v29, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    array-length v4, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 416
    .local v25, image:Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1400(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .local v21, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Lcom/android/camera/SnapboothCustomize;->getSnapboothFrame(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 421
    .local v6, originalFrame:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 422
    .local v11, matrix:Landroid/graphics/Matrix;
    sget v3, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1500(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 424
    const/high16 v3, 0x42b4

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 426
    :cond_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 427
    .local v22, frame:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v31

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F
    invoke-static {v3, v0}, Lcom/android/camera/SnapboothThread;->access$1800(Lcom/android/camera/SnapboothThread;I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v31

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F
    invoke-static {v4, v0}, Lcom/android/camera/SnapboothThread;->access$1900(Lcom/android/camera/SnapboothThread;I)F

    move-result v4

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v31

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F
    invoke-static {v3, v0}, Lcom/android/camera/SnapboothThread;->access$1800(Lcom/android/camera/SnapboothThread;I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v31

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F
    invoke-static {v4, v0}, Lcom/android/camera/SnapboothThread;->access$1900(Lcom/android/camera/SnapboothThread;I)F

    move-result v4

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 434
    const/4 v3, 0x4

    move/from16 v0, v31

    if-ne v0, v3, :cond_b

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$802(Lcom/android/camera/SnapboothThread;I)I

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/camera/SnapboothThread;->access$1400(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/SnapboothFileManager;->storeImage(Landroid/app/Activity;Ljava/lang/Object;)Z

    .line 438
    sget-object v3, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    .line 441
    :cond_b
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 442
    const/16 v22, 0x0

    .line 444
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V

    .line 465
    .end local v6           #originalFrame:Landroid/graphics/Bitmap;
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v21           #canvas:Landroid/graphics/Canvas;
    .end local v22           #frame:Landroid/graphics/Bitmap;
    .end local v25           #image:Landroid/graphics/Bitmap;
    .end local v29           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_c
    sget-object v3, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    .line 467
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v4}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v23

    .line 468
    .local v23, freezeUIRotation:Lcom/android/camera/rotate/UIRotation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    move/from16 v0, v31

    if-ne v0, v3, :cond_e

    .line 472
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 476
    const/16 v33, 0x0

    .line 477
    .local v33, width:I
    const/16 v24, 0x0

    .line 478
    .local v24, height:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 480
    sget v33, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    .line 481
    sget v24, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    .line 488
    :goto_7
    sget v3, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    move-object/from16 v0, v27

    move/from16 v1, v33

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 500
    .end local v24           #height:I
    .end local v33           #width:I
    .local v12, photo:Landroid/graphics/Bitmap;
    :goto_8
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 501
    .restart local v11       #matrix:Landroid/graphics/Matrix;
    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_HEIGHT:I

    int-to-float v4, v4

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 502
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v4, v4, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 503
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 507
    .local v30, reviewImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_18

    .line 508
    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getLastImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/SnapboothFileManager;->getThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 513
    .local v32, thumbnail:Landroid/graphics/Bitmap;
    :goto_9
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    aput-object v30, v9, v10

    const/4 v10, 0x1

    aput-object v32, v9, v10

    invoke-static {v3, v4, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mIsCapturing:Z
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2102(Lcom/android/camera/SnapboothThread;Z)Z

    .line 522
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v12           #photo:Landroid/graphics/Bitmap;
    .end local v30           #reviewImage:Landroid/graphics/Bitmap;
    .end local v32           #thumbnail:Landroid/graphics/Bitmap;
    :cond_e
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    .end local v20           #canStoreImage:Z
    .end local v23           #freezeUIRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 409
    .restart local v20       #canStoreImage:Z
    :cond_10
    const-string v3, "SnapboothThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jpegdata != null and jpegdata.length = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    array-length v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 450
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getIntentManager()Lcom/android/camera/SnapboothIntentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SnapboothIntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 451
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, v27

    #setter for: Lcom/android/camera/SnapboothThread;->mJpegData:[B
    invoke-static {v3, v0}, Lcom/android/camera/SnapboothThread;->access$2002(Lcom/android/camera/SnapboothThread;[B)[B

    .line 453
    :cond_13
    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/camera/SnapboothFileManager;->storeImage(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 457
    sget-object v3, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    .line 458
    const-string v3, "SnapboothThread"

    const-string v4, "Storage card is not available, stop saving image"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mIsCapturing:Z
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2102(Lcom/android/camera/SnapboothThread;Z)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 461
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    .restart local v23       #freezeUIRotation:Lcom/android/camera/rotate/UIRotation;
    .restart local v24       #height:I
    .restart local v33       #width:I
    :cond_15
    sget v33, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    .line 486
    sget v24, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    goto/16 :goto_7

    .line 491
    .end local v24           #height:I
    .end local v33           #width:I
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, v27

    array-length v4, v0

    move-object/from16 v0, v27

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12       #photo:Landroid/graphics/Bitmap;
    goto/16 :goto_8

    .line 495
    .end local v12           #photo:Landroid/graphics/Bitmap;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1400(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 496
    .restart local v12       #photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1402(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 510
    .restart local v11       #matrix:Landroid/graphics/Matrix;
    .restart local v30       #reviewImage:Landroid/graphics/Bitmap;
    :cond_18
    const/16 v32, 0x0

    .restart local v32       #thumbnail:Landroid/graphics/Bitmap;
    goto/16 :goto_9

    .line 528
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v12           #photo:Landroid/graphics/Bitmap;
    .end local v20           #canStoreImage:Z
    .end local v23           #freezeUIRotation:Lcom/android/camera/rotate/UIRotation;
    .end local v27           #jpegdata:[B
    .end local v30           #reviewImage:Landroid/graphics/Bitmap;
    .end local v31           #thisShutterNum:I
    .end local v32           #thumbnail:Landroid/graphics/Bitmap;
    :sswitch_8
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CREATE_INIT_THUMBNAIL start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/SnapboothFileManager;->getLastThumbnailImage(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 533
    .restart local v32       #thumbnail:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-static {v3, v4, v7, v8, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 535
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CREATE_INIT_THUMBNAIL end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    .end local v32           #thumbnail:Landroid/graphics/Bitmap;
    :sswitch_9
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - DELETE_CURRENT_IMAGE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/SnapboothFileManager;->deleteCurrentImageFile(Landroid/app/Activity;)Z

    .line 545
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - DELETE_CURRENT_IMAGE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :sswitch_a
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_19

    .line 556
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x3

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 558
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v3}, Lcom/android/camera/SnapboothThread;->closeCamera()V

    .line 564
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v28

    .line 565
    .local v28, myloop:Landroid/os/Looper;
    invoke-virtual/range {v28 .. v28}, Landroid/os/Looper;->quit()V

    .line 566
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    .end local v28           #myloop:Landroid/os/Looper;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2200(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 581
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "0_bypass"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    goto/16 :goto_0

    .line 592
    :sswitch_d
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_BULGE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "3_distortion"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/16 v15, 0x46

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v15, v3, 0x2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v16, v3, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 602
    :cond_1a
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_BULGE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :sswitch_e
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_PUCKER start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "3_distortion"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v15, v3, 0x2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v16, v3, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 616
    :cond_1b
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_PUCKER end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    :sswitch_f
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_MIRROR start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "8_mirror"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v15, 0x0

    :goto_a
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 629
    :cond_1c
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_MIRROR end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    :cond_1d
    const/4 v15, 0x1

    goto :goto_a

    .line 633
    :sswitch_10
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_CONTRAST start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "6_contrast"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 642
    :cond_1e
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_CONTRAST end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :sswitch_11
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_DISTORTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "9_bloom"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    goto/16 :goto_0

    .line 659
    :sswitch_12
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_SEPIA start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "1_lomo"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 668
    :cond_1f
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_SEPIA end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    :sswitch_13
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_VINTAGE_GREEN start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "1_lomo"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 681
    :cond_20
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_VINTAGE_GREEN end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :sswitch_14
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_DOTS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "5_dots"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param0"

    const/16 v15, 0x32

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v13

    const-string v14, "GE-param1"

    const/16 v15, 0x190

    const/16 v16, 0xf0

    const/16 v17, 0x212

    const/16 v18, 0x172

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 694
    :cond_21
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_DOTS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_a
        0x6 -> :sswitch_7
        0xa -> :sswitch_3
        0x1f -> :sswitch_c
        0x20 -> :sswitch_d
        0x21 -> :sswitch_e
        0x22 -> :sswitch_f
        0x23 -> :sswitch_10
        0x24 -> :sswitch_11
        0x25 -> :sswitch_12
        0x26 -> :sswitch_13
        0x27 -> :sswitch_14
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0x66 -> :sswitch_4
        0x67 -> :sswitch_b
    .end sparse-switch

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
