.class public final Lcom/android/camera/effect/EffectManager;
.super Lcom/android/camera/component/UIComponent;
.source "EffectManager.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Effect Manager"

.field private static final m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/camera/effect/EffectFactory",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public final currentEffect:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AllEffects:[Lcom/android/camera/effect/EffectBase;

.field private m_BackUpEffect:Lcom/android/camera/effect/EffectBase;

.field private final m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

.field private final m_DefaultScene:Lcom/android/camera/effect/EffectBase;

.field private final m_EffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

.field private final m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_IsFlashDisabled:Z

.field private m_IsSelfTimerDisabled:Z

.field private m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

.field private m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

.field private final m_PropertyOwnerKey:Ljava/lang/Object;

.field private final m_SceneChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

.field private final m_SceneList:Lcom/android/camera/effect/EffectList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/camera/effect/EffectFactory;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/effect/DistortionEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/DistortionEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/effect/VignetteEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VignetteEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/effect/DepthOfFieldEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/DepthOfFieldEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/effect/DotsEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/DotsEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/effect/SplitToningMonoEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SplitToningMonoEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/effect/NashEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/NashEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/effect/VintageHighEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VintageHighEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/effect/VintageRedEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VintageRedEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/camera/effect/VintageGreenEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/VintageGreenEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/camera/effect/GrayscaleEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/GrayscaleEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/camera/effect/SepiaEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SepiaEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/camera/effect/NegativeEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/NegativeEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/camera/effect/SolarizeEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SolarizeEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/camera/effect/PosterizeEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/PosterizeEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/camera/effect/AquaEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/AquaEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/camera/effect/HdrSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/HdrSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/camera/effect/PanoramaSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/PanoramaSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/camera/effect/PortraitSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/PortraitSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/camera/effect/SmartShotSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/SmartShotSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/camera/effect/LandscapeSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/LandscapeSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/camera/effect/WhiteboardEffectFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/WhiteboardEffectFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/camera/effect/CloseUpSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/CloseUpSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/camera/effect/LowlightSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/LowlightSceneFactory;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/camera/effect/BurstSceneFactory;

    invoke-direct {v2}, Lcom/android/camera/effect/BurstSceneFactory;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/effect/EffectManager;->m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 12
    .parameter "cameraActivity"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 176
    const-string v7, "Effect Manager"

    invoke-direct {p0, v7, v10, p1, v10}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 87
    new-instance v7, Ljava/lang/Object;

    invoke-direct/range {v7 .. v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    .line 94
    new-instance v7, Lcom/android/camera/effect/EffectManager$1;

    invoke-direct {v7, p0}, Lcom/android/camera/effect/EffectManager$1;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_EffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    .line 143
    new-instance v7, Lcom/android/camera/effect/EffectManager$2;

    invoke-direct {v7, p0}, Lcom/android/camera/effect/EffectManager$2;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_SceneChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    .line 179
    if-nez p1, :cond_0

    .line 181
    const-string v7, "cameraActivity"

    invoke-static {v7}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 182
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "cameraActivity is NULL"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    :cond_0
    const-string v7, "EffectManager.CurrentEffect"

    iget-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7, v9, v8, v11}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    .line 187
    const-string v7, "EffectManager.CurrentScene"

    iget-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7, v9, v8, v11}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    .line 190
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v8, p1, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 191
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v8, p1, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, allEffects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, effects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/effect/EffectBase;>;"
    new-instance v7, Lcom/android/camera/effect/NoneEffect;

    invoke-direct {v7, p1}, Lcom/android/camera/effect/NoneEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v7, Lcom/android/camera/effect/AutoScene;

    invoke-direct {v7, p1}, Lcom/android/camera/effect/AutoScene;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v7, Lcom/android/camera/effect/EffectManager;->m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 205
    sget-object v7, Lcom/android/camera/effect/EffectManager;->m_EffectFactories:[Lcom/android/camera/effect/EffectFactory;

    aget-object v4, v7, v5

    .line 208
    .local v4, factory:Lcom/android/camera/effect/EffectFactory;,"Lcom/android/camera/effect/EffectFactory<*>;"
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/android/camera/effect/EffectFactory;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    invoke-virtual {v4, p1}, Lcom/android/camera/effect/EffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    .line 214
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    instance-of v7, v1, Lcom/android/camera/effect/IEffect;

    if-eqz v7, :cond_2

    .line 215
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    .restart local v1       #effect:Lcom/android/camera/effect/EffectBase;
    :cond_2
    instance-of v7, v1, Lcom/android/camera/effect/IScene;

    if-eqz v7, :cond_3

    .line 217
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :catch_0
    move-exception v3

    .line 224
    .local v3, ex:Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create effect by factory \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 219
    .end local v3           #ex:Ljava/lang/Throwable;
    .restart local v1       #effect:Lcom/android/camera/effect/EffectBase;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot categorize \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 227
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #factory:Lcom/android/camera/effect/EffectFactory;,"Lcom/android/camera/effect/EffectFactory<*>;"
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/camera/effect/EffectBase;

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:[Lcom/android/camera/effect/EffectBase;

    .line 228
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:[Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 231
    new-instance v7, Lcom/android/camera/effect/EffectList;

    invoke-direct {v7, p1, v2}, Lcom/android/camera/effect/EffectList;-><init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    .line 232
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    iget-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_EffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    invoke-virtual {v7, v8}, Lcom/android/camera/effect/EffectList;->setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V

    .line 233
    new-instance v7, Lcom/android/camera/effect/EffectList;

    invoke-direct {v7, p1, v6}, Lcom/android/camera/effect/EffectList;-><init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    .line 234
    iget-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v8, p0, Lcom/android/camera/effect/EffectManager;->m_SceneChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    invoke-virtual {v7, v8}, Lcom/android/camera/effect/EffectList;->setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V

    .line 237
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/effect/EffectBase;

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .line 238
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/effect/EffectBase;

    iput-object v7, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .line 239
    invoke-direct {p0, v10}, Lcom/android/camera/effect/EffectManager;->reset(Z)V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->reset(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectManager;->prepareEffectForNewMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/EffectManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->setupCurrentEffectAndScene()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method private canEnableFlash(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)Z
    .locals 1
    .parameter "effect"
    .parameter "scene"

    .prologue
    .line 720
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareEffectForNewMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V
    .locals 9
    .parameter "newCameraType"
    .parameter "newMode"

    .prologue
    const/4 v5, 0x1

    .line 463
    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 464
    .local v0, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v6, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 466
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p2, v6, :cond_3

    move v2, v5

    .line 467
    .local v2, isCameraMode:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 469
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 470
    .local v3, nextEffect:Lcom/android/camera/effect/EffectBase;
    :goto_1
    if-eqz v3, :cond_0

    instance-of v6, v3, Lcom/android/camera/effect/NoneEffect;

    if-eqz v6, :cond_6

    .line 471
    :cond_0
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 481
    .local v4, nextScene:Lcom/android/camera/effect/EffectBase;
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare next effect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare next scene : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    if-eqz v0, :cond_1

    .line 487
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare canceling effect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, v3, v5}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    .line 490
    :cond_1
    if-eqz v1, :cond_2

    .line 492
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare canceling scene : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    .line 497
    :cond_2
    invoke-virtual {v3, v0, v5}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 498
    invoke-virtual {v4, v1, v5}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 499
    return-void

    .line 466
    .end local v2           #isCameraMode:Z
    .end local v3           #nextEffect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #nextScene:Lcom/android/camera/effect/EffectBase;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 469
    .restart local v2       #isCameraMode:Z
    :cond_4
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto/16 :goto_1

    .line 471
    .restart local v3       #nextEffect:Lcom/android/camera/effect/EffectBase;
    :cond_5
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto/16 :goto_2

    .line 473
    :cond_6
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .restart local v4       #nextScene:Lcom/android/camera/effect/EffectBase;
    goto/16 :goto_2

    .line 477
    .end local v3           #nextEffect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #nextScene:Lcom/android/camera/effect/EffectBase;
    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 478
    .restart local v3       #nextEffect:Lcom/android/camera/effect/EffectBase;
    :goto_3
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .restart local v4       #nextScene:Lcom/android/camera/effect/EffectBase;
    goto/16 :goto_2

    .line 477
    .end local v3           #nextEffect:Lcom/android/camera/effect/EffectBase;
    .end local v4           #nextScene:Lcom/android/camera/effect/EffectBase;
    :cond_8
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_3
.end method

.method private reset(Z)V
    .locals 3
    .parameter "apply"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 508
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 509
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 510
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 511
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_BackUpEffect:Lcom/android/camera/effect/EffectBase;

    .line 512
    if-eqz p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 519
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    .line 520
    if-eqz p1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 526
    :goto_1
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v0, v1, :cond_2

    .line 523
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setupCurrentEffectAndScene()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 600
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - Start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectList;->updateCurrentEffects()V

    .line 604
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectList;->updateCurrentEffects()V

    .line 608
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 609
    .local v1, isCameraMode:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 612
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 613
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 616
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 617
    .local v0, appliedEffect:Lcom/android/camera/effect/EffectBase;
    :goto_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 618
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - New effect is \'"

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 622
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/camera/effect/NoneEffect;

    if-eqz v2, :cond_4

    .line 624
    :cond_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 625
    :goto_2
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 626
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - New scene is \'"

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 627
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 655
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V

    .line 656
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V

    .line 658
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - End"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void

    .line 608
    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #isCameraMode:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 616
    .restart local v1       #isCameraMode:Z
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 624
    .restart local v0       #appliedEffect:Lcom/android/camera/effect/EffectBase;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_2

    .line 631
    :cond_4
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 632
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - New scene is NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 639
    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 640
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 643
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    .line 644
    .restart local v0       #appliedEffect:Lcom/android/camera/effect/EffectBase;
    :goto_4
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 645
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - New effect is \'"

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 646
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 649
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 650
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setupCurrentEffectAndScene() - New scene is NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 643
    .end local v0           #appliedEffect:Lcom/android/camera/effect/EffectBase;
    :cond_6
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_4
.end method

.method private updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 688
    instance-of v0, p1, Lcom/android/camera/effect/IEffect;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    .line 695
    :goto_0
    return-void

    .line 690
    :cond_0
    instance-of v0, p1, Lcom/android/camera/effect/IScene;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0
.end method

.method private updateFlashState(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V
    .locals 4
    .parameter "effect"
    .parameter "scene"

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFlashState - effect is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , scene is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 701
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectManager;->canEnableFlash(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    if-eqz v1, :cond_0

    .line 705
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    .line 706
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    if-nez v1, :cond_0

    .line 713
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    .line 714
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    goto :goto_0
.end method

.method private updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 734
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isSelfTimerSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-eqz v1, :cond_1

    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    .line 739
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 750
    :cond_1
    :goto_0
    return-void

    .line 744
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-nez v1, :cond_1

    .line 746
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    .line 747
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 6

    .prologue
    .line 249
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

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

    .line 250
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->release()V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 254
    .local v4, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->release()V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    .end local v4           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 260
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 261
    return-void
.end method

.method public getAllEffects()[Lcom/android/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:[Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, [Lcom/android/camera/effect/EffectBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/EffectBase;

    check-cast v0, [Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public getEffectList()Lcom/android/camera/effect/EffectList;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method public getSceneList()Lcom/android/camera/effect/EffectList;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 294
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getRequestScene()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, initialSceneName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial scene name is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz v2, :cond_0

    .line 302
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectList;->updateCurrentEffects()V

    .line 305
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 307
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v4, v1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    .line 308
    .local v3, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v3}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial scene is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_1

    .line 312
    iput-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    .line 315
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/effect/EffectManager;->setupCurrentEffectAndScene()V

    .line 322
    .end local v1           #i:I
    .end local v3           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 323
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/effect/EffectManager$3;

    invoke-direct {v5, p0}, Lcom/android/camera/effect/EffectManager$3;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 330
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->resetToDefaultEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/effect/EffectManager$4;

    invoke-direct {v5, p0}, Lcom/android/camera/effect/EffectManager$4;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 348
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->effectApplyingEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/effect/EffectManager$5;

    invoke-direct {v5, p0}, Lcom/android/camera/effect/EffectManager$5;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 368
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/effect/EffectManager$6;

    invoke-direct {v5, p0}, Lcom/android/camera/effect/EffectManager$6;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 407
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/effect/EffectManager$7;

    invoke-direct {v5, p0}, Lcom/android/camera/effect/EffectManager$7;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 414
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/effect/EffectManager$8;

    invoke-direct {v5, p0}, Lcom/android/camera/effect/EffectManager$8;-><init>(Lcom/android/camera/effect/EffectManager;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 421
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/effect/EffectManager$9;

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/effect/EffectManager$9;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/effect/EffectManager$10;

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/effect/EffectManager$10;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/effect/EffectManager$11;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/CameraSettings;->isTapCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/effect/EffectManager$11;-><init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    return-void

    .line 314
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v1       #i:I
    .restart local v3       #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iput-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 305
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0
.end method

.method public setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    .line 558
    if-nez p1, :cond_1

    .line 559
    iget-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 569
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentEffect - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void

    .line 560
    :cond_1
    instance-of v0, p1, Lcom/android/camera/effect/IEffect;

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an effect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCurrentEffect(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    .line 538
    if-eqz p1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/EffectList;->getEffect(Ljava/lang/String;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 541
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .line 548
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 550
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentEffect - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void

    .line 545
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    .restart local v0       #effect:Lcom/android/camera/effect/EffectBase;
    goto :goto_0
.end method

.method public setCurrentScene(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    .line 581
    if-nez p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 592
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentScene - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 583
    :cond_1
    instance-of v0, p1, Lcom/android/camera/effect/IScene;

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
