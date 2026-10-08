.class abstract Landroidx/activity/EdgeToEdgeApi26;
.super Landroidx/activity/EdgeToEdgeBase;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public a(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p3, p0}, Landroidx/core/view/WindowCompat;->a(Landroid/view/Window;Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    iget p0, p1, Landroidx/activity/SystemBarStyle;->b:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p0, p1, Landroidx/activity/SystemBarStyle;->a:I

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 25
    .line 26
    .line 27
    if-eqz p6, :cond_1

    .line 28
    .line 29
    iget p0, p2, Landroidx/activity/SystemBarStyle;->b:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget p0, p2, Landroidx/activity/SystemBarStyle;->a:I

    .line 33
    .line 34
    :goto_1
    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Landroidx/core/view/WindowInsetsControllerCompat;

    .line 38
    .line 39
    invoke-direct {p0, p3, p4}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    xor-int/lit8 p1, p5, 0x1

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->c(Z)V

    .line 45
    .line 46
    .line 47
    xor-int/lit8 p1, p6, 0x1

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->b(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
