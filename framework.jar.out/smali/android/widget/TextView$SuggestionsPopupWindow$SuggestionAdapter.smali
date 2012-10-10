.class Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V
    .locals 2
    .parameter

    .prologue
    .line 10627
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 10628
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10627
    invoke-direct {p0, p1}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 10633
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I
    invoke-static {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4800(Landroid/widget/TextView$SuggestionsPopupWindow;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 10638
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    invoke-static {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4900(Landroid/widget/TextView$SuggestionsPopupWindow;)[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 10643
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 10648
    move-object/from16 v8, p2

    check-cast v8, Landroid/widget/TextView;

    .line 10651
    .local v8, textView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 10652
    .local v2, fontStyle:I
    const/4 v3, 0x0

    .line 10653
    .local v3, id:I
    const/4 v4, 0x0

    .line 10654
    .local v4, leftpadding:I
    const/4 v6, 0x0

    .line 10655
    .local v6, rightpadding:I
    const/4 v9, 0x0

    .line 10656
    .local v9, toppadding:I
    const/4 v1, 0x0

    .line 10657
    .local v1, bottompadding:I
    const/4 v5, 0x0

    .line 10660
    .local v5, reset_padding:Z
    if-nez v8, :cond_0

    .line 10661
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v11, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v11, v11, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I
    invoke-static {v11}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .end local v8           #textView:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 10664
    .restart local v8       #textView:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 10665
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 10666
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    .line 10667
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 10668
    const/4 v5, 0x1

    .line 10671
    :cond_0
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    invoke-static {v10}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4900(Landroid/widget/TextView$SuggestionsPopupWindow;)[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-result-object v10

    aget-object v7, v10, p1

    .line 10672
    .local v7, suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    iget-object v10, v7, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10674
    iget v10, v7, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 10675
    const v10, 0x1080345

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10679
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:style/list_primary_m_bold"

    const-string/jumbo v12, "style"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10680
    if-eqz v2, :cond_1

    .line 10681
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10706
    :cond_1
    :goto_0
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:drawable/common_list_item_background"

    const-string v12, "drawable"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 10708
    if-eqz v3, :cond_2

    .line 10709
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10711
    if-eqz v5, :cond_2

    .line 10712
    int-to-double v10, v9

    const-wide v12, 0x3ff6666666666666L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-double v11, v1

    const-wide v13, 0x3ff6666666666666L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    invoke-virtual {v8, v4, v10, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10716
    :cond_2
    return-object v8

    .line 10684
    :cond_3
    iget v10, v7, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    .line 10685
    const v10, 0x1080346

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10689
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:style/list_primary_m_bold"

    const-string/jumbo v12, "style"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10690
    if-eqz v2, :cond_1

    .line 10691
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 10695
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10698
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "@com.htc:style/list_primary_m"

    const-string/jumbo v12, "style"

    const-string v13, "com.htc"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10699
    if-eqz v2, :cond_1

    .line 10700
    iget-object v10, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v10, v10, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
