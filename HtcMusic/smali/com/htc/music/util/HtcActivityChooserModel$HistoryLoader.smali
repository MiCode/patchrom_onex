.class final Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;
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
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;Lcom/htc/music/util/HtcActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1223
    const/4 v4, 0x0

    .line 1225
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/util/HtcActivityChooserModel;->access$300(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1234
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1235
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v12, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1237
    const/16 v17, 0x0

    .line 1239
    .local v17, type:I
    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 1240
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_0

    .line 1226
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_0
    move-exception v5

    .line 1340
    :cond_0
    :goto_1
    return-void

    .line 1243
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_1
    const-string v21, "historical-records"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1244
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file does not start with historical-records tag."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1325
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_1
    move-exception v20

    .line 1326
    .local v20, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v21, "[HtcActivityChooserModel]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1332
    if-eqz v4, :cond_0

    .line 1334
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1335
    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v21

    goto :goto_1

    .line 1249
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_2
    :try_start_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v14, readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :cond_3
    :goto_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 1253
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/util/HtcActivityChooserModel;->access$700(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1288
    :try_start_5
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1295
    .local v18, uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/util/HtcActivityChooserModel;->access$800(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/util/List;

    move-result-object v7

    .line 1296
    .local v7, historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1297
    .local v8, historicalRecordsCount:I
    add-int/lit8 v9, v8, -0x1

    .local v9, i:I
    :goto_3
    if-ltz v9, :cond_7

    .line 1298
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    .line 1300
    .local v6, historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1297
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 1256
    .end local v6           #historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :cond_4
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1260
    :try_start_6
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1261
    .local v11, nodeName:Ljava/lang/String;
    const-string v21, "historical-record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1262
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file not well-formed."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1328
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_3
    move-exception v10

    .line 1329
    .local v10, ioe:Ljava/io/IOException;
    :try_start_7
    const-string v21, "[HtcActivityChooserModel]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/util/HtcActivityChooserModel;->access$600(Lcom/htc/music/util/HtcActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1332
    if-eqz v4, :cond_0

    .line 1334
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 1266
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v11       #nodeName:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    :cond_5
    const/16 v21, 0x0

    :try_start_9
    const-string v22, "activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    .local v3, activity:Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 1270
    .local v15, time:J
    const/16 v21, 0x0

    const-string v22, "weight"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 1273
    .local v19, weight:F
    new-instance v13, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    move-wide v0, v15

    move/from16 v2, v19

    invoke-direct {v13, v3, v0, v1, v2}, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1275
    .local v13, readRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 1332
    .end local v3           #activity:Ljava/lang/String;
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #readRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .end local v15           #time:J
    .end local v17           #type:I
    .end local v19           #weight:F
    :catchall_0
    move-exception v21

    if-eqz v4, :cond_6

    .line 1334
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1332
    :cond_6
    :goto_4
    throw v21

    .line 1303
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :cond_7
    :try_start_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1304
    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1332
    if-eqz v4, :cond_0

    .line 1334
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_1

    .line 1308
    :cond_8
    :try_start_d
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1309
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    #setter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHistoricalRecordsChanged:Z
    invoke-static {v0, v1}, Lcom/htc/music/util/HtcActivityChooserModel;->access$902(Lcom/htc/music/util/HtcActivityChooserModel;Z)Z

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/util/HtcActivityChooserModel;->access$1200(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v23, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader$1;

    invoke-direct/range {v23 .. v24}, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader$1;-><init>(Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1324
    monitor-exit v22
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1332
    if-eqz v4, :cond_0

    .line 1334
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_1

    .line 1324
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    :catchall_1
    move-exception v21

    :try_start_f
    monitor-exit v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v21
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 1335
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_4
    move-exception v22

    goto :goto_4
.end method
