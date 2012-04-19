.class Lcom/htc/app/FilePickerCore$14;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isScanning:Z

.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 1
    .parameter

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore$14;->isScanning:Z

    return-void
.end method

.method private setIsScanning(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 3173
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore$14;->isScanning:Z

    .line 3174
    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 3182
    return-void
.end method

.method public onFileScan(I)V
    .locals 0
    .parameter "currentSearchedFileCount"

    .prologue
    .line 3190
    return-void
.end method

.method public onFileScanEnd()V
    .locals 6

    .prologue
    const v5, 0x20200cc

    .line 3193
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v4, 0x1

    #setter for: Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$4802(Lcom/htc/app/FilePickerCore;Z)Z

    .line 3194
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v1

    .line 3196
    .local v1, fileCount:I
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3197
    .local v0, count:I
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/app/FilePickerCore;->access$4400(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;

    move-result-object v2

    .line 3198
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v3, v5, v2}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3199
    const-string v3, "Tab_Type"

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3200
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3202
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 3203
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    .line 3204
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$14;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->setNoFileFoundTextOfTypeView()V

    .line 3205
    return-void
.end method
