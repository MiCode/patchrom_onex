.class Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResetCurrentAlbumClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 7772
    iput-object p1, p0, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 7774
    iget-object v0, p0, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$9500(Lcom/htc/music/HtcMusic;)V

    .line 7775
    iget-object v0, p0, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    .line 7776
    return-void
.end method
