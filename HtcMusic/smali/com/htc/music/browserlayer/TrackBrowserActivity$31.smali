.class Lcom/htc/music/browserlayer/TrackBrowserActivity$31;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategoryRightBtn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6039
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 6041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6042
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6043
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$7000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6044
    const-string v1, "playlistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$7000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6046
    :cond_0
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6047
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6048
    return-void
.end method
