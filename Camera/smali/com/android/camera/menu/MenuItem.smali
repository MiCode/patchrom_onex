.class public Lcom/android/camera/menu/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    }
.end annotation


# instance fields
.field private m_Background:Ljava/lang/Object;

.field private m_Icon:Ljava/lang/Object;

.field private m_Id:I

.field private m_IsChecked:Z

.field private m_IsEnabled:Z

.field private m_IsSelectable:Z

.field private m_IsVisible:Z

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field m_MenuListView:Lcom/android/camera/menu/MenuListView;

.field private m_Parent:Lcom/android/camera/menu/MenuItem;

.field private m_Summary:Ljava/lang/Object;

.field private m_Title:Ljava/lang/Object;

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(III)V

    .line 61
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "titleResId"
    .parameter "summaryResId"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 64
    iput p3, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private setEnabled(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "isEnabled"

    .prologue
    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 311
    check-cast v1, Landroid/view/ViewGroup;

    .line 312
    .local v1, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 313
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 312
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    .end local v0           #i:I
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 5
    .parameter "textView"
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 413
    if-nez p1, :cond_0

    .line 450
    .end local p2
    :goto_0
    return-void

    .line 415
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 417
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 422
    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 424
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    .local v0, id:I
    if-lez v0, :cond_2

    .line 427
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 428
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 436
    .end local v0           #id:I
    .restart local p2
    :cond_3
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v1, p2

    .line 438
    check-cast v1, Ljava/lang/String;

    .line 439
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 441
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 445
    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 448
    .end local v1           #str:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    return v0
.end method

.method public final getItems()[Lcom/android/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public final getParent()Lcom/android/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method protected getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0, p2, p4}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    .line 130
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .line 133
    .local v0, itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 137
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 159
    :cond_1
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 166
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    .line 177
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 178
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    :goto_2
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/menu/MenuItem;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 191
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/menu/MenuItem;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 194
    iget-boolean v1, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    invoke-direct {p0, p4, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 197
    return-object p4

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 142
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 147
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_6
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_7
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    goto :goto_1

    .line 179
    :cond_8
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    .line 180
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 183
    :cond_9
    const/4 v1, 0x2

    if-ne p3, v1, :cond_a

    .line 184
    const v1, 0x7f020081

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 186
    :cond_a
    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method protected final getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "convertView"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 104
    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .line 110
    .end local v1           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 112
    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 113
    new-instance v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .end local v0           #itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    invoke-direct {v0}, Lcom/android/camera/menu/MenuItem$ItemViewInfo;-><init>()V

    .line 114
    .restart local v0       #itemInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;
    const v2, 0x7f08006a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->iconImageView:Landroid/widget/ImageView;

    .line 115
    const v2, 0x7f08007c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->titleTextView:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f0800a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f0800aa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    .line 118
    const v2, 0x7f080023

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->checkBox:Lcom/htc/widget/HtcCheckBox;

    .line 119
    const v2, 0x202000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIndicatorButton;

    iput-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    :cond_1
    return-object p2

    .line 106
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hasVisibleItems()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    return v0
.end method

.method public final isSelectable()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    return v0
.end method

.method protected final notifyItemContentClicked()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/menu/MenuListView;->notifyItemContentClicked(Lcom/android/camera/menu/MenuItem;)V

    .line 243
    :cond_0
    return-void
.end method

.method protected final notifyItemsChanged()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 252
    :cond_0
    return-void
.end method

.method protected final notifyItemsInvalidated()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->notifyItemsInvalidated()V

    .line 261
    :cond_0
    return-void
.end method

.method protected onClicked()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 278
    :cond_0
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 287
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    if-eq v0, p1, :cond_0

    .line 292
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsChecked:Z

    .line 293
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 296
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 301
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsEnabled:Z

    .line 302
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 305
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Icon:Ljava/lang/Object;

    .line 319
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 320
    return-void
.end method

.method public final setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 349
    iput p1, p0, Lcom/android/camera/menu/MenuItem;->m_Id:I

    .line 350
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/menu/MenuItem;>;"
    if-eqz p1, :cond_0

    .line 359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/menu/MenuItem;

    .line 360
    .local v0, array:[Lcom/android/camera/menu/MenuItem;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/camera/menu/MenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    .line 365
    .end local v0           #array:[Lcom/android/camera/menu/MenuItem;
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/MenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto :goto_0
.end method

.method public setItems([Lcom/android/camera/menu/MenuItem;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 374
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    .line 371
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 379
    .end local v0           #i:I
    :cond_0
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    .line 380
    if-eqz p1, :cond_1

    .line 382
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 384
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 385
    aget-object v1, p1, v0

    iput-object p0, v1, Lcom/android/camera/menu/MenuItem;->m_Parent:Lcom/android/camera/menu/MenuItem;

    .line 382
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 390
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsChanged()V

    .line 391
    return-void
.end method

.method final setMenuListView(Lcom/android/camera/menu/MenuListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_MenuListView:Lcom/android/camera/menu/MenuListView;

    .line 324
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->setMenuListView(Lcom/android/camera/menu/MenuListView;)V

    .line 326
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 329
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "isSelectable"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 333
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 400
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 405
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 459
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/camera/menu/MenuItem;->m_Title:Ljava/lang/Object;

    .line 463
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 464
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    if-eq v0, p1, :cond_0

    .line 338
    iput-boolean p1, p0, Lcom/android/camera/menu/MenuItem;->m_IsVisible:Z

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuItem;->onVisibilityChanged(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/android/camera/menu/MenuItem;->notifyItemsChanged()V

    .line 342
    :cond_0
    return-void
.end method

.method public updateContent()V
    .locals 2

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 471
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method final updateVisibleItems(Z)V
    .locals 3
    .parameter "updateSubItems"

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 481
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    .line 483
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v2, v0

    .line 486
    .local v1, item:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {v1, p1}, Lcom/android/camera/menu/MenuItem;->updateVisibleItems(Z)V

    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/camera/menu/MenuItem;
    :cond_1
    return-void
.end method
