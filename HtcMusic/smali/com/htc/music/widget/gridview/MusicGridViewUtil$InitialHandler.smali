.class final Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;
.super Landroid/os/Handler;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitialHandler"
.end annotation


# instance fields
.field protected quitImmediately:Z

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 492
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->quitImmediately:Z

    .line 493
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCountOnlyParent()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v2

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    invoke-static {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    .line 500
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->quitImmediately:Z

    if-eqz v1, :cond_1

    .line 505
    .end local v0           #i:I
    :cond_0
    return-void

    .line 498
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
