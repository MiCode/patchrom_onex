.class Lcom/htc/sunny2/widget/presentation/SPresentation$12;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->setClipSize(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field final synthetic val$nBottom:I

.field final synthetic val$nLeft:I

.field final synthetic val$nRight:I

.field final synthetic val$nTop:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nLeft:I

    iput p3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nTop:I

    iput p4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nRight:I

    iput p5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nBottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nLeft:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    .line 1760
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nTop:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    .line 1761
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nRight:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    .line 1762
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->val$nBottom:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    .line 1763
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateViewLayout()V

    .line 1764
    return-void
.end method
