.class Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader$1;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;


# direct methods
.method constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader$1;->this$1:Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader$1;->this$1:Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #calls: Lcom/htc/music/util/HtcActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V
    invoke-static {v0}, Lcom/htc/music/util/HtcActivityChooserModel;->access$1000(Lcom/htc/music/util/HtcActivityChooserModel;)V

    .line 1321
    iget-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader$1;->this$1:Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Lcom/htc/music/util/HtcActivityChooserModel$HistoryLoader;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #calls: Lcom/htc/music/util/HtcActivityChooserModel;->sortActivities()V
    invoke-static {v0}, Lcom/htc/music/util/HtcActivityChooserModel;->access$1100(Lcom/htc/music/util/HtcActivityChooserModel;)V

    .line 1322
    return-void
.end method
