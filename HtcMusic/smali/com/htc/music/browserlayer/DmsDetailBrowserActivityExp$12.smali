.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$12;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$12;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$12;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-static {p2}, Lcom/htc/music/IDmcUiPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IDmcUiPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmcUiPlaybackService;)Lcom/htc/music/IDmcUiPlaybackService;

    .line 1589
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$12;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmcUiPlaybackService;)Lcom/htc/music/IDmcUiPlaybackService;

    .line 1594
    return-void
.end method
