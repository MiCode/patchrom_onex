.class public Lcom/htc/music/widget/SoundEffectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundEffectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;,
        Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[SoundEffectAdapter]"

.field private static mShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mColorDisableText:I

.field mColorEnableText:I

.field mColorStateDisableText:Landroid/content/res/ColorStateList;

.field mColorStateEnableText:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListVisibleCount:I

.field private mResource:Landroid/content/res/Resources;

.field private mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "_context"
    .parameter "_resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, _items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/util/SoundEffectItem;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    .line 39
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    .line 42
    iput v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorEnableText:I

    .line 43
    iput v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    .line 44
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateEnableText:Landroid/content/res/ColorStateList;

    .line 45
    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateDisableText:Landroid/content/res/ColorStateList;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iput-object p3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/htc/music/widget/SoundEffectAdapter;->refineList()V

    .line 72
    iput-object p1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorEnableText:I

    .line 76
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    .line 78
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateEnableText:Landroid/content/res/ColorStateList;

    .line 79
    iget-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateDisableText:Landroid/content/res/ColorStateList;

    .line 80
    return-void
.end method

.method public static getRealListPos(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 277
    sget-object v2, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    sget-object v2, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 282
    .local v0, realPos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private setButtonState(Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;Lcom/htc/music/util/SoundEffectItem;Landroid/view/View;)V
    .locals 5
    .parameter "holder"
    .parameter "item"
    .parameter "convertView"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 183
    iget-boolean v0, p2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 191
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    .line 193
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p2, Lcom/htc/music/util/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-boolean v0, p2, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v0, :cond_3

    .line 196
    iget-boolean v0, p2, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 199
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    iget v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorEnableText:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setTextColor(I)V

    .line 206
    :goto_1
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setSelected(Z)V

    .line 212
    :goto_2
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0a002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/htc/widget/HtcRimButton;->setPadding(IIII)V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 204
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    iget v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setTextColor(I)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 209
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    iget v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorDisableText:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setTextColor(I)V

    .line 210
    iget-object v0, p1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcRimButton;->setSelected(Z)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 222
    iget v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mListVisibleCount:I

    if-ge v1, v0, :cond_0

    .line 223
    iget v0, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mListVisibleCount:I

    .line 225
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-static {p1}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v0

    .line 230
    .local v0, realListPos:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 237
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-static {p1}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v0

    .line 242
    .local v0, realListPos:I
    if-gez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v1}, Lcom/htc/music/util/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 83
    const-string v5, "[SoundEffectAdapter]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- getView, position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " +++"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v4

    .line 87
    .local v4, realListPos:I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    :cond_0
    move-object v0, p2

    .line 177
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 91
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/SoundEffectItem;

    .line 94
    .local v3, item:Lcom/htc/music/util/SoundEffectItem;
    if-nez p2, :cond_4

    .line 95
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030055

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SoundEffectAdapter;)V

    .line 98
    .local v1, holder:Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    const v5, 0x7f0800ac

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    .line 99
    const v5, 0x7f0800ad

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    .line 100
    const v5, 0x7f0800ae

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcRimButton;

    iput-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    .line 101
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcRimButton;

    const v6, 0x208001a

    const v7, 0x208001b

    const v8, 0x208001c

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    const-string v5, "[SoundEffectAdapter]"

    const-string v6, "convertView = null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 114
    iget v5, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    if-lez v5, :cond_7

    .line 115
    iget-object v5, v3, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    const-string v6, "Beats audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 116
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    iget v6, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 117
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 118
    iget-boolean v5, v3, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v5, :cond_5

    .line 119
    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    :goto_2
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_3
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    :goto_4
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iget-object v6, v3, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-boolean v5, v3, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v5, :cond_9

    .line 148
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 149
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    :cond_3
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v10}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 151
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iget-object v6, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateEnableText:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    invoke-virtual {p2, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    :goto_5
    iget-boolean v5, v3, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v5, :cond_b

    .line 165
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v10}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 166
    new-instance v5, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    invoke-direct {v5, p0}, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;-><init>(Lcom/htc/music/widget/SoundEffectAdapter;)V

    iput-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    .line 167
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    iget-object v6, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iput-object v6, v5, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->checked:Landroid/widget/CheckedTextView;

    .line 168
    iget-object v5, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;

    iput-object v3, v5, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->item:Lcom/htc/music/util/SoundEffectItem;

    .line 173
    :goto_6
    invoke-direct {p0, v1, v3, p2}, Lcom/htc/music/widget/SoundEffectAdapter;->setButtonState(Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;Lcom/htc/music/util/SoundEffectItem;Landroid/view/View;)V

    move-object v0, p2

    .line 177
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 109
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #holder:Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    .restart local p2
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;
    goto :goto_1

    .line 122
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/16 v5, 0x6e

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 128
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    iget v6, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 134
    :cond_7
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    const-string v5, "[SoundEffectAdapter]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item.mEffectIconResId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 140
    :cond_8
    const-string v5, "[SoundEffectAdapter]"

    const-string v6, "holder.effectIcon = null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 155
    :cond_9
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    .line 156
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->effectIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 158
    :cond_a
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    iget-object v6, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mColorStateDisableText:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {p2, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 170
    :cond_b
    iget-object v5, v1, Lcom/htc/music/widget/SoundEffectAdapter$ViewHolder;->checked:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_6
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/music/widget/SoundEffectAdapter;->refineList()V

    .line 253
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 254
    return-void
.end method

.method public refineList()V
    .locals 5

    .prologue
    .line 257
    iget-object v3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 258
    .local v1, listLen:I
    if-gtz v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v2, 0x0

    .line 263
    .local v2, visibleCount:I
    sget-object v3, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    sget-object v3, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 266
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 267
    iget-object v3, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/SoundEffectItem;

    iget-boolean v3, v3, Lcom/htc/music/util/SoundEffectItem;->mIsVisible:Z

    if-eqz v3, :cond_2

    .line 268
    sget-object v3, Lcom/htc/music/widget/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v2, v2, 0x1

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_3
    iput v2, p0, Lcom/htc/music/widget/SoundEffectAdapter;->mListVisibleCount:I

    goto :goto_0
.end method
