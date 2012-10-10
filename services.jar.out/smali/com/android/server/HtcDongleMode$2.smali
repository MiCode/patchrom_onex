.class Lcom/android/server/HtcDongleMode$2;
.super Ljava/lang/Object;
.source "HtcDongleMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcDongleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcDongleMode;


# direct methods
.method constructor <init>(Lcom/android/server/HtcDongleMode;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/HtcDongleMode$2;->this$0:Lcom/android/server/HtcDongleMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/HtcDongleMode$2;->this$0:Lcom/android/server/HtcDongleMode;

    const/4 v1, 0x0

    #calls: Lcom/android/server/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/HtcDongleMode;->access$000(Lcom/android/server/HtcDongleMode;Z)V

    .line 135
    return-void
.end method
