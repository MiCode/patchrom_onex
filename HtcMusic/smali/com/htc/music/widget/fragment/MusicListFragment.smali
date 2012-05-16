.class public Lcom/htc/music/widget/fragment/MusicListFragment;
.super Lcom/htc/music/widget/fragment/MusicCommonFragment;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicListFragment]"


# instance fields
.field public BROWSE_TYPE:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mEditor:Landroid/widget/EditText;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mOrientation:I

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;-><init>()V

    .line 25
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->BROWSE_TYPE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOrientation:I

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mHandler:Landroid/os/Handler;

    .line 38
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mFinishedStart:Z

    .line 40
    new-instance v0, Lcom/htc/music/widget/fragment/MusicListFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicListFragment$1;-><init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/htc/music/widget/fragment/MusicListFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicListFragment$2;-><init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 178
    new-instance v0, Lcom/htc/music/widget/fragment/MusicListFragment$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicListFragment$3;-><init>(Lcom/htc/music/widget/fragment/MusicListFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 190
    iput v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mSearchHint:I

    return-void
.end method

.method private ensureList()V
    .locals 2

    .prologue
    const v1, 0x102000a

    .line 155
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 161
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 162
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicListFragment;->setContentView(I)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->ensureList()V

    .line 144
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected hideSearchBar()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOrientation:I

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->resetSDErrorLayout()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, layout:Landroid/view/View;
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, emptyView:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    .line 77
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-static {v2, v4, v4}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 88
    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mFinishedStart:Z

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mFinishedStart:Z

    .line 94
    return-object v1
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 58
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 233
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 229
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 237
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 241
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 255
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->ensureList()V

    .line 103
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 105
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_1
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setSearchHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 195
    iput p1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mSearchHint:I

    .line 196
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 123
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 203
    :cond_2
    if-eqz p1, :cond_3

    .line 206
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 207
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicListFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
