.class Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private colorStateList:Landroid/content/res/ColorStateList;

.field private itemLeftMargin:I

.field private itemRightMargin:I

.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3
    .parameter
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 527
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 558
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    .line 559
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    .line 561
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 528
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 529
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;

    invoke-direct {v0, p1, v2}, Lcom/android/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 531
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 647
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 648
    .local v1, expandedItem:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 649
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 650
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 651
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 652
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 653
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 654
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 660
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 651
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 536
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 539
    :goto_1
    return v1

    .line 534
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 539
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 545
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 546
    add-int/lit8 p1, p1, 0x1

    .line 548
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 543
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 554
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 564
    if-nez p2, :cond_0

    .line 565
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x1090068

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 569
    :cond_0
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 570
    instance-of v9, p2, Lcom/android/internal/view/menu/ListMenuItemView;

    if-eqz v9, :cond_6

    move-object v9, p2

    .line 571
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 572
    .local v8, temp:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 575
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    if-ltz v9, :cond_1

    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    if-gez v9, :cond_3

    .line 577
    :cond_1
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 579
    .local v4, resource:Landroid/content/res/Resources;
    const-string v9, "htc_list_item_margin_left"

    const-string v10, "dimen"

    const-string v11, "com.htc"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 580
    .local v6, resourceLID:I
    const-string v9, "htc_list_item_margin_right"

    const-string v10, "dimen"

    const-string v11, "com.htc"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 582
    .local v7, resourceRID:I
    if-eqz v6, :cond_2

    .line 583
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    .line 585
    :cond_2
    if-eqz v7, :cond_3

    .line 586
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    .line 589
    .end local v4           #resource:Landroid/content/res/Resources;
    .end local v6           #resourceLID:I
    .end local v7           #resourceRID:I
    :cond_3
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    if-lez v9, :cond_4

    if-eqz v2, :cond_4

    .line 590
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemLeftMargin:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 592
    :cond_4
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    if-lez v9, :cond_5

    if-eqz v2, :cond_5

    .line 593
    iget v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->itemRightMargin:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_5
    move-object v9, p2

    .line 596
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ListMenuItemView;->enableHtcStyle(Z)V

    .end local v2           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8           #temp:Landroid/view/View;
    :cond_6
    move-object v1, p2

    .line 600
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 601
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-boolean v9, v9, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v9, :cond_7

    move-object v9, p2

    .line 602
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 604
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 607
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, p2

    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ListMenuItemView;->showsIcon()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, p2

    .line 608
    check-cast v9, Lcom/android/internal/view/menu/ListMenuItemView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 610
    const v9, 0x1020006

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 612
    .local v0, iconView:Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 613
    const/high16 v9, 0x3f80

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 624
    .end local v0           #iconView:Landroid/view/View;
    :cond_8
    :goto_0
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup:Z
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 627
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-nez v9, :cond_9

    .line 629
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 631
    .restart local v4       #resource:Landroid/content/res/Resources;
    const-string v9, "darklist_primary"

    const-string v10, "color"

    const-string v11, "com.htc"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 633
    .local v5, resourceID:I
    if-eqz v5, :cond_9

    .line 634
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    .line 637
    .end local v4           #resource:Landroid/content/res/Resources;
    .end local v5           #resourceID:I
    :cond_9
    const v9, 0x1020016

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 639
    .local v3, mTitleView:Landroid/widget/TextView;
    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v9, :cond_a

    .line 640
    iget-object v9, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 643
    .end local v3           #mTitleView:Landroid/widget/TextView;
    :cond_a
    return-object p2

    .line 616
    :cond_b
    const v9, 0x1020006

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 618
    .restart local v0       #iconView:Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    const v10, 0x3ecccccd

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 619
    const v9, 0x3ecccccd

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
