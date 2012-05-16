.class public Lcom/htc/sunny2/SunnyEnvironment;
.super Ljava/lang/Object;
.source "SunnyEnvironment.java"


# static fields
.field private static final LOCKER:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sEnvironment:Lcom/htc/sunny2/SunnyEnvironment;


# instance fields
.field private mEnvironment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunny2/SunnyEnvironment;->LOCKER:Ljava/lang/Object;

    .line 14
    const-class v0, Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/SunnyEnvironment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    .line 32
    iget v0, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->InitEnvironment()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    .line 35
    iget v0, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InitEnvironment NG"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public static instance()Lcom/htc/sunny2/SunnyEnvironment;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lcom/htc/sunny2/SunnyEnvironment;->LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/htc/sunny2/SunnyEnvironment;->sEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/htc/sunny2/SunnyEnvironment;

    invoke-direct {v0}, Lcom/htc/sunny2/SunnyEnvironment;-><init>()V

    sput-object v0, Lcom/htc/sunny2/SunnyEnvironment;->sEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/htc/sunny2/SunnyEnvironment;->sEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getHandler()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    return v0
.end method

.method release()V
    .locals 15

    .prologue
    .line 46
    sget-object v12, Lcom/htc/sunny2/SunnyEnvironment;->LOCKER:Ljava/lang/Object;

    monitor-enter v12

    .line 47
    :try_start_0
    iget v11, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    if-eqz v11, :cond_6

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    sget-object v13, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    new-instance v3, Ljava/util/LinkedList;

    sget-object v11, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-direct {v3, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .end local v2           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    .local v3, sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    :try_start_2
    sget-object v11, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 53
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 54
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 55
    .local v9, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;"
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/SceneNode;

    .line 56
    .local v1, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 60
    :cond_0
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #node:Lcom/htc/sunny2/SceneNode;
    .end local v3           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    .end local v9           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 53
    .restart local v2       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    :catchall_1
    move-exception v11

    :goto_1
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v11

    .line 63
    .end local v2           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    :cond_1
    const/4 v4, 0x0

    .line 64
    .local v4, spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    sget-object v13, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :try_start_6
    new-instance v5, Ljava/util/LinkedList;

    sget-object v11, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-direct {v5, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    .end local v4           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    .local v5, spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    :try_start_7
    sget-object v11, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 67
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 68
    :try_start_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/Sprite;

    .line 69
    .local v1, node:Lcom/htc/sunny2/Sprite;
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 67
    .end local v1           #node:Lcom/htc/sunny2/Sprite;
    .end local v5           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    .restart local v4       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    :catchall_2
    move-exception v11

    :goto_3
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v11

    .line 75
    .end local v4           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    .restart local v5       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    :cond_3
    const/4 v7, 0x0

    .line 76
    .local v7, textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    sget-object v13, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 77
    :try_start_b
    new-instance v8, Ljava/util/LinkedList;

    sget-object v11, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    invoke-direct {v8, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 78
    .end local v7           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    .local v8, textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    :try_start_c
    sget-object v11, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 79
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 80
    :try_start_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 81
    .local v10, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/Texture;

    .line 82
    .local v6, texture:Lcom/htc/sunny2/Texture;
    if-eqz v6, :cond_4

    .line 83
    sget-object v11, Lcom/htc/sunny2/SunnyEnvironment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "You have leak Texture:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->getCreateStack()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 86
    :cond_4
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 79
    .end local v6           #texture:Lcom/htc/sunny2/Texture;
    .end local v8           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    .end local v10           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    .restart local v7       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    :catchall_3
    move-exception v11

    :goto_5
    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v11

    .line 89
    .end local v7           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    .restart local v8       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    :cond_5
    iget v11, p0, Lcom/htc/sunny2/SunnyEnvironment;->mEnvironment:I

    invoke-static {v11}, Lcom/htc/sunny2/Sunny2;->DeinitEnvironment(I)V

    .line 91
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    .end local v5           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    .end local v8           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    :cond_6
    const/4 v11, 0x0

    sput-object v11, Lcom/htc/sunny2/SunnyEnvironment;->sEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    .line 92
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 93
    return-void

    .line 79
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    .restart local v5       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    .restart local v8       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    :catchall_4
    move-exception v11

    move-object v7, v8

    .end local v8           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    .restart local v7       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    goto :goto_5

    .line 67
    .end local v7           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;>;"
    :catchall_5
    move-exception v11

    move-object v4, v5

    .end local v5           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    .restart local v4       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    goto :goto_3

    .line 53
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/Sprite;>;"
    :catchall_6
    move-exception v11

    move-object v2, v3

    .end local v3           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    .restart local v2       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;>;"
    goto/16 :goto_1
.end method
