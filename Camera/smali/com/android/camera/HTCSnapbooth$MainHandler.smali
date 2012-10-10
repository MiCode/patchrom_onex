.class Lcom/android/camera/HTCSnapbooth$MainHandler;
.super Landroid/os/Handler;
.source "HTCSnapbooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCSnapbooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/HTCSnapbooth$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth$MainHandler;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 257
    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainHandler Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 263
    :sswitch_0
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/SnapboothCustomize;->updatePreviewOrientation(Z)V

    .line 268
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :sswitch_1
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STARTED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z
    invoke-static {v0, v5}, Lcom/android/camera/HTCSnapbooth;->access$602(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 278
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$700(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 279
    const-string v0, "HTCSnapbooth"

    const-string v1, "mActivityOnPause == true, UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    .line 287
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$802(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 289
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$902(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 292
    :cond_3
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STARTED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :sswitch_2
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STOPPED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$602(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 302
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    .line 305
    :cond_4
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STOPPED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    :sswitch_3
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - FIRST_PREVIEW_FRAME_ARRIVED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$700(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z
    invoke-static {v0, v5}, Lcom/android/camera/HTCSnapbooth;->access$1002(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 316
    :cond_5
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - FIRST_PREVIEW_FRAME_ARRIVED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :sswitch_4
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_CANCELED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$1102(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 327
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)V

    .line 330
    :cond_6
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_CANCELED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :sswitch_5
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_COMPLETED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_COMPLETED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :sswitch_6
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    const-string v0, "HTCSnapbooth"

    const-string v1, "Capture is canceled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_7
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 354
    .local v11, tick:I
    if-lez v11, :cond_8

    .line 357
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1300(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    add-int/lit8 v2, v11, -0x1

    const-wide/16 v5, 0x320

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 360
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/android/camera/SnapboothCustomize;->enableCountdown(ILcom/android/camera/rotate/UIRotation;)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->PlaySound(I)V

    .line 383
    :goto_1
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->disableCountdowns(Lcom/android/camera/rotate/UIRotation;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1500(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;)I

    move-result v0

    if-ne v0, v6, :cond_b

    .line 372
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1700(Lcom/android/camera/HTCSnapbooth;)V

    .line 377
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$1002(Lcom/android/camera/HTCSnapbooth;Z)Z

    .line 380
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$1500(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v3, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    .line 373
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1800(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 374
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1800(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 389
    .end local v11           #tick:I
    :sswitch_7
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - UPDATE_MULTISHUTTER_BUBBLE start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentShutterNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$1602(Lcom/android/camera/HTCSnapbooth;I)I

    .line 395
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;)I

    move-result v0

    if-le v0, v5, :cond_c

    .line 396
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1900(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableCountBubble(I)V

    .line 399
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - UPDATE_MULTISHUTTER_BUBBLE end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :sswitch_8
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - STORE_IMAGE_FAILED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f0a01c3

    #calls: Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V
    invoke-static {v0, v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3, v3, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/android/camera/HTCSnapbooth;->access$2200(Lcom/android/camera/HTCSnapbooth;ZZ)V

    .line 414
    :goto_3
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - STORE_IMAGE_FAILED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->cancelCapture()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2300(Lcom/android/camera/HTCSnapbooth;)V

    goto :goto_3

    .line 420
    :sswitch_9
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_SCREEN start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v7, v0

    check-cast v7, [Landroid/graphics/Bitmap;

    .line 423
    .local v7, array:[Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    aget-object v1, v7, v3

    aget-object v2, v7, v5

    #calls: Lcom/android/camera/HTCSnapbooth;->showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCSnapbooth;->access$2400(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 425
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_SCREEN end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .end local v7           #array:[Landroid/graphics/Bitmap;
    :sswitch_a
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_ANIMATION start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
    invoke-static {v0, v5, v5}, Lcom/android/camera/HTCSnapbooth;->access$2200(Lcom/android/camera/HTCSnapbooth;ZZ)V

    .line 433
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_ANIMATION end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :sswitch_b
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - INIT_THUMBNAIL_CREATED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    .line 442
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2500(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 444
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2600(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2700(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2800(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 447
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2800(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_e
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0, v10}, Lcom/android/camera/HTCSnapbooth;->access$2802(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 456
    :cond_f
    :goto_4
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - INIT_THUMBNAIL_CREATED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_10
    if-eqz v10, :cond_f

    .line 452
    const-string v0, "HTCSnapbooth"

    const-string v1, "Thumbnail image is not needed, recycled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 462
    .end local v10           #thumbnail:Landroid/graphics/Bitmap;
    :sswitch_c
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - SHOW_TOAST start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V

    .line 464
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - SHOW_TOAST end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :sswitch_d
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - NOTIFY_STORAGE_STATE start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 474
    .local v9, state:I
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2600(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 476
    const/4 v0, 0x2

    if-ne v9, v0, :cond_11

    .line 478
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2800(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    .line 479
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 484
    :cond_11
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->showStorageToast(IZ)V
    invoke-static {v0, v9, v5}, Lcom/android/camera/HTCSnapbooth;->access$2900(Lcom/android/camera/HTCSnapbooth;IZ)V

    .line 486
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - NOTIFY_STORAGE_STATE end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    .end local v9           #state:I
    :sswitch_e
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PLAY_SOUND start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 494
    .local v8, id:I
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0, v8}, Lcom/android/camera/HTCSnapbooth;->PlaySound(I)V

    .line 495
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PLAY_SOUND end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    .end local v8           #id:I
    :sswitch_f
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - ENTER_SCREEN_SAVE start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->enterScreenSave()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$3000(Lcom/android/camera/HTCSnapbooth;)V

    .line 503
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - ENTER_SCREEN_SAVE end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_3
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x1f -> :sswitch_c
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x2b -> :sswitch_f
        0x64 -> :sswitch_b
        0x65 -> :sswitch_8
    .end sparse-switch
.end method
