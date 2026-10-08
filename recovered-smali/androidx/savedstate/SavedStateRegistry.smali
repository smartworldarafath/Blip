.class public final Landroidx/savedstate/SavedStateRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/SavedStateRegistry$AutoRecreated;,
        Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    }
.end annotation


# instance fields
.field public final a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

.field public b:Landroidx/savedstate/Recreator$SavedStateProvider;


# direct methods
.method public constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistry;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->g:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->f:Landroid/os/Bundle;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p1}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_2
    move-object v2, v1

    .line 31
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->f:Landroid/os/Bundle;

    .line 41
    .line 42
    :cond_3
    return-object v2

    .line 43
    :cond_4
    const-string p0, "You can \'consumeRestoredStateForKey\' only after the corresponding component has moved to the \'CREATED\' state"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistry;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->c:Landroidx/savedstate/internal/SynchronizedObject;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0
.end method

.method public final c(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistry;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->c:Landroidx/savedstate/internal/SynchronizedObject;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    const-string p0, "SavedStateProvider with the given key is already registered"

    .line 27
    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    throw p0
.end method

.method public final d()V
    .locals 4

    .line 1
    const-class v0, Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroidx/savedstate/internal/SavedStateRegistryImpl;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->b:Landroidx/savedstate/Recreator$SavedStateProvider;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroidx/savedstate/Recreator$SavedStateProvider;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroidx/savedstate/Recreator$SavedStateProvider;-><init>(Landroidx/savedstate/SavedStateRegistry;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->b:Landroidx/savedstate/Recreator$SavedStateProvider;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistry;->b:Landroidx/savedstate/Recreator$SavedStateProvider;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p0, p0, Landroidx/savedstate/Recreator$SavedStateProvider;->a:Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "Class "

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 69
    .line 70
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
