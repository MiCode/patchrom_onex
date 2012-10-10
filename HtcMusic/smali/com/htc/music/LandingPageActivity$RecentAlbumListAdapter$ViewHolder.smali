.class Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

.field listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->this$0:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
