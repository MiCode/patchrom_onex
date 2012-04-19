.class Lcom/htc/server/WirelessDisplayService$10;
.super Landroid/os/HandlerThread;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 1997
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 1998
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->initInThread()V
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$6700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1999
    return-void
.end method
