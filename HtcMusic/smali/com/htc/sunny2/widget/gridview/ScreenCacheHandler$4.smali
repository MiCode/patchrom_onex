.class Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->postConfigurationUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

.field final synthetic val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 425
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getRootNode()Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/SceneNode;->getChildrenCount()I

    move-result v0

    .line 426
    .local v0, nCount:I
    const/4 v2, 0x0

    .line 427
    .local v2, sceneNode:Lcom/htc/sunny2/SceneNode;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_1

    .line 429
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getRootNode()Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/SceneNode;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    .line 427
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v2}, Lcom/htc/sunny2/SceneNode;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 436
    const-string v3, "ScreenCacheHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ScreenCacheHandler][postConfigurationUpdate]: found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mSelectedIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$400(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    #getter for: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->mHost:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$100(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;)Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;->getRootNode()Lcom/htc/sunny2/SceneNode;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTagSnapShotFlagIRT(ILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/SceneNode;)V

    .line 443
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$4;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    #calls: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTransitionSnapShotShowIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    invoke-static {v3, v4}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$200(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    .line 444
    return-void

    .line 440
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
