.class Lcom/htc/music/widget/MusicMaActivity$ControllerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicMaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 785
    const-string v0, "[MusicMaActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: rendererID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-super {p0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 787
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 774
    const-string v1, "[MusicMaActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse: rendererID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", responseID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", responseReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/16 v1, 0x4e20

    if-ne p2, v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x36b1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 778
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
