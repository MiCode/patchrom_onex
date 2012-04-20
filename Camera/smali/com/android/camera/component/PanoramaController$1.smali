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
    .line 273
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
    .line 546
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onAutoramaComplete()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V
    .locals 7
    .parameter "newDirection"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 522
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

    .line 524
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v0, v5}, Lcom/android/camera/component/PanoramaController;->access$902(Lcom/android/camera/component/PanoramaController;I)I

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-result-object v6

    .line 535
    .local v6, options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    invoke-virtual {v6, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->lockDirection(Lcom/scalado/caps/autorama/Direction;)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    .line 538
    .local v1, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$900(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 542
    .end local v1           #ui:Lcom/android/camera/component/PanoramaUI;
    .end local v6           #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :goto_1
    return-void

    .line 526
    :cond_0
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    #setter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$902(Lcom/android/camera/component/PanoramaController;I)I

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v0, v5, v4, v5}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    goto :goto_1

    .line 541
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

    .line 500
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$2800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoramaListener.onIntermediateCaptureStart()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    .line 504
    .local v1, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v1, :cond_1

    .line 506
    if-nez p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v0, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1102(Lcom/android/camera/component/PanoramaController;J)J

    .line 517
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$1002(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 518
    return-void

    .line 511
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
    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoramaListener.onIntermediateJpeg()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1002(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 397
    if-nez p2, :cond_2

    .line 399
    const/16 v24, 0x0

    .line 403
    .local v24, tempFile:Ljava/io/File;
    :try_start_0
    const-string v3, ".camera_temp"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    .line 404
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 405
    .local v21, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v3

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 406
    .local v19, jpegData:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/scalado/base/Buffer;->copyTo([B)V

    .line 407
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 408
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 411
    new-instance v17, Landroid/media/ExifInterface;

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 412
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

    .line 425
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

    .line 427
    .local v22, tagName:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 428
    .local v25, value:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 429
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

    .line 425
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 438
    .end local v22           #tagName:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    :cond_1
    if-eqz v24, :cond_2

    .line 439
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 444
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

    .line 445
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

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p1

    #calls: Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-static {v3, v0}, Lcom/android/camera/component/PanoramaController;->access$2000(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v15

    .line 451
    .local v15, decoder:Lcom/scalado/caps/Decoder;
    if-eqz v15, :cond_3

    .line 456
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v5

    .line 457
    .local v5, thumbWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getThumbnailHeight()I

    move-result v6

    .line 458
    .local v6, thumbHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 459
    .local v2, landBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/scalado/caps/Session;

    check-cast v15, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local v15           #decoder:Lcom/scalado/caps/Decoder;
    invoke-direct {v3, v15}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V

    .line 462
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 463
    .local v7, matrix:Landroid/graphics/Matrix;
    const/high16 v3, 0x42b4

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 464
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 465
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
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

    .line 476
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

    .line 481
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1204(Lcom/android/camera/component/PanoramaController;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 483
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

    .line 486
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 496
    :cond_6
    :goto_5
    return-void

    .line 432
    .end local v13           #thumb:Landroid/graphics/Bitmap;
    .restart local v24       #tempFile:Ljava/io/File;
    :catch_0
    move-exception v16

    .line 434
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

    .line 438
    if-eqz v24, :cond_2

    .line 439
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 438
    .end local v16           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v24, :cond_7

    .line 439
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    :cond_7
    throw v3

    .line 467
    .end local v24           #tempFile:Ljava/io/File;
    .restart local v13       #thumb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v16

    .line 469
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

    .line 478
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

    .line 483
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 491
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
    .line 386
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onIntermediatePostview()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 368
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

    .line 371
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
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

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;F)F

    .line 382
    return-void

    .line 378
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
    .line 276
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

    .line 279
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v8

    .line 280
    .local v8, direction:Lcom/scalado/caps/autorama/Direction;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3e80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 285
    const/4 v1, 0x0

    .line 363
    :goto_0
    return v1

    .line 287
    :cond_0
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v8, v1, :cond_7

    .line 289
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$800(Lcom/android/camera/component/PanoramaController;)F

    move-result v1

    sub-float v12, p1, v1

    .line 290
    .local v12, vx:F
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v8, v1, :cond_1

    .line 291
    neg-float v12, v12

    .line 292
    :cond_1
    const v1, -0x41e66666

    cmpg-float v1, v12, v1

    if-gtz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 295
    const/4 v1, 0x0

    goto :goto_0

    .line 297
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move/from16 v0, p1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;F)F

    .line 305
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

    .line 307
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

    .line 308
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->sendAsyncMessage(I)Z

    .line 311
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

    .line 315
    :cond_5
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v8, v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1000(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 317
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v8, v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    int-to-float v11, v1

    .line 318
    .local v11, targetOffset:F
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v8, v1, :cond_9

    sub-float v7, v11, p1

    .line 319
    .local v7, diffToTarget:F
    :goto_3
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    .line 321
    float-to-double v1, v7

    const-wide v3, -0x403ccccccccccccdL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_a

    .line 323
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 363
    .end local v7           #diffToTarget:F
    .end local v11           #targetOffset:F
    :cond_6
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 301
    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    move/from16 v0, p1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;F)F

    goto/16 :goto_1

    .line 317
    :cond_8
    const/4 v1, -0x1

    goto :goto_2

    .line 318
    .restart local v11       #targetOffset:F
    :cond_9
    sub-float v7, p1, v11

    goto :goto_3

    .line 326
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

    .line 329
    :cond_c
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1102(Lcom/android/camera/component/PanoramaController;J)J

    .line 332
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 333
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

    .line 338
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

    .line 340
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)J

    move-result-wide v3

    sub-long v9, v1, v3

    .line 341
    .local v9, interval:J
    const-wide/16 v1, 0x12c

    cmp-long v1, v9, v1

    if-ltz v1, :cond_6

    .line 343
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

    .line 344
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 349
    .end local v9           #interval:J
    :cond_f
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 350
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    goto/16 :goto_4

    .line 354
    :cond_10
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$1102(Lcom/android/camera/component/PanoramaController;J)J

    .line 357
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 358
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
