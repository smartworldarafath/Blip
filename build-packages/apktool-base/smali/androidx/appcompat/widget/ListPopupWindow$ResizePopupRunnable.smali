.class Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field public final synthetic j:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->j:Landroidx/appcompat/widget/ListPopupWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;->j:Landroidx/appcompat/widget/ListPopupWindow;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-le v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const v1, 0x7fffffff

    .line 34
    .line 35
    .line 36
    if-gt v0, v1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->E:Landroid/widget/PopupWindow;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->f()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
