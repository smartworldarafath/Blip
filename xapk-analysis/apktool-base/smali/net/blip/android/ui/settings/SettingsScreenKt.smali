.class public abstract Lnet/blip/android/ui/settings/SettingsScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v7, p1

    .line 5
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x153c87f8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v8, 0x4

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v8

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    or-int/2addr v0, p2

    .line 25
    and-int/lit8 v3, v0, 0x3

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v3, v2, :cond_1

    .line 29
    .line 30
    move v2, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_1
    and-int/2addr v0, v4

    .line 34
    invoke-virtual {v7, v0, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->s:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 41
    .line 42
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v6, v0

    .line 47
    check-cast v6, Landroidx/compose/ui/platform/UriHandler;

    .line 48
    .line 49
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v2, v0

    .line 56
    check-cast v2, Landroidx/navigation/NavHostController;

    .line 57
    .line 58
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 59
    .line 60
    invoke-static {v0, v7}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lnet/blip/libblip/Core;

    .line 69
    .line 70
    iget-object v5, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 71
    .line 72
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 73
    .line 74
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v3, v0

    .line 79
    check-cast v3, Landroid/content/Context;

    .line 80
    .line 81
    new-instance v0, Lg3;

    .line 82
    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    invoke-direct {v0, v2, v9}, Lg3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 86
    .line 87
    .line 88
    const v9, -0x5ca683d8

    .line 89
    .line 90
    .line 91
    invoke-static {v9, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    new-instance v0, Lv8;

    .line 96
    .line 97
    move-object v1, p0

    .line 98
    invoke-direct/range {v0 .. v6}, Lv8;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/navigation/NavHostController;Landroid/content/Context;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/UriHandler;)V

    .line 99
    .line 100
    .line 101
    const v1, -0x1c2b6e39

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/16 v5, 0x1b0

    .line 109
    .line 110
    const/4 v6, 0x1

    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .line 113
    move-object v4, v7

    .line 114
    move-object v2, v9

    .line 115
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    move-object v4, v7

    .line 120
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    new-instance v1, Lz5;

    .line 130
    .line 131
    invoke-direct {v1, p0, p2, v8}, Lz5;-><init>(Lnet/blip/android/ui/navigation/AuthScope;II)V

    .line 132
    .line 133
    .line 134
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 135
    .line 136
    :cond_3
    return-void
.end method
