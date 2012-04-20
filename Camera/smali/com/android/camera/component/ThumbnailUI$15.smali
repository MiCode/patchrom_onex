.class Lcom/android/camera/component/ThumbnailUI$15;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V
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
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    .line 604
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/rotate/UIRotation;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/rotate/UIRotation;>;"
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(I)V

    .line 605
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotation:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1300(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/component/ThumbnailUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_2

    .line 611
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->hideFakeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1500(Lcom/android/camera/component/ThumbnailUI;)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/ThumbnailUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    goto :goto_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotationTimeout:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1600(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/component/ThumbnailUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
