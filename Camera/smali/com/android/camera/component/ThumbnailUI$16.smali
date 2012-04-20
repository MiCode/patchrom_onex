.class Lcom/android/camera/component/ThumbnailUI$16;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->startThumbnailUpdateAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;

.field final synthetic val$secondAnimation:Landroid/view/animation/ScaleAnimation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$16;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iput-object p2, p0, Lcom/android/camera/component/ThumbnailUI$16;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/camera/component/ThumbnailUI$16;->val$secondAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$16;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1000(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$16;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$16;->val$secondAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$16;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 728
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 725
    return-void
.end method
