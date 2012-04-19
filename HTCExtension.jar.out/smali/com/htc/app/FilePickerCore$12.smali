.class Lcom/htc/app/FilePickerCore$12;
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
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 4

    .prologue
    .line 2986
    const/4 v1, 0x0

    .line 2987
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2988
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2989
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 2990
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/app/FilePickerCore;->access$4400(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;

    move-result-object v1

    .line 2991
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    const v3, 0x20200ca

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 2992
    return-void
.end method

.method public onFileScan(I)V
    .locals 4
    .parameter "currentSearchedFileCount"

    .prologue
    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2997
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 2998
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2999
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    const v3, 0x20200ca

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3000
    return-void
.end method

.method public onFileScanEnd()V
    .locals 7

    .prologue
    const v6, 0x20200ca

    .line 3003
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#### recent onFileScanEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x1

    #setter for: Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore;->access$4602(Lcom/htc/app/FilePickerCore;Z)Z

    .line 3005
    const/4 v0, 0x0

    .line 3006
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3007
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3009
    :cond_0
    if-nez v0, :cond_3

    .line 3010
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "recent onFileScanEnd set empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3012
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#### recent onFileScanEnd set empty && getRecentFragment() != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v2

    const/16 v3, 0x3ea

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/app/FilePickerRecentFragment;->NotifyToDoTask(IJ)V

    .line 3022
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/app/FilePickerCore;->access$4400(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;

    move-result-object v1

    .line 3023
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V
    invoke-static {v2, v6, v1}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V

    .line 3024
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    .line 3025
    return-void

    .line 3016
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#### recent onFileScanEnd set empty && getRecentFragment() == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3019
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3020
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$12;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerRecentFragment;->NotifyToDoTask(I)V

    goto :goto_0
.end method
