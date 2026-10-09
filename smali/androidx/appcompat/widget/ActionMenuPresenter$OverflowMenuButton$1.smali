.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic s:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->s:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->s:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->a()Landroidx/appcompat/view/menu/MenuPopup;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->s:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->i()Z

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;->s:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->f()Z

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method
