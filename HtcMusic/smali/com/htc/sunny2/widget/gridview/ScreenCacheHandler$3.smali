.class Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;
.super Ljava/lang/Object;
.source "ScreenCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->postScreenTransitionUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

.field final synthetic val$bIsShowSnapShot:Z

.field final synthetic val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iput-boolean p2, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->val$bIsShowSnapShot:Z

    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->val$bIsShowSnapShot:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    #calls: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTransitionSnapShotShowIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$200(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->this$0:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler$3;->val$screenCache:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;

    #calls: Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTransitionSnapShotHideIRT(Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->access$300(Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;)V

    goto :goto_0
.end method
