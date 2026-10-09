.class Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field public final synthetic l:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->l:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    .line 3
    const v5, 0x7f040021

    .line 4
    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p2

    .line 10
    move-object v2, p3

    .line 11
    move-object v3, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 13
    .line 14
    .line 15
    iget-object p0, v2, Landroidx/appcompat/view/menu/SubMenuBuilder;->x:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 16
    .line 17
    iget p0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->x:I

    .line 18
    .line 19
    const/16 p2, 0x20

    .line 20
    .line 21
    and-int/2addr p0, p2

    .line 22
    if-ne p0, p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p1, Landroidx/appcompat/view/menu/BaseMenuPresenter;->p:Landroidx/appcompat/widget/ActionMenuView;

    .line 30
    .line 31
    :cond_1
    iput-object p0, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->e:Landroid/view/View;

    .line 32
    .line 33
    :goto_0
    iget-object p0, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->E:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 34
    .line 35
    iput-object p0, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->h:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->i:Landroidx/appcompat/view/menu/MenuPopup;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/MenuPresenter;->d(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->l:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 5
    .line 6
    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
