.class Lcom/htc/music/HtcMusic$36;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 5216
    iput-object p1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5219
    iget-object v0, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 5220
    return-void
.end method
