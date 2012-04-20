.class Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
.super Lcom/android/camera/menu/RadioButtonMenuItem;
.source "ResolutionMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ResolutionMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubMenuItem"
.end annotation


# instance fields
.field public final resolutionItem:Lcom/android/camera/ResolutionMenuItem;

.field final synthetic this$0:Lcom/android/camera/menu/ResolutionMenuItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/menu/ResolutionMenuItem;ILcom/android/camera/ResolutionMenuItem;)V
    .locals 0
    .parameter
    .parameter "titleResId"
    .parameter "resolutionItem"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    .line 41
    invoke-direct {p0, p2}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 42
    iput-object p3, p0, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    .line 43
    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    #calls: Lcom/android/camera/menu/ResolutionMenuItem;->onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    invoke-static {v0, p0}, Lcom/android/camera/menu/ResolutionMenuItem;->access$000(Lcom/android/camera/menu/ResolutionMenuItem;Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method
