.class public abstract Lnet/blip/android/ui/gallery/GalleryScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/net/Uri;FLandroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x24f5f18

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p3

    .line 26
    :goto_1
    and-int/lit8 v2, p3, 0x30

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v2, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v2

    .line 42
    :cond_3
    and-int/lit8 v2, v0, 0x13

    .line 43
    .line 44
    const/16 v3, 0x12

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-eq v2, v3, :cond_4

    .line 49
    .line 50
    move v2, v5

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move v2, v4

    .line 53
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p2, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    sget-object v2, Lnet/blip/libblip/FileType;->j:Lnet/blip/libblip/FileType$Companion;

    .line 62
    .line 63
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 64
    .line 65
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v2, v3, p0}, Lnet/blip/android/filetypes/FileType_UriKt;->a(Lnet/blip/libblip/FileType$Companion;Landroid/content/Context;Landroid/net/Uri;)Lnet/blip/libblip/FileType;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eq v2, v5, :cond_5

    .line 80
    .line 81
    if-eq v2, v1, :cond_5

    .line 82
    .line 83
    const v0, 0x2d78ae98

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    const v1, 0x2d77877d

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 97
    .line 98
    .line 99
    and-int/lit8 v0, v0, 0x7e

    .line 100
    .line 101
    invoke-static {p0, p1, p2, v0}, Lnet/blip/android/ui/gallery/GalleryScreenKt;->c(Landroid/net/Uri;FLandroidx/compose/runtime/Composer;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 109
    .line 110
    .line 111
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-eqz p2, :cond_7

    .line 116
    .line 117
    new-instance v0, Ls8;

    .line 118
    .line 119
    invoke-direct {v0, p0, p1, p3, v4}, Ls8;-><init>(Landroid/net/Uri;FII)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 123
    .line 124
    :cond_7
    return-void
.end method

.method public static final b(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move/from16 v8, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v9, p1

    .line 7
    .line 8
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x183282a5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x4

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int/2addr v0, v8

    .line 28
    and-int/lit8 v4, v0, 0x3

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eq v4, v1, :cond_1

    .line 33
    .line 34
    move v1, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v1, v5

    .line 37
    :goto_1
    and-int/lit8 v4, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {v9, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_b

    .line 44
    .line 45
    sget-object v1, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 46
    .line 47
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/navigation/NavHostController;

    .line 52
    .line 53
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 54
    .line 55
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/content/Context;

    .line 60
    .line 61
    and-int/lit8 v0, v0, 0xe

    .line 62
    .line 63
    if-eq v0, v2, :cond_2

    .line 64
    .line 65
    move v0, v5

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move v0, v6

    .line 68
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    if-ne v7, v10, :cond_4

    .line 77
    .line 78
    :cond_3
    new-instance v7, Lr1;

    .line 79
    .line 80
    const/16 v0, 0x13

    .line 81
    .line 82
    invoke-direct {v7, v0, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 89
    .line 90
    invoke-static {v7, v9}, Landroidx/compose/foundation/pager/PagerStateKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/pager/PagerState;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-ne v7, v10, :cond_5

    .line 99
    .line 100
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 110
    .line 111
    invoke-static {v6, v9}, Lnet/blip/android/ui/navigation/ShareInAppKt;->a(ILandroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 116
    .line 117
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    check-cast v11, Landroid/view/View;

    .line 122
    .line 123
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    check-cast v12, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    if-nez v13, :cond_6

    .line 141
    .line 142
    if-ne v14, v10, :cond_7

    .line 143
    .line 144
    :cond_6
    new-instance v14, Lb;

    .line 145
    .line 146
    const/16 v10, 0xd

    .line 147
    .line 148
    invoke-direct {v14, v10, v11, v7}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    invoke-static {v12, v14, v9}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    check-cast v10, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_8

    .line 170
    .line 171
    const/4 v10, 0x0

    .line 172
    goto :goto_3

    .line 173
    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    .line 174
    .line 175
    :goto_3
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    check-cast v11, Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_9

    .line 186
    .line 187
    const/16 v11, 0x12c

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_9
    const/16 v11, 0x190

    .line 191
    .line 192
    :goto_4
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    check-cast v12, Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-eqz v12, :cond_a

    .line 203
    .line 204
    const/16 v12, 0x64

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_a
    move v12, v5

    .line 208
    :goto_5
    const/4 v13, 0x0

    .line 209
    invoke-static {v11, v12, v13, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    const/16 v11, 0x1c

    .line 214
    .line 215
    invoke-static {v10, v2, v9, v5, v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    sget-object v5, Lnet/blip/shared/LightDarkTheme;->j:Lnet/blip/shared/LightDarkTheme;

    .line 220
    .line 221
    move-object v5, v4

    .line 222
    move-object v4, v0

    .line 223
    new-instance v0, Lu8;

    .line 224
    .line 225
    move-object v3, p0

    .line 226
    invoke-direct/range {v0 .. v7}, Lu8;-><init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    .line 227
    .line 228
    .line 229
    const v1, -0x4a9cbb73

    .line 230
    .line 231
    .line 232
    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v1, 0x36

    .line 237
    .line 238
    invoke-static {v0, v9, v1}, Lnet/blip/android/ui/androidtheme/AndroidThemeKt;->b(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 243
    .line 244
    .line 245
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    new-instance v1, Lx5;

    .line 252
    .line 253
    invoke-direct {v1, v8, p0}, Lx5;-><init>(ILjava/util/List;)V

    .line 254
    .line 255
    .line 256
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 257
    .line 258
    :cond_c
    return-void
.end method

.method public static final c(Landroid/net/Uri;FLandroidx/compose/runtime/Composer;I)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v11, p2

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v3, -0x46c7aa3f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v3, v2, 0x6

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v4

    .line 31
    :goto_0
    or-int/2addr v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, v2

    .line 34
    :goto_1
    and-int/lit8 v5, v2, 0x30

    .line 35
    .line 36
    if-nez v5, :cond_3

    .line 37
    .line 38
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    const/16 v5, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v5, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v3, v5

    .line 50
    :cond_3
    and-int/lit8 v5, v3, 0x13

    .line 51
    .line 52
    const/16 v6, 0x12

    .line 53
    .line 54
    const/4 v14, 0x1

    .line 55
    if-eq v5, v6, :cond_4

    .line 56
    .line 57
    move v5, v14

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/4 v5, 0x0

    .line 60
    :goto_3
    and-int/2addr v3, v14

    .line 61
    invoke-virtual {v11, v3, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 68
    .line 69
    invoke-static {v3, v1}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/high16 v5, 0x41c00000    # 24.0f

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-static {v3, v5, v6, v4}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/high16 v4, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const/high16 v4, 0x41800000    # 16.0f

    .line 87
    .line 88
    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/16 v5, 0x36

    .line 93
    .line 94
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 95
    .line 96
    invoke-static {v4, v6, v11, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-wide v5, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 101
    .line 102
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 120
    .line 121
    .line 122
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 123
    .line 124
    if-eqz v7, :cond_5

    .line 125
    .line 126
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 127
    .line 128
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 133
    .line 134
    .line 135
    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 136
    .line 137
    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 141
    .line 142
    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 150
    .line 151
    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 155
    .line 156
    .line 157
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 158
    .line 159
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-nez v3, :cond_6

    .line 167
    .line 168
    const-string v3, "Unknown"

    .line 169
    .line 170
    :cond_6
    :try_start_0
    invoke-static {v0}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 175
    .line 176
    .line 177
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_5
    move-wide v15, v4

    .line 179
    goto :goto_6

    .line 180
    :catch_0
    const-wide/16 v4, 0x0

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :goto_6
    sget-object v4, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 184
    .line 185
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    sget-object v5, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 190
    .line 191
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 196
    .line 197
    iget-object v6, v6, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 198
    .line 199
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 200
    .line 201
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    check-cast v8, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 206
    .line 207
    iget-wide v8, v8, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 208
    .line 209
    const/16 v30, 0xd

    .line 210
    .line 211
    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v20

    .line 215
    const/16 v28, 0x0

    .line 216
    .line 217
    const v29, 0xfffffc

    .line 218
    .line 219
    .line 220
    const/16 v22, 0x0

    .line 221
    .line 222
    const-wide/16 v23, 0x0

    .line 223
    .line 224
    const-wide/16 v25, 0x0

    .line 225
    .line 226
    const/16 v27, 0x0

    .line 227
    .line 228
    move-object/from16 v17, v6

    .line 229
    .line 230
    move-wide/from16 v18, v8

    .line 231
    .line 232
    invoke-static/range {v17 .. v29}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    const/4 v12, 0x0

    .line 237
    const/16 v13, 0x1f8

    .line 238
    .line 239
    move-object v8, v5

    .line 240
    move-object v5, v6

    .line 241
    const/4 v6, 0x0

    .line 242
    move-object v9, v7

    .line 243
    const/4 v7, 0x0

    .line 244
    move-object v10, v8

    .line 245
    const/4 v8, 0x0

    .line 246
    move-object/from16 v17, v9

    .line 247
    .line 248
    const/4 v9, 0x0

    .line 249
    move-object/from16 v18, v10

    .line 250
    .line 251
    const/4 v10, 0x0

    .line 252
    move-object/from16 v14, v18

    .line 253
    .line 254
    move-wide/from16 v31, v15

    .line 255
    .line 256
    move-object/from16 v15, v17

    .line 257
    .line 258
    move-wide/from16 v17, v31

    .line 259
    .line 260
    invoke-static/range {v3 .. v13}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 261
    .line 262
    .line 263
    invoke-static/range {v17 .. v18}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 272
    .line 273
    iget-object v4, v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 274
    .line 275
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 280
    .line 281
    iget-wide v5, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 282
    .line 283
    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v19

    .line 287
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 288
    .line 289
    const/16 v27, 0x0

    .line 290
    .line 291
    const v28, 0xfffff8

    .line 292
    .line 293
    .line 294
    const-wide/16 v22, 0x0

    .line 295
    .line 296
    const-wide/16 v24, 0x0

    .line 297
    .line 298
    const/16 v26, 0x0

    .line 299
    .line 300
    move-object/from16 v16, v4

    .line 301
    .line 302
    move-wide/from16 v17, v5

    .line 303
    .line 304
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    const/16 v13, 0x1fa

    .line 309
    .line 310
    const/4 v4, 0x0

    .line 311
    const/4 v6, 0x0

    .line 312
    invoke-static/range {v3 .. v13}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 313
    .line 314
    .line 315
    const/4 v3, 0x1

    .line 316
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_7
    move v3, v14

    .line 321
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 322
    .line 323
    .line 324
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    if-eqz v4, :cond_8

    .line 329
    .line 330
    new-instance v5, Ls8;

    .line 331
    .line 332
    invoke-direct {v5, v0, v1, v2, v3}, Ls8;-><init>(Landroid/net/Uri;FII)V

    .line 333
    .line 334
    .line 335
    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 336
    .line 337
    :cond_8
    return-void
.end method
