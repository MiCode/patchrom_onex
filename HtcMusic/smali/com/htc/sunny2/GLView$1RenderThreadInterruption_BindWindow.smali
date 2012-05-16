.class Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;
.super Lcom/htc/sunny2/RenderThreadInterruption;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/GLView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderThreadInterruption_BindWindow"
.end annotation


# instance fields
.field private height:I

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/htc/sunny2/GLView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/GLView;Ljava/lang/Object;Ljava/lang/String;Landroid/view/Surface;II)V
    .locals 2
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "s"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 266
    iput-object p1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    .line 267
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    .line 263
    iput v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->width:I

    .line 264
    iput v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->height:I

    .line 268
    iput-object p4, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    .line 269
    iput p5, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->width:I

    .line 270
    iput p6, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->height:I

    .line 271
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 291
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 5

    .prologue
    .line 274
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    iget v1, v1, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    iget-object v2, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget v3, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->width:I

    iget v4, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 275
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v1}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    iget v2, v2, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->registerRenderWindowIRT(I)Z

    .line 278
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceWidth:I
    invoke-static {v1}, Lcom/htc/sunny2/GLView;->access$200(Lcom/htc/sunny2/GLView;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceHeight:I
    invoke-static {v1}, Lcom/htc/sunny2/GLView;->access$300(Lcom/htc/sunny2/GLView;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 280
    .local v0, isFirstBind:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    iget v2, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->width:I

    #setter for: Lcom/htc/sunny2/GLView;->surfaceWidth:I
    invoke-static {v1, v2}, Lcom/htc/sunny2/GLView;->access$202(Lcom/htc/sunny2/GLView;I)I

    .line 281
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    iget v2, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->height:I

    #setter for: Lcom/htc/sunny2/GLView;->surfaceHeight:I
    invoke-static {v1, v2}, Lcom/htc/sunny2/GLView;->access$302(Lcom/htc/sunny2/GLView;I)I

    .line 283
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;
    invoke-static {v1}, Lcom/htc/sunny2/GLView;->access$000(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$SurfaceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    if-eqz v0, :cond_2

    .line 286
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;
    invoke-static {v1}, Lcom/htc/sunny2/GLView;->access$000(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$SurfaceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceWidth:I
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$200(Lcom/htc/sunny2/GLView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceHeight:I
    invoke-static {v3}, Lcom/htc/sunny2/GLView;->access$300(Lcom/htc/sunny2/GLView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/GLView$SurfaceListener;->onSurfaceCreatedIRT(II)V

    .line 290
    :cond_0
    :goto_1
    return-void

    .line 278
    .end local v0           #isFirstBind:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    .restart local v0       #isFirstBind:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;
    invoke-static {v1}, Lcom/htc/sunny2/GLView;->access$000(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$SurfaceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceWidth:I
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$200(Lcom/htc/sunny2/GLView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceHeight:I
    invoke-static {v3}, Lcom/htc/sunny2/GLView;->access$300(Lcom/htc/sunny2/GLView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/GLView$SurfaceListener;->onSurfaceChangedIRT(II)V

    goto :goto_1
.end method
