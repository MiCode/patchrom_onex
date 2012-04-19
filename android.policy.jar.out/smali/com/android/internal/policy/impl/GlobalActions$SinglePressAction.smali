.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mMessageResId:I

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 787
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 789
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 790
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 791
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"

    .prologue
    .line 793
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 795
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 796
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 797
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 25
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 807
    const/16 v19, 0x0

    .line 808
    .local v19, v:Landroid/view/View;
    const/4 v9, 0x0

    .line 809
    .local v9, icon:Landroid/widget/ImageView;
    const/4 v12, 0x0

    .line 810
    .local v12, messageView:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 814
    .local v16, statusView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 818
    const v21, 0x10900d7

    const/16 v22, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 819
    const v21, 0x1020348

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #icon:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 820
    .restart local v9       #icon:Landroid/widget/ImageView;
    const v21, 0x1020342

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #messageView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 821
    .restart local v12       #messageView:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 829
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 831
    if-eqz v16, :cond_0

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 835
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 836
    if-eqz v16, :cond_1

    .line 837
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 838
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 839
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 873
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 875
    .local v5, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 876
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v15, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 878
    .local v15, skinPackage:Ljava/lang/String;
    sget-object v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 879
    .local v20, version:F
    const/high16 v21, 0x4080

    cmpl-float v21, v20, v21

    if-ltz v21, :cond_3

    .line 881
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "default"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 882
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 883
    .local v13, res:Landroid/content/res/Resources;
    const-string v21, "common_list_item_background"

    const-string v22, "drawable"

    const-string v23, "com.htc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 884
    .local v4, BGId:I
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 891
    .end local v13           #res:Landroid/content/res/Resources;
    .local v11, listItemBG:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v19, :cond_3

    if-eqz v11, :cond_3

    .line 892
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    .line 893
    .local v10, leftPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    .line 894
    .local v18, topPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    .line 895
    .local v14, rightPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 896
    .local v6, bottomPadding:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1, v14, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v4           #BGId:I
    .end local v6           #bottomPadding:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v10           #leftPadding:I
    .end local v11           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v14           #rightPadding:I
    .end local v15           #skinPackage:Ljava/lang/String;
    .end local v18           #topPadding:I
    .end local v20           #version:F
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "list_primary_m"

    const-string v23, "style"

    const-string v24, "com.htc"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 908
    .local v8, fontStyle:I
    if-eqz v8, :cond_4

    if-eqz v12, :cond_4

    if-eqz p1, :cond_4

    .line 909
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 910
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "list_secondary_m"

    const-string v23, "style"

    const-string v24, "com.htc"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 911
    if-eqz v8, :cond_5

    if-eqz v16, :cond_5

    if-eqz p1, :cond_5

    .line 912
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 914
    :cond_5
    return-object v19

    .line 823
    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v8           #fontStyle:I
    :cond_6
    const v21, 0x10900d6

    const/16 v22, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 824
    const v21, 0x1020348

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #icon:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 825
    .restart local v9       #icon:Landroid/widget/ImageView;
    const v21, 0x1020342

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #messageView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 826
    .restart local v12       #messageView:Landroid/widget/TextView;
    const v21, 0x1020345

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #statusView:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #statusView:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 886
    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v15       #skinPackage:Ljava/lang/String;
    .restart local v20       #version:F
    :cond_7
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v17

    .line 887
    .local v17, themeres:Landroid/content/res/Resources;
    const-string v21, "common_list_item_background"

    const-string v22, "drawable"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 888
    .restart local v4       #BGId:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .restart local v11       #listItemBG:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 901
    .end local v4           #BGId:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v11           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v15           #skinPackage:Ljava/lang/String;
    .end local v17           #themeres:Landroid/content/res/Resources;
    .end local v20           #version:F
    :catch_0
    move-exception v21

    goto/16 :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
