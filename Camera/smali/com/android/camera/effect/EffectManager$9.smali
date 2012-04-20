.class Lcom/android/camera/effect/EffectManager$9;
.super Lcom/android/camera/trigger/Trigger;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$9;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 6

    .prologue
    .line 427
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$9;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v5}, Lcom/android/camera/effect/EffectManager;->access$1800(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .local v0, arr$:[Lcom/android/camera/effect/EffectBase;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 428
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$9;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v5}, Lcom/android/camera/effect/EffectManager;->access$1900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 432
    .local v4, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    .end local v4           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    return-void
.end method
