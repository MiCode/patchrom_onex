.class Lcom/android/camera/effect/EffectControlUI$13;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->getRotation()Lcom/android/camera/rotate/UIRotation;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$1900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 345
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$600(Lcom/android/camera/effect/EffectControlUI;)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/android/camera/effect/EffectControlUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v2, v0, v0}, Lcom/android/camera/effect/EffectControlUI;->access$2000(Lcom/android/camera/effect/EffectControlUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 346
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/android/camera/effect/EffectControlUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v2, v0, v0}, Lcom/android/camera/effect/EffectControlUI;->access$2100(Lcom/android/camera/effect/EffectControlUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 347
    return-void
.end method
