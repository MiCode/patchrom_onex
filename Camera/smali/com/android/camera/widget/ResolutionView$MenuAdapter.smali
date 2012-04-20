.class Lcom/android/camera/widget/ResolutionView$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolutionView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ResolutionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mChkPreference:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mDummyCount:I

.field private mListPreference:Landroid/preference/ListPreference;

.field final synthetic this$0:Lcom/android/camera/widget/ResolutionView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/ResolutionView;Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "list_preference"
    .parameter "chk_preference"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 273
    iput-object p3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 274
    iput-object p4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    .line 275
    iput-object p2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public checkEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 397
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 399
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    move v1, v2

    .line 421
    :goto_0
    return v1

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v3, "pref_fast_fps"

    invoke-static {v1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 403
    .local v0, isFastFrame:Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 404
    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$100(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1080p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$100(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "720p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$100(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "QCIF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #isFastFrame:Z
    :cond_5
    move v1, v2

    .line 421
    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 440
    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    add-int v0, v1, v2

    .line 442
    .local v0, count:I
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->m_MenuItemHeight:I
    invoke-static {v2}, Lcom/android/camera/widget/ResolutionView;->access$400(Lcom/android/camera/widget/ResolutionView;)I

    move-result v2

    mul-int/2addr v2, v0

    #setter for: Lcom/android/camera/widget/ResolutionView;->m_MenuHeight:I
    invoke-static {v1, v2}, Lcom/android/camera/widget/ResolutionView;->access$302(Lcom/android/camera/widget/ResolutionView;I)I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 451
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 298
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 299
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    if-nez v9, :cond_0

    .line 300
    const/4 v9, 0x0

    .line 356
    :goto_0
    return-object v9

    .line 301
    :cond_0
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v9, v9, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030033

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 302
    const v9, 0x7f08007c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 303
    .local v8, title:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 305
    .local v1, checked:Z
    const v9, 0x7f080023

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 306
    .local v0, checkBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 307
    const v9, 0x7f0800a7

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 308
    .local v6, summary:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_1
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, key:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, "pref_camera_switch"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 312
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    :goto_2
    move-object v9, p2

    .line 317
    goto :goto_0

    .line 308
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    .line 314
    .restart local v4       #key:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto :goto_2

    .line 320
    .end local v0           #checkBox:Lcom/htc/widget/HtcCheckBox;
    .end local v1           #checked:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #summary:Landroid/widget/TextView;
    .end local v8           #title:Landroid/widget/TextView;
    :cond_3
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_5

    .line 321
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 323
    :cond_5
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 326
    .local v2, entry:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v9, v9, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03001f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 327
    const v9, 0x7f08006a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    const v9, 0x7f08007c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 329
    .local v7, textView:Landroid/widget/TextView;
    const v9, 0x7f0800a8

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcRadioButton;

    .line 332
    .local v5, radioBtn:Lcom/htc/widget/HtcRadioButton;
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    aget-object v9, v2, v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 335
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    invoke-virtual {p0, v9}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 336
    invoke-static {v7}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 341
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, index:I
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    if-ne v9, v3, :cond_9

    .line 343
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 349
    :goto_4
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    invoke-virtual {p0, v9}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v9

    if-nez v9, :cond_7

    .line 350
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setEnabled(Z)V

    .line 355
    :cond_7
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget v10, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v10

    #calls: Lcom/android/camera/widget/ResolutionView;->setEnabledStateOnViews(Landroid/view/View;Z)V
    invoke-static {v9, p2, v10}, Lcom/android/camera/widget/ResolutionView;->access$000(Lcom/android/camera/widget/ResolutionView;Landroid/view/View;Z)V

    move-object v9, p2

    .line 356
    goto/16 :goto_0

    .line 338
    .end local v3           #index:I
    :cond_8
    invoke-static {v7}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    goto :goto_3

    .line 345
    .restart local v3       #index:I
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public hasFastMenuItem()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    move v0, v1

    .line 434
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/widget/ResolutionView;->access$200(Lcom/android/camera/widget/ResolutionView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 434
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 475
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    #calls: Lcom/android/camera/widget/ResolutionView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    invoke-static {v4, v5, v3}, Lcom/android/camera/widget/ResolutionView;->access$500(Lcom/android/camera/widget/ResolutionView;Landroid/preference/Preference;Z)V

    .line 478
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 479
    .local v0, checked:Z
    const v3, 0x7f080023

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 480
    const v3, 0x7f0800a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 477
    .end local v0           #checked:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 480
    .restart local v0       #checked:Z
    :cond_3
    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .line 486
    .end local v0           #checked:Z
    :cond_4
    iget v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v3, p3, v3

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 493
    .local v2, values:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 494
    .local v1, current:I
    iget v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v3, p3, v3

    if-eq v3, v1, :cond_5

    .line 495
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 496
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 497
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v5, p3, v5

    #calls: Lcom/android/camera/widget/ResolutionView;->updateListPreference(Landroid/preference/Preference;I)V
    invoke-static {v3, v4, v5}, Lcom/android/camera/widget/ResolutionView;->access$600(Lcom/android/camera/widget/ResolutionView;Landroid/preference/Preference;I)V

    goto/16 :goto_0

    .line 503
    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->m_Context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/camera/widget/ResolutionView;->access$200(Lcom/android/camera/widget/ResolutionView;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0
.end method

.method public updateAdapter(Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "l_preferences"
    .parameter "c_preferences"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 286
    iput-object p2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    .line 288
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->getCount()I

    .line 293
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 294
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    goto :goto_0
.end method
