.class Lcom/android/camera/component/PanoramaUI$15$2;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI$15;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaUI$15;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI$15;)V
    .locals 0
    .parameter

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$15$2;->this$1:Lcom/android/camera/component/PanoramaUI$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "view"
    .parameter "rotation"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$15$2;->this$1:Lcom/android/camera/component/PanoramaUI$15;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaUI$15;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, p2}, Lcom/android/camera/component/PanoramaUI;->access$2500(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/rotate/UIRotation;)V

    .line 1651
    return-void
.end method
