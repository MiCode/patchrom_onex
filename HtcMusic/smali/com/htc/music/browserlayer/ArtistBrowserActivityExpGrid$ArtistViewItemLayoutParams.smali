.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;
.source "ArtistBrowserActivityExpGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistViewItemLayoutParams"
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

    .line 122
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 125
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    .line 126
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    .line 127
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    .line 128
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    .line 129
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    .line 130
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    .line 131
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    .line 132
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->getGridViewTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    .line 133
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    .line 135
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    .line 136
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    .line 137
    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    .line 138
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    .line 141
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    .line 142
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_height_child:I

    .line 143
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginLeft_child:I

    .line 144
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginTop_child:I

    .line 145
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginLeft_child:I

    .line 146
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginTop_child:I

    .line 147
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_width_child:I

    .line 148
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_width_child:I

    invoke-direct {p0, v1, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_height_child:I

    .line 149
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginLeft_child:I

    .line 150
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    .line 151
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->width_child:I

    .line 152
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->child_view_offsetY:I

    .line 154
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_height_child:I

    iget v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_height_child:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->height_child:I

    .line 155
    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    .line 156
    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_landscape_child:I

    .line 157
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->horizontalSpacing_child:I

    .line 158
    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->indicator_offset:I

    .line 159
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->bottom_padding_child:I

    .line 161
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    .line 163
    :cond_0
    return-void
.end method

.method private getGridViewChidlTextViewLayoutHeight(ILandroid/app/Activity;)I
    .locals 8
    .parameter "textViewWidth"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 184
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f030029

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, container:Landroid/view/View;
    const v5, 0x7f080046

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 186
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 188
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/high16 v5, 0x4000

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 192
    .local v3, measureW:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 193
    .local v2, measureH:I
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 194
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

    .line 166
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 167
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030029

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, container:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 171
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 172
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 173
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const/high16 v6, 0x4000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 177
    .local v5, measureW:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 178
    .local v4, measureH:I
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    return v6
.end method
