.class public interface abstract Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivitySorter"
.end annotation


# virtual methods
.method public abstract sort(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation
.end method
