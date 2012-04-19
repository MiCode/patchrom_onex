.class Lcom/sprint/internal/ConnectionManager$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/internal/ConnectionManager;->requestAdminConnection(Landroid/os/Handler;Ljava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/internal/ConnectionManager;

.field final synthetic val$ip_local:Ljava/net/InetAddress;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sprint/internal/ConnectionManager;Ljava/net/InetAddress;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    iput-object p2, p0, Lcom/sprint/internal/ConnectionManager$1;->val$ip_local:Ljava/net/InetAddress;

    iput-object p3, p0, Lcom/sprint/internal/ConnectionManager$1;->val$mHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkCDMA_FOTA_Network(Landroid/net/ConnectivityManager;)I
    .locals 7
    .parameter "cm"

    .prologue
    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, INIT_DONE:I
    if-nez p1, :cond_0

    .line 728
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 730
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    .line 732
    const/4 v1, 0x0

    .line 733
    .local v1, info:Landroid/net/NetworkInfo;
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 734
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 737
    .local v2, subtype:I
    packed-switch v2, :pswitch_data_0

    .line 777
    :pswitch_0
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other CDMA network type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #subtype:I
    :cond_1
    :goto_0
    return v0

    .line 740
    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #subtype:I
    :pswitch_1
    const/4 v0, 0x7

    .line 741
    goto :goto_0

    .line 743
    :pswitch_2
    const/4 v0, 0x4

    .line 744
    goto :goto_0

    .line 746
    :pswitch_3
    const/4 v0, 0x5

    .line 747
    goto :goto_0

    .line 749
    :pswitch_4
    const/4 v0, 0x6

    .line 750
    goto :goto_0

    .line 752
    :pswitch_5
    const/16 v0, 0xc

    .line 753
    goto :goto_0

    .line 756
    :pswitch_6
    if-nez v1, :cond_2

    const-string v3, ""

    .line 757
    .local v3, tempAPN:Ljava/lang/String;
    :goto_1
    const-string v4, "ota"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 758
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAIL_AUTH, apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, -0x2

    goto :goto_0

    .line 756
    .end local v3           #tempAPN:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 761
    .restart local v3       #tempAPN:Ljava/lang/String;
    :cond_3
    const/16 v0, 0xd

    goto :goto_0

    .line 767
    .end local v3           #tempAPN:Ljava/lang/String;
    :pswitch_7
    if-nez v1, :cond_4

    const-string v3, ""

    .line 768
    .restart local v3       #tempAPN:Ljava/lang/String;
    :goto_2
    const-string v4, "ota"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 769
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAIL_AUTH, apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v0, -0x2

    goto :goto_0

    .line 767
    .end local v3           #tempAPN:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 772
    .restart local v3       #tempAPN:Ljava/lang/String;
    :cond_5
    const/16 v0, 0xe

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I
    .locals 8
    .parameter "cm"

    .prologue
    const/4 v7, 0x1

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, INIT_DONE:I
    if-nez p1, :cond_0

    .line 665
    iget-object v5, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 667
    .restart local p1
    :cond_0
    if-eqz p1, :cond_3

    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {p1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 672
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "return WIFI"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v0, 0x11

    .line 677
    :cond_1
    const/4 v1, 0x0

    .line 678
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 680
    const/16 v0, 0x16

    .line 684
    :cond_2
    const/4 v4, 0x0

    .line 685
    .local v4, tm:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x1

    .line 686
    .local v2, phoneType:I
    iget-object v5, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 688
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 689
    if-ne v2, v7, :cond_3

    .line 690
    const/4 v1, 0x0

    .line 691
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 692
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 693
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 694
    .local v3, subtype:I
    packed-switch v3, :pswitch_data_0

    .line 714
    :pswitch_0
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "other GSM network type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #phoneType:I
    .end local v3           #subtype:I
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_0
    return v0

    .line 697
    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #phoneType:I
    .restart local v3       #subtype:I
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :pswitch_1
    const/4 v0, 0x1

    .line 698
    goto :goto_0

    .line 700
    :pswitch_2
    const/4 v0, 0x2

    .line 702
    :pswitch_3
    const/4 v0, 0x3

    .line 703
    goto :goto_0

    .line 705
    :pswitch_4
    const/16 v0, 0x8

    .line 706
    goto :goto_0

    .line 708
    :pswitch_5
    const/16 v0, 0x9

    .line 709
    goto :goto_0

    .line 711
    :pswitch_6
    const/16 v0, 0xa

    .line 712
    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 790
    .local v1, INIT_DONE:I
    const/4 v2, 0x0

    .line 791
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    .line 793
    .local v5, info:Landroid/net/NetworkInfo;
    const/4 v7, 0x0

    .line 794
    .local v7, retryTime:I
    const/4 v11, 0x0

    .line 797
    .local v11, waitForConnected:Z
    if-nez v2, :cond_0

    .line 798
    iget-object v12, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cm:Landroid/net/ConnectivityManager;
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 800
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    if-eqz v2, :cond_a

    .line 801
    const/4 v10, -0x1

    .line 803
    .local v10, rslt:I
    const/4 v12, 0x0

    :try_start_0
    const-string v13, "enableFOTA"

    invoke-virtual {v2, v12, v13}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v10

    .line 804
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startUsingNetworkFeature FEATURE_ENABLE_FOTA return"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    :goto_0
    if-nez v10, :cond_7

    .line 814
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 815
    if-nez v1, :cond_1

    .line 816
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkCDMA_FOTA_Network(Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 818
    if-lez v1, :cond_1

    .line 819
    const/4 v9, 0x0

    .line 822
    .local v9, routeResult:Z
    const/16 v12, 0xa

    :try_start_1
    iget-object v13, p0, Lcom/sprint/internal/ConnectionManager$1;->val$ip_local:Ljava/net/InetAddress;

    invoke-virtual {v2, v12, v13}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result v9

    .line 830
    :goto_1
    if-nez v9, :cond_1

    .line 831
    const/4 v1, -0x3

    .line 836
    .end local v9           #routeResult:Z
    :cond_1
    if-gtz v1, :cond_2

    .line 837
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "APN_ALREADY_ACTIVE but not network found"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v5, 0x0

    .line 839
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 840
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isConnected:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isConnectedOrConnecting:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getExtraInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSubtype:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSubtypeName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getReason:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getTypeName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_2
    :goto_2
    const/4 v12, -0x1

    if-gt v1, v12, :cond_3

    .line 862
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "check other info"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I

    move-result v6

    .line 864
    .local v6, otherNetwork:I
    const/4 v12, -0x1

    if-le v6, v12, :cond_3

    .line 865
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "using other network"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move v1, v6

    .line 879
    .end local v6           #otherNetwork:I
    .end local v10           #rslt:I
    :cond_3
    :goto_3
    const/4 v12, -0x1

    if-gt v1, v12, :cond_5

    .line 881
    :cond_4
    :goto_4
    const/16 v12, 0xa

    if-le v7, v12, :cond_b

    .line 882
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "requestAdminConnection timeout"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_5
    if-nez v1, :cond_6

    .line 1023
    const/4 v1, -0x1

    .line 1025
    :cond_6
    iget-object v12, p0, Lcom/sprint/internal/ConnectionManager$1;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1027
    return-void

    .line 805
    .restart local v10       #rslt:I
    :catch_0
    move-exception v3

    .line 806
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 808
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 809
    .local v4, err:Ljava/lang/Error;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature Error"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 824
    .end local v4           #err:Ljava/lang/Error;
    .restart local v9       #routeResult:Z
    :catch_2
    move-exception v3

    .line 825
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 827
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 828
    .restart local v4       #err:Ljava/lang/Error;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature Error"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 850
    .end local v4           #err:Ljava/lang/Error;
    .end local v9           #routeResult:Z
    :cond_7
    const/4 v12, 0x1

    if-ne v10, v12, :cond_8

    .line 852
    const/4 v11, 0x1

    goto :goto_2

    .line 853
    :cond_8
    const/4 v12, 0x2

    if-ne v10, v12, :cond_9

    .line 854
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature return APN_TYPE_NOT_AVAILABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v1, -0x1

    goto :goto_2

    .line 856
    :cond_9
    const/4 v12, 0x3

    if-ne v10, v12, :cond_2

    .line 857
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature return APN_REQUEST_FAILED"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v1, -0x1

    goto/16 :goto_2

    .line 871
    .end local v10           #rslt:I
    :cond_a
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "cm is null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v1, 0x0

    .line 873
    const/4 v11, 0x1

    goto :goto_3

    .line 887
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 888
    if-nez v2, :cond_c

    .line 889
    :try_start_2
    iget-object v12, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 891
    :cond_c
    if-eqz v2, :cond_4

    .line 893
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I

    move-result v8

    .line 894
    .local v8, retryType:I
    if-gtz v8, :cond_f

    .line 895
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkCDMA_FOTA_Network(Landroid/net/ConnectivityManager;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v8

    .line 897
    if-lez v8, :cond_e

    .line 898
    const/4 v9, 0x0

    .line 901
    .restart local v9       #routeResult:Z
    const/16 v12, 0xa

    :try_start_3
    iget-object v13, p0, Lcom/sprint/internal/ConnectionManager$1;->val$ip_local:Ljava/net/InetAddress;

    invoke-virtual {v2, v12, v13}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6

    move-result v9

    .line 909
    :goto_5
    if-nez v9, :cond_d

    .line 910
    const/4 v1, -0x3

    .line 913
    :cond_d
    if-lez v8, :cond_e

    .line 914
    move v1, v8

    .line 920
    .end local v9           #routeResult:Z
    :cond_e
    :goto_6
    if-gtz v1, :cond_5

    .line 923
    :try_start_4
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "wait 3"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-wide/16 v12, 0xbb8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 928
    .end local v8           #retryType:I
    :catch_4
    move-exception v3

    .line 930
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 903
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v8       #retryType:I
    .restart local v9       #routeResult:Z
    :catch_5
    move-exception v3

    .line 904
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 906
    .end local v3           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 907
    .restart local v4       #err:Ljava/lang/Error;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "startUsingNetworkFeature Error"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 918
    .end local v4           #err:Ljava/lang/Error;
    .end local v9           #routeResult:Z
    :cond_f
    move v1, v8

    goto :goto_6
.end method
