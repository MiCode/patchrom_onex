.class final Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# static fields
.field protected static final IMAGE_PATH_UPDATE:I = 0x2

.field protected static final PARENT_MEDIA_LIST_UPDATE:I


# instance fields
.field mUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/os/Looper;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "util"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 532
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 533
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->mUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 534
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 563
    :goto_0
    :pswitch_0
    return-void

    .line 541
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->mUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateMediaListData(Landroid/database/Cursor;)V

    .line 542
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->mUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    invoke-interface {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;->notifyAllDataChange()V

    goto :goto_0

    .line 545
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    invoke-static {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
