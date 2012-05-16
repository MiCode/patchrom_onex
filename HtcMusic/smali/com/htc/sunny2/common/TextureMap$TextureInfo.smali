.class Lcom/htc/sunny2/common/TextureMap$TextureInfo;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/TextureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextureInfo"
.end annotation


# instance fields
.field public identifier:Ljava/lang/String;

.field public sunnyTexture:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/common/TextureMap;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/TextureMap;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 14
    iput-object p1, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->this$0:Lcom/htc/sunny2/common/TextureMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    .line 16
    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    .line 24
    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public set(Lcom/htc/sunny2/Texture;Ljava/lang/String;)V
    .locals 0
    .parameter "texture"
    .parameter "id"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    .line 20
    iput-object p2, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    .line 21
    return-void
.end method
