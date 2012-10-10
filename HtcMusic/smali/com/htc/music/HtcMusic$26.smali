.class Lcom/htc/music/HtcMusic$26;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 4555
    iput-object p1, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4558
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4559
    .local v0, action:Ljava/lang/String;
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4560
    const-string v3, "action_complete_one_download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4561
    iget-object v3, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4575
    :cond_0
    :goto_0
    return-void

    .line 4564
    :cond_1
    const-string v3, "album_id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4566
    .local v2, albumId:I
    const-string v3, "albumart_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4569
    .local v1, albumArtPath:Ljava/lang/String;
    if-ltz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4570
    :cond_2
    const-string v3, "[HtcMusic]"

    const-string v4, "Illegal Arguments"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4573
    :cond_3
    iget-object v3, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V

    goto :goto_0
.end method
