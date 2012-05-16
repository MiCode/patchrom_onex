.class public Lcom/htc/sunny2/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/SceneNode$1;,
        Lcom/htc/sunny2/SceneNode$NODE_MODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneNode"

.field static sSceneNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/SceneNode;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mChilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateStack:Ljava/lang/String;

.field protected mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

.field protected mNodeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCENENODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/SceneNode;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    .line 39
    .local v0, env:I
    sget-object v1, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    invoke-virtual {p1}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    sget-object v1, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NONE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    iput-object v1, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 64
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/SceneNode;->setRenderOrderMode(I)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    .line 77
    sget-object v2, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v2

    .line 78
    :try_start_0
    sget-object v1, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    return-void

    .line 42
    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    .line 43
    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateSceneNode(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 44
    iget v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SceneNode init with null node id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    .line 52
    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateScissor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 53
    iget v1, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ScissorNode init with null node id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static obtain()Lcom/htc/sunny2/SceneNode;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/sunny2/SceneNode;

    invoke-direct {v0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    .line 179
    return-void
.end method

.method public addSprite(Lcom/htc/sunny2/Sprite;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 186
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    .line 187
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    return-void
.end method

.method public getChild(I)Lcom/htc/sunny2/SceneNode;
    .locals 1
    .parameter "index"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetVisible(I)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 87
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v5, :cond_6

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v3, removeSceneNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunny2/SceneNode;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SceneNode;

    .line 90
    .local v0, child:Lcom/htc/sunny2/SceneNode;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 92
    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->release()V

    goto :goto_0

    .line 94
    .end local v0           #child:Lcom/htc/sunny2/SceneNode;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 96
    sget-object v6, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v6

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;"
    :try_start_0
    sget-object v5, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 99
    .local v4, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    .line 100
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 101
    move-object v2, v4

    .line 105
    .end local v4           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;"
    :cond_3
    if-eqz v2, :cond_4

    .line 106
    sget-object v5, Lcom/htc/sunny2/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sget-object v5, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    iget-object v6, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-virtual {v6}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 124
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v5, :cond_5

    .line 125
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t delete Node: mNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mModeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/SceneNode;->mModeId:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 113
    :pswitch_0
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v5}, Lcom/htc/sunny2/Sunny2;->DestroySceneNode(I)V

    .line 114
    iput v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    goto :goto_1

    .line 119
    :pswitch_1
    iget v5, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v5}, Lcom/htc/sunny2/Sunny2;->DestroyScissor(I)V

    .line 120
    iput v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    goto :goto_1

    .line 128
    :cond_5
    iput v7, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 130
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/SceneNode;>;"
    .end local v3           #removeSceneNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunny2/SceneNode;>;"
    :cond_6
    return-void

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 172
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemoveChild(II)V

    .line 173
    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public removeSprite(Lcom/htc/sunny2/Sprite;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemoveChild(II)V

    .line 183
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 141
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetGroupAlpha(IF)V

    .line 142
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    .line 150
    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "renderOrder"

    .prologue
    .line 164
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRenderOrder(II)V

    .line 165
    return-void
.end method

.method public setRenderOrderMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 168
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 169
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRotate(IFFF)V

    .line 154
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "sX"
    .parameter "sY"
    .parameter "sZ"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    .line 146
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    .line 158
    return-void
.end method
