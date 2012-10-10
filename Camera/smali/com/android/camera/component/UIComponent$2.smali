.class Lcom/android/camera/component/UIComponent$2;
.super Ljava/lang/Object;
.source "UIComponent.java"

# interfaces
.implements Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIComponent;->showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIComponent;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/camera/component/UIComponent$2;->this$0:Lcom/android/camera/component/UIComponent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "view"
    .parameter "rotation"

    .prologue
    .line 339
    check-cast p1, Lcom/android/camera/rotate/RotateRelativeLayout;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 340
    return-void
.end method
