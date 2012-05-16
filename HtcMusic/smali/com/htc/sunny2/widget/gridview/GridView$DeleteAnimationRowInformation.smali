.class public Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeleteAnimationRowInformation"
.end annotation


# instance fields
.field rowId:I

.field startX:I

.field startY:I

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 3
    .parameter

    .prologue
    .line 3089
    const/4 v0, -0x1

    const/high16 v1, -0x8000

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    .line 3090
    return-void
.end method

.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;III)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3091
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3092
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3093
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startX:I

    .line 3094
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 3095
    return-void
.end method
