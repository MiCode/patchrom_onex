.class public Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ParamContainer"
.end annotation


# instance fields
.field bSetNewList:Z

.field isEnd:Z

.field oldFirstItemIndex:I

.field oldFirstItemPositionX:I

.field oldFirstItemPositionY:I

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const v0, 0x7fffffff

    .line 3572
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3573
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    .line 3574
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 3575
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 3576
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 3577
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 3578
    return-void
.end method
