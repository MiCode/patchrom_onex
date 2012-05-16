.class Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;
.super Lcom/htc/sunny2/widget/presentation/SDataSetObserver;
.source "SAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SAdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SAdapterView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny2/widget/presentation/SAdapterView;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/presentation/SDataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny2/widget/presentation/SAdapterView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public onChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny2/widget/presentation/SAdapterView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->notifyUpdateItem(I)V

    .line 56
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
