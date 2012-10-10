.class Lcom/htc/music/NowPlayingViewHelper$9;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1335
    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v4

    .line 1336
    .local v4, queueSize:I
    new-array v3, v4, [I

    .line 1337
    .local v3, list:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1338
    aput v1, v3, v1

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    :cond_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 1342
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5, v3}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I

    .line 1344
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1345
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v5, v5, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v6, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1346
    const/high16 v5, 0x2400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1347
    const-string v5, "KeepHistory"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1348
    const-string v5, "RemoveStoreHistory"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1349
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v5, v5, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1351
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v5, v5, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v7, 0x7f07000f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #list:[I
    .end local v4           #queueSize:I
    :goto_1
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "[NowPlayingViewHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEAR_QUEUE, RemoteException e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
