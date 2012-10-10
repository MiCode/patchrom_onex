.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "GenreBrowserActivityExpGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreViewItemLayoutParams"
.end annotation


# instance fields
.field public bottom_padding_child:I

.field public child_view_offsetY:I

.field public cover_height_child:I

.field public cover_marginLeft_child:I

.field public cover_marginTop_child:I

.field public cover_width_child:I

.field public height_child:I

.field public horizontalSpacing_child:I

.field public indicator_offset:I

.field public textView_height_child:I

.field public textView_marginLeft_child:I

.field public textView_marginTop_child:I

.field public textView_width_child:I

.field public thumb_marginLeft_child:I

.field public thumb_marginTop_child:I

.field public verticalSpacing_child:I

.field public verticalSpacing_landscape_child:I

.field public width_child:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const v3, 0x205000e

    .line 103
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 106
    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 107
    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 108
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 109
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 110
    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 111
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 112
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 113
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 114
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 116
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 117
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 118
    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 119
    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 120
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 122
    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    .line 123
    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_height_child:I

    .line 124
    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginLeft_child:I

    .line 125
    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginTop_child:I

    .line 126
    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginLeft_child:I

    .line 127
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginTop_child:I

    .line 128
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_width_child:I

    .line 129
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_width_child:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_height_child:I

    .line 130
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginLeft_child:I

    .line 131
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginTop_child:I

    .line 132
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->width_child:I

    .line 133
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->child_view_offsetY:I

    .line 134
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_height_child:I

    iget v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_height_child:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginTop_child:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->height_child:I

    .line 136
    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_child:I

    .line 137
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_landscape_child:I

    .line 138
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->horizontalSpacing_child:I

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->bottom_padding_child:I

    .line 140
    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->indicator_offset:I

    .line 142
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    .line 144
    :cond_0
    return-void
.end method

.method private getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 164
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 165
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030029

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, container:Landroid/view/View;
    const v5, 0x7f080046

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 167
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 168
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 169
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 173
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 174
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    return v5
.end method

.method private getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 11
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const v10, 0x7f080047

    const v9, 0x7f080046

    const/4 v8, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 148
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030029

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 153
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/high16 v6, 0x4000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 158
    .local v5, measureW:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 159
    .local v4, measureH:I
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    return v6
.end method
