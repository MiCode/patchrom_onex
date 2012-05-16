.class final Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryPersister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;Lcom/htc/music/util/HtcActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1347
    invoke-direct {p0, p1}, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1350
    const/4 v1, 0x0

    .line 1351
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 1353
    .local v8, records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    iget-object v11, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/htc/music/util/HtcActivityChooserModel;->access$700(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1354
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/music/util/HtcActivityChooserModel;->access$800(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    .end local v8           #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .local v9, records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1358
    :try_start_2
    iget-object v11, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/music/util/HtcActivityChooserModel;->access$300(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1366
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 1369
    .local v10, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v11, 0x0

    :try_start_3
    invoke-interface {v10, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1370
    const-string v11, "UTF-8"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1371
    const/4 v11, 0x0

    const-string v12, "historical-records"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1373
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 1374
    .local v7, recordCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 1375
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    .line 1376
    .local v6, record:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    const/4 v11, 0x0

    const-string v12, "historical-record"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    const/4 v11, 0x0

    const-string v12, "activity"

    iget-object v13, v6, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1379
    const/4 v11, 0x0

    const-string v12, "time"

    iget-wide v13, v6, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1381
    const/4 v11, 0x0

    const-string v12, "weight"

    iget v13, v6, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1383
    const/4 v11, 0x0

    const-string v12, "historical-record"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1355
    .end local v2           #i:I
    .end local v6           #record:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    .end local v7           #recordCount:I
    .end local v9           #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .end local v10           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :catchall_0
    move-exception v11

    :goto_1
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 1360
    .end local v8           #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .restart local v9       #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :catch_0
    move-exception v0

    .line 1361
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v11, "[HtcActivityChooserModel]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1414
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 1389
    .restart local v2       #i:I
    .restart local v7       #recordCount:I
    .restart local v10       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v11, 0x0

    :try_start_5
    const-string v12, "historical-records"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1390
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1406
    if-eqz v1, :cond_0

    .line 1408
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1409
    .end local v2           #i:I
    .end local v7           #recordCount:I
    :catch_1
    move-exception v11

    goto :goto_2

    .line 1396
    :catch_2
    move-exception v3

    .line 1397
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v11, "[HtcActivityChooserModel]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1406
    if-eqz v1, :cond_0

    .line 1408
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 1399
    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 1400
    .local v5, ise:Ljava/lang/IllegalStateException;
    :try_start_9
    const-string v11, "[HtcActivityChooserModel]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1406
    if-eqz v1, :cond_0

    .line 1408
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 1402
    .end local v5           #ise:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v4

    .line 1403
    .local v4, ioe:Ljava/io/IOException;
    :try_start_b
    const-string v11, "[HtcActivityChooserModel]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryPersister;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1406
    if-eqz v1, :cond_0

    .line 1408
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_2

    .line 1406
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    if-eqz v1, :cond_2

    .line 1408
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 1406
    :cond_2
    :goto_3
    throw v11

    .line 1409
    :catch_5
    move-exception v12

    goto :goto_3

    .line 1355
    .end local v10           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9           #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #records:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    goto/16 :goto_1
.end method
