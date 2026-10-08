.class public final Landroidx/navigation/NavBackStackEntryState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-class v0, Landroidx/navigation/NavBackStackEntryState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroidx/navigation/internal/NavBackStackEntryStateImpl;-><init>(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 26
    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 27
    iget-object v1, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 28
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 29
    invoke-direct {v0, p1, v1}, Landroidx/navigation/internal/NavBackStackEntryStateImpl;-><init>(Landroidx/navigation/NavBackStackEntry;I)V

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->c:Landroid/os/Bundle;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p1, Landroidx/navigation/internal/NavContext;->a:Landroid/content/Context;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 23
    .line 24
    .line 25
    move-object v5, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v5, v1

    .line 28
    :goto_0
    iget-object v8, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v9, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->d:Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v2, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v6, p3

    .line 40
    move-object v7, p4

    .line 41
    invoke-direct/range {v2 .. v9}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-object v2
.end method

.method public final b()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Lkotlin/Pair;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, [Lkotlin/Pair;

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v3, "nav-entry-state:id"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "nav-entry-state:destination-id"

    .line 30
    .line 31
    iget v3, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->c:Landroid/os/Bundle;

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    new-array v2, v0, [Lkotlin/Pair;

    .line 41
    .line 42
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, [Lkotlin/Pair;

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_0
    const-string v0, "nav-entry-state:args"

    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->d:Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const-string v0, "nav-entry-state:saved-state"

    .line 63
    .line 64
    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method
