.class Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;
.super Landroid/os/Handler;
.source "AddPlaylistTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AddPlaylistTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 288
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->initTitle()V

    .line 292
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    #getter for: Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->access$100(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    #getter for: Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->access$100(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;

    move-result-object v2

    const-string v3, "ArtistBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 294
    .local v0, defaultSourec:Lcom/htc/music/util/SourceItem;
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    iget-object v3, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 296
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/view/SSurfaceView;

    .line 297
    .local v1, view:Lcom/htc/sunny2/view/SSurfaceView;
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0xc351
        :pswitch_0
    .end packed-switch
.end method
