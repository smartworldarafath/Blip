.class public abstract Landroidx/navigation/compose/NavBackStackEntryProviderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0xdf2283d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit16 v1, v0, 0x93

    .line 32
    .line 33
    const/16 v2, 0x92

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_2
    and-int/2addr v0, v3

    .line 42
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 61
    .line 62
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    filled-new-array {v0, v1, v2}, [Landroidx/compose/runtime/ProvidedValue;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lob;

    .line 71
    .line 72
    invoke-direct {v1, p1, p0, p2}, Lob;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 73
    .line 74
    .line 75
    const v2, 0x6bd29b7d

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v1, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/16 v2, 0x38

    .line 83
    .line 84
    invoke-static {v0, v1, p3, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    if-eqz p3, :cond_4

    .line 96
    .line 97
    new-instance v0, Lob;

    .line 98
    .line 99
    invoke-direct {v0, p0, p1, p2, p4}, Lob;-><init>(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x31a55716

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    and-int/lit8 v1, v0, 0x13

    .line 20
    .line 21
    const/16 v2, 0x12

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 29
    .line 30
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    new-instance v1, Lla;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lla;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    sget-object v2, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    const-class v3, Landroidx/navigation/compose/BackStackEntryIdViewModel;

    .line 67
    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-instance v5, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v5, v3, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->a(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->b()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v2}, Landroidx/lifecycle/ViewModelStoreOwnerDefaults;->a(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v4, v2, v1, v3, p2}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroidx/navigation/compose/BackStackEntryIdViewModel;

    .line 97
    .line 98
    new-instance v2, Landroidx/navigation/compose/internal/WeakReference;

    .line 99
    .line 100
    invoke-direct {v2, p0}, Landroidx/navigation/compose/internal/WeakReference;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, v1, Landroidx/navigation/compose/BackStackEntryIdViewModel;->d:Landroidx/navigation/compose/internal/WeakReference;

    .line 104
    .line 105
    iget-object v1, v1, Landroidx/navigation/compose/BackStackEntryIdViewModel;->c:Ljava/lang/String;

    .line 106
    .line 107
    shl-int/lit8 v0, v0, 0x6

    .line 108
    .line 109
    and-int/lit16 v0, v0, 0x380

    .line 110
    .line 111
    const/16 v2, 0x30

    .line 112
    .line 113
    or-int/2addr v0, v2

    .line 114
    invoke-interface {p0, v1, p1, p2, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolder;->a(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 119
    .line 120
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    new-instance v0, La0;

    .line 134
    .line 135
    const/16 v1, 0x11

    .line 136
    .line 137
    invoke-direct {v0, p3, v1, p0, p1}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 141
    .line 142
    :cond_5
    return-void
.end method
