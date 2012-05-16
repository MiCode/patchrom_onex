.class Lcom/htc/music/widget/MusicMaActivity$1;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicMaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$1;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoReadyDongle()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "[MusicMaActivity]"

    const-string v1, "HtcTVDisplayListener, onNoReadyDongle is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "[MusicMaActivity]"

    const-string v1, "HtcTVDisplayListener, onNoTVToPlay is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .parameter "dongle"

    .prologue
    .line 84
    const-string v0, "[MusicMaActivity]"

    const-string v1, "HtcTVDisplayListener, onReadyDongleFound is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onTVOff()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "[MusicMaActivity]"

    const-string v1, "HtcTVDisplayListener, onTVOff is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onTVOn()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "[MusicMaActivity]"

    const-string v1, "HtcTVDisplayListener, onTVOn is called."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "[MusicMaActivity]"

    const-string v1, "HtcTVDisplayListener, onTVReadyToPlay is called. Go to DMC!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$1;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #calls: Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay()V
    invoke-static {v0}, Lcom/htc/music/widget/MusicMaActivity;->access$200(Lcom/htc/music/widget/MusicMaActivity;)V

    .line 103
    return-void
.end method
