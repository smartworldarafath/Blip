.class public abstract Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x2a4a252b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/lit8 v1, p2, 0x1

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 34
    .line 35
    invoke-static {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v6, Landroidx/compose/foundation/lazy/layout/i;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v7, Landroidx/compose/foundation/lazy/layout/g;

    .line 49
    .line 50
    invoke-direct {v7, v1, v4, v3}, Landroidx/compose/foundation/lazy/layout/g;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 54
    .line 55
    invoke-direct {v8, v6, v7}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    or-int/2addr v6, v7

    .line 67
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 74
    .line 75
    if-ne v7, v6, :cond_2

    .line 76
    .line 77
    :cond_1
    new-instance v7, Landroidx/compose/foundation/lazy/layout/j;

    .line 78
    .line 79
    invoke-direct {v7, v1, v4}, Landroidx/compose/foundation/lazy/layout/j;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 86
    .line 87
    invoke-static {v5, v8, v7, p1, v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Landroidx/compose/foundation/lazy/layout/a;

    .line 98
    .line 99
    invoke-direct {v2, v3, p0, v1}, Landroidx/compose/foundation/lazy/layout/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const v1, -0x189b31eb

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/16 v2, 0x38

    .line 110
    .line 111
    invoke-static {v0, v1, p1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    new-instance v0, Lc0;

    .line 125
    .line 126
    const/4 v1, 0x6

    .line 127
    invoke-direct {v0, p0, p2, v1}, Lc0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    :cond_4
    return-void
.end method
