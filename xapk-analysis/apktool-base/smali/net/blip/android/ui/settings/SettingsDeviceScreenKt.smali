.class public abstract Lnet/blip/android/ui/settings/SettingsDeviceScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move-object/from16 v4, p1

    .line 2
    .line 3
    move/from16 v6, p3

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v11, p2

    .line 12
    .line 13
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0xe10ee49

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v14, 0x2

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v14

    .line 31
    :goto_0
    or-int/2addr v0, v6

    .line 32
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    and-int/lit8 v1, v0, 0x13

    .line 45
    .line 46
    const/16 v2, 0x12

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    move v1, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_2
    and-int/2addr v0, v3

    .line 55
    invoke-virtual {v11, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 62
    .line 63
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v5, v0

    .line 68
    check-cast v5, Landroid/content/Context;

    .line 69
    .line 70
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 71
    .line 72
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 77
    .line 78
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 79
    .line 80
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lnet/blip/libblip/Core;

    .line 85
    .line 86
    iget-object v1, v1, Lnet/blip/libblip/Core;->b:Lc;

    .line 87
    .line 88
    iget-object v2, p0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 89
    .line 90
    iget-object v2, v2, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lnet/blip/libblip/Device;

    .line 97
    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/navigation/NavController;->c()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    new-instance v1, Lb6;

    .line 110
    .line 111
    invoke-direct {v1, p0, v4, v6, v3}, Lb6;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    :goto_3
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    new-instance v3, Lg3;

    .line 118
    .line 119
    const/4 v7, 0x6

    .line 120
    invoke-direct {v3, v0, v7}, Lg3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 121
    .line 122
    .line 123
    const v0, 0x4fd84dd7

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    new-instance v0, Ldf;

    .line 131
    .line 132
    move-object v3, v1

    .line 133
    move-object v1, v2

    .line 134
    move-object v2, p0

    .line 135
    invoke-direct/range {v0 .. v5}, Ldf;-><init>(Lnet/blip/libblip/Device;Lnet/blip/android/ui/navigation/AuthScope;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    const v1, 0x3e6ad9b6

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    const/16 v12, 0x1b0

    .line 146
    .line 147
    const/4 v13, 0x1

    .line 148
    const-wide/16 v7, 0x0

    .line 149
    .line 150
    invoke-static/range {v7 .. v13}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 155
    .line 156
    .line 157
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    new-instance v1, Lb6;

    .line 164
    .line 165
    invoke-direct {v1, p0, v4, v6, v14}, Lb6;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;II)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    return-void
.end method
