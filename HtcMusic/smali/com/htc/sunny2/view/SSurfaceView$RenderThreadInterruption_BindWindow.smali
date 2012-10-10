.class Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;
.super Lcom/htc/sunny2/RenderThreadInterruption;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThreadInterruption_BindWindow"
.end annotation


# static fields
.field static final INTERRUPTION_NAME:Ljava/lang/String; = "BindWindow"


# instance fields
.field private height:I

.field private isBinded:Z

.field private newHeight:I

.field private newSurface:Landroid/view/Surface;

.field private newWidth:I

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    .line 1099
    const-string v0, "BindWindow"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    .line 1101
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1144
    return-void
.end method

.method public declared-synchronized onProcessInterruptionIRT()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1115
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    if-ne v2, v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->unregisterRenderWindowIRT(I)Z

    .line 1117
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Window_UnbindSurface(I)V

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    .line 1121
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    .line 1122
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    .line 1123
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    .line 1125
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    if-nez v0, :cond_3

    .line 1126
    const-string v0, "SSurfaceView"

    const-string v1, "surface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1130
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1131
    const-string v0, "SSurfaceView"

    const-string v1, "surface is invalid!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1135
    :cond_4
    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v3, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny2/Sunny2;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 1137
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->registerRenderWindowIRT(I)Z

    .line 1139
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    #calls: Lcom/htc/sunny2/view/SSurfaceView;->onSurfaceChangedIRT(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$800(Lcom/htc/sunny2/view/SSurfaceView;II)V

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setup(Landroid/view/Surface;II)V
    .locals 1
    .parameter "s"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    .line 1105
    iput p2, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    .line 1106
    iput p3, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    monitor-exit p0

    return-void

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
