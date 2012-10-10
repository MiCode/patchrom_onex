.class Landroid/webkit/ZoomManager$HTCSmartZoom$3;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager$HTCSmartZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager$HTCSmartZoom;)V
    .locals 0
    .parameter

    .prologue
    .line 2061
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x14

    .line 2064
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-boolean v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectbyselect:Z

    if-nez v4, :cond_0

    .line 2086
    :goto_0
    return-void

    .line 2067
    :cond_0
    const/4 v1, 0x1

    .line 2069
    .local v1, isTxt:Z
    const/4 v0, 0x0

    .line 2070
    .local v0, hitSel:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 2071
    const-wide/16 v2, 0x0

    .line 2072
    .local v2, time:J
    if-eqz v1, :cond_1

    .line 2073
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 2074
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v5, v5, Landroid/webkit/ZoomManager$HTCSmartZoom;->myX:I

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v6, v6, Landroid/webkit/ZoomManager$HTCSmartZoom;->myY:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    .line 2075
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v5, v5, Landroid/webkit/ZoomManager$HTCSmartZoom;->myX:I

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v6, v6, Landroid/webkit/ZoomManager$HTCSmartZoom;->myY:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 2078
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #hitSel:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2079
    .restart local v0       #hitSel:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 2080
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 2081
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->myX:I

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v5, v5, Landroid/webkit/ZoomManager$HTCSmartZoom;->myY:I

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2082
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v4, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v7, v7, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 2085
    :cond_1
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iput-boolean v8, v4, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectbyselect:Z

    goto :goto_0
.end method
