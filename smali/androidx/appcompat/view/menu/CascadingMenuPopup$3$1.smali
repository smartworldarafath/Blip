.class Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

.field public final synthetic k:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public final synthetic l:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final synthetic m:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup$3;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->m:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->j:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->k:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->l:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->m:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->j:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->j:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->I:Z

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Z)V

    .line 16
    .line 17
    .line 18
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->I:Z

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->k:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    const/4 v2, 0x0

    .line 36
    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->l:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->p(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
