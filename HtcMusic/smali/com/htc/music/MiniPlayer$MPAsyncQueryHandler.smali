.class Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MPAsyncQueryHandler"
.end annotation


# instance fields
.field private final mTrackColumn:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/MiniPlayer;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter "cr"

    .prologue
    .line 658
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    .line 659
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 662
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->mTrackColumn:[Ljava/lang/String;

    .line 660
    return-void
.end method


# virtual methods
.method public checkLocalHasSong()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 665
    const/4 v1, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->mTrackColumn:[Ljava/lang/String;

    const-string v5, "is_music>=1"

    const-string v7, "_id LIMIT 0,1"

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 671
    const-string v1, "[MiniPlayer]"

    const-string v2, "[onQueryComplete]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    if-eqz p3, :cond_2

    .line 674
    iget-object v1, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 675
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onQueryComplete] cursor.getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 681
    :goto_0
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onQueryComplete] loadTrackFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v2, v2, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-eqz v0, :cond_1

    .line 683
    iget-object v1, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-boolean v0, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0701cb

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 689
    :cond_1
    return-void

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iput-boolean v0, v1, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    goto :goto_0

    .line 683
    :cond_3
    const v0, 0x7f070001

    goto :goto_1
.end method
