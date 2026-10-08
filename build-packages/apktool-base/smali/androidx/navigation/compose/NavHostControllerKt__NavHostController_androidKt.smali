.class abstract synthetic Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/NavHostController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/navigation/NavController;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 12
    .line 13
    new-instance v2, Landroidx/navigation/compose/ComposeNavGraphNavigator;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 22
    .line 23
    new-instance v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/navigation/compose/ComposeNavigator;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/navigation/compose/DialogNavigator;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method
