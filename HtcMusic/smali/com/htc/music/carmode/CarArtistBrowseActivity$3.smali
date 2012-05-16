.class Lcom/htc/music/carmode/CarArtistBrowseActivity$3;
.super Ljava/lang/Object;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "xxxid"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, p1, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$000(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "xxxid"

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, p1, v3}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->access$000(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 460
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 461
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    const-string v2, "album_art"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 465
    const/4 v0, 0x0

    .line 467
    :cond_0
    return-object v1
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyPreparatorMediaDataChange(I)V

    .line 490
    return-void
.end method
