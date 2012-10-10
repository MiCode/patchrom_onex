.class Lcom/htc/music/carmode/CarLibraryActivity$8;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$8;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 819
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 820
    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 821
    .local v1, headerBarImage:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 836
    .end local v1           #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :goto_0
    return-void

    .line 824
    .restart local v1       #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->show()V

    goto :goto_0

    .line 826
    .end local v1           #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :cond_1
    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/htc/widget/ActionBarDropDown;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 827
    check-cast v0, Lcom/htc/widget/ActionBarDropDown;

    .line 828
    .local v0, actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    goto :goto_0

    .line 831
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    goto :goto_0

    .line 834
    .end local v0           #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :cond_3
    const-string v2, "[CarLibraryActivity]"

    const-string v3, "non-HeaderBarImage shouldn\'t use this ClickListener!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
