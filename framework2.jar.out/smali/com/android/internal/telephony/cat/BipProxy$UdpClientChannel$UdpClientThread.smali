.class Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;
.super Ljava/lang/Thread;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdpClientThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1850
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v4, :cond_0

    .line 1852
    const/4 v1, 0x0

    .line 1853
    .local v1, packet:Ljava/net/DatagramPacket;
    const/4 v3, 0x0

    .line 1857
    .local v3, success:Z
    :try_start_0
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    array-length v5, v5

    invoke-direct {v2, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    .end local v1           #packet:Ljava/net/DatagramPacket;
    .local v2, packet:Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1859
    const/4 v3, 0x1

    move-object v1, v2

    .line 1866
    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    :goto_0
    if-eqz v3, :cond_1

    .line 1867
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1880
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-gtz v4, :cond_2

    .line 1896
    .end local v1           #packet:Ljava/net/DatagramPacket;
    .end local v3           #success:Z
    :cond_0
    :goto_2
    return-void

    .line 1869
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    .restart local v3       #success:Z
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 1871
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxBuf:[B

    .line 1872
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxBuf:[B

    .line 1873
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v6, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1874
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v6, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1875
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v6, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxPos:I

    .line 1876
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v6, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mTxLen:I

    goto :goto_1

    .line 1884
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iput v6, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxPos:I

    .line 1885
    const/16 v0, 0xff

    .line 1886
    .local v0, available:I
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    if-ge v4, v0, :cond_3

    .line 1887
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v0, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mRxLen:I

    .line 1891
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel$UdpClientThread;->this$1:Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    iget v5, v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;->mChannelStatus:I

    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;II)V

    goto :goto_2

    .line 1862
    .end local v0           #available:I
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    goto :goto_0

    .line 1860
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v1           #packet:Ljava/net/DatagramPacket;
    .restart local v2       #packet:Ljava/net/DatagramPacket;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2           #packet:Ljava/net/DatagramPacket;
    .restart local v1       #packet:Ljava/net/DatagramPacket;
    goto :goto_0
.end method
