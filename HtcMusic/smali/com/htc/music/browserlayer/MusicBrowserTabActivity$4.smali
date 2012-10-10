.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1739
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 1740
    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 1741
    .local v1, headerBarImage:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1742
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 1756
    .end local v1           #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :goto_0
    return-void

    .line 1744
    .restart local v1       #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->show()V

    goto :goto_0

    .line 1746
    .end local v1           #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :cond_1
    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/htc/widget/ActionBarDropDown;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 1747
    check-cast v0, Lcom/htc/widget/ActionBarDropDown;

    .line 1748
    .local v0, actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1749
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    goto :goto_0

    .line 1751
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    goto :goto_0

    .line 1754
    .end local v0           #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :cond_3
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "non-HeaderBarImage shouldn\'t use this ClickListener!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
