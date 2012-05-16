.class Lcom/htc/music/HtcMusic$12;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1274
    iput-object p1, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1278
    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 1280
    .local v0, dlnamode:I
    if-eq v0, v6, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1282
    :cond_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->createVolumeDialog()V
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)V

    .line 1285
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1287
    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I

    move-result v2

    .line 1288
    .local v2, volume:I
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v5, v5, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .end local v2           #volume:I
    :cond_1
    :goto_0
    return-void

    .line 1292
    :catch_0
    move-exception v1

    .line 1293
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1296
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$2200(Lcom/htc/music/HtcMusic;)Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v6, v4}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0
.end method
