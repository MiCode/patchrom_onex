.class Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAttributes"
.end annotation


# instance fields
.field public fileCacheNotSaved:Z

.field public identifier:I

.field public isProcessed:Z

.field public offLineDecode:Z

.field public textureDirty:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->textureDirty:Z

    .line 48
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->identifier:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->isProcessed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V

    return-void
.end method
