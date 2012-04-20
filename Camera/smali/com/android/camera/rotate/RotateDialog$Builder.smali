.class public Lcom/android/camera/rotate/RotateDialog$Builder;
.super Ljava/lang/Object;
.source "RotateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    .line 313
    return-void
.end method


# virtual methods
.method public create()Lcom/android/camera/rotate/RotateDialog;
    .locals 3

    .prologue
    .line 879
    new-instance v0, Lcom/android/camera/rotate/RotateDialog;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/rotate/RotateDialog;-><init>(Landroid/content/Context;)V

    .line 880
    .local v0, dialog:Lcom/android/camera/rotate/RotateDialog;
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    #getter for: Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;
    invoke-static {v0}, Lcom/android/camera/rotate/RotateDialog;->access$000(Lcom/android/camera/rotate/RotateDialog;)Lcom/android/camera/rotate/RotateHtcAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->apply(Lcom/android/camera/rotate/RotateHtcAlertController;)V

    .line 881
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setCancelable(Z)V

    .line 882
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 883
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 886
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 575
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 576
    return-object p0
.end method

.method public setCancelable(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    .line 515
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 594
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 596
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 348
    return-object p0
.end method

.method public setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIconId:I

    .line 378
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 388
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 842
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 547
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 548
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 559
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 560
    return-object p0
.end method

.method public setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 358
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 368
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 620
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 621
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 622
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 623
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 674
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 675
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 678
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 646
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 647
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 648
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 649
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 465
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 466
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 478
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 479
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 439
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 491
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 492
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 504
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 505
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 427
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 526
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 785
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 536
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 400
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 452
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 415
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 699
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 700
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 701
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 702
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 724
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 725
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 726
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 728
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 769
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 770
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 771
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 772
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 747
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 748
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 749
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 750
    return-object p0
.end method

.method public setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 322
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 332
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 868
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleDivider:Z

    .line 856
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 798
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 799
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 824
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 825
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 826
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 827
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 828
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p5, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 829
    return-object p0
.end method

.method public show()Lcom/android/camera/rotate/RotateDialog;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 895
    .local v0, dialog:Lcom/android/camera/rotate/RotateDialog;
    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateDialog;->show()V

    .line 896
    return-object v0
.end method
