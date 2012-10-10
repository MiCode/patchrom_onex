.class Lcom/android/camera/component/PanoramaController$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/scalado/camera/autorama/Autorama$AutoramaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "session"
    .parameter "camera"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onAutoramaComplete()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V
    .locals 7
    .parameter "newDirection"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 523
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoramaListener.onDirectionChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v0, v5}, Lcom/android/camera/component/PanoramaController;->access$902(Lcom/android/camera/component/PanoramaController;I)I

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-result-object v6

    .line 536
    .local v6, options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    invoke-virtual {v6, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->lockDirection(Lcom/scalado/caps/autorama/Direction;)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    .line 539
    .local v1, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v1, :cond_2

    .line 540
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$900(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 543
    .end local v1           #ui:Lcom/android/camera/component/PanoramaUI;
    .end local v6           #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :goto_1
    return-void

    .line 527
    :cond_0
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    #setter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$902(Lcom/android/camera/component/PanoramaController;I)I

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v0, v5, v4, v5}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    goto :goto_1

    .line 542
    .restart local v1       #ui:Lcom/android/camera/component/PanoramaUI;
    .restart local v6       #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "No UI to notify onDirectionChanged"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onIntermediateCaptureStart(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 501
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$2800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoramaListener.onIntermediateCaptureStart()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    .line 505
    .local v1, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v1, :cond_1

    .line 507
    if-nez p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v0, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1102(Lcom/android/camera/component/PanoramaController;J)J

    .line 518
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$1002(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 519
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$2900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "No UI to notify onIntermediateCaptureStart"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V
    .locals 26
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoramaListener.onIntermediateJpeg()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1002(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 398
    if-nez p2, :cond_2

    .line 400
    const/16 v24, 0x0

    .line 404
    .local v24, tempFile:Ljava/io/File;
    :try_start_0
    const-string v3, ".camera_temp"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    .line 405
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v21, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v3

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 407
    .local v19, jpegData:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/scalado/base/Buffer;->copyTo([B)V

    .line 408
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 409
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 412
    new-instance v17, Landroid/media/ExifInterface;

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 413
    .local v17, exif:Landroid/media/ExifInterface;
    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    const-string v4, "DateTime"

    aput-object v4, v23, v3

    const/4 v3, 0x1

    const-string v4, "FocalLength"

    aput-object v4, v23, v3

    const/4 v3, 0x2

    const-string v4, "GPSAltitude"

    aput-object v4, v23, v3

    const/4 v3, 0x3

    const-string v4, "GPSAltitudeRef"

    aput-object v4, v23, v3

    const/4 v3, 0x4

    const-string v4, "GPSLatitude"

    aput-object v4, v23, v3

    const/4 v3, 0x5

    const-string v4, "GPSLatitudeRef"

    aput-object v4, v23, v3

    const/4 v3, 0x6

    const-string v4, "GPSLongitude"

    aput-object v4, v23, v3

    const/4 v3, 0x7

    const-string v4, "GPSLongitudeRef"

    aput-object v4, v23, v3

    const/16 v3, 0x8

    const-string v4, "Make"

    aput-object v4, v23, v3

    const/16 v3, 0x9

    const-string v4, "Model"

    aput-object v4, v23, v3

    const/16 v3, 0xa

    const-string v4, "WhiteBalance"

    aput-object v4, v23, v3

    .line 426
    .local v23, tagNames:[Ljava/lang/String;
    move-object/from16 v14, v23

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v22, v14, v18

    .line 428
    .local v22, tagName:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 429
    .local v25, value:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1800(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 439
    .end local v22           #tagName:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    :cond_1
    if-eqz v24, :cond_2

    .line 440
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 445
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #exif:Landroid/media/ExifInterface;
    .end local v18           #i$:I
    .end local v19           #jpegData:[B
    .end local v20           #len$:I
    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .end local v23           #tagNames:[Ljava/lang/String;
    .end local v24           #tempFile:Ljava/io/File;
    :cond_2
    :goto_1
    const/4 v13, 0x0

    .line 446
    .local v13, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    if-nez v3, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p1

    #calls: Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-static {v3, v0}, Lcom/android/camera/component/PanoramaController;->access$2000(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v15

    .line 452
    .local v15, decoder:Lcom/scalado/caps/Decoder;
    if-eqz v15, :cond_3

    .line 457
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v5

    .line 458
    .local v5, thumbWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getThumbnailHeight()I

    move-result v6

    .line 459
    .local v6, thumbHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 460
    .local v2, landBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/scalado/caps/Session;

    check-cast v15, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local v15           #decoder:Lcom/scalado/caps/Decoder;
    invoke-direct {v3, v15}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V

    .line 463
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 464
    .local v7, matrix:Landroid/graphics/Matrix;
    const/high16 v3, 0x42b4

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 465
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 466
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    .end local v2           #landBitmap:Landroid/graphics/Bitmap;
    .end local v5           #thumbWidth:I
    .end local v6           #thumbHeight:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 477
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v9

    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 482
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1204(Lcom/android/camera/component/PanoramaController;)I

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I
    invoke-static {v8}, Lcom/android/camera/component/PanoramaController;->access$2400(Lcom/android/camera/component/PanoramaController;)I

    move-result v8

    if-eq v3, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2500(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    const/4 v3, 0x1

    :goto_4
    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v4, v3}, Lcom/android/camera/component/PanoramaController;->access$2302(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 487
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 497
    :cond_6
    :goto_5
    return-void

    .line 433
    .end local v13           #thumb:Landroid/graphics/Bitmap;
    .restart local v24       #tempFile:Ljava/io/File;
    :catch_0
    move-exception v16

    .line 435
    .local v16, ex:Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot extract EXIF from first frame"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    if-eqz v24, :cond_2

    .line 440
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 439
    .end local v16           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v24, :cond_7

    .line 440
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    :cond_7
    throw v3

    .line 468
    .end local v24           #tempFile:Ljava/io/File;
    .restart local v13       #thumb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v16

    .line 470
    .restart local v16       #ex:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot create thumbnail image"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 479
    .end local v16           #ex:Ljava/lang/Throwable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "No UI to notify onIntermediateJpeg"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 484
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 492
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->stopPreview()V
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2700(Lcom/android/camera/component/PanoramaController;)V

    goto :goto_5
.end method

.method public onIntermediatePostview(Lcom/scalado/base/Image;I)V
    .locals 2
    .parameter "image"
    .parameter "index"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onIntermediatePostview()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoramaListener.onIntermediateShutter(index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;F)F

    .line 383
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify onIntermediateShutter"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTracking(FFLcom/scalado/base/Image;)Z
    .locals 15
    .parameter "dx"
    .parameter "dy"
    .parameter "image"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoramaListener.onTracking(dx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v8

    .line 281
    .local v8, direction:Lcom/scalado/caps/autorama/Direction;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3e80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 286
    const/4 v1, 0x0

    .line 364
    :goto_0
    return v1

    .line 288
    :cond_0
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v8, v1, :cond_7

    .line 290
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$800(Lcom/android/camera/component/PanoramaController;)F

    move-result v1

    sub-float v12, p1, v1

    .line 291
    .local v12, vx:F
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v8, v1, :cond_1

    .line 292
    neg-float v12, v12

    .line 293
    :cond_1
    const v1, -0x41e66666

    cmpg-float v1, v12, v1

    if-gtz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 296
    const/4 v1, 0x0

    goto :goto_0

    .line 298
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move/from16 v0, p1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;F)F

    .line 306
    .end local v12           #vx:F
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 308
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$900(Lcom/android/camera/component/PanoramaController;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->hasAsyncMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->sendAsyncMessage(I)Z

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 316
    :cond_5
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v8, v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1000(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 318
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v8, v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    int-to-float v11, v1

    .line 319
    .local v11, targetOffset:F
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v8, v1, :cond_9

    sub-float v7, v11, p1

    .line 320
    .local v7, diffToTarget:F
    :goto_3
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    .line 322
    float-to-double v1, v7

    const-wide v3, -0x403ccccccccccccdL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_a

    .line 324
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 364
    .end local v7           #diffToTarget:F
    .end local v11           #targetOffset:F
    :cond_6
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 302
    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move/from16 v0, p1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;F)F

    goto/16 :goto_1

    .line 318
    :cond_8
    const/4 v1, -0x1

    goto :goto_2

    .line 319
    .restart local v11       #targetOffset:F
    :cond_9
    sub-float v7, p1, v11

    goto :goto_3

    .line 327
    .restart local v7       #diffToTarget:F
    :cond_a
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_b

    float-to-double v1, v7

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-lez v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_6

    .line 330
    :cond_c
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1102(Lcom/android/camera/component/PanoramaController;J)J

    .line 333
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 334
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_4

    .line 339
    :cond_d
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_f

    .line 341
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)J

    move-result-wide v3

    sub-long v9, v1, v3

    .line 342
    .local v9, interval:J
    const-wide/16 v1, 0x12c

    cmp-long v1, v9, v1

    if-ltz v1, :cond_6

    .line 344
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger capturing frame["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 350
    .end local v9           #interval:J
    :cond_f
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 351
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    goto/16 :goto_4

    .line 355
    :cond_10
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1102(Lcom/android/camera/component/PanoramaController;J)J

    .line 358
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 359
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_4
.end method
