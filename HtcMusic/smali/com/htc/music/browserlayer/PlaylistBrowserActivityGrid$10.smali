.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    .line 920
    return-void
.end method
