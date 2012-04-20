.class Lcom/android/camera/component/UIComponent$1;
.super Ljava/lang/Object;
.source "UIComponent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIComponent;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIComponent;

.field final synthetic val$callback:Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;

.field final synthetic val$rotation:Lcom/android/camera/rotate/UIRotation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIComponent;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/component/UIComponent$1;->this$0:Lcom/android/camera/component/UIComponent;

    iput-object p2, p0, Lcom/android/camera/component/UIComponent$1;->val$callback:Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;

    iput-object p3, p0, Lcom/android/camera/component/UIComponent$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/camera/component/UIComponent$1;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "ani"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/component/UIComponent$1;->val$callback:Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;

    iget-object v1, p0, Lcom/android/camera/component/UIComponent$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/UIComponent$1;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;->rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 326
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "ani"

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "ani"

    .prologue
    .line 318
    return-void
.end method
