.class Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    .line 1513
    const/4 v0, 0x1

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 1514
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 1524
    if-eqz p3, :cond_1

    .line 1525
    const-string v1, "audio_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1526
    .local v0, audioIdIndex:I
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1527
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSong(I)V
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1400(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    .line 1536
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1538
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1543
    .end local v0           #audioIdIndex:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$800(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;

    .line 1544
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iput-boolean v3, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    .line 1545
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1546
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    .line 1549
    :cond_2
    return-void
.end method
