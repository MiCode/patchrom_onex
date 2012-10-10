.class Lcom/htc/music/browserlayer/EditPlaylistActivity$8;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$8;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$8;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1200(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    .line 1506
    return-void
.end method
