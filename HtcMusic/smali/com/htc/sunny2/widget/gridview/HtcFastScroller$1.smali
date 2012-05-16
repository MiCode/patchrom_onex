.class Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->init(Landroid/content/Context;Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/RenderThread;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 324
    iget v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    const v1, -0xffffff

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    #getter for: Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunny2/SceneNode;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->access$000(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;)Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->drawIRT(ILcom/htc/sunny2/SceneNode;)V

    .line 327
    :cond_0
    return-void
.end method
