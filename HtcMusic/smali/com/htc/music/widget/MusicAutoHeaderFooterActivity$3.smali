.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1022
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 1023
    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 1024
    .local v1, headerBarImage:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 1039
    .end local v1           #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :goto_0
    return-void

    .line 1027
    .restart local v1       #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->show()V

    goto :goto_0

    .line 1029
    .end local v1           #headerBarImage:Lcom/htc/widget/HeaderBarImage;
    :cond_1
    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 1030
    check-cast v0, Lcom/htc/widget/HeaderBarDropDown;

    .line 1031
    .local v0, headerBarDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1032
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    goto :goto_0

    .line 1034
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    goto :goto_0

    .line 1037
    .end local v0           #headerBarDropDown:Lcom/htc/widget/HeaderBarDropDown;
    :cond_3
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "non-HeaderBarImage shouldn\'t use this ClickListener!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
