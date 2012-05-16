.class Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->postScrollCacheDisplay(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;)V
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
    .line 251
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-boolean v1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mIsVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mIsVisible:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;->onShow(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$1;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;->onHide(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    goto :goto_0
.end method
