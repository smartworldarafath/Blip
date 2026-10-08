.class public abstract Lnet/blip/android/ui/androidtheme/AndroidThemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v3, 0x64eff564

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v3, v1, 0x6

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v4

    .line 29
    :goto_0
    or-int/2addr v3, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v1

    .line 32
    :goto_1
    and-int/lit8 v5, v3, 0x3

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x1

    .line 36
    if-eq v5, v4, :cond_2

    .line 37
    .line 38
    move v4, v7

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v4, v6

    .line 41
    :goto_2
    and-int/2addr v3, v7

    .line 42
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    invoke-static {v2}, Lnet/blip/shared/LightDarkThemeKt;->a(Landroidx/compose/runtime/Composer;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->b:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->c:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 58
    .line 59
    :goto_3
    iget-wide v8, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 60
    .line 61
    new-instance v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 62
    .line 63
    sget-object v13, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->c:Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 64
    .line 65
    sget-wide v10, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->b:J

    .line 66
    .line 67
    sget-object v12, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 68
    .line 69
    const-wide v14, 0x3ff2666666666666L    # 1.15

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    .line 75
    .line 76
    .line 77
    move-result-wide v17

    .line 78
    new-instance v7, Landroidx/compose/ui/text/TextStyle;

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const v20, 0xddffd8

    .line 83
    .line 84
    .line 85
    const-wide/16 v14, 0x0

    .line 86
    .line 87
    const v19, 0x20203

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v7 .. v20}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 91
    .line 92
    .line 93
    move-object v5, v7

    .line 94
    const-wide v14, 0x3ff7333333333333L    # 1.45

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    .line 100
    .line 101
    .line 102
    move-result-wide v17

    .line 103
    new-instance v7, Landroidx/compose/ui/text/TextStyle;

    .line 104
    .line 105
    const v20, 0xddffdc

    .line 106
    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    const-wide/16 v14, 0x0

    .line 110
    .line 111
    const v19, 0x10402

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v7 .. v20}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v4, v5, v7}, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 121
    .line 122
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sget-object v7, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 133
    .line 134
    new-instance v8, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 135
    .line 136
    iget-wide v9, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 137
    .line 138
    invoke-direct {v8, v9, v10}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;-><init>(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    sget-object v8, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 146
    .line 147
    iget-wide v9, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 148
    .line 149
    new-instance v11, Landroidx/compose/material/RippleConfiguration;

    .line 150
    .line 151
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->e(J)F

    .line 152
    .line 153
    .line 154
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->b:J

    .line 155
    .line 156
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->e(J)F

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    float-to-double v12, v12

    .line 161
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 162
    .line 163
    cmpl-double v12, v12, v14

    .line 164
    .line 165
    if-lez v12, :cond_4

    .line 166
    .line 167
    sget-object v12, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/ripple/RippleAlpha;

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_4
    sget-object v12, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/RippleAlpha;

    .line 171
    .line 172
    :goto_4
    invoke-direct {v11, v9, v10, v12}, Landroidx/compose/material/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    filled-new-array {v5, v4, v7, v8}, [Landroidx/compose/runtime/ProvidedValue;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    new-instance v5, Lk2;

    .line 184
    .line 185
    invoke-direct {v5, v3, v0, v6}, Lk2;-><init>(Lnet/blip/android/ui/androidtheme/AndroidColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 186
    .line 187
    .line 188
    const v3, 0x4f48fa24

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const/16 v5, 0x30

    .line 196
    .line 197
    invoke-static {v4, v3, v2, v5}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 202
    .line 203
    .line 204
    :goto_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-eqz v2, :cond_6

    .line 209
    .line 210
    new-instance v3, Ll2;

    .line 211
    .line 212
    invoke-direct {v3, v1, v6, v0}, Ll2;-><init>(IILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 216
    .line 217
    :cond_6
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    .line 1
    sget-object v0, Lnet/blip/shared/LightDarkTheme;->k:Lnet/blip/shared/LightDarkTheme;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, -0x73b19ded

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p2, 0x13

    .line 12
    .line 13
    const/16 v2, 0x12

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_0
    and-int/lit8 v2, p2, 0x1

    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    sget-object v1, Lnet/blip/shared/LightDarkThemeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lc0;

    .line 37
    .line 38
    invoke-direct {v1, p0, v4, v3}, Lc0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;IB)V

    .line 39
    .line 40
    .line 41
    const v2, -0x64cbaad    # -1.163534E35f

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/16 v2, 0x38

    .line 49
    .line 50
    invoke-static {v0, v1, p1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    new-instance v0, Lc0;

    .line 64
    .line 65
    invoke-direct {v0, p0, p2}, Lc0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    :cond_2
    return-void
.end method
