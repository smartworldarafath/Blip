.class public final synthetic Lnet/blip/android/shortcuts/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lnet/blip/libblip/Peer;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/shortcuts/b;->j:Lnet/blip/libblip/Peer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lnet/blip/android/ui/util/CaptureScope;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 8
    .line 9
    move-object/from16 v2, p3

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v3, v2, 0x6

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    and-int/lit8 v3, v2, 0x8

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move-object v3, v1

    .line 30
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v3, v1

    .line 38
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    move v3, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v3, 0x2

    .line 49
    :goto_1
    or-int/2addr v2, v3

    .line 50
    :cond_2
    and-int/lit8 v3, v2, 0x13

    .line 51
    .line 52
    const/16 v5, 0x12

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x1

    .line 56
    if-eq v3, v5, :cond_3

    .line 57
    .line 58
    move v3, v7

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v3, v6

    .line 61
    :goto_2
    and-int/lit8 v5, v2, 0x1

    .line 62
    .line 63
    move-object v12, v1

    .line 64
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 65
    .line 66
    invoke-virtual {v12, v5, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    if-eqz v1, :cond_d

    .line 73
    .line 74
    and-int/lit8 v1, v2, 0xe

    .line 75
    .line 76
    if-eq v1, v4, :cond_5

    .line 77
    .line 78
    and-int/lit8 v5, v2, 0x8

    .line 79
    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v5, v6

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    :goto_3
    move v5, v7

    .line 92
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 97
    .line 98
    if-nez v5, :cond_6

    .line 99
    .line 100
    if-ne v8, v9, :cond_7

    .line 101
    .line 102
    :cond_6
    new-instance v8, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-direct {v8, v0, v5}, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1;-><init>(Lnet/blip/android/ui/util/CaptureScope;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 112
    .line 113
    invoke-static {v12, v3, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    new-instance v5, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 117
    .line 118
    sget-object v8, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->b:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 119
    .line 120
    iget-wide v10, v8, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 121
    .line 122
    invoke-direct {v5, v10, v11}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;-><init>(J)V

    .line 123
    .line 124
    .line 125
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 126
    .line 127
    const/high16 v11, 0x3f800000    # 1.0f

    .line 128
    .line 129
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    iget-wide v14, v8, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 134
    .line 135
    sget-object v8, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 136
    .line 137
    invoke-static {v13, v14, v15, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 142
    .line 143
    invoke-static {v13, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    iget-wide v14, v12, Landroidx/compose/runtime/GapComposer;->T:J

    .line 148
    .line 149
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    invoke-static {v12, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 162
    .line 163
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 167
    .line 168
    .line 169
    iget-boolean v6, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 170
    .line 171
    if-eqz v6, :cond_8

    .line 172
    .line 173
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 174
    .line 175
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 180
    .line 181
    .line 182
    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 183
    .line 184
    invoke-static {v12, v13, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 188
    .line 189
    invoke-static {v12, v15, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 197
    .line 198
    invoke-static {v12, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 202
    .line 203
    .line 204
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 205
    .line 206
    invoke-static {v12, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const/high16 v8, 0x40000000    # 2.0f

    .line 214
    .line 215
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    mul-float/2addr v10, v8

    .line 220
    add-float/2addr v10, v11

    .line 221
    div-float/2addr v11, v10

    .line 222
    invoke-static {v6, v11}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    if-eq v1, v4, :cond_a

    .line 227
    .line 228
    and-int/lit8 v1, v2, 0x8

    .line 229
    .line 230
    if-eqz v1, :cond_9

    .line 231
    .line 232
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_9

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_9
    const/4 v6, 0x0

    .line 240
    goto :goto_7

    .line 241
    :cond_a
    :goto_6
    move v6, v7

    .line 242
    :goto_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-nez v6, :cond_b

    .line 247
    .line 248
    if-ne v1, v9, :cond_c

    .line 249
    .line 250
    :cond_b
    new-instance v1, Lma;

    .line 251
    .line 252
    const/16 v2, 0x19

    .line 253
    .line 254
    invoke-direct {v1, v2, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_c
    move-object v11, v1

    .line 261
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 262
    .line 263
    const/4 v13, 0x0

    .line 264
    const/4 v14, 0x0

    .line 265
    move-object/from16 v0, p0

    .line 266
    .line 267
    iget-object v10, v0, Lnet/blip/android/shortcuts/b;->j:Lnet/blip/libblip/Peer;

    .line 268
    .line 269
    move-object v9, v5

    .line 270
    invoke-static/range {v8 .. v14}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 274
    .line 275
    .line 276
    return-object v3

    .line 277
    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 278
    .line 279
    .line 280
    return-object v3
.end method
