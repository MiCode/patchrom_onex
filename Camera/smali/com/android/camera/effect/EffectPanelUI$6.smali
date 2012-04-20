.class Lcom/android/camera/effect/EffectPanelUI$6;
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
        "Lcom/android/camera/UIState;",
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
    .line 267
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/UIState;>;"
    const/4 v4, 0x1

    .line 270
    sget-object v3, Lcom/android/camera/effect/EffectPanelUI$19;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/UIState;

    invoke-virtual {v2}, Lcom/android/camera/UIState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;

    move-result-object v0

    .line 276
    .local v0, actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    instance-of v2, v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    .end local v0           #actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v2, v0}, Lcom/android/camera/effect/EffectPanelUI;->access$502(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;

    .line 281
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    .line 284
    .local v1, effectManager:Lcom/android/camera/effect/EffectManager;
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$600(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 287
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/BurstScene;

    if-nez v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/effect/EffectPanelUI;->access$700(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;

    move-result-object v3

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v4, v4}, Lcom/android/camera/effect/EffectPanelUI;->access$800(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$900(Lcom/android/camera/effect/EffectPanelUI;)V

    goto :goto_0

    .line 297
    .end local v1           #effectManager:Lcom/android/camera/effect/EffectManager;
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectPanelUI;->access$502(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;

    .line 300
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$600(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 303
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$6;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$900(Lcom/android/camera/effect/EffectPanelUI;)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
