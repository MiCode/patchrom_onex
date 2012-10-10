.class Lcom/htc/music/HtcMusic$23$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$23;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$23;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$23;)V
    .locals 0
    .parameter

    .prologue
    .line 3978
    iput-object p1, p0, Lcom/htc/music/HtcMusic$23$1;->this$1:Lcom/htc/music/HtcMusic$23;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/htc/music/HtcMusic$23$1;->this$1:Lcom/htc/music/HtcMusic$23;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 3982
    return-void
.end method
