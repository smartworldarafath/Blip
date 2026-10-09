.class public final Landroidx/savedstate/SavedStateRegistryController;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/SavedStateRegistryController$Companion;
    }
.end annotation


# instance fields
.field public final a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

.field public final b:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 5
    .line 6
    new-instance v0, Landroidx/savedstate/SavedStateRegistry;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/savedstate/SavedStateRegistry;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->b:Landroidx/savedstate/SavedStateRegistry;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->a:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->e:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 19
    .line 20
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-gez v1, :cond_4

    .line 27
    .line 28
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->g:Z

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    move-object v0, p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    iput-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->f:Landroid/os/Bundle;

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->g:Z

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    const-string p0, "SavedStateRegistry was already restored."

    .line 62
    .line 63
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    .line 72
    .line 73
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 74
    .line 75
    const-string p1, "performRestore cannot be called when owner is "

    .line 76
    .line 77
    invoke-static {p0, p1}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Lkotlin/Pair;

    .line 7
    .line 8
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, [Lkotlin/Pair;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->f:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v3, v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->c:Landroidx/savedstate/internal/SynchronizedObject;

    .line 26
    .line 27
    monitor-enter v3

    .line 28
    :try_start_0
    iget-object v0, v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 29
    .line 30
    iget-object v4, v0, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v5, v0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/collection/ScatterMap;->a:[J

    .line 35
    .line 36
    array-length v6, v0

    .line 37
    add-int/lit8 v6, v6, -0x2

    .line 38
    .line 39
    if-ltz v6, :cond_4

    .line 40
    .line 41
    move v7, v1

    .line 42
    :goto_0
    aget-wide v8, v0, v7

    .line 43
    .line 44
    not-long v10, v8

    .line 45
    const/4 v12, 0x7

    .line 46
    shl-long/2addr v10, v12

    .line 47
    and-long/2addr v10, v8

    .line 48
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v10, v12

    .line 54
    cmp-long v10, v10, v12

    .line 55
    .line 56
    if-eqz v10, :cond_3

    .line 57
    .line 58
    sub-int v10, v7, v6

    .line 59
    .line 60
    not-int v10, v10

    .line 61
    ushr-int/lit8 v10, v10, 0x1f

    .line 62
    .line 63
    const/16 v11, 0x8

    .line 64
    .line 65
    rsub-int/lit8 v10, v10, 0x8

    .line 66
    .line 67
    move v12, v1

    .line 68
    :goto_1
    if-ge v12, v10, :cond_2

    .line 69
    .line 70
    const-wide/16 v13, 0xff

    .line 71
    .line 72
    and-long/2addr v13, v8

    .line 73
    const-wide/16 v15, 0x80

    .line 74
    .line 75
    cmp-long v13, v13, v15

    .line 76
    .line 77
    if-gez v13, :cond_1

    .line 78
    .line 79
    shl-int/lit8 v13, v7, 0x3

    .line 80
    .line 81
    add-int/2addr v13, v12

    .line 82
    aget-object v14, v4, v13

    .line 83
    .line 84
    aget-object v13, v5, v13

    .line 85
    .line 86
    check-cast v13, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 87
    .line 88
    check-cast v14, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v13}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->a()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    :goto_2
    shr-long/2addr v8, v11

    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    if-ne v10, v11, :cond_4

    .line 111
    .line 112
    :cond_3
    if-eq v7, v6, :cond_4

    .line 113
    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    monitor-exit v3

    .line 118
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 125
    .line 126
    move-object/from16 v1, p1

    .line 127
    .line 128
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    return-void

    .line 132
    :goto_3
    monitor-exit v3

    .line 133
    throw v0
.end method
