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
    .line 41
    .local p2, allEffects:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    .line 42
    if-nez p1, :cond_0

    .line 44
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraActivity is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method

.method private prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "effect"
    .parameter "flags"

    .prologue
    .line 131
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

    .line 132
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 133
    return-void
.end method

.method private prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "effect"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 164
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

    .line 165
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 166
    return-void
.end method

.method private setEffectInternal(Lcom/android/camera/effect/EffectBase;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 207
    .local v0, prevEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 212
    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectBase;->apply(Lcom/android/camera/effect/EffectBase;)V

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllEffects()[Lcom/android/camera/effect/EffectBase;
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/effect/EffectBase;

    .line 57
    .local v0, effects:[Lcom/android/camera/effect/EffectBase;
    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method public final getCurrentEffect()Lcom/android/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getCurrentEffectCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getEffect(I)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "index"

    .prologue
    .line 82
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
    .line 87
    if-nez p1, :cond_0

    .line 89
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
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

    .line 96
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
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
    .line 127
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    .line 128
    return-void
.end method

.method public final prepareApplyEffect(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 110
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
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

    .line 117
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    .line 124
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 123
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
    .line 160
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    .line 161
    return-void
.end method

.method public final prepareCancelEffect(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;I)V
    .locals 5
    .parameter "name"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 143
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
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

    .line 150
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    .line 157
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 156
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
    .line 185
    if-nez p1, :cond_0

    .line 187
    const-string v0, "effect"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
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

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/camera/effect/EffectList$OnEffectChangedListener;->onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    .line 201
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
    .line 173
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

    .line 175
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 181
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    return-void
.end method

.method setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    .line 222
    return-void
.end method

.method public final updateCurrentEffects()V
    .locals 11

    .prologue
    .line 230
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraMode;

    .line 231
    .local v6, mode:Lcom/android/camera/CameraMode;
    sget-object v8, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v8, :cond_1

    const/16 v7, 0x10

    .line 234
    .local v7, modeCapabilityFlag:I
    :goto_0
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    .line 236
    .local v1, cameraType:Lcom/android/camera/CameraType;
    sget-object v8, Lcom/android/camera/effect/EffectList$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 248
    const-string v8, "EffectList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown camera type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    .line 254
    .local v0, cameraCapabilityFlag:I
    :goto_1
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 255
    const/4 v5, 0x0

    .local v5, i:I
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, count:I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 257
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/effect/EffectBase;

    .line 258
    .local v4, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v2

    .line 259
    .local v2, capabilities:I
    and-int v8, v2, v7

    if-ne v8, v7, :cond_2

    and-int v8, v2, v0

    if-ne v8, v0, :cond_2

    .line 260
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 231
    .end local v0           #cameraCapabilityFlag:I
    .end local v1           #cameraType:Lcom/android/camera/CameraType;
    .end local v2           #capabilities:I
    .end local v3           #count:I
    .end local v4           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v5           #i:I
    .end local v7           #modeCapabilityFlag:I
    :cond_1
    const/16 v7, 0x20

    goto :goto_0

    .line 239
    .restart local v1       #cameraType:Lcom/android/camera/CameraType;
    .restart local v7       #modeCapabilityFlag:I
    :pswitch_0
    const/4 v0, 0x1

    .line 240
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 242
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_1
    const/4 v0, 0x2

    .line 243
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 245
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_2
    const/4 v0, 0x4

    .line 246
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_1

    .line 261
    .restart local v2       #capabilities:I
    .restart local v3       #count:I
    .restart local v4       #effect:Lcom/android/camera/effect/EffectBase;
    .restart local v5       #i:I
    :cond_2
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-ne v8, v4, :cond_0

    .line 262
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_3

    .line 266
    .end local v2           #capabilities:I
    .end local v4           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_3
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 267
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    .line 270
    :cond_4
    iget-object v8, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->effectListUpdatedEvent:Lcom/android/camera/event/Event;

    new-instance v9, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v9, p0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, p0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 271
    return-void

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
