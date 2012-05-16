.class public Lcom/htc/sunny2/TextureList$TextureObjList;
.super Ljava/lang/Object;
.source "TextureList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/TextureList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureObjList"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/TextureMap$TextureObj;",
            ">;"
        }
    .end annotation
.end field

.field public mType:I

.field final synthetic this$0:Lcom/htc/sunny2/TextureList;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/TextureList;I)V
    .locals 2
    .parameter
    .parameter "type"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->this$0:Lcom/htc/sunny2/TextureList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/htc/sunny2/TextureList$TextureObjList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    .line 57
    iput p2, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mType:I

    .line 58
    return-void
.end method


# virtual methods
.method public get(I)Lcom/htc/sunny2/TextureMap$TextureObj;
    .locals 2
    .parameter "index"

    .prologue
    .line 73
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][get]: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/TextureMap$TextureObj;

    goto :goto_0
.end method

.method public remove(I)Lcom/htc/sunny2/TextureMap$TextureObj;
    .locals 2
    .parameter "index"

    .prologue
    .line 81
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][remove]: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/TextureMap$TextureObj;

    goto :goto_0
.end method

.method public set(ILcom/htc/sunny2/TextureMap$TextureObj;)V
    .locals 2
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 61
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][set]: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_1
    if-nez p2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][set]: obj is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
