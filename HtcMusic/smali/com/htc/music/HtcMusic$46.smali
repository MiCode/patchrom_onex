.class Lcom/htc/music/HtcMusic$46;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;
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
    .line 7307
    iput-object p1, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 7309
    iget-object v0, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iget v0, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    if-ne v0, p2, :cond_0

    .line 7316
    :goto_0
    return-void

    .line 7312
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iput p2, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    .line 7313
    iget-object v0, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$46;->this$0:Lcom/htc/music/HtcMusic;

    iget v2, v2, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$8700(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    goto :goto_0
.end method
