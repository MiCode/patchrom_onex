.class Lcom/android/camera/component/SmileCaptureUI$10;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmileCaptureUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmileCaptureUI;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureUI$10;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/rotate/UIRotation;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/rotate/UIRotation;>;"
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI$10;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    #getter for: Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureUI;->access$400(Lcom/android/camera/component/SmileCaptureUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI$10;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    #getter for: Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureUI;->access$400(Lcom/android/camera/component/SmileCaptureUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI$10;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI$10;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    #getter for: Lcom/android/camera/component/SmileCaptureUI;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureUI;->access$400(Lcom/android/camera/component/SmileCaptureUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v2

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$10$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$10$1;-><init>(Lcom/android/camera/component/SmileCaptureUI$10;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/component/SmileCaptureUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;)V

    .line 192
    :cond_0
    return-void
.end method
