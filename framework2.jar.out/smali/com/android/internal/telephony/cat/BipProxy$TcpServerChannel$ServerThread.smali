.class Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1224
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1227
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v3, v3, 0x8

    add-int/lit16 v3, v3, 0x4000

    iput v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1228
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1233
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1241
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    const v3, 0x8000

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    .line 1243
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->access$500(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 1247
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    .line 1251
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1265
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-gtz v2, :cond_3

    .line 1283
    :cond_2
    :goto_2
    return-void

    .line 1252
    :catch_0
    move-exception v1

    .line 1254
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 1256
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxBuf:[B

    .line 1257
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxBuf:[B

    .line 1258
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 1259
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1260
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxPos:I

    .line 1261
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mTxLen:I

    goto :goto_1

    .line 1269
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxPos:I

    .line 1270
    const/16 v0, 0xff

    .line 1271
    .local v0, available:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    if-ge v2, v0, :cond_4

    .line 1272
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v0, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mRxLen:I

    .line 1276
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel$ServerThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    iget v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;->mChannelStatus:I

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;II)V

    goto :goto_2

    .line 1235
    .end local v0           #available:I
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
