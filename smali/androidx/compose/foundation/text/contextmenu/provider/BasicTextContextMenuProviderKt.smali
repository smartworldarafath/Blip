.class public abstract Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v0, p3

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v1, -0x2a95dc91

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v1, p4, 0x6

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x2

    .line 23
    :goto_0
    or-int/2addr v3, p4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, p4

    .line 26
    :goto_1
    and-int/lit8 v5, p4, 0x30

    .line 27
    .line 28
    if-nez v5, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    const/16 v5, 0x20

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v5, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v3, v5

    .line 42
    :cond_3
    and-int/lit16 v5, p4, 0x180

    .line 43
    .line 44
    sget-object v6, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 45
    .line 46
    if-nez v5, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    const/16 v5, 0x100

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/16 v5, 0x80

    .line 58
    .line 59
    :goto_3
    or-int/2addr v3, v5

    .line 60
    :cond_5
    and-int/lit16 v5, p4, 0xc00

    .line 61
    .line 62
    if-nez v5, :cond_7

    .line 63
    .line 64
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_6

    .line 69
    .line 70
    const/16 v5, 0x800

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    const/16 v5, 0x400

    .line 74
    .line 75
    :goto_4
    or-int/2addr v3, v5

    .line 76
    :cond_7
    and-int/lit16 v5, v3, 0x493

    .line 77
    .line 78
    const/16 v7, 0x492

    .line 79
    .line 80
    if-eq v5, v7, :cond_8

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    const/4 v5, 0x0

    .line 85
    :goto_5
    and-int/lit8 v7, v3, 0x1

    .line 86
    .line 87
    invoke-virtual {v0, v7, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_a

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 98
    .line 99
    if-ne v5, v7, :cond_9

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v5, v7}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_9
    move-object v7, v5

    .line 114
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 115
    .line 116
    shr-int/lit8 v3, v3, 0x6

    .line 117
    .line 118
    and-int/lit8 v3, v3, 0xe

    .line 119
    .line 120
    invoke-static {v6, v0, v3}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->b(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v5, Ld4;

    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    move-object v6, p0

    .line 132
    move-object v8, p2

    .line 133
    invoke-direct/range {v5 .. v10}, Ld4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    const v1, 0x1059082f

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const/16 v5, 0x38

    .line 144
    .line 145
    invoke-static {v3, v1, v0, v5}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 150
    .line 151
    .line 152
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-eqz v6, :cond_b

    .line 157
    .line 158
    new-instance v0, Lb1;

    .line 159
    .line 160
    const/4 v5, 0x6

    .line 161
    move-object v1, p0

    .line 162
    move-object v2, p1

    .line 163
    move-object v3, p2

    .line 164
    move v4, p4

    .line 165
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 169
    .line 170
    :cond_b
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;
    .locals 2

    .line 1
    and-int/lit8 v0, p2, 0xe

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    and-int/lit8 p2, p2, 0x6

    .line 18
    .line 19
    if-ne p2, v1, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 p2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p2, 0x0

    .line 24
    :goto_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 31
    .line 32
    if-nez p2, :cond_3

    .line 33
    .line 34
    if-ne v0, v1, :cond_4

    .line 35
    .line 36
    :cond_3
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_4
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    if-ne p2, v1, :cond_6

    .line 57
    .line 58
    :cond_5
    new-instance p2, Lc;

    .line 59
    .line 60
    const/16 p0, 0x9

    .line 61
    .line 62
    invoke-direct {p2, p0, v0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
