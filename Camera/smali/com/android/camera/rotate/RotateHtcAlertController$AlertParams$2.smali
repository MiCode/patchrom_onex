.class Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "RotateHtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->createListView(Lcom/android/camera/rotate/RotateHtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p5, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1158
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1159
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->mLabelIndex:I

    .line 1160
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1161
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 1166
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "text1"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1167
    .local v0, id:I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 1168
    .local v1, text:Landroid/widget/CheckedTextView;
    iget v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iget v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    :goto_0
    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1171
    return-void

    .line 1169
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const-string v1, "com.htc.R.layout.select_dialog"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
