.class Lcom/android/camera/component/BIController$1;
.super Lcom/android/camera/trigger/Trigger;
.source "BIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BIController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BIController;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BIController;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    iput-object p4, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/AutoScene;

    if-eqz v0, :cond_2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    iget-object v1, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    iget-object v2, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_bi_photo_taken"

    #calls: Lcom/android/camera/component/BIController;->getMediaCount(Lcom/android/camera/HTCCamera;Ljava/lang/String;)I
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/BIController;->access$100(Lcom/android/camera/component/BIController;Lcom/android/camera/HTCCamera;Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/camera/component/BIController;->mPhoto_taken:I
    invoke-static {v0, v1}, Lcom/android/camera/component/BIController;->access$002(Lcom/android/camera/component/BIController;I)I

    .line 69
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    invoke-static {v0}, Lcom/android/camera/component/BIController;->access$004(Lcom/android/camera/component/BIController;)I

    .line 70
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_bi_photo_taken"

    iget-object v2, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    #getter for: Lcom/android/camera/component/BIController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/component/BIController;->access$000(Lcom/android/camera/component/BIController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/BurstScene;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    iget-object v1, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    iget-object v2, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_bi_actionburst_pohto_taken"

    #calls: Lcom/android/camera/component/BIController;->getMediaCount(Lcom/android/camera/HTCCamera;Ljava/lang/String;)I
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/BIController;->access$100(Lcom/android/camera/component/BIController;Lcom/android/camera/HTCCamera;Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/camera/component/BIController;->mActionBurst_taken:I
    invoke-static {v0, v1}, Lcom/android/camera/component/BIController;->access$202(Lcom/android/camera/component/BIController;I)I

    .line 75
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    invoke-static {v0}, Lcom/android/camera/component/BIController;->access$204(Lcom/android/camera/component/BIController;)I

    .line 76
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_bi_actionburst_pohto_taken"

    iget-object v2, p0, Lcom/android/camera/component/BIController$1;->this$0:Lcom/android/camera/component/BIController;

    #getter for: Lcom/android/camera/component/BIController;->mActionBurst_taken:I
    invoke-static {v2}, Lcom/android/camera/component/BIController;->access$200(Lcom/android/camera/component/BIController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/BIController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/PanoramaScene;

    if-eqz v0, :cond_1

    goto :goto_0
.end method
