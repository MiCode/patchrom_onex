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
    .line 616
    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    .line 622
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1342
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 625
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

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 630
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mCameraDevice is null in SET_RESOLUTION message"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 636
    .local v29, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 637
    .local v17, height:I
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Resolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    sget-object v3, Lcom/android/camera/CameraThread$19;->$SwitchMap$com$android$camera$CameraMode:[I

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

    .line 664
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1002(Lcom/android/camera/CameraThread;Z)Z

    .line 668
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

    .line 671
    .end local v17           #height:I
    .end local v29           #width:I
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

    .line 681
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 683
    .local v4, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCanStartPreview:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 643
    .end local v4           #status:I
    .restart local v17       #height:I
    .restart local v29       #width:I
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

    .line 645
    .local v14, bWideScreen:Z
    if-eqz v14, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    .line 652
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v29

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$602(Lcom/android/camera/CameraThread;I)I

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v17

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$702(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    goto :goto_2

    .line 658
    .end local v14           #bWideScreen:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v29

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$802(Lcom/android/camera/CameraThread;I)I

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v17

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    .line 694
    .end local v17           #height:I
    .end local v29           #width:I
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

    .line 696
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, waiting for camera close"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 701
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

    .line 708
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlock3DSwitch(Z)V

    .line 709
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x49

    const-wide/16 v5, 0x6a4

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x48

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 718
    :cond_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 724
    .end local v4           #status:I
    :sswitch_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW_DIRECTLY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)I

    .line 726
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW_DIRECTLY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :sswitch_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - OPEN_CAMERA start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/CameraType;)I
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;)I

    .line 734
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - OPEN_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    :sswitch_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakePicture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 744
    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
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

    .line 749
    :cond_7
    const-string v2, "CameraThread"

    const-string v3, "WAIT_SELFTIMER"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
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

    .line 752
    :cond_8
    const-string v2, "CameraThread"

    const-string v3, "take picture, video snapshot is not supported"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
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

    .line 758
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkInternalDataSpace()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    .line 761
    const-string v2, "CameraThread"

    const-string v3, "Low internal data space"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
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

    .line 778
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

    move-result v26

    .line 779
    .local v26, timer:I
    :goto_3
    if-lez v26, :cond_c

    .line 781
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start SelfTimer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v5, 0x0

    move/from16 v0, v26

    move/from16 v1, v26

    invoke-static {v2, v3, v0, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 791
    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    .end local v26           #timer:I
    :cond_b
    const/16 v26, 0x0

    goto :goto_3

    .line 785
    .restart local v26       #timer:I
    :cond_c
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - no self timer, take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_4

    .line 799
    .end local v26           #timer:I
    :sswitch_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 801
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    .line 808
    const/16 v16, 0x0

    .line 819
    .local v16, failedReason:Lcom/android/camera/TakingPictureFailedReason;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 820
    sget-object v16, Lcom/android/camera/TakingPictureFailedReason;->StorageError:Lcom/android/camera/TakingPictureFailedReason;

    .line 823
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkImageQueueState()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1900(Lcom/android/camera/CameraThread;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 827
    sget-object v16, Lcom/android/camera/TakingPictureFailedReason;->ImageQueueIsFull:Lcom/android/camera/TakingPictureFailedReason;

    .line 830
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 838
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end, mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 857
    const-string v2, "CameraThread"

    const-string v3, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->capture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;)V

    .line 890
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 894
    .end local v16           #failedReason:Lcom/android/camera/TakingPictureFailedReason;
    :sswitch_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
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

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 936
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 940
    :goto_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :catch_0
    move-exception v15

    .line 898
    .local v15, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "Exception"

    invoke-static {v2, v3, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 907
    .end local v15           #ex:Ljava/lang/Exception;
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

    .line 909
    const-string v2, "CameraThread"

    const-string v3, "Waiting for auto-focus before capture, cancel capture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2102(Lcom/android/camera/CameraThread;Z)Z

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2206(Lcom/android/camera/CameraThread;)J

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v3, v5}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 924
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 925
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_6

    .line 917
    :cond_11
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x2

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 919
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 929
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 930
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_6

    .line 944
    :sswitch_9
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_12

    .line 949
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 951
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 955
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 957
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v22

    .line 958
    .local v22, myloop:Landroid/os/Looper;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Looper;->quit()V

    .line 959
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    .end local v22           #myloop:Landroid/os/Looper;
    :sswitch_a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkInternalDataSpace()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_13

    .line 977
    const-string v2, "CameraThread"

    const-string v3, "Low internal data space"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
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

    .line 982
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 984
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

    .line 986
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
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

    .line 1001
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1004
    const-string v2, "CameraThread"

    const-string v3, "Play start record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1008
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

    .line 1009
    :cond_15
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

    .line 1016
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x36

    const-wide/16 v5, 0x12c

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1024
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->startVideoRecording()V

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1029
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

    .line 1034
    :cond_18
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :sswitch_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->startVideoRecording()V

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1044
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

    .line 1049
    :cond_19
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    :sswitch_c
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v2, v3, :cond_1a

    .line 1055
    const-string v2, "CameraThread"

    const-string v3, "record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
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

    .line 1060
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2700(Lcom/android/camera/CameraThread;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1120
    :cond_1b
    :goto_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1090
    :cond_1c
    const-string v2, "CameraThread"

    const-string v3, "Recording Message - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2902(Lcom/android/camera/CameraThread;Z)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1104
    const-string v2, "CameraThread"

    const-string v3, "Play end record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 1108
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
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3002(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 1109
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$3000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    goto/16 :goto_7

    .line 1127
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
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1129
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 1131
    .local v28, wb:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1135
    const-string v2, "incandescent"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1137
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[choose_Incandescent]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1145
    .end local v28           #wb:Ljava/lang/String;
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
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1147
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 1148
    .local v20, level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "exposure-compensation"

    const/4 v5, 0x5

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v27

    .line 1153
    .local v27, value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1159
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_exposure]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    .end local v20           #level:I
    .end local v27           #value:I
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
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1167
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 1168
    .local v18, iso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "iso"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1175
    .end local v18           #iso:Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
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
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1183
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 1184
    .local v19, key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 1185
    .restart local v20       #level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v27

    .line 1187
    .restart local v27       #value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1192
    const-string v2, "contrast"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1194
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_contract]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1195
    :cond_1e
    const-string v2, "saturation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1197
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_saturation]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1198
    :cond_1f
    const-string v2, "sharpness"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_sharpness]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1205
    .end local v19           #key:Ljava/lang/String;
    .end local v20           #level:I
    .end local v27           #value:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/FlashMode;

    #calls: Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0

    .line 1210
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1211
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_RECORD_SIZE_LIMIT end - isRecording = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1215
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v21

    .line 1216
    .local v21, limit:Lcom/android/camera/RecordLimitCheck;
    if-nez v21, :cond_21

    .line 1217
    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null !!! - CHECK_RECORD_SIZE_LIMIT end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    :cond_21
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

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/camera/RecordLimitCheck;->checkSizeLimit(Lcom/android/camera/io/StorageSlot;J)V

    .line 1222
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v25

    .line 1223
    .local v25, state:I
    packed-switch v25, :pswitch_data_2

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1225
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0045

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1227
    const-string v2, "CameraThread"

    const-string v3, "reach FATA32 file \'system file size limitation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :pswitch_6
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - FILE_SIZE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1234
    :pswitch_7
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - DISK_SPACE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1238
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

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a003a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1244
    :pswitch_8
    const-string v2, "CameraThread"

    const-string v3, "reach time out - not to check file size limit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1256
    .end local v21           #limit:Lcom/android/camera/RecordLimitCheck;
    .end local v25           #state:I
    :sswitch_14
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->loadSettings()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1262
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1266
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1268
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 1269
    .restart local v19       #key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1271
    .restart local v27       #value:I
    const-string v2, "contrast"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "saturation"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "sharpness"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1274
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1279
    :cond_23
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1276
    :cond_24
    const-string v2, "exposure-compensation"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_8

    .line 1284
    .end local v19           #key:Ljava/lang/String;
    .end local v27           #value:I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v23, v2

    check-cast v23, [Ljava/lang/Object;

    .line 1285
    .local v23, params:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v2, 0x0

    aget-object v2, v23, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x1

    aget-object v2, v23, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V
    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/camera/CameraThread;->access$3400(Lcom/android/camera/CameraThread;JJ)V

    goto/16 :goto_0

    .line 1289
    .end local v23           #params:[Ljava/lang/Object;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$3500(Lcom/android/camera/CameraThread;Z)V

    goto/16 :goto_0

    .line 1293
    :sswitch_18
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1295
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 1296
    .local v24, scene_mode:Ljava/lang/String;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_SCENE_MODE - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1300
    .end local v24           #scene_mode:Ljava/lang/String;
    :cond_25
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1306
    :sswitch_19
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_BLINK_DETECTION start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
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

    .line 1309
    .local v13, bValue:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1310
    if-eqz v13, :cond_26

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "103"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, enable blink"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1315
    :cond_26
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

    .line 1317
    .local v12, bSmile:Z
    if-eqz v12, :cond_27

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "120"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, enable smile"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1322
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "100"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, none"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1337
    .end local v12           #bSmile:Z
    .end local v13           #bValue:Z
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    .line 622
    nop

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
    .end sparse-switch

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 904
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1223
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
