.class public Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableGridViewParameters"
.end annotation


# instance fields
.field public childsCount:I

.field public clickedParentIdx:I

.field public firstChildIdx:I

.field public lastChildIdx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3064
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3065
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 3066
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3069
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 3070
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 3071
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 3072
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 3073
    return-void
.end method
