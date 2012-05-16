.class public interface abstract Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
.super Ljava/lang/Object;
.source "IScreenCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;,
        Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheHost;,
        Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$IScreenCacheLayoutListenerIRT;,
        Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;
    }
.end annotation


# virtual methods
.method public abstract enableScreenCache(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V
.end method

.method public abstract getScrollHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHandler;
.end method

.method public abstract getTransitionHandler()Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHandler;
.end method

.method public abstract setAnimationState(I)V
.end method

.method public abstract setStatusBarHeight(I)V
.end method
