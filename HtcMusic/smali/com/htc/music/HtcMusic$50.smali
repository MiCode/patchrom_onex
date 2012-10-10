.class Lcom/htc/music/HtcMusic$50;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;

.field final synthetic val$checkBox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7485
    iput-object p1, p0, Lcom/htc/music/HtcMusic$50;->this$0:Lcom/htc/music/HtcMusic;

    iput-object p2, p0, Lcom/htc/music/HtcMusic$50;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    .line 7489
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    .line 7490
    iget-object v2, p0, Lcom/htc/music/HtcMusic$50;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 7491
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->val$checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7492
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$9100(Lcom/htc/music/HtcMusic;)V

    .line 7493
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0, v3}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    .line 7500
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 7490
    goto :goto_0

    .line 7495
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$9200(Lcom/htc/music/HtcMusic;I)V

    .line 7496
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$9300(Lcom/htc/music/HtcMusic;)V

    .line 7497
    iget-object v0, p0, Lcom/htc/music/HtcMusic$50;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0, v3}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_1
.end method
