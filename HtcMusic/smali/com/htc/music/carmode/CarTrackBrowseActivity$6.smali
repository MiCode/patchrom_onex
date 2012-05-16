.class Lcom/htc/music/carmode/CarTrackBrowseActivity$6;
.super Ljava/lang/Object;
.source "CarTrackBrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$600(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 574
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCategory:S
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)S

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 577
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mSelectedPosition:I
    invoke-static {v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I

    move-result v3

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    .line 579
    return-void
.end method
