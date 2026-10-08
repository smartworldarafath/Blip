.class public abstract Lnet/blip/android/ui/settings/SettingsComposablesKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)V
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, 0x190219cb

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    and-int/lit8 v0, p0, 0x1

    .line 16
    .line 17
    invoke-virtual {v4, v0, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    const/high16 v0, 0x41000000    # 8.0f

    .line 26
    .line 27
    invoke-static {p1, v0}, Lnet/blip/shared/OutsetParentKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/16 v6, 0xe

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    new-instance v0, Lcf;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcf;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x5305c89a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    or-int/lit8 v1, v0, 0x6

    .line 14
    .line 15
    and-int/lit8 v2, v1, 0x13

    .line 16
    .line 17
    const/16 v3, 0x12

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    move v2, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    and-int/2addr v1, v4

    .line 26
    invoke-virtual {v9, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/16 v7, 0xa

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 36
    .line 37
    const/high16 v3, 0x41c00000    # 24.0f

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/high16 v5, 0x42400000    # 48.0f

    .line 41
    .line 42
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v12, v2

    .line 47
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 48
    .line 49
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 54
    .line 55
    iget-object v13, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 56
    .line 57
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 58
    .line 59
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 64
    .line 65
    iget-wide v14, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 66
    .line 67
    const/16 v2, 0xe

    .line 68
    .line 69
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v16

    .line 73
    const/16 v24, 0x0

    .line 74
    .line 75
    const v25, 0xfffffc

    .line 76
    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const-wide/16 v19, 0x0

    .line 81
    .line 82
    const-wide/16 v21, 0x0

    .line 83
    .line 84
    const/16 v23, 0x0

    .line 85
    .line 86
    invoke-static/range {v13 .. v25}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v10, 0x6

    .line 91
    const/16 v11, 0x1f8

    .line 92
    .line 93
    move-object v2, v1

    .line 94
    const-string v1, "Your device\'s name is visible only to you."

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-static/range {v1 .. v11}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 106
    .line 107
    .line 108
    move-object/from16 v12, p0

    .line 109
    .line 110
    :goto_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    new-instance v2, Lr4;

    .line 117
    .line 118
    const/4 v3, 0x6

    .line 119
    invoke-direct {v2, v12, v0, v3}, Lr4;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 120
    .line 121
    .line 122
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 123
    .line 124
    :cond_2
    return-void
.end method

.method public static final c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    .line 1
    move-object v4, p2

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, -0x4f8c25e

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
    and-int/lit8 v0, p4, 0x2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x20

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v0, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr p2, v0

    .line 36
    and-int/lit8 v0, p2, 0x13

    .line 37
    .line 38
    const/16 v1, 0x12

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v7, 0x1

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    move v0, v7

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_2
    and-int/lit8 v1, p2, 0x1

    .line 48
    .line 49
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_8

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 56
    .line 57
    .line 58
    and-int/lit8 v0, p3, 0x1

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 70
    .line 71
    .line 72
    and-int/lit8 v0, p4, 0x2

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    :goto_3
    and-int/lit8 p2, p2, -0x71

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_4
    :goto_4
    and-int/lit8 v0, p4, 0x2

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    sget-object p1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 84
    .line 85
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 90
    .line 91
    iget-wide v0, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 92
    .line 93
    new-instance p1, Landroidx/compose/ui/graphics/Color;

    .line 94
    .line 95
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 100
    .line 101
    .line 102
    const/high16 v0, 0x42700000    # 60.0f

    .line 103
    .line 104
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 105
    .line 106
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 111
    .line 112
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-wide v5, v4, Landroidx/compose/runtime/GapComposer;->T:J

    .line 117
    .line 118
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 136
    .line 137
    .line 138
    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 143
    .line 144
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 149
    .line 150
    .line 151
    :goto_6
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 152
    .line 153
    invoke-static {v4, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 157
    .line 158
    invoke-static {v4, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 166
    .line 167
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 171
    .line 172
    .line 173
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 174
    .line 175
    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 176
    .line 177
    .line 178
    const/high16 v0, 0x41d00000    # 26.0f

    .line 179
    .line 180
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz p1, :cond_7

    .line 185
    .line 186
    iget-wide v0, p1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 187
    .line 188
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :goto_7
    move-object v3, v0

    .line 193
    goto :goto_8

    .line 194
    :cond_7
    const/4 v0, 0x0

    .line 195
    goto :goto_7

    .line 196
    :goto_8
    and-int/lit8 p2, p2, 0xe

    .line 197
    .line 198
    or-int/lit16 v5, p2, 0x1b0

    .line 199
    .line 200
    const/16 v6, 0x38

    .line 201
    .line 202
    const/4 v1, 0x0

    .line 203
    move-object v0, p0

    .line 204
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_8
    move-object v0, p0

    .line 212
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 213
    .line 214
    .line 215
    :goto_9
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    if-eqz p0, :cond_9

    .line 220
    .line 221
    new-instance p2, Lt2;

    .line 222
    .line 223
    invoke-direct {p2, v0, p1, p3, p4}, Lt2;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;II)V

    .line 224
    .line 225
    .line 226
    iput-object p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 227
    .line 228
    :cond_9
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x33e5519c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p4, 0x6

    .line 12
    .line 13
    and-int/lit8 v1, p5, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    or-int/lit8 v0, p4, 0x36

    .line 18
    .line 19
    :cond_0
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    and-int/lit8 v2, p4, 0x30

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v3, 0x10

    .line 38
    .line 39
    :goto_0
    or-int/2addr v0, v3

    .line 40
    :goto_1
    and-int/lit16 v3, v0, 0x93

    .line 41
    .line 42
    const/16 v5, 0x92

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    if-eq v3, v5, :cond_3

    .line 47
    .line 48
    move v3, v8

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move v3, v7

    .line 51
    :goto_2
    and-int/lit8 v5, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {v4, v5, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_7

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move-object v1, v2

    .line 64
    :goto_3
    const/4 v2, 0x0

    .line 65
    const/high16 v3, 0x41c00000    # 24.0f

    .line 66
    .line 67
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 68
    .line 69
    invoke-static {v9, v2, v3, v8}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 74
    .line 75
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 76
    .line 77
    const/16 v6, 0x36

    .line 78
    .line 79
    invoke-static {v3, v5, v4, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-wide v5, v4, Landroidx/compose/runtime/GapComposer;->T:J

    .line 84
    .line 85
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {v4, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 103
    .line 104
    .line 105
    iget-boolean v10, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 106
    .line 107
    if-eqz v10, :cond_5

    .line 108
    .line 109
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 110
    .line 111
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 116
    .line 117
    .line 118
    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 119
    .line 120
    invoke-static {v4, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 124
    .line 125
    invoke-static {v4, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 133
    .line 134
    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 138
    .line 139
    .line 140
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 141
    .line 142
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    const/4 v15, 0x6

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    const v2, -0x40a9b6dc

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 152
    .line 153
    .line 154
    const/4 v12, 0x0

    .line 155
    const/4 v14, 0x6

    .line 156
    const/high16 v10, 0x41400000    # 12.0f

    .line 157
    .line 158
    const/4 v11, 0x0

    .line 159
    move v13, v10

    .line 160
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    and-int/lit8 v0, v0, 0x70

    .line 165
    .line 166
    or-int/lit8 v5, v0, 0x6

    .line 167
    .line 168
    const/4 v6, 0x4

    .line 169
    move-object v0, v2

    .line 170
    const-wide/16 v2, 0x0

    .line 171
    .line 172
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/components/SubheadingKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    const v0, -0x40a82170

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 186
    .line 187
    .line 188
    :goto_5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    move-object/from16 v13, p2

    .line 193
    .line 194
    invoke-virtual {v13, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 198
    .line 199
    .line 200
    move-object v12, v1

    .line 201
    move-object v11, v9

    .line 202
    goto :goto_6

    .line 203
    :cond_7
    move-object/from16 v13, p2

    .line 204
    .line 205
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 206
    .line 207
    .line 208
    move-object/from16 v11, p0

    .line 209
    .line 210
    move-object v12, v2

    .line 211
    :goto_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_8

    .line 216
    .line 217
    new-instance v10, Lz3;

    .line 218
    .line 219
    const/16 v16, 0x4

    .line 220
    .line 221
    move/from16 v14, p4

    .line 222
    .line 223
    move/from16 v15, p5

    .line 224
    .line 225
    invoke-direct/range {v10 .. v16}, Lz3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 226
    .line 227
    .line 228
    iput-object v10, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 229
    .line 230
    :cond_8
    return-void
.end method
