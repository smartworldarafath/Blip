.class public abstract Lnet/blip/android/ui/settings/SettingsProfileScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v4, p1

    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p1, 0x29a76b22

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v7, 0x2

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v7

    .line 23
    :goto_0
    or-int/2addr p1, p2

    .line 24
    and-int/lit8 v0, p1, 0x3

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq v0, v7, :cond_1

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v1

    .line 33
    :goto_1
    and-int/2addr p1, v2

    .line 34
    invoke-virtual {v4, p1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    sget-object p1, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 41
    .line 42
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/navigation/NavHostController;

    .line 47
    .line 48
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lnet/blip/libblip/Core;

    .line 55
    .line 56
    iget-object v0, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 57
    .line 58
    new-instance v2, Lg3;

    .line 59
    .line 60
    const/4 v3, 0x7

    .line 61
    invoke-direct {v2, p1, v3}, Lg3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 62
    .line 63
    .line 64
    const p1, -0x332c48be    # -1.1100008E8f

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance p1, Lff;

    .line 72
    .line 73
    invoke-direct {p1, p0, v0, v1}, Lff;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Lkotlin/jvm/functions/Function1;I)V

    .line 74
    .line 75
    .line 76
    const v0, -0x16f2f55f

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/16 v5, 0x1b0

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .line 88
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 93
    .line 94
    .line 95
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    new-instance v0, Lz5;

    .line 102
    .line 103
    invoke-direct {v0, p0, p2, v7}, Lz5;-><init>(Lnet/blip/android/ui/navigation/AuthScope;II)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 107
    .line 108
    :cond_3
    return-void
.end method
