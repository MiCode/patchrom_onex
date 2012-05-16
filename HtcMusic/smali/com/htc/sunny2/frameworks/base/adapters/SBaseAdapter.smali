.class public Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;
.super Ljava/lang/Object;
.source "SBaseAdapter.java"


# instance fields
.field private final mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->notifyChanged()V

    .line 44
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->notifyInvalidated()V

    .line 52
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->notifyChanged(I)V

    .line 48
    return-void
.end method

.method public registerDataSetObserver(Lcom/htc/sunny2/widget/presentation/SDataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public unregisterDataSetObserver(Lcom/htc/sunny2/widget/presentation/SDataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny2/widget/presentation/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SDataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
