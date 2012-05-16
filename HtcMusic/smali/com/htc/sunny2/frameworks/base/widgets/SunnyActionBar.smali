.class public Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SunnyActionBar"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

.field private mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

.field private mProgressLoadingState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 2
    .parameter "context"
    .parameter "actionBar"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 31
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 32
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 33
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 34
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 35
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 49
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 50
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v0, p1, p2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 55
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 59
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 60
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/widget/ActionBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    return-object v0
.end method

.method public static actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2
    .parameter "activity"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    instance-of v1, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    .line 43
    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    .end local p0
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 45
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismissDropList()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 233
    :cond_0
    return-void
.end method

.method public enableHTCLandscape(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 241
    const-string v0, "SunnyActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyActionBar][enableHTCLandscape]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method public enableSearchMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v1, p1}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 286
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 287
    .local v0, container:Lcom/htc/widget/ActionBarContainer;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 289
    .end local v0           #container:Lcom/htc/widget/ActionBarContainer;
    :cond_0
    if-eqz p2, :cond_1

    .line 290
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    .line 291
    :cond_1
    return-void
.end method

.method public getVisibility()I
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x8

    .line 91
    .local v0, nVisibility:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_0

    move v1, v0

    .line 97
    .end local v0           #nVisibility:I
    .local v1, nVisibility:I
    :goto_0
    return v1

    .line 94
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/4 v0, 0x0

    :cond_1
    move v1, v0

    .line 97
    .end local v0           #nVisibility:I
    .restart local v1       #nVisibility:I
    goto :goto_0
.end method

.method public searchPane()Lcom/htc/widget/ActionBarSearch;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method public setBackUpEnabled(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListContent(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V
    .locals 2
    .parameter "bEnable"
    .parameter "listener"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 194
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 195
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V
    .locals 3
    .parameter "nMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0

    .line 109
    :cond_2
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "nResId"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    if-eq p1, v0, :cond_0

    .line 169
    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 172
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "nResId"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTopMargin(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "nMargin"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    .local v0, decorView:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 253
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 255
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_2

    .line 257
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4       #viewGroup:Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 255
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    instance-of v5, v4, Lcom/htc/widget/ActionBarContainer;

    if-eqz v5, :cond_0

    .line 262
    const-string v5, "SunnyActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SunnyActionBar][setTopMargin]: found ActionBarContainer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    if-nez v4, :cond_3

    .line 268
    const-string v5, "SunnyActionBar"

    const-string v6, "[HTCAlbum][SunnyActionBar][setTopMargin]: can not find ActionBarContainer..."

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_1
    return-void

    .line 272
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 273
    .local v3, param:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, p2, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 274
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "nVisibility"

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method
