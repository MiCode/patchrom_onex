.class public abstract Lcom/htc/sunny2/widget/gridview/GridViewItem;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "GridViewItem.java"

# interfaces
.implements Lcom/htc/sunny2/ViewItem;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItem;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GridViewItem"

.field public static final STYLE_DELETE:I = 0x2

.field public static final STYLE_FAVORITE:I = 0x3

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_PICKER:I = 0x1

.field private static sTextureManager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

.field protected mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 36
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 37
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 36
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 37
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    .line 74
    return-void
.end method

.method protected static getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    .locals 1
    .parameter "key"

    .prologue
    .line 46
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    goto :goto_0
.end method

.method protected static isExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 65
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    .locals 1
    .parameter "key"

    .prologue
    .line 60
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    goto :goto_0
.end method

.method protected static setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;)V
    .locals 1
    .parameter "key"
    .parameter "textureSet"

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onItemClick()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    invoke-interface {v0, p0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;->onClickAnimation(Lcom/htc/sunny2/view/SView;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onItemPress()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    invoke-interface {v0, p0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;->onPressAnimation(Lcom/htc/sunny2/view/SView;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onItemRelease()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    invoke-interface {v0, p0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;->onReleaseAnimation(Lcom/htc/sunny2/view/SView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setBindMediaDataListener(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 78
    return-void
.end method

.method public setItemAnimation(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;

    .line 82
    return-void
.end method
