.class Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "CarAlbumBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarAlbumBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumViewItemLayoutParams"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const v3, 0x2050006

    .line 72
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 75
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    .line 76
    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    .line 78
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 79
    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 80
    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 81
    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 82
    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 83
    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 84
    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 85
    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 86
    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 87
    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 88
    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 89
    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 90
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 91
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 92
    const v1, 0x205000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 94
    :cond_0
    return-void
.end method

.method private getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 98
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, container:Landroid/view/View;
    const v5, 0x7f080046

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 100
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 101
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 102
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 106
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 107
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    return v5
.end method
