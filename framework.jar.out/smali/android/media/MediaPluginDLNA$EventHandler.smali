.class Landroid/media/MediaPluginDLNA$EventHandler;
.super Landroid/os/Handler;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method public constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 243
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 248
    const-string v2, "[MediaPluginDLNA]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 251
    :sswitch_0
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "[msg handler connect to DLNAMiddleLayer]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 253
    const-string v2, "[MediaPluginDLNA]"

    const-string/jumbo v3, "mDLNAManager is null, can not start to play..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_0
    monitor-enter p0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, extra:I
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v0

    .line 259
    .local v0, DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    if-eqz v0, :cond_2

    .line 260
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v3, v0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    #setter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/media/MediaPluginDLNA;->access$1002(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const-string v2, "[MediaPluginDLNA]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare DMR id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    const/16 v1, 0x2081

    .line 275
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v3, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->access$1100(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v2

    const/16 v3, 0x2080

    invoke-interface {v2, v3, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 277
    monitor-exit p0

    goto :goto_0

    .end local v0           #DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 266
    .restart local v0       #DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_1
    :try_start_1
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "DLNAController prepare failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v1, 0x2082

    .line 268
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v3, 0x1008

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v2, v3}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    goto :goto_1

    .line 271
    :cond_2
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "DLNAController get DMR id failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    const/16 v1, 0x2082

    goto :goto_1

    .line 280
    .end local v0           #DMRData:Lcom/htc/dlnainterface/DLNARendererData;
    .end local v1           #extra:I
    :sswitch_1
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "[msg handler pause]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-enter p0

    .line 282
    :try_start_2
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$800(Landroid/media/MediaPluginDLNA;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 283
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$EventHandler;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 287
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 285
    :cond_3
    :try_start_3
    const-string v2, "[MediaPluginDLNA]"

    const-string/jumbo v3, "seeking now, do not do pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 290
    :sswitch_2
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "[msg handler seekTo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1020 -> :sswitch_1
        0x1400 -> :sswitch_2
    .end sparse-switch
.end method
