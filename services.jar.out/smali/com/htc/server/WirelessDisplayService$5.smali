.class Lcom/htc/server/WirelessDisplayService$5;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$5;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1989
    const-string v0, "WirelessDisplayService"

    const-string v1, "Receive Configuration Tool notifies User started Dongle FW upgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$5;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;)V

    .line 1993
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$5;->this$0:Lcom/htc/server/WirelessDisplayService;

    const-wide/32 v1, 0x124f80

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #calls: Lcom/htc/server/WirelessDisplayService;->turnOffConcurrentHotspot(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$6700(Lcom/htc/server/WirelessDisplayService;J)V

    .line 1994
    return-void
.end method
