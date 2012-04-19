.class Lcom/htc/widget/CarouselModel;
.super Ljava/lang/Object;
.source "CarouselModel.java"

# interfaces
.implements Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselModel$Row;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = false

.field static final LOCAL_LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CarouselModel"

.field private static final sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/widget/CarouselActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;

.field private mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

.field mMemoryModeCursor:Landroid/database/MatrixCursor;

.field mMemoryModeRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/CarouselModel$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mTabID:Ljava/lang/String;

.field private mTaskUri:Landroid/net/Uri;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/CarouselActivity;)V
    .locals 2
    .parameter "carousel"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    .line 56
    iput-object v1, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 552
    iput-object v1, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 564
    iput-object v1, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method

.method private addExistingTabMenoryMode(Lcom/htc/widget/TaskInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "index"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselModel$Row;

    iget-object v0, v1, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    .line 584
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 585
    return-void
.end method

.method private addTabMemoryModeAfterBatch(Ljava/lang/Object;)V
    .locals 5
    .parameter "cookie"

    .prologue
    .line 611
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 613
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 614
    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->convertCursorToArray()V

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, row:[Ljava/lang/Object;
    move-object v1, p1

    .line 618
    check-cast v1, Lcom/htc/widget/TaskInfo;

    .line 619
    .local v1, info:Lcom/htc/widget/TaskInfo;
    iget v3, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 620
    iget-object v3, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 621
    .local v0, index:I
    if-gez v0, :cond_3

    .line 622
    sget-object v3, Lcom/htc/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 623
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/widget/CarouselModel$Row;-><init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v0           #index:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselModel;->onAddTabComplete()V

    .line 631
    return-void

    .line 626
    .restart local v0       #index:I
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method private convertCursorToArray()V
    .locals 36

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/CarouselActivity;

    .line 674
    .local v6, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v6, :cond_1

    .line 675
    invoke-virtual {v6}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v5

    .line 677
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    .line 678
    const-string v34, "_id"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 679
    .local v13, idIndex1:I
    const-string v34, "task_tag"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 680
    .local v32, taskTagIndex1:I
    const-string v34, "task_name"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 681
    .local v28, taskNameIndex1:I
    const-string v34, "alternative_name"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 682
    .local v3, alternativeNameIndex1:I
    const-string v34, "intent"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 683
    .local v15, intentIndex1:I
    const-string v34, "res_package"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 684
    .local v23, resPackageIndex1:I
    const-string v34, "icon_resource"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 685
    .local v11, iconResourceIndex1:I
    const-string v34, "selected_icon_resource"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 686
    .local v26, selectedIconResourceIndex1:I
    const-string v34, "overlay_resource"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 687
    .local v21, overlayResourceIndex1:I
    const-string v34, "task_order"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 688
    .local v30, taskOrderIndex1:I
    const-string v34, "is_host"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 689
    .local v17, isHostIndex1:I
    const-string v34, "is_removable"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 690
    .local v19, isRemovableIndex1:I
    const-string v34, "count_text"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 691
    .local v7, countTextIndex1:I
    const-string v34, "count_text_visible"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 693
    .local v9, countTextVisibleIndex1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "_id"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 694
    .local v14, idIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "task_tag"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 695
    .local v33, taskTagIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "task_name"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 696
    .local v29, taskNameIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "alternative_name"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 697
    .local v4, alternativeNameIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "intent"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 698
    .local v16, intentIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "res_package"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 699
    .local v24, resPackageIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "icon_resource"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 700
    .local v12, iconResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "selected_icon_resource"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 701
    .local v27, selectedIconResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "overlay_resource"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 702
    .local v22, overlayResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "task_order"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 703
    .local v31, taskOrderIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "is_host"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 704
    .local v18, isHostIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "is_removable"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 705
    .local v20, isRemovableIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "count_text"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 706
    .local v8, countTextIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "count_text_visible"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 707
    .local v10, countTextVisibleIndex2:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 709
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v34

    if-gtz v34, :cond_2

    .line 730
    .end local v3           #alternativeNameIndex1:I
    .end local v4           #alternativeNameIndex2:I
    .end local v5           #c:Landroid/database/Cursor;
    .end local v7           #countTextIndex1:I
    .end local v8           #countTextIndex2:I
    .end local v9           #countTextVisibleIndex1:I
    .end local v10           #countTextVisibleIndex2:I
    .end local v11           #iconResourceIndex1:I
    .end local v12           #iconResourceIndex2:I
    .end local v13           #idIndex1:I
    .end local v14           #idIndex2:I
    .end local v15           #intentIndex1:I
    .end local v16           #intentIndex2:I
    .end local v17           #isHostIndex1:I
    .end local v18           #isHostIndex2:I
    .end local v19           #isRemovableIndex1:I
    .end local v20           #isRemovableIndex2:I
    .end local v21           #overlayResourceIndex1:I
    .end local v22           #overlayResourceIndex2:I
    .end local v23           #resPackageIndex1:I
    .end local v24           #resPackageIndex2:I
    .end local v26           #selectedIconResourceIndex1:I
    .end local v27           #selectedIconResourceIndex2:I
    .end local v28           #taskNameIndex1:I
    .end local v29           #taskNameIndex2:I
    .end local v30           #taskOrderIndex1:I
    .end local v31           #taskOrderIndex2:I
    .end local v32           #taskTagIndex1:I
    .end local v33           #taskTagIndex2:I
    :cond_1
    :goto_0
    return-void

    .line 710
    .restart local v3       #alternativeNameIndex1:I
    .restart local v4       #alternativeNameIndex2:I
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v7       #countTextIndex1:I
    .restart local v8       #countTextIndex2:I
    .restart local v9       #countTextVisibleIndex1:I
    .restart local v10       #countTextVisibleIndex2:I
    .restart local v11       #iconResourceIndex1:I
    .restart local v12       #iconResourceIndex2:I
    .restart local v13       #idIndex1:I
    .restart local v14       #idIndex2:I
    .restart local v15       #intentIndex1:I
    .restart local v16       #intentIndex2:I
    .restart local v17       #isHostIndex1:I
    .restart local v18       #isHostIndex2:I
    .restart local v19       #isRemovableIndex1:I
    .restart local v20       #isRemovableIndex2:I
    .restart local v21       #overlayResourceIndex1:I
    .restart local v22       #overlayResourceIndex2:I
    .restart local v23       #resPackageIndex1:I
    .restart local v24       #resPackageIndex2:I
    .restart local v26       #selectedIconResourceIndex1:I
    .restart local v27       #selectedIconResourceIndex2:I
    .restart local v28       #taskNameIndex1:I
    .restart local v29       #taskNameIndex2:I
    .restart local v30       #taskOrderIndex1:I
    .restart local v31       #taskOrderIndex2:I
    .restart local v32       #taskTagIndex1:I
    .restart local v33       #taskTagIndex2:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 711
    .local v25, row:[Ljava/lang/Object;
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v14

    .line 712
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v33

    .line 713
    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v29

    .line 714
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v4

    .line 715
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v16

    .line 716
    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v24

    .line 717
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v12

    .line 718
    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v27

    .line 719
    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v22

    .line 720
    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v31

    .line 721
    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v18

    .line 722
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v20

    .line 723
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v8

    .line 724
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v10

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    new-instance v35, Lcom/htc/widget/CarouselModel$Row;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/CarouselModel$Row;-><init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-nez v34, :cond_0

    goto/16 :goto_0
.end method

.method private findTag(Ljava/lang/String;)I
    .locals 6
    .parameter "taskTag"

    .prologue
    .line 571
    iget-object v4, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v5, "task_tag"

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 572
    .local v3, taskTagIndex:I
    const/4 v1, 0x0

    .line 573
    .local v1, row:Lcom/htc/widget/CarouselModel$Row;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 574
    iget-object v4, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/htc/widget/CarouselModel$Row;
    check-cast v1, Lcom/htc/widget/CarouselModel$Row;

    .line 575
    .restart local v1       #row:Lcom/htc/widget/CarouselModel$Row;
    iget-object v4, v1, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aget-object v2, v4, v3

    check-cast v2, Ljava/lang/String;

    .line 576
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    .end local v0           #i:I
    .end local v2           #tag:Ljava/lang/String;
    :goto_1
    return v0

    .line 573
    .restart local v0       #i:I
    .restart local v2       #tag:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "packageName"
    .parameter "resourceName"

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 302
    .local v0, icon:Landroid/content/Intent$ShortcutIconResource;
    iput-object p0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 303
    iput-object p1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 304
    return-object v0
.end method

.method private initialMemoryModeCursor()V
    .locals 2

    .prologue
    .line 567
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 568
    return-void
.end method

.method private updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 736
    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->convertCursorToArray()V

    .line 739
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/CarouselModel;->updateTabMemoryMode(ILjava/lang/Object;)V

    .line 740
    invoke-virtual {p0}, Lcom/htc/widget/CarouselModel;->onAddTabComplete()V

    .line 741
    return-void
.end method


# virtual methods
.method public addTabMemoryMode(ILjava/lang/Object;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 593
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 594
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 596
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, row:[Ljava/lang/Object;
    move-object v1, p2

    .line 597
    check-cast v1, Lcom/htc/widget/TaskInfo;

    .line 598
    .local v1, info:Lcom/htc/widget/TaskInfo;
    iget v3, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 599
    iget-object v3, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 600
    .local v0, index:I
    if-gez v0, :cond_3

    .line 601
    sget-object v3, Lcom/htc/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 602
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/widget/CarouselModel$Row;-><init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v0           #index:I
    :cond_2
    :goto_0
    return-void

    .line 605
    .restart local v0       #index:I
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method addTaskToDatabase(Landroid/content/Context;Lcom/htc/widget/TaskInfo;)V
    .locals 8
    .parameter "context"
    .parameter "task"

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 142
    .local v3, taskUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x386

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_tag=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "task_order"

    move-object v2, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startCheckInsertOrUpdate(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 784
    return-void
.end method

.method clean()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method cleanTasks()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    return-void
.end method

.method cleanTasks(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 87
    .local v1, taskUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public deleteTabMemoryMode(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 806
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 807
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 808
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 809
    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->convertCursorToArray()V

    .line 812
    :cond_1
    const/4 v1, 0x0

    .local v1, row:Lcom/htc/widget/CarouselModel$Row;
    move-object v2, p2

    .line 813
    check-cast v2, Ljava/lang/String;

    .line 816
    .local v2, taskTag:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 817
    .local v0, i:I
    if-ltz v0, :cond_2

    .line 818
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/htc/widget/CarouselModel$Row;
    check-cast v1, Lcom/htc/widget/CarouselModel$Row;

    .line 820
    .restart local v1       #row:Lcom/htc/widget/CarouselModel$Row;
    :cond_2
    return-void
.end method

.method getHandler(Landroid/content/Context;)Lcom/htc/content/NotifyingAsyncQueryHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method final getTabSpecTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method isProviderAP(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    .line 76
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 77
    const/4 v2, 0x0

    .line 79
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 4
    .parameter "cookie"
    .parameter "cursor"
    .parameter "values"
    .parameter "token"
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 481
    move-object v1, p1

    check-cast v1, Lcom/htc/widget/TaskInfo;

    .line 482
    .local v1, task:Lcom/htc/widget/TaskInfo;
    invoke-virtual {v1, p2, p3}, Lcom/htc/widget/TaskInfo;->syncWithDatabase(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v0

    .line 483
    .local v0, isUpdateRequired:Z
    if-eqz v0, :cond_1

    .line 484
    iget v2, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    if-nez v2, :cond_0

    .line 485
    const/16 v2, 0x3ed

    aput v2, p4, v3

    .line 494
    :goto_0
    iget-object v2, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    aput-object v2, p5, v3

    .line 495
    return-void

    .line 488
    :cond_0
    const/16 v2, 0x3ee

    aput v2, p4, v3

    goto :goto_0

    .line 491
    :cond_1
    const/16 v2, 0x3f0

    aput v2, p4, v3

    goto :goto_0
.end method

.method public notifyDataSetChanged(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselModel;->updateHashTable(Landroid/database/Cursor;)V

    .line 768
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 769
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    .line 771
    .local v1, host:Lcom/htc/widget/CarouselHost;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getStateMode()I

    move-result v3

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    .line 772
    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 775
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAddTabComplete()V
    .locals 4

    .prologue
    .line 748
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 750
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 751
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 752
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselModel$Row;

    iget-object v2, v2, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 756
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    .line 758
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 518
    sparse-switch p1, :sswitch_data_0

    .line 549
    .end local p3
    :goto_0
    :sswitch_0
    return-void

    .line 522
    .restart local p3
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 528
    .restart local p3
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 539
    .restart local p3
    :sswitch_3
    check-cast p3, Landroid/net/Uri;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 545
    .restart local p3
    :sswitch_4
    check-cast p3, Landroid/net/Uri;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_2
        0x3f0 -> :sswitch_0
        0x44c -> :sswitch_3
        0x44d -> :sswitch_4
    .end sparse-switch
.end method

.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 312
    packed-switch p1, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 314
    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 444
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 446
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_0

    .line 447
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 472
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselActivity;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 473
    return-void

    .line 449
    :sswitch_0
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 450
    invoke-direct {p0, p1, p4}, Lcom/htc/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_0

    .line 453
    :sswitch_1
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 454
    invoke-direct {p0, p1, p4}, Lcom/htc/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_0

    .line 457
    :sswitch_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 458
    invoke-direct {p0, p1, p4}, Lcom/htc/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_0

    .line 461
    :sswitch_3
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 462
    invoke-direct {p0, p2}, Lcom/htc/widget/CarouselModel;->addTabMemoryModeAfterBatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :sswitch_4
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    goto :goto_0

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_2
        0x3ef -> :sswitch_0
    .end sparse-switch
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 325
    packed-switch p1, :pswitch_data_0

    .line 333
    :pswitch_0
    return-void

    .line 325
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 340
    packed-switch p1, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 344
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {v0, p3}, Lcom/htc/widget/CarouselActivity;->setBinAdapterCursor(Landroid/database/Cursor;)V

    .line 346
    if-nez p3, :cond_0

    .line 347
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    goto :goto_0

    .line 350
    :cond_1
    if-eqz p3, :cond_0

    .line 351
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 358
    .end local v0           #carousel:Lcom/htc/widget/CarouselActivity;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 360
    .restart local v0       #carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 361
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 362
    invoke-virtual {v0, p3}, Lcom/htc/widget/CarouselActivity;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 364
    :cond_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 367
    :cond_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 379
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 380
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-nez v0, :cond_0

    .line 430
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 383
    .restart local p2
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 400
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 401
    .local v1, pos:I
    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselActivity;->updateWidget(I)V

    goto :goto_0

    .line 387
    .end local v1           #pos:I
    .restart local p2
    :pswitch_3
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onTaskSync()V

    goto :goto_0

    .line 393
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 394
    .restart local v1       #pos:I
    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselActivity;->updateWidget(I)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 4
    .parameter "cookie"
    .parameter "values"
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 502
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/TaskInfo;

    .line 503
    .local v0, task:Lcom/htc/widget/TaskInfo;
    iget v1, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 504
    invoke-virtual {v0, p2}, Lcom/htc/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 505
    const/16 v1, 0x44c

    aput v1, p3, v3

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 508
    const/16 v1, 0x44d

    aput v1, p3, v3

    goto :goto_0
.end method

.method removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 130
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 134
    .local v3, taskUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x4b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task_tag=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "context"
    .parameter "tag"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 201
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v4, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 206
    .local v3, taskNameUri:Landroid/net/Uri;
    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "alternativeName"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 211
    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ef

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    return-void

    .line 213
    .end local v3           #taskNameUri:Landroid/net/Uri;
    .restart local p3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 214
    .restart local v3       #taskNameUri:Landroid/net/Uri;
    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alternativeName"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 219
    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 8
    .parameter "context"
    .parameter "tag"
    .parameter "text"

    .prologue
    const/4 v7, -0x1

    .line 183
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 186
    .local v3, countTextUri:Landroid/net/Uri;
    const-string v0, "count_text"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "countText"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 191
    const-string v0, "count_text"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3eb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    return v7
.end method

.method setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 8
    .parameter "context"
    .parameter "tag"
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 159
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 162
    .local v3, countTextUri:Landroid/net/Uri;
    const-string v0, "count_text_visible"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 163
    if-ne p3, v5, :cond_1

    .line 164
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 167
    const-string v0, "countTextVisible"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    return v7

    .line 169
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 172
    const-string v0, "countTextVisible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 70
    const-string v0, "gId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public startProcessingOperations(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/content/NotifyingAsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startProcessingOperations()V

    .line 798
    :cond_1
    return-void
.end method

.method syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 8
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 92
    if-nez p2, :cond_1

    .line 123
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselActivity;

    .line 97
    .local v1, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 103
    invoke-virtual {p2, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 104
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 107
    const-string v7, "task_tag"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 109
    .local v6, taskTagIndex:I
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    .line 112
    .local v2, host:Lcom/htc/widget/CarouselHost;
    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    invoke-virtual {v2, v5}, Lcom/htc/widget/CarouselHost;->closeTabByTag(Ljava/lang/String;)V

    .line 116
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/CarouselHost$TabSpec;

    .line 117
    .local v4, t:Lcom/htc/widget/CarouselHost$TabSpec;
    if-eqz v4, :cond_3

    .line 118
    invoke-virtual {v4}, Lcom/htc/widget/CarouselHost$TabSpec;->doClean()V

    .line 102
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method updateHashTable(Landroid/database/Cursor;)V
    .locals 32
    .parameter "c"

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselActivity;

    .line 234
    .local v3, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {v3}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    .line 239
    .local v4, carouselHost:Lcom/htc/widget/CarouselHost;
    :try_start_0
    const-string v27, "task_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 240
    .local v24, taskTagIndex:I
    const-string v27, "task_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 241
    .local v22, taskNameIndex:I
    const-string v27, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 242
    .local v13, intentIndex:I
    const-string v27, "res_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 243
    .local v17, packageIndex:I
    const-string v27, "icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 244
    .local v10, iconIndex:I
    const-string v27, "selected_icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 245
    .local v20, selectedIconIndex:I
    const-string v27, "overlay_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 246
    .local v16, overlayIndex:I
    const-string v27, "count_text"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 247
    .local v6, countTextIndex:I
    const-string v27, "count_text_visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 251
    .local v7, countTextVisibleIndex:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v27

    if-lez v27, :cond_0

    .line 256
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 257
    .local v23, taskTag:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 258
    .local v21, taskName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, intentDescription:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 260
    .local v18, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, icon:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 262
    .local v19, selectedIcon:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, overlay:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, countText:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 267
    .local v14, isCountTextVisible:I
    const/16 v27, 0x0

    :try_start_1
    move/from16 v0, v27

    invoke-static {v12, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 271
    .local v11, intent:Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/CarouselHost$TabSpec;

    .line 272
    .local v26, ts:Lcom/htc/widget/CarouselHost$TabSpec;
    if-eqz v26, :cond_3

    .line 273
    new-instance v25, Lcom/htc/widget/TaskInfo;

    invoke-direct/range {v25 .. v25}, Lcom/htc/widget/TaskInfo;-><init>()V

    .line 274
    .local v25, ti:Lcom/htc/widget/TaskInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 275
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 276
    move-object/from16 v0, v25

    iput-object v12, v0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 277
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 278
    move-object/from16 v0, v25

    iput-object v9, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 279
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 280
    move-object/from16 v0, v25

    iput-object v15, v0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 281
    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/htc/widget/TaskInfo;->countText:Ljava/lang/String;

    .line 282
    move-object/from16 v0, v25

    iput v14, v0, Lcom/htc/widget/TaskInfo;->isCountTextVisible:I

    .line 284
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/CarouselHost;->CloseActivityIfRunning(Lcom/htc/widget/CarouselHost$TabSpec;Lcom/htc/widget/TaskInfo;)V

    .line 287
    .end local v25           #ti:Lcom/htc/widget/TaskInfo;
    :cond_3
    if-nez v26, :cond_4

    .line 288
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v28

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v29

    invoke-static/range {v18 .. v19}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v30

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v31

    invoke-virtual/range {v27 .. v31}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v26

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v11           #intent:Landroid/content/Intent;
    .end local v26           #ts:Lcom/htc/widget/CarouselHost$TabSpec;
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    if-nez v27, :cond_2

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v8

    .line 269
    .local v8, e:Ljava/net/URISyntaxException;
    goto :goto_1

    .line 297
    .end local v5           #countText:Ljava/lang/String;
    .end local v6           #countTextIndex:I
    .end local v7           #countTextVisibleIndex:I
    .end local v8           #e:Ljava/net/URISyntaxException;
    .end local v9           #icon:Ljava/lang/String;
    .end local v10           #iconIndex:I
    .end local v12           #intentDescription:Ljava/lang/String;
    .end local v13           #intentIndex:I
    .end local v14           #isCountTextVisible:I
    .end local v15           #overlay:Ljava/lang/String;
    .end local v16           #overlayIndex:I
    .end local v17           #packageIndex:I
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #selectedIcon:Ljava/lang/String;
    .end local v20           #selectedIconIndex:I
    .end local v21           #taskName:Ljava/lang/String;
    .end local v22           #taskNameIndex:I
    .end local v23           #taskTag:Ljava/lang/String;
    .end local v24           #taskTagIndex:I
    :catchall_0
    move-exception v27

    throw v27
.end method

.method public updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 639
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 640
    :cond_0
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 642
    :cond_1
    const/4 v7, 0x0

    .local v7, row:Lcom/htc/widget/CarouselModel$Row;
    move-object v9, p2

    .line 643
    check-cast v9, Landroid/net/Uri;

    .line 644
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "taskTag"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, taskTag:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v6

    .line 647
    .local v6, i:I
    if-ltz v6, :cond_2

    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #row:Lcom/htc/widget/CarouselModel$Row;
    check-cast v7, Lcom/htc/widget/CarouselModel$Row;

    .line 649
    .restart local v7       #row:Lcom/htc/widget/CarouselModel$Row;
    :cond_2
    if-eqz v7, :cond_3

    .line 650
    packed-switch p1, :pswitch_data_0

    .line 669
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 652
    :pswitch_1
    const-string v10, "countText"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, countText:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 654
    .local v3, countTextIndex:I
    iget-object v10, v7, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v2, v10, v3

    goto :goto_0

    .line 657
    .end local v2           #countText:Ljava/lang/String;
    .end local v3           #countTextIndex:I
    :pswitch_2
    const-string v10, "countTextVisible"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 658
    .local v4, countTextVisible:I
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text_visible"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 659
    .local v5, countTextVisibleIndex:I
    iget-object v10, v7, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_0

    .line 662
    .end local v4           #countTextVisible:I
    .end local v5           #countTextVisibleIndex:I
    :pswitch_3
    const-string v10, "alternativeName"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, alternativeName:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "alternative_name"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, alternativeNameIndex:I
    iget-object v10, v7, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v0, v10, v1

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
