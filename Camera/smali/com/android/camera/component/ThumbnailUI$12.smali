.class Lcom/android/camera/component/ThumbnailUI$12;
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
        "Ljava/lang/Boolean;",
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
    .line 537
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 541
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$900(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$900(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(Lcom/android/camera/component/Component;I)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/ThumbnailUI;->access$1002(Lcom/android/camera/component/ThumbnailUI;Z)Z

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1000(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/ThumbnailUI;->access$1002(Lcom/android/camera/component/ThumbnailUI;Z)Z

    .line 563
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1200(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 565
    :cond_1
    return-void

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$12;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z
    invoke-static {v0, v3}, Lcom/android/camera/component/ThumbnailUI;->access$1102(Lcom/android/camera/component/ThumbnailUI;Z)Z

    goto :goto_0
.end method
