.class Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;->this$1:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;->this$1:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;->this$1:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2$1;->this$1:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$2;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;->onAttached(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;)V

    .line 368
    :cond_0
    return-void
.end method
