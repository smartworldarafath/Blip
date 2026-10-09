.class public abstract Lnet/blip/android/ui/onboarding/ComposablesKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, 0x289fe0a6

    .line 9
    .line 10
    .line 11
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    and-int/lit8 v0, p5, 0x2

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p4, 0x30

    .line 19
    .line 20
    move v2, v1

    .line 21
    move/from16 v1, p1

    .line 22
    .line 23
    :goto_0
    move-object/from16 v12, p2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    move/from16 v1, p1

    .line 27
    .line 28
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_1
    or-int v2, p4, v2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_2
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x100

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    const/16 v3, 0x80

    .line 52
    .line 53
    :goto_3
    or-int/2addr v2, v3

    .line 54
    and-int/lit16 v3, v2, 0x93

    .line 55
    .line 56
    const/16 v4, 0x92

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    if-eq v3, v4, :cond_3

    .line 60
    .line 61
    move v3, v5

    .line 62
    goto :goto_4

    .line 63
    :cond_3
    const/4 v3, 0x0

    .line 64
    :goto_4
    and-int/lit8 v4, v2, 0x1

    .line 65
    .line 66
    invoke-virtual {v8, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    move v0, v2

    .line 75
    move v2, v5

    .line 76
    goto :goto_5

    .line 77
    :cond_4
    move v0, v2

    .line 78
    move v2, v1

    .line 79
    :goto_5
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    const/high16 v3, 0x42500000    # 52.0f

    .line 82
    .line 83
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v3, Lz;

    .line 94
    .line 95
    const/4 v4, 0x2

    .line 96
    invoke-direct {v3, v4, p0, v2}, Lz;-><init>(ILjava/lang/Object;Z)V

    .line 97
    .line 98
    .line 99
    const v4, 0x553e8896

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    shr-int/lit8 v3, v0, 0x6

    .line 107
    .line 108
    and-int/lit8 v3, v3, 0xe

    .line 109
    .line 110
    const v4, 0x30000030

    .line 111
    .line 112
    .line 113
    or-int/2addr v3, v4

    .line 114
    shl-int/lit8 v0, v0, 0x3

    .line 115
    .line 116
    and-int/lit16 v0, v0, 0x380

    .line 117
    .line 118
    or-int v9, v3, v0

    .line 119
    .line 120
    const/16 v10, 0x1f8

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    move-object v0, v12

    .line 127
    invoke-static/range {v0 .. v10}, Landroidx/compose/material/ButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 128
    .line 129
    .line 130
    move v11, v2

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 133
    .line 134
    .line 135
    move v11, v1

    .line 136
    :goto_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    new-instance v9, Lc2;

    .line 143
    .line 144
    move-object v10, p0

    .line 145
    move-object/from16 v12, p2

    .line 146
    .line 147
    move/from16 v13, p4

    .line 148
    .line 149
    move/from16 v14, p5

    .line 150
    .line 151
    invoke-direct/range {v9 .. v14}, Lc2;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V

    .line 152
    .line 153
    .line 154
    iput-object v9, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 155
    .line 156
    :cond_6
    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    move-object v4, p2

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, 0x20a75c65

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x2

    .line 19
    :goto_0
    or-int/2addr p2, p3

    .line 20
    or-int/lit8 p2, p2, 0x30

    .line 21
    .line 22
    and-int/lit8 v0, p2, 0x13

    .line 23
    .line 24
    const/16 v1, 0x12

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_1
    and-int/lit8 v1, p2, 0x1

    .line 32
    .line 33
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 40
    .line 41
    const/high16 v0, 0x42c00000    # 96.0f

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object p1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 48
    .line 49
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 54
    .line 55
    iget-wide v0, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    and-int/lit8 p1, p2, 0xe

    .line 62
    .line 63
    or-int/lit16 v5, p1, 0x1b0

    .line 64
    .line 65
    const/16 v6, 0x38

    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    move-object v0, p0

    .line 70
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 71
    .line 72
    .line 73
    move-object p1, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object v0, p0

    .line 76
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    new-instance p2, La0;

    .line 86
    .line 87
    const/4 v1, 0x5

    .line 88
    invoke-direct {p2, p3, v1, v0, p1}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iput-object p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object/from16 v2, p5

    .line 9
    .line 10
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v3, 0x1fb8f8ce

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v3, p7, 0x4

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    or-int/lit16 v4, v6, 0x180

    .line 23
    .line 24
    move v5, v4

    .line 25
    move-object/from16 v4, p2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    and-int/lit16 v4, v6, 0x180

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    move-object/from16 v4, p2

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    const/16 v5, 0x100

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v5, 0x80

    .line 44
    .line 45
    :goto_0
    or-int/2addr v5, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object/from16 v4, p2

    .line 48
    .line 49
    move v5, v6

    .line 50
    :goto_1
    and-int/lit16 v7, v5, 0x2493

    .line 51
    .line 52
    const/16 v8, 0x2492

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x1

    .line 56
    if-eq v7, v8, :cond_3

    .line 57
    .line 58
    move v7, v10

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v7, v9

    .line 61
    :goto_2
    and-int/lit8 v8, v5, 0x1

    .line 62
    .line 63
    invoke-virtual {v2, v8, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_8

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move-object v3, v4

    .line 74
    :goto_3
    const/high16 v4, 0x41c00000    # 24.0f

    .line 75
    .line 76
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 77
    .line 78
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/high16 v8, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->d:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    .line 89
    .line 90
    const/16 v11, 0x36

    .line 91
    .line 92
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 93
    .line 94
    invoke-static {v8, v12, v2, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    iget-wide v11, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 99
    .line 100
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 113
    .line 114
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 118
    .line 119
    .line 120
    iget-boolean v13, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 121
    .line 122
    if-eqz v13, :cond_5

    .line 123
    .line 124
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 125
    .line 126
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 131
    .line 132
    .line 133
    :goto_4
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 134
    .line 135
    invoke-static {v2, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 139
    .line 140
    invoke-static {v2, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 148
    .line 149
    invoke-static {v2, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 153
    .line 154
    .line 155
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 156
    .line 157
    invoke-static {v2, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    if-nez p0, :cond_6

    .line 161
    .line 162
    const v4, 0x1535d09

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_6
    const v4, 0x1535d0a

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {p0, v2, v4}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 186
    .line 187
    .line 188
    :goto_5
    const/high16 v4, 0x41800000    # 16.0f

    .line 189
    .line 190
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    if-nez v3, :cond_7

    .line 201
    .line 202
    const v0, 0x155298e

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_7
    const v4, 0x155298f

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 216
    .line 217
    .line 218
    const/high16 v4, 0x41000000    # 8.0f

    .line 219
    .line 220
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 225
    .line 226
    .line 227
    shr-int/lit8 v0, v5, 0x6

    .line 228
    .line 229
    and-int/lit8 v0, v0, 0xe

    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v3, v2, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 239
    .line 240
    .line 241
    :goto_6
    const/high16 v0, 0x42000000    # 32.0f

    .line 242
    .line 243
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 248
    .line 249
    .line 250
    move-object/from16 v0, p3

    .line 251
    .line 252
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-static {}, Landroidx/compose/foundation/layout/ColumnScope;->a()Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v5, p4

    .line 263
    .line 264
    invoke-virtual {v5, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_8
    move-object/from16 v0, p3

    .line 272
    .line 273
    move-object/from16 v5, p4

    .line 274
    .line 275
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 276
    .line 277
    .line 278
    move-object v3, v4

    .line 279
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    if-eqz v9, :cond_9

    .line 284
    .line 285
    new-instance v0, Lf6;

    .line 286
    .line 287
    move-object v1, p0

    .line 288
    move-object v2, p1

    .line 289
    move-object/from16 v4, p3

    .line 290
    .line 291
    move/from16 v7, p7

    .line 292
    .line 293
    invoke-direct/range {v0 .. v7}, Lf6;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 294
    .line 295
    .line 296
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 297
    .line 298
    :cond_9
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x1f9791e9

    .line 10
    .line 11
    .line 12
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v1, 0x13

    .line 16
    .line 17
    const/16 v3, 0x12

    .line 18
    .line 19
    const/4 v13, 0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    move v2, v13

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    and-int/lit8 v3, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v9, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const/high16 v2, 0x41800000    # 16.0f

    .line 34
    .line 35
    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v3, 0x36

    .line 40
    .line 41
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 42
    .line 43
    invoke-static {v2, v4, v9, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-wide v3, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 67
    .line 68
    .line 69
    iget-boolean v6, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 70
    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 74
    .line 75
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 80
    .line 81
    .line 82
    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 83
    .line 84
    invoke-static {v9, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 88
    .line 89
    invoke-static {v9, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 97
    .line 98
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 102
    .line 103
    .line 104
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 105
    .line 106
    invoke-static {v9, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    sget-object v12, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 110
    .line 111
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 116
    .line 117
    iget-wide v3, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    const/16 v11, 0xd

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    const-wide/16 v6, 0x0

    .line 125
    .line 126
    const/4 v8, 0x1

    .line 127
    invoke-static/range {v2 .. v11}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 128
    .line 129
    .line 130
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 131
    .line 132
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 137
    .line 138
    iget-object v14, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 139
    .line 140
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 145
    .line 146
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 147
    .line 148
    const/16 v4, 0x10

    .line 149
    .line 150
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v17

    .line 154
    const/16 v25, 0x0

    .line 155
    .line 156
    const v26, 0xfffffc

    .line 157
    .line 158
    .line 159
    const/16 v19, 0x0

    .line 160
    .line 161
    const-wide/16 v20, 0x0

    .line 162
    .line 163
    const-wide/16 v22, 0x0

    .line 164
    .line 165
    const/16 v24, 0x0

    .line 166
    .line 167
    move-wide v15, v2

    .line 168
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const/4 v11, 0x6

    .line 173
    const/16 v12, 0x1fa

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    const/4 v5, 0x0

    .line 177
    const/4 v6, 0x0

    .line 178
    const/4 v7, 0x0

    .line 179
    const/4 v8, 0x0

    .line 180
    move-object v10, v9

    .line 181
    const/4 v9, 0x0

    .line 182
    move-object/from16 v2, p1

    .line 183
    .line 184
    invoke-static/range {v2 .. v12}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 185
    .line 186
    .line 187
    move-object v9, v10

    .line 188
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 193
    .line 194
    .line 195
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_3

    .line 200
    .line 201
    new-instance v3, La0;

    .line 202
    .line 203
    const/4 v4, 0x6

    .line 204
    move-object/from16 v5, p1

    .line 205
    .line 206
    invoke-direct {v3, v1, v4, v0, v5}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 210
    .line 211
    :cond_3
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v11, p3

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x485a867f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    or-int/lit8 v1, v11, 0x6

    .line 16
    .line 17
    and-int/lit8 v2, v11, 0x30

    .line 18
    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/16 v2, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v3

    .line 33
    :goto_0
    or-int/2addr v1, v2

    .line 34
    :cond_1
    and-int/lit8 v2, v1, 0x13

    .line 35
    .line 36
    const/16 v4, 0x12

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v2, 0x0

    .line 43
    :goto_1
    and-int/lit8 v4, v1, 0x1

    .line 44
    .line 45
    invoke-virtual {v8, v4, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v12, 0x2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    const/high16 v2, 0x41400000    # 12.0f

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    invoke-static {v13, v2, v4, v12}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 62
    .line 63
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 68
    .line 69
    iget-object v14, v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 70
    .line 71
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 78
    .line 79
    iget-wide v4, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 80
    .line 81
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v17

    .line 85
    const/16 v24, 0x0

    .line 86
    .line 87
    const v26, 0xdf7ffc

    .line 88
    .line 89
    .line 90
    const/16 v19, 0x0

    .line 91
    .line 92
    const-wide/16 v20, 0x0

    .line 93
    .line 94
    const-wide/16 v22, 0x0

    .line 95
    .line 96
    sget v25, Landroidx/compose/ui/text/style/LineBreak;->c:I

    .line 97
    .line 98
    move-wide v15, v4

    .line 99
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    shr-int/lit8 v1, v1, 0x3

    .line 104
    .line 105
    and-int/lit8 v9, v1, 0xe

    .line 106
    .line 107
    const/16 v10, 0x1f8

    .line 108
    .line 109
    move-object v1, v2

    .line 110
    move-object v2, v3

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v0 .. v10}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 121
    .line 122
    .line 123
    move-object/from16 v13, p0

    .line 124
    .line 125
    :goto_2
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    new-instance v2, Lt2;

    .line 132
    .line 133
    invoke-direct {v2, v11, v12, v13, v0}, Lt2;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 137
    .line 138
    :cond_4
    return-void
.end method

.method public static final f(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    move-object/from16 v8, p2

    .line 8
    .line 9
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v1, -0x6269b40

    .line 12
    .line 13
    .line 14
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int/2addr v1, v11

    .line 27
    and-int/lit8 v2, v11, 0x30

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/16 v2, 0x20

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v2, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v1, v2

    .line 43
    :cond_2
    and-int/lit8 v2, v1, 0x13

    .line 44
    .line 45
    const/16 v3, 0x12

    .line 46
    .line 47
    if-eq v2, v3, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v2, 0x0

    .line 52
    :goto_2
    and-int/lit8 v3, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {v8, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 61
    .line 62
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 67
    .line 68
    iget-object v12, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 69
    .line 70
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 71
    .line 72
    const/16 v2, 0x24

    .line 73
    .line 74
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v15

    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    const v24, 0xff7ff9

    .line 81
    .line 82
    .line 83
    const-wide/16 v13, 0x0

    .line 84
    .line 85
    const-wide/16 v18, 0x0

    .line 86
    .line 87
    const-wide/16 v20, 0x0

    .line 88
    .line 89
    const/16 v22, 0x0

    .line 90
    .line 91
    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    and-int/lit8 v3, v1, 0xe

    .line 96
    .line 97
    shl-int/lit8 v1, v1, 0x15

    .line 98
    .line 99
    const/high16 v4, 0xe000000

    .line 100
    .line 101
    and-int/2addr v1, v4

    .line 102
    or-int v9, v3, v1

    .line 103
    .line 104
    const/16 v10, 0x2fa

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    const/4 v3, 0x0

    .line 108
    const/4 v4, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-static/range {v0 .. v10}, Lnet/blip/shared/PlatformTextKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    new-instance v2, Lt2;

    .line 125
    .line 126
    const/4 v3, 0x3

    .line 127
    invoke-direct {v2, v11, v3, v0, v7}, Lt2;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    :cond_5
    return-void
.end method

.method public static final g(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x23674cf6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p2, 0x6

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    or-int/2addr v0, p2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p2

    .line 26
    :goto_1
    and-int/lit8 v2, v0, 0x3

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eq v2, v1, :cond_2

    .line 31
    .line 32
    move v1, v4

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v1, v3

    .line 35
    :goto_2
    and-int/2addr v0, v4

    .line 36
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 43
    .line 44
    invoke-direct {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Builder;->j:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/16 v2, 0x30

    .line 61
    .line 62
    invoke-static {v0, v1, p1, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->f(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;Landroidx/compose/runtime/Composer;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 67
    .line 68
    .line 69
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    new-instance v0, Lg6;

    .line 76
    .line 77
    invoke-direct {v0, p0, p2, v3}, Lg6;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    :cond_4
    return-void
.end method
