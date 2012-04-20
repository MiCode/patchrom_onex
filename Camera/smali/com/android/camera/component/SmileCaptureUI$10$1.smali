.class Lcom/android/camera/component/SmileCaptureUI$10$1;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

# interfaces
.implements Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmileCaptureUI$10;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/SmileCaptureUI$10;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmileCaptureUI$10;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureUI$10$1;->this$1:Lcom/android/camera/component/SmileCaptureUI$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "view"
    .parameter "rotation"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI$10$1;->this$1:Lcom/android/camera/component/SmileCaptureUI$10;

    iget-object v0, v0, Lcom/android/camera/component/SmileCaptureUI$10;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    #calls: Lcom/android/camera/component/SmileCaptureUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, p2}, Lcom/android/camera/component/SmileCaptureUI;->access$100(Lcom/android/camera/component/SmileCaptureUI;Lcom/android/camera/rotate/UIRotation;)V

    .line 189
    return-void
.end method
