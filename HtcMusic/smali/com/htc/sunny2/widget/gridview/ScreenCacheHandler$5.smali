.class Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTransitionSnapShotShowIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
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
    .line 678
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$5;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;->onSnapShotReady(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 685
    :cond_0
    return-void
.end method
