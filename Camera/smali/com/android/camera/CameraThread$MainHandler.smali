.class Lcom/android/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 628
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1373
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 631
    :sswitch_1
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION start mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 636
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mCameraDevice is null in SET_RESOLUTION message"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 642
    .local v31, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 643
    .local v19, height:I
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Resolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    sget-object v3, Lcom/android/camera/CameraThread$22;->$SwitchMap$com$android$camera$CameraMode:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraMode;

    invoke-virtual {v2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 670
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1002(Lcom/android/camera/CameraThread;Z)Z

    .line 674
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION end mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .end local v19           #height:I
    .end local v31           #width:I
    :sswitch_2
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - START_PREVIEW start mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 689
    .local v4, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCanStartPreview:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 649
    .end local v4           #status:I
    .restart local v19       #height:I
    .restart local v31       #width:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_image_ratio"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 651
    .local v14, bWideScreen:Z
    if-eqz v14, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    .line 658
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v31

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$602(Lcom/android/camera/CameraThread;I)I

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v19

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$702(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    .line 655
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    goto :goto_2

    .line 664
    .end local v14           #bWideScreen:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v31

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$802(Lcom/android/camera/CameraThread;I)I

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v19

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    .line 700
    .end local v19           #height:I
    .end local v31           #width:I
    .restart local v4       #status:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 702
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, waiting for camera close"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 707
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I
    invoke-static {v3, v2, v4}, Lcom/android/camera/CameraThread;->access$1300(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 714
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlock3DSwitch(Z)V

    .line 715
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x49

    const-wide/16 v5, 0x6a4

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x48

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 724
    :cond_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    .end local v4           #status:I
    :sswitch_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW_DIRECTLY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)I

    .line 732
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW_DIRECTLY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :sswitch_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - OPEN_CAMERA start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/CameraType;)I
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;)I

    .line 740
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - OPEN_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 746
    :sswitch_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakePicture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 750
    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->InvalidState:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 755
    :cond_7
    const-string v2, "CameraThread"

    const-string v3, "WAIT_SELFTIMER"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 758
    :cond_8
    const-string v2, "CameraThread"

    const-string v3, "take picture, video snapshot is not supported"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->InvalidState:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 764
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkInternalDataSpace()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    .line 767
    const-string v2, "CameraThread"

    const-string v3, "Low internal data space"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->LowInternalDataSpace:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 784
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v2}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v28

    .line 785
    .local v28, timer:I
    :goto_3
    if-lez v28, :cond_c

    .line 787
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start SelfTimer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v5, 0x0

    move/from16 v0, v28

    move/from16 v1, v28

    invoke-static {v2, v3, v0, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 797
    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    .end local v28           #timer:I
    :cond_b
    const/16 v28, 0x0

    goto :goto_3

    .line 791
    .restart local v28       #timer:I
    :cond_c
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - no self timer, take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_4

    .line 805
    .end local v28           #timer:I
    :sswitch_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 807
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    .line 814
    const/16 v18, 0x0

    .line 825
    .local v18, failedReason:Lcom/android/camera/TakingPictureFailedReason;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 826
    sget-object v18, Lcom/android/camera/TakingPictureFailedReason;->StorageError:Lcom/android/camera/TakingPictureFailedReason;

    .line 829
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkImageQueueState()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1900(Lcom/android/camera/CameraThread;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 833
    sget-object v18, Lcom/android/camera/TakingPictureFailedReason;->ImageQueueIsFull:Lcom/android/camera/TakingPictureFailedReason;

    .line 836
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 844
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end, mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 862
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 863
    const-string v2, "CameraThread"

    const-string v3, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->capture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;)V

    .line 896
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 900
    .end local v18           #failedReason:Lcom/android/camera/TakingPictureFailedReason;
    :sswitch_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :sswitch_8
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - CLOSE_CAMERA start mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 954
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 958
    :goto_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 903
    :catch_0
    move-exception v17

    .line 904
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 913
    .end local v17           #ex:Ljava/lang/Exception;
    :pswitch_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 915
    const-string v2, "CameraThread"

    const-string v3, "Waiting for auto-focus before capture, cancel capture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2102(Lcom/android/camera/CameraThread;Z)Z

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2206(Lcom/android/camera/CameraThread;)J

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v3, v5}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 931
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 933
    const-string v2, "CameraThread"

    const-string v3, "Taking picture, close camera later"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 923
    :cond_11
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x2

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 925
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 936
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 938
    const-string v2, "CameraThread"

    const-string v3, "Recording video, close camera later"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 942
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 943
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto/16 :goto_6

    .line 947
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 948
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_6

    .line 962
    :sswitch_9
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_14

    .line 967
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 969
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 975
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v24

    .line 976
    .local v24, myloop:Landroid/os/Looper;
    invoke-virtual/range {v24 .. v24}, Landroid/os/Looper;->quit()V

    .line 977
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    .end local v24           #myloop:Landroid/os/Looper;
    :sswitch_a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkInternalDataSpace()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_15

    .line 995
    const-string v2, "CameraThread"

    const-string v3, "Low internal data space"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/RecordingFailedReason;->LowInternalDataSpace:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 1000
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1004
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 1019
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1022
    const-string v2, "CameraThread"

    const-string v3, "Play start record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_17

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v3

    const v5, 0x7f06000b

    invoke-interface {v3, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v3

    #setter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2602(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 1027
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 1034
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x36

    const-wide/16 v5, 0x12c

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1042
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->startVideoRecording()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1052
    :cond_1a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1056
    :sswitch_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->startVideoRecording()V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1067
    :cond_1b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1071
    :sswitch_c
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v2, v3, :cond_1c

    .line 1073
    const-string v2, "CameraThread"

    const-string v3, "record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 1078
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2700(Lcom/android/camera/CameraThread;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1147
    :cond_1d
    :goto_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1108
    :cond_1e
    const-string v2, "CameraThread"

    const-string v3, "Recording Message - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mStartCountTime:J
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)J

    move-result-wide v5

    sub-long v15, v2, v5

    .line 1111
    .local v15, currentRecordTime:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v15, v2

    if-gez v2, :cond_1f

    .line 1113
    const-string v2, "CameraThread"

    const-string v3, "Recording Message - currentRecordTime < 1s - delay stop"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const-wide/16 v5, 0x64

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1121
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2900(Lcom/android/camera/CameraThread;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3002(Lcom/android/camera/CameraThread;Z)Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1131
    const-string v2, "CameraThread"

    const-string v3, "Play end record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_20

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v3

    const v5, 0x7f06000a

    invoke-interface {v3, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v3

    #setter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3102(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 1136
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    goto/16 :goto_7

    .line 1154
    .end local v15           #currentRecordTime:J
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1156
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 1158
    .local v30, wb:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1162
    const-string v2, "incandescent"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[choose_Incandescent]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    .end local v30           #wb:Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1174
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 1175
    .local v22, level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "exposure-compensation"

    const/4 v5, 0x5

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v29

    .line 1180
    .local v29, value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1186
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_exposure]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1192
    .end local v22           #level:I
    .end local v29           #value:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1194
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 1195
    .local v20, iso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "iso"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1202
    .end local v20           #iso:Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1208
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1210
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 1211
    .local v21, key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 1212
    .restart local v22       #level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v29

    .line 1214
    .restart local v29       #value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1219
    const-string v2, "contrast"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1221
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_contract]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1222
    :cond_21
    const-string v2, "saturation"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1224
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_saturation]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :cond_22
    const-string v2, "sharpness"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_sharpness]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1232
    .end local v21           #key:Ljava/lang/String;
    .end local v22           #level:I
    .end local v29           #value:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/FlashMode;

    #calls: Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0

    .line 1237
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1238
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_RECORD_SIZE_LIMIT end - isRecording = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1242
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v23

    .line 1243
    .local v23, limit:Lcom/android/camera/RecordLimitCheck;
    if-nez v23, :cond_24

    .line 1244
    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null !!! - CHECK_RECORD_SIZE_LIMIT end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1248
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/camera/RecordLimitCheck;->checkSizeLimit(Lcom/android/camera/io/StorageSlot;J)V

    .line 1249
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v27

    .line 1250
    .local v27, state:I
    packed-switch v27, :pswitch_data_2

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1252
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0045

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1254
    const-string v2, "CameraThread"

    const-string v3, "reach FATA32 file \'system file size limitation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :pswitch_6
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - FILE_SIZE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1261
    :pswitch_7
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - DISK_SPACE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a003a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1271
    :pswitch_8
    const-string v2, "CameraThread"

    const-string v3, "reach time out - not to check file size limit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1283
    .end local v23           #limit:Lcom/android/camera/RecordLimitCheck;
    .end local v27           #state:I
    :sswitch_14
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->loadSettings()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3400(Lcom/android/camera/CameraThread;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1289
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1293
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1295
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 1296
    .restart local v21       #key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1298
    .restart local v29       #value:I
    const-string v2, "contrast"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "saturation"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "sharpness"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1301
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1306
    :cond_26
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1303
    :cond_27
    const-string v2, "exposure-compensation"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_8

    .line 1311
    .end local v21           #key:Ljava/lang/String;
    .end local v29           #value:I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, [Ljava/lang/Object;

    .line 1312
    .local v25, params:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v2, 0x0

    aget-object v2, v25, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x1

    aget-object v2, v25, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V
    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/camera/CameraThread;->access$3500(Lcom/android/camera/CameraThread;JJ)V

    goto/16 :goto_0

    .line 1316
    .end local v25           #params:[Ljava/lang/Object;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;Z)V

    goto/16 :goto_0

    .line 1320
    :sswitch_18
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1322
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 1323
    .local v26, scene_mode:Ljava/lang/String;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_SCENE_MODE - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1327
    .end local v26           #scene_mode:Ljava/lang/String;
    :cond_28
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    :sswitch_19
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_BLINK_DETECTION start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_blink detection"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1336
    .local v13, bValue:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1337
    if-eqz v13, :cond_29

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "103"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, enable blink"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1342
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_smile_capture"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1344
    .local v12, bSmile:Z
    if-eqz v12, :cond_2a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "120"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, enable smile"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1349
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "100"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, none"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1364
    .end local v12           #bSmile:Z
    .end local v13           #bValue:Z
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    .line 1368
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 628
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_8
        0x3 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_c
        0xf -> :sswitch_1
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_12
        0x16 -> :sswitch_13
        0x18 -> :sswitch_7
        0x1c -> :sswitch_14
        0x2c -> :sswitch_15
        0x2f -> :sswitch_16
        0x30 -> :sswitch_17
        0x36 -> :sswitch_b
        0x3a -> :sswitch_18
        0x3b -> :sswitch_0
        0x3c -> :sswitch_19
        0x46 -> :sswitch_1a
        0x3e8 -> :sswitch_4
        0x276a -> :sswitch_1b
    .end sparse-switch

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 910
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1250
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
