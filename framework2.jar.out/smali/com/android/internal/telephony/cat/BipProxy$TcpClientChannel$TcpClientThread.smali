.class Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1544
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 1547
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-gtz v2, :cond_1

    .line 1576
    :cond_0
    :goto_1
    return-void

    .line 1548
    :catch_0
    move-exception v1

    .line 1550
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 1552
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxBuf:[B

    .line 1553
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxBuf:[B

    .line 1554
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1555
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1556
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxPos:I

    .line 1557
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mTxLen:I

    goto :goto_0

    .line 1565
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iput v5, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxPos:I

    .line 1566
    const/16 v0, 0xff

    .line 1567
    .local v0, available:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    if-ge v2, v0, :cond_2

    .line 1568
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v0, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mRxLen:I

    .line 1572
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel$TcpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    iget v3, v3, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;->mChannelStatus:I

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;II)V

    goto :goto_1
.end method
