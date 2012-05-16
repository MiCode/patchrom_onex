.class public Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;
.super Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
.source "SViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# instance fields
.field public bottomMargin:I

.field public leftMargin:I

.field public rightMargin:I

.field public topMargin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 579
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    .line 580
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V

    .line 602
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>()V

    .line 588
    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    .line 589
    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    .line 591
    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    .line 592
    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    .line 593
    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    .line 594
    iget v0, p1, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 595
    return-void
.end method


# virtual methods
.method public setMargins(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 618
    iput p1, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    .line 619
    iput p2, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    .line 620
    iput p3, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    .line 621
    iput p4, p0, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 622
    return-void
.end method
