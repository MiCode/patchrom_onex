.class public interface abstract Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;
.super Ljava/lang/Object;
.source "IScreenCacheHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScreenCacheHost"
.end annotation


# virtual methods
.method public abstract addSceneNode(Lcom/htc/sunny2/SceneNode;)V
.end method

.method public abstract enableRootNode(Z)V
.end method

.method public abstract getAnimationController()Lcom/htc/sunny2/view/animation/SAnimationController;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getRootNode()Lcom/htc/sunny2/SceneNode;
.end method

.method public abstract getScreenCacheHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
.end method

.method public abstract getScreenItemBottom()I
.end method

.method public abstract getScreenItemTop()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract postRenderRunnable(Ljava/lang/Runnable;)V
.end method

.method public abstract removeSceneNode(Lcom/htc/sunny2/SceneNode;)V
.end method

.method public abstract setIdentifier(Ljava/lang/String;)V
.end method

.method public abstract setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V
.end method
