.class Lcom/android/camera/menu/MenuAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MenuAdapter.java"


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private final m_LayoutInflater:Landroid/view/LayoutInflater;

.field private final m_Owner:Lcom/android/camera/menu/MenuListView;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/MenuListView;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    .line 26
    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/android/camera/menu/MenuItem;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "arg2"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Lcom/android/camera/menu/MenuItem;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/menu/MenuAdapter;->m_Owner:Lcom/android/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    .line 106
    .local v0, item:Lcom/android/camera/menu/MenuItem;
    instance-of v2, v0, Lcom/android/camera/menu/SeparatorMenuItem;

    if-eqz v2, :cond_1

    .line 108
    const/4 v1, 0x0

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    instance-of v2, v0, Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "arg1"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/camera/menu/MenuAdapter;->getGroup(I)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/camera/menu/MenuItem;->getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/menu/MenuAdapter;->getChild(II)Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/menu/MenuItem;->isSelectable()Z

    move-result v0

    return v0
.end method
