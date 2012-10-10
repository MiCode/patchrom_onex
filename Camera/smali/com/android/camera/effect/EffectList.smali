.class public Lcom/android/camera/effect/EffectList;
.super Ljava/lang/Object;
.source "EffectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectList$1;,
        Lcom/android/camera/effect/EffectList$OnEffectChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectList"


# instance fields
.field private m_AllEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_CurrentEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V
    .locals 2
    .parameter "cameraActivity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, allEffects:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    .line 43
    if-nez p1, :cond_0

    .line 45
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraActivity is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 49
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    return-void
.end method

.method private prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "effect"
    .parameter "flags"

    .prologue
    .line 132
    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare applying effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 134
    return-void
.end method

.method private prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "effect"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 165
    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare canceling effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 167
    return-void
.end method

.method private setEffectInternal(Lcom/android/camera/effect/EffectBase;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 208
    .local v0, prevEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 213
    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectBase;->apply(Lcom/android/camera/effect/EffectBase;)V

    .line 215
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllEffects()[Lcom/android/camera/effect/EffectBase;
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/effect/EffectBase;

    .line 58
    .local v0, effects:[Lcom/android/camera/effect/EffectBase;
    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    return-object v0
.end method

.method public final getCurrentEffect()Lcom/android/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getCurrentEffectCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getEffect(I)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getEffect(Ljava/lang/String;)Lcom/android/camera/effect/EffectBase;
    .locals 4
    .parameter "name"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 90
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 97
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prepareApplyEffect(II)V
    .locals 1
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    .line 129
    return-void
.end method

.method public final prepareApplyEffect(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 111
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 118
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    .line 125
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 124
    :cond_2
    const-string v2, "EffectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find effect \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareCancelEffect(ILcom/android/camera/effect/EffectBase;I)V
    .locals 1
    .parameter "index"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    .line 162
    return-void
.end method

.method public final prepareCancelEffect(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;I)V
    .locals 5
    .parameter "name"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 144
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 151
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    .line 158
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 157
    :cond_2
    const-string v2, "EffectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find effect \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 188
    const-string v0, "effect"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in current effect list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/camera/effect/EffectList$OnEffectChangedListener;->onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    .line 202
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0
.end method

.method public final setCurrentEffect(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, effectClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/camera/effect/EffectBase;>;"
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 176
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 182
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    return-void
.end method

.method setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    .line 223
    return-void
.end method

.method public final updateCurrentEffects()V
    .locals 12

    .prologue
    .line 231
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/CameraMode;

    .line 232
    .local v7, mode:Lcom/android/camera/CameraMode;
    sget-object v9, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v7, v9, :cond_2

    const/16 v8, 0x10

    .line 234
    .local v8, modeCapabilityFlag:I
    :goto_0
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v6

    .line 235
    .local v6, mStartMode:Lcom/android/camera/CameraStartMode;
    iget-boolean v9, v6, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v6, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v6, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v9, :cond_0

    .line 236
    const/16 v8, 0x20

    .line 239
    :cond_0
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    .line 241
    .local v1, cameraType:Lcom/android/camera/CameraType;
    sget-object v9, Lcom/android/camera/effect/EffectList$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 253
    const-string v9, "EffectList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown camera type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .line 259
    .local v0, cameraCapabilityFlag:I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 260
    const/4 v5, 0x0

    .local v5, i:I
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, count:I
    :goto_2
    if-ge v5, v3, :cond_4

    .line 262
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/effect/EffectBase;

    .line 263
    .local v4, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v2

    .line 264
    .local v2, capabilities:I
    and-int v9, v2, v8

    if-ne v9, v8, :cond_3

    and-int v9, v2, v0

    if-ne v9, v0, :cond_3

    .line 265
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 232
    .end local v0           #cameraCapabilityFlag:I
    .end local v1           #cameraType:Lcom/android/camera/CameraType;
    .end local v2           #capabilities:I
    .end local v3           #count:I
    .end local v4           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v5           #i:I
    .end local v6           #mStartMode:Lcom/android/camera/CameraStartMode;
    .end local v8           #modeCapabilityFlag:I
    :cond_2
    const/16 v8, 0x20

    goto :goto_0

    .line 244
    .restart local v1       #cameraType:Lcom/android/camera/CameraType;
    .restart local v6       #mStartMode:Lcom/android/camera/CameraStartMode;
    .restart local v8       #modeCapabilityFlag:I
    :pswitch_0
    const/4 v0, 0x1

    .line 245
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 247
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_1
    const/4 v0, 0x2

    .line 248
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 250
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_2
    const/4 v0, 0x4

    .line 251
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 266
    .restart local v2       #capabilities:I
    .restart local v3       #count:I
    .restart local v4       #effect:Lcom/android/camera/effect/EffectBase;
    .restart local v5       #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-ne v9, v4, :cond_1

    .line 267
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_3

    .line 271
    .end local v2           #capabilities:I
    .end local v4           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_4
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 272
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    .line 275
    :cond_5
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->effectListUpdatedEvent:Lcom/android/camera/event/Event;

    new-instance v10, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v10, p0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, p0, v10}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 276
    return-void

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
