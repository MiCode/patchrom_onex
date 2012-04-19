.class Landroid/server/BluetoothA2dpService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 270
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 271
    .local v6, streamType:I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 272
    iget-object v7, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v7}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    .line 274
    .local v5, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v8, v7}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 275
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, address:Ljava/lang/String;
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, newVolLevel:I
    const-string v7, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 280
    .local v3, oldVolLevel:I
    iget-object v7, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v7}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, path:Ljava/lang/String;
    if-le v2, v3, :cond_1

    .line 282
    iget-object v7, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v7, v4}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    .line 311
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #newVolLevel:I
    .end local v3           #oldVolLevel:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6           #streamType:I
    :cond_0
    :goto_0
    return-void

    .line 283
    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #newVolLevel:I
    .restart local v3       #oldVolLevel:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v6       #streamType:I
    :cond_1
    if-ge v2, v3, :cond_0

    .line 284
    iget-object v7, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v7, v4}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto :goto_0
.end method
