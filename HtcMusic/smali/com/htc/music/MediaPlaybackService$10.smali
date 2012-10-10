.class Lcom/htc/music/MediaPlaybackService$10;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2912
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x12

    const/16 v5, 0xf

    const/16 v4, 0xd

    .line 2915
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2919
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2920
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v6}, Lcom/htc/music/MediaPlaybackService;->access$5700(Lcom/htc/music/MediaPlaybackService;Z)V

    .line 2921
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z
    invoke-static {v1, v6}, Lcom/htc/music/MediaPlaybackService;->access$6002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2922
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$6102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2927
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2928
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2929
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2932
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 2958
    :cond_1
    :goto_0
    return-void

    .line 2933
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2934
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$6002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2935
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$6102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2937
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$6208(Lcom/htc/music/MediaPlaybackService;)I

    .line 2938
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mCardId:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$6302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 2939
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2940
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2941
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2943
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2944
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2946
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2947
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2948
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2949
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2950
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2951
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2952
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2953
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2955
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$10;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v2, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$6400(Lcom/htc/music/MediaPlaybackService;J)V

    goto/16 :goto_0
.end method
