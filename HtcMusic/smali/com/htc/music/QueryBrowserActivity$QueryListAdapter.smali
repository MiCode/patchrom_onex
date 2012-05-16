.class Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;,
        Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 492
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 469
    iput-object v6, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    .line 471
    iput-object v6, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 493
    iput-object p2, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    .line 494
    new-instance v0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 495
    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;)Lcom/htc/music/QueryBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    .line 519
    .local v8, vh:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 520
    .local v6, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_1

    .line 522
    invoke-static {p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const/4 v9, -0x2

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 526
    const/4 v9, -0x2

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 529
    const-string v9, "mime_type"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, mimetype:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 533
    const-string v2, "audio/"

    .line 535
    :cond_2
    const-string v9, "artist"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 536
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemIcon:Landroid/widget/ImageView;

    const v10, 0x2080078

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    const-string v9, "artist"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, name:Ljava/lang/String;
    move-object v0, v3

    .line 540
    .local v0, displayname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 541
    .local v1, isunknown:Z
    if-eqz v3, :cond_3

    const-string v9, "<unknown>"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 542
    :cond_3
    const v9, 0x7f07004d

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    const/4 v1, 0x1

    .line 545
    :cond_4
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 547
    const-string v9, "data1"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 548
    .local v4, numalbums:I
    const-string v9, "data2"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 551
    .local v5, numsongs:I
    invoke-static {p2, v4, v5, v1}, Lcom/htc/music/util/MusicUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, songs_albums:Ljava/lang/String;
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    .end local v0           #displayname:Ljava/lang/String;
    .end local v1           #isunknown:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #numalbums:I
    .end local v5           #numsongs:I
    .end local v7           #songs_albums:Ljava/lang/String;
    :cond_5
    const-string v9, "album"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 558
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemIcon:Landroid/widget/ImageView;

    const v10, 0x2080078

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    const-string v9, "album"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 561
    .restart local v3       #name:Ljava/lang/String;
    move-object v0, v3

    .line 562
    .restart local v0       #displayname:Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v9, "<unknown>"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 563
    :cond_6
    const v9, 0x7f07004e

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_7
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 568
    const-string v9, "artist"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 570
    move-object v0, v3

    .line 571
    if-eqz v3, :cond_8

    const-string v9, "<unknown>"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 572
    :cond_8
    const v9, 0x7f07004d

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_9
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    .end local v0           #displayname:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_a
    const-string v9, "audio/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "application/ogg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "application/x-ogg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 580
    :cond_b
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemIcon:Landroid/widget/ImageView;

    const v10, 0x2080078

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 581
    const-string v9, "title"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 583
    .restart local v3       #name:Ljava/lang/String;
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 585
    const-string v9, "artist"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    .restart local v0       #displayname:Ljava/lang/String;
    if-eqz v0, :cond_c

    const-string v9, "<unknown>"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 588
    :cond_c
    const v9, 0x7f07004d

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_d
    const-string v9, "album"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    if-eqz v3, :cond_e

    const-string v9, "<unknown>"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 593
    :cond_e
    const v9, 0x7f07004e

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 595
    :cond_f
    iget-object v9, v8, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    #getter for: Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/QueryBrowserActivity;->access$300(Lcom/htc/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    #setter for: Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/QueryBrowserActivity;->access$302(Lcom/htc/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 603
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 605
    :cond_0
    return-void
.end method

.method public getConstraint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 507
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;-><init>(Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;)V

    .line 509
    .local v1, vh:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 510
    const v2, 0x7f080029

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->listItemIcon:Landroid/widget/ImageView;

    .line 511
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 512
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 617
    :goto_0
    return-object v0

    .line 614
    :cond_2
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/QueryBrowserActivity;->access$100(Lcom/htc/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 615
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 616
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/QueryBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;

    .line 499
    return-void
.end method
