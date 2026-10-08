.class public abstract Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x210f812f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int v0, p4, v0

    .line 27
    .line 28
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v4, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v4

    .line 40
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const/16 v4, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v4, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v4

    .line 52
    and-int/lit16 v4, v0, 0x93

    .line 53
    .line 54
    const/16 v5, 0x92

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    if-eq v4, v5, :cond_3

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v4, v6

    .line 62
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {v11, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_c

    .line 69
    .line 70
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 71
    .line 72
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v7, 0x0

    .line 83
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 84
    .line 85
    if-ne v5, v8, :cond_4

    .line 86
    .line 87
    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v10, 0x21

    .line 99
    .line 100
    if-lt v9, v10, :cond_5

    .line 101
    .line 102
    const v9, -0xca5cc03

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 106
    .line 107
    .line 108
    const-string v9, "android.permission.READ_MEDIA_AUDIO"

    .line 109
    .line 110
    invoke-static {v9, v11}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->c(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    const v9, -0xca41d48

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 122
    .line 123
    .line 124
    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    .line 125
    .line 126
    invoke-static {v9, v11}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->c(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 131
    .line 132
    .line 133
    :goto_4
    iget-boolean v6, v9, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 134
    .line 135
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    if-ne v10, v8, :cond_6

    .line 140
    .line 141
    new-instance v12, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 142
    .line 143
    const/high16 v13, 0x41400000    # 12.0f

    .line 144
    .line 145
    const/16 v14, 0x3c

    .line 146
    .line 147
    move v15, v13

    .line 148
    move/from16 v16, v14

    .line 149
    .line 150
    move/from16 v17, v13

    .line 151
    .line 152
    move/from16 v18, v14

    .line 153
    .line 154
    move/from16 v19, v13

    .line 155
    .line 156
    move/from16 v20, v14

    .line 157
    .line 158
    invoke-direct/range {v12 .. v20}, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;-><init>(FIFIFIFI)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    move-object v10, v12

    .line 165
    :cond_6
    check-cast v10, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 166
    .line 167
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    or-int/2addr v13, v14

    .line 180
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    if-nez v13, :cond_7

    .line 185
    .line 186
    if-ne v14, v8, :cond_8

    .line 187
    .line 188
    :cond_7
    new-instance v14, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;

    .line 189
    .line 190
    invoke-direct {v14, v9, v4, v5, v7}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    invoke-static {v11, v12, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    if-nez v6, :cond_9

    .line 202
    .line 203
    sget-object v4, Lnet/blip/android/ui/audiopicker/ListState$NoPermission;->a:Lnet/blip/android/ui/audiopicker/ListState$NoPermission;

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_9
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Ljava/util/List;

    .line 211
    .line 212
    if-nez v4, :cond_a

    .line 213
    .line 214
    sget-object v4, Lnet/blip/android/ui/audiopicker/ListState$Loading;->a:Lnet/blip/android/ui/audiopicker/ListState$Loading;

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_a
    new-instance v4, Lnet/blip/android/ui/audiopicker/ListState$Loaded;

    .line 218
    .line 219
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Ljava/util/List;

    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-direct {v4, v5}, Lnet/blip/android/ui/audiopicker/ListState$Loaded;-><init>(Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    if-ne v5, v8, :cond_b

    .line 236
    .line 237
    new-instance v5, Lh;

    .line 238
    .line 239
    const/16 v6, 0x11

    .line 240
    .line 241
    invoke-direct {v5, v6}, Lh;-><init>(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_b
    move-object v6, v5

    .line 248
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    new-instance v5, Lj3;

    .line 251
    .line 252
    invoke-direct {v5, v2, v3, v9, v10}, Lj3;-><init>(FLkotlin/jvm/functions/Function1;Lnet/blip/android/ui/util/NuancedPermissionState;Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;)V

    .line 253
    .line 254
    .line 255
    const v7, -0x37a74df8

    .line 256
    .line 257
    .line 258
    invoke-static {v7, v5, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    shl-int/lit8 v0, v0, 0x3

    .line 263
    .line 264
    and-int/lit8 v0, v0, 0x70

    .line 265
    .line 266
    const v5, 0x186180

    .line 267
    .line 268
    .line 269
    or-int v12, v0, v5

    .line 270
    .line 271
    const/16 v13, 0x28

    .line 272
    .line 273
    const/4 v7, 0x0

    .line 274
    const-string v8, ""

    .line 275
    .line 276
    const/4 v9, 0x0

    .line 277
    move-object v5, v1

    .line 278
    invoke-static/range {v4 .. v13}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 283
    .line 284
    .line 285
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    if-eqz v6, :cond_d

    .line 290
    .line 291
    new-instance v0, Lk3;

    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    move-object/from16 v1, p0

    .line 295
    .line 296
    move/from16 v4, p4

    .line 297
    .line 298
    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Landroidx/compose/ui/Modifier;FLkotlin/Function;II)V

    .line 299
    .line 300
    .line 301
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 302
    .line 303
    :cond_d
    return-void
.end method

.method public static final b(Lnet/blip/android/ui/navigation/NavResultWriter;Landroidx/compose/runtime/Composer;I)V
    .locals 7

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
    const p1, -0x69d86fb2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x4

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    move p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v1

    .line 24
    :goto_0
    or-int/2addr p1, p2

    .line 25
    and-int/lit8 v2, p1, 0x3

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eq v2, v1, :cond_1

    .line 30
    .line 31
    move v1, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_1
    and-int/2addr p1, v5

    .line 35
    invoke-virtual {v4, p1, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/navigation/NavHostController;

    .line 48
    .line 49
    new-instance v1, Lg3;

    .line 50
    .line 51
    invoke-direct {v1, p1, v3}, Lg3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 52
    .line 53
    .line 54
    const v2, 0x3953dc6e

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v1, La0;

    .line 62
    .line 63
    invoke-direct {v1, v0, p0, p1}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const p1, 0x558d2fcd

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/16 v5, 0x1b0

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    new-instance v0, Lh3;

    .line 92
    .line 93
    invoke-direct {v0, p0, p2}, Lh3;-><init>(Lnet/blip/android/ui/navigation/NavResultWriter;I)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 97
    .line 98
    :cond_3
    return-void
.end method
