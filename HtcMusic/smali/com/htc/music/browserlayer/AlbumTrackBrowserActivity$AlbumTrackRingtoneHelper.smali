.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumTrackRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    .line 1918
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 1919
    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    .line 1928
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    .line 1924
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    .line 1932
    return-void
.end method
