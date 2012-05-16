.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V

    .line 151
    return-void
.end method
