.class Lcom/android/camera/effect/EffectPanelUI$11;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 10
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
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/rotate/UIRotation;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/rotate/UIRotation;>;"
    const/4 v3, 0x0

    .line 355
    iget-object v9, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v9, Lcom/android/camera/rotate/UIRotation;

    .line 356
    .local v9, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, v9}, Lcom/android/camera/effect/EffectPanelUI;->access$1400(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/rotate/UIRotation;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/PopupBubble;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/PopupBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/16 v2, 0x2711

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x1

    move v4, v3

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    invoke-static/range {v0 .. v8}, Lcom/android/camera/effect/EffectPanelUI;->access$1500(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/16 v1, 0x2712

    #calls: Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1600(Lcom/android/camera/effect/EffectPanelUI;I)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotation:Z
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1200(Lcom/android/camera/effect/EffectPanelUI;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1700(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1800(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->hideFakeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1900(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1700(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/effect/EffectPanelUI;->access$2000(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    goto :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotationTimeout:Z
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$2100(Lcom/android/camera/effect/EffectPanelUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$11;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1700(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/camera/effect/EffectPanelUI;->access$2200(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
