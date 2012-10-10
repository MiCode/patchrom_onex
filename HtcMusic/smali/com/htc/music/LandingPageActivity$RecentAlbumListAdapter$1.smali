.class Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

.field final synthetic val$albumId:I

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$artistName:Ljava/lang/String;

.field final synthetic val$tempActivity:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->this$0:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    iput-object p2, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$tempActivity:Lcom/htc/music/LandingPageActivity;

    iput-object p3, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$albumName:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$artistName:Ljava/lang/String;

    iput p5, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$albumId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$tempActivity:Lcom/htc/music/LandingPageActivity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 1320
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$tempActivity:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$albumName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$4502(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1321
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$tempActivity:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$artistName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$4602(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$tempActivity:Lcom/htc/music/LandingPageActivity;

    iget v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$albumId:I

    #setter for: Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$4702(Lcom/htc/music/LandingPageActivity;I)I

    .line 1323
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;->val$tempActivity:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->showAlbumOptions()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$4800(Lcom/htc/music/LandingPageActivity;)V

    .line 1324
    return-void
.end method
