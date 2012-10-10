.class Lcom/android/server/SUPLServer;
.super Ljava/lang/Object;
.source "SUPLServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field public static final CONFIG_PATH:Ljava/lang/String; = "/system/bin/SuplConfig.spl"

.field private static final DEBUG:Z = false

.field private static final GPS_CONF_PATH:Ljava/lang/String; = "/etc/gps.conf"

.field public static Impl:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SUPLServer"

.field private static PROTOCOL_TYPE_TAG:Ljava/lang/String; = null

.field private static Pass:Ljava/lang/String; = null

.field private static Path:Ljava/lang/String; = null

.field private static SLP_TYPE_TAG:Ljava/lang/String; = null

.field private static SUPL_HOST_TAG:Ljava/lang/String; = null

.field private static SUPL_PORT_TAG:Ljava/lang/String; = null

.field private static SUPL_TLS_CERT_TAG:Ljava/lang/String; = null

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "2"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "2"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x1388


# instance fields
.field private SLPThread:Ljava/lang/Thread;

.field private TestThread:Ljava/lang/Thread;

.field private checkBind:Z

.field private mContext:Landroid/content/Context;

.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private final mSuplServer:Lcom/android/server/SUPLService;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "/certificate/client_keystore.bks"

    sput-object v0, Lcom/android/server/SUPLServer;->Path:Ljava/lang/String;

    .line 75
    const-string v0, "Socket"

    sput-object v0, Lcom/android/server/SUPLServer;->Impl:Ljava/lang/String;

    .line 76
    const-string v0, "123456"

    sput-object v0, Lcom/android/server/SUPLServer;->Pass:Ljava/lang/String;

    .line 79
    const-string v0, "SUPL_TLS_CERT"

    sput-object v0, Lcom/android/server/SUPLServer;->SUPL_TLS_CERT_TAG:Ljava/lang/String;

    .line 80
    const-string v0, "PROTOCOL_TYPE"

    sput-object v0, Lcom/android/server/SUPLServer;->PROTOCOL_TYPE_TAG:Ljava/lang/String;

    .line 81
    const-string v0, "SLP_TYPE"

    sput-object v0, Lcom/android/server/SUPLServer;->SLP_TYPE_TAG:Ljava/lang/String;

    .line 82
    const-string v0, "SUPL_HOST"

    sput-object v0, Lcom/android/server/SUPLServer;->SUPL_HOST_TAG:Ljava/lang/String;

    .line 83
    const-string v0, "SUPL_PORT"

    sput-object v0, Lcom/android/server/SUPLServer;->SUPL_PORT_TAG:Ljava/lang/String;

    .line 91
    const-string v0, "suplhelperservicejni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;)V
    .locals 1
    .parameter "suplserv"

    .prologue
    .line 101
    const/16 v0, 0x1388

    invoke-direct {p0, p1, v0}, Lcom/android/server/SUPLServer;-><init>(Lcom/android/server/SUPLService;I)V

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;I)V
    .locals 0
    .parameter "suplserv"
    .parameter "port"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/server/SUPLServer;->mSuplServer:Lcom/android/server/SUPLService;

    .line 113
    iput p2, p0, Lcom/android/server/SUPLServer;->mPort:I

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;Landroid/content/Context;)V
    .locals 0
    .parameter "suplserv"
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/SUPLServer;-><init>(Lcom/android/server/SUPLService;)V

    .line 119
    iput-object p2, p0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method private native nativeStartSocketServer()Z
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .parameter "client"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 299
    const/4 v2, 0x0

    .line 302
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 303
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 305
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 307
    const/4 v4, 0x1

    .line 311
    .local v4, result:Z
    if-eqz v3, :cond_2

    .line 313
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v4

    :goto_0
    move-object v2, v3

    .line 319
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return v5

    .line 308
    .end local v4           #result:Z
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 311
    .restart local v4       #result:Z
    if-eqz v2, :cond_0

    .line 313
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 314
    :catch_1
    move-exception v1

    .line 315
    .local v1, e:Ljava/io/IOException;
    goto :goto_1

    .line 311
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 313
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 311
    :cond_1
    :goto_4
    throw v5

    .line 314
    :catch_2
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_4

    .line 314
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :catch_3
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_0

    .line 311
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 308
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_2
    move v5, v4

    goto :goto_0
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 208
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 218
    :try_start_0
    new-instance v8, Landroid/supl/config/SuplConfig;

    invoke-direct {v8}, Landroid/supl/config/SuplConfig;-><init>()V

    .line 219
    .local v8, spl:Landroid/supl/config/SuplConfig;
    const-string v15, "/system/bin/SuplConfig.spl"

    invoke-virtual {v8, v15}, Landroid/supl/config/SuplConfig;->readConfigPath(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->PrintConfig()V

    .line 223
    const-string v15, "ro.cid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, cid:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/etc/gps.conf_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 230
    const-string v5, "/etc/gps.conf_default"

    .line 231
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 235
    const-string v5, "/etc/gps.conf"

    .line 236
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    :goto_1
    :try_start_3
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 244
    .local v6, properties:Ljava/util/Properties;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 245
    .local v12, stream:Ljava/io/FileInputStream;
    invoke-virtual {v6, v12}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 246
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 248
    sget-object v15, Lcom/android/server/SUPLServer;->SUPL_TLS_CERT_TAG:Ljava/lang/String;

    const-string v16, "/etc/SuplRootCert"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, storePath:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->PROTOCOL_TYPE_TAG:Ljava/lang/String;

    const-string v16, "Non_TLS"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, protocolType:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->SLP_TYPE_TAG:Ljava/lang/String;

    const-string v16, "FQDN_PHONE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, splType:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->SUPL_HOST_TAG:Ljava/lang/String;

    const-string v16, "supl.google.com"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, suplHost:Ljava/lang/String;
    sget-object v15, Lcom/android/server/SUPLServer;->SUPL_PORT_TAG:Ljava/lang/String;

    const-string v16, "7276"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, suplPort:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, splhost_port:Ljava/lang/String;
    invoke-static {v11}, Landroid/supl/CNet;->SetPath(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getImplType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CNet;->SetImpl(Ljava/lang/String;)V

    .line 260
    invoke-static {v7}, Landroid/supl/CNet;->SetProtocolType(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->isLocalhost()Z

    move-result v15

    sput-boolean v15, Landroid/supl/CNet;->localhost:Z

    .line 263
    sput-object v10, Landroid/supl/CNet;->slphost_port:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/supl/CNet;->SetContext(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getAutoFqdnStorePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CNetSSLSocketProvider;->SetAutoFqdnStorePath(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getStorePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CNetSSLSocketProvider;->SetFqdnPhoneStorePath(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->Init(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getMcc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetMcc(I)V

    .line 275
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getMnc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetMnc(I)V

    .line 276
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getLac()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetLac(I)V

    .line 277
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getCi()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetCi(I)V

    .line 278
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getCellType()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetCellType(I)V

    .line 279
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getMsisdn()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetMsisdn(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getHmcc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetHMcc(I)V

    .line 281
    invoke-virtual {v8}, Landroid/supl/config/SuplConfig;->getHmnc()I

    move-result v15

    invoke-static {v15}, Landroid/supl/CSUPL_LP;->SetHMnc(I)V

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SUPLServer;->nativeStartSocketServer()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 285
    .end local v1           #cid:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #pathName:Ljava/lang/String;
    .end local v6           #properties:Ljava/util/Properties;
    .end local v7           #protocolType:Ljava/lang/String;
    .end local v8           #spl:Landroid/supl/config/SuplConfig;
    .end local v9           #splType:Ljava/lang/String;
    .end local v10           #splhost_port:Ljava/lang/String;
    .end local v11           #storePath:Ljava/lang/String;
    .end local v12           #stream:Ljava/io/FileInputStream;
    .end local v13           #suplHost:Ljava/lang/String;
    .end local v14           #suplPort:Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v15, "SUPLServer"

    const-string v16, "Connection error: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 290
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    throw v15

    .line 239
    .restart local v1       #cid:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #pathName:Ljava/lang/String;
    .restart local v8       #spl:Landroid/supl/config/SuplConfig;
    :catch_1
    move-exception v2

    .line 240
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 295
    .end local v1           #cid:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #pathName:Ljava/lang/String;
    .end local v8           #spl:Landroid/supl/config/SuplConfig;
    :cond_1
    return-void

    .line 239
    .restart local v1       #cid:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #pathName:Ljava/lang/String;
    .restart local v8       #spl:Landroid/supl/config/SuplConfig;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :cond_2
    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto/16 :goto_1
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/server/SUPLServer;->SLPThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 144
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/SUPLServer;->mPort:I

    const/4 v2, 0x5

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->mServer:Ljava/net/ServerSocket;

    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLP Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SUPLServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLP Client Thread [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SUPLServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->SLPThread:Ljava/lang/Thread;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "===>>TEST Thread <<<=="

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->TestThread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SUPLServer;->checkBind:Z

    .line 157
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 176
    iput-object v2, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SUPLServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SUPLServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SUPLServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
