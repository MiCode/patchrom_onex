.class Lcom/android/camera/component/SmartShotUI$3;
.super Ljava/lang/Object;
.source "SmartShotUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmartShotUI;->registerListeners()V
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
.field final synthetic this$0:Lcom/android/camera/component/SmartShotUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

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
    .line 371
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/rotate/UIRotation;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/rotate/UIRotation;>;"
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    #getter for: Lcom/android/camera/component/SmartShotUI;->m_IsModeEntered:Z
    invoke-static {v1}, Lcom/android/camera/component/SmartShotUI;->access$000(Lcom/android/camera/component/SmartShotUI;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    .line 376
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    #getter for: Lcom/android/camera/component/SmartShotUI;->m_InitToast:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotUI;->access$100(Lcom/android/camera/component/SmartShotUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    #getter for: Lcom/android/camera/component/SmartShotUI;->m_InitToast:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotUI;->access$100(Lcom/android/camera/component/SmartShotUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    iget-object v2, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    #getter for: Lcom/android/camera/component/SmartShotUI;->m_InitToast:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/component/SmartShotUI;->access$100(Lcom/android/camera/component/SmartShotUI;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/camera/component/SmartShotUI$3$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmartShotUI$3$1;-><init>(Lcom/android/camera/component/SmartShotUI$3;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/component/SmartShotUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    #calls: Lcom/android/camera/component/SmartShotUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/SmartShotUI;->access$400(Lcom/android/camera/component/SmartShotUI;Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
