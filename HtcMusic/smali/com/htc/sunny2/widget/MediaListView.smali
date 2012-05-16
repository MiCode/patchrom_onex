.class public abstract Lcom/htc/sunny2/widget/MediaListView;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "MediaListView.java"

# interfaces
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/MediaListView$1;,
        Lcom/htc/sunny2/widget/MediaListView$SetMediaList;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/IMediaList",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 13
    const-class v0, Lcom/htc/sunny2/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunny2/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 2
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 13
    const-class v0, Lcom/htc/sunny2/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunny2/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    .line 31
    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->init()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 2
    .parameter "mode"
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 13
    const-class v0, Lcom/htc/sunny2/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunny2/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    .line 21
    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->init()V

    .line 22
    return-void
.end method

.method private checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    iget-boolean v1, v1, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 68
    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 36
    return-void
.end method


# virtual methods
.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public notifyMediaDataChange()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/MediaListView;->requestLayout()V

    .line 92
    return-void
.end method

.method public notifyMediaDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/MediaListView;->requestLayout()V

    .line 96
    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 3
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 42
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    .line 44
    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    monitor-enter v1

    .line 45
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    iget-boolean v2, v2, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    if-ne v0, v2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    iget-object v0, v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 48
    invoke-virtual/range {p0 .. p6}, Lcom/htc/sunny2/widget/MediaListView;->onLayoutChildView(ZFFFII)V

    .line 50
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 53
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/htc/sunny2/widget/MediaListView;->onLayoutChildView(ZFFFII)V

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onLayoutChildView(ZFFFII)V
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<*>;"
    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->set(Lcom/htc/sunny2/IMediaList;)V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/MediaListView;->requestLayout()V

    .line 88
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaList_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<*>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/MediaListView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 79
    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->checkSetMediaListComplete_block()V

    .line 80
    return-void
.end method
