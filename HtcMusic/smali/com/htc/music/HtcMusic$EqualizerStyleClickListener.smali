.class Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;
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
    name = "EqualizerStyleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method public constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 1
    .parameter

    .prologue
    .line 7268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;-><init>(Lcom/htc/music/HtcMusic;I)V

    .line 7269
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter
    .parameter "selectedIndex"

    .prologue
    .line 7263
    iput-object p1, p0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7265
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 7280
    iget-object v0, p0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$8800(Lcom/htc/music/HtcMusic;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    .line 7281
    iget-object v0, p0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$8800(Lcom/htc/music/HtcMusic;)I

    move-result v1

    iput v1, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    .line 7282
    iget-object v0, p0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 7283
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 7274
    iget-object v0, p0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0, p1}, Lcom/htc/music/HtcMusic;->setEQSelectedIndex(I)V

    .line 7275
    return-void
.end method
