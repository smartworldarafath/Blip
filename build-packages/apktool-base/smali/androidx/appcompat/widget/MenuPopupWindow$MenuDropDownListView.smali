.class public Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroidx/appcompat/widget/DropDownListView;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field public final v:I

.field public final w:I

.field public x:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public y:Landroidx/appcompat/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    const/16 v1, 0x15

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    iput v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->v:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->w:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->v:I

    .line 29
    .line 30
    iput v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->w:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final b(II)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    return v0

    .line 25
    :cond_0
    add-int/2addr v0, v1

    .line 26
    const/4 v1, 0x0

    .line 27
    if-lez v2, :cond_1

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v1

    .line 33
    :goto_0
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v5, 0x0

    .line 38
    move v6, v1

    .line 39
    move v7, v6

    .line 40
    move-object v8, v5

    .line 41
    :goto_1
    if-ge v6, v3, :cond_7

    .line 42
    .line 43
    invoke-interface {v4, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eq v9, v7, :cond_2

    .line 48
    .line 49
    move-object v8, v5

    .line 50
    move v7, v9

    .line 51
    :cond_2
    invoke-interface {v4, v6, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    if-nez v9, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .line 70
    if-lez v9, :cond_4

    .line 71
    .line 72
    const/high16 v10, 0x40000000    # 2.0f

    .line 73
    .line 74
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    :goto_2
    invoke-virtual {v8, p1, v9}, Landroid/view/View;->measure(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    .line 87
    .line 88
    .line 89
    if-lez v6, :cond_5

    .line 90
    .line 91
    add-int/2addr v0, v2

    .line 92
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    add-int/2addr v0, v9

    .line 97
    if-lt v0, p2, :cond_6

    .line 98
    .line 99
    return p2

    .line 100
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    return v0
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->x:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    float-to-int v2, v2

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    float-to-int v3, v3

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    sub-int/2addr v2, v1

    .line 55
    if-ltz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v2, v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuAdapter;->b(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->y:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 70
    .line 71
    if-eq v2, v1, :cond_3

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuAdapter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->x:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 78
    .line 79
    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->b(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iput-object v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->y:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->x:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 87
    .line 88
    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/MenuItemHoverListener;->a(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->v:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return v1

    .line 42
    :cond_1
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->w:I

    .line 45
    .line 46
    if-ne p1, v0, :cond_3

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    instance-of p1, p0, Landroid/widget/HeaderViewListAdapter;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    .line 70
    .line 71
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Z)V

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->x:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
