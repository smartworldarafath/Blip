.class public final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavBackStackEntry$Companion;
    }
.end annotation


# instance fields
.field public final j:Landroidx/navigation/internal/NavContext;

.field public k:Landroidx/navigation/NavDestination;

.field public final l:Landroid/os/Bundle;

.field public m:Landroidx/lifecycle/Lifecycle$State;

.field public final n:Landroidx/navigation/NavViewModelStoreProvider;

.field public final o:Ljava/lang/String;

.field public final p:Landroid/os/Bundle;

.field public final q:Landroidx/savedstate/SavedStateRegistryController;

.field public r:Z

.field public final s:Lkotlin/Lazy;

.field public final t:Landroidx/lifecycle/LifecycleRegistry;

.field public final u:Lkotlin/Lazy;

.field public v:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->j:Landroidx/navigation/internal/NavContext;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation/NavBackStackEntry;->l:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavViewModelStoreProvider;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/navigation/NavBackStackEntry;->p:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->a(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    .line 23
    .line 24
    new-instance p1, Lx9;

    .line 25
    .line 26
    const/16 p2, 0x14

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lx9;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->s:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 44
    .line 45
    new-instance p1, Landroidx/navigation/a;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->u:Lkotlin/Lazy;

    .line 55
    .line 56
    new-instance p1, Landroidx/navigation/b;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p1, p2, p0}, Landroidx/navigation/b;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->k:Landroidx/lifecycle/Lifecycle$State;

    .line 66
    .line 67
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->l:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Lkotlin/Pair;

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Lkotlin/Pair;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final c()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->s:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 8
    .line 9
    return-object p0
.end method

.method public final d()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Landroidx/lifecycle/viewmodel/CreationExtras;->a:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$special$$inlined$Key$1;

    .line 10
    .line 11
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$special$$inlined$Key$2;

    .line 15
    .line 16
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget-object v3, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$special$$inlined$Key$3;

    .line 26
    .line 27
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->j:Landroidx/navigation/internal/NavContext;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Landroidx/navigation/internal/NavContext;->a:Landroid/content/Context;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object p0, v2

    .line 45
    :goto_0
    instance-of v3, p0, Landroid/app/Application;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    check-cast p0, Landroid/app/Application;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object p0, v2

    .line 53
    :goto_1
    if-eqz p0, :cond_3

    .line 54
    .line 55
    move-object v2, p0

    .line 56
    :cond_3
    if-eqz v2, :cond_4

    .line 57
    .line 58
    sget-object p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->d:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1;

    .line 59
    .line 60
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_4
    return-object v0
.end method

.method public final e()Landroidx/lifecycle/ViewModelStore;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavViewModelStoreProvider;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Landroidx/navigation/NavViewModelStoreProviderImpl;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Landroidx/navigation/NavViewModelStoreProviderImpl;->a:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->b(Ljava/lang/Object;)Landroidx/lifecycle/ViewModelStore;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    .line 33
    .line 34
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const-string p0, "You cannot access the NavBackStackEntry\'s ViewModels after the NavBackStackEntry is destroyed."

    .line 39
    .line 40
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    const-string p0, "You cannot access the NavBackStackEntry\'s ViewModels until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 45
    .line 46
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    instance-of v1, p1, Landroidx/navigation/NavBackStackEntry;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 10
    .line 11
    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->l:Landroid/os/Bundle;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->l:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move v1, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroidx/savedstate/SavedStateReader;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v1, v0

    .line 34
    :goto_0
    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 45
    .line 46
    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 55
    .line 56
    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->b:Landroidx/savedstate/SavedStateRegistry;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    .line 69
    .line 70
    iget-object p1, p1, Landroidx/savedstate/SavedStateRegistryController;->b:Landroidx/savedstate/SavedStateRegistry;

    .line 71
    .line 72
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    return v4

    .line 81
    :cond_3
    :goto_1
    return v0
.end method

.method public final f()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->b:Landroidx/savedstate/SavedStateRegistry;

    .line 4
    .line 5
    return-object p0
.end method

.method public final g()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->a()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Landroidx/navigation/NavBackStackEntry;->r:Z

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavViewModelStoreProvider;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->b(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->p:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistryController;->b(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "setCurrentState"

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 40
    .line 41
    if-ge v0, v1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LifecycleRegistry;->d(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p0}, Landroidx/lifecycle/LifecycleRegistry;->f(Landroidx/lifecycle/Lifecycle$State;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LifecycleRegistry;->d(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p0}, Landroidx/lifecycle/LifecycleRegistry;->f(Landroidx/lifecycle/Lifecycle$State;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->l:Landroid/os/Bundle;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->b(Landroid/os/Bundle;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v1, v0

    .line 27
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->b:Landroidx/savedstate/SavedStateRegistry;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v0

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "("

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ")"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " destination="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
