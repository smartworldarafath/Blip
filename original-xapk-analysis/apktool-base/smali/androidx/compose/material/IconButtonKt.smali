.class public abstract Landroidx/compose/material/IconButtonKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x4e7aa5a1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, v5, 0x6

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x2

    .line 29
    :goto_0
    or-int/2addr v1, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v1, v5

    .line 32
    :goto_1
    and-int/lit8 v3, p6, 0x2

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    or-int/lit8 v1, v1, 0x30

    .line 37
    .line 38
    :cond_2
    move-object/from16 v6, p1

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    and-int/lit8 v6, v5, 0x30

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    move-object/from16 v6, p1

    .line 46
    .line 47
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_4

    .line 52
    .line 53
    const/16 v7, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    const/16 v7, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v1, v7

    .line 59
    :goto_3
    or-int/lit16 v1, v1, 0xd80

    .line 60
    .line 61
    and-int/lit16 v7, v5, 0x6000

    .line 62
    .line 63
    if-nez v7, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_5

    .line 70
    .line 71
    const/16 v7, 0x4000

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    const/16 v7, 0x2000

    .line 75
    .line 76
    :goto_4
    or-int/2addr v1, v7

    .line 77
    :cond_6
    and-int/lit16 v7, v1, 0x2493

    .line 78
    .line 79
    const/16 v8, 0x2492

    .line 80
    .line 81
    const/4 v13, 0x1

    .line 82
    const/4 v14, 0x0

    .line 83
    if-eq v7, v8, :cond_7

    .line 84
    .line 85
    move v7, v13

    .line 86
    goto :goto_5

    .line 87
    :cond_7
    move v7, v14

    .line 88
    :goto_5
    and-int/lit8 v8, v1, 0x1

    .line 89
    .line 90
    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_c

    .line 95
    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_8
    move-object v3, v6

    .line 102
    :goto_6
    sget-object v6, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 103
    .line 104
    sget-object v6, Landroidx/compose/material/MinimumInteractiveModifier;->b:Landroidx/compose/material/MinimumInteractiveModifier;

    .line 105
    .line 106
    invoke-interface {v3, v6}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const-wide/16 v7, 0x0

    .line 111
    .line 112
    invoke-static {v2, v7, v8, v14}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    new-instance v10, Landroidx/compose/ui/semantics/Role;

    .line 117
    .line 118
    invoke-direct {v10, v14}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 119
    .line 120
    .line 121
    const/16 v12, 0x8

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v9, 0x1

    .line 125
    move-object v11, p0

    .line 126
    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 131
    .line 132
    invoke-static {v6, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 149
    .line 150
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 154
    .line 155
    .line 156
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 157
    .line 158
    if-eqz v10, :cond_9

    .line 159
    .line 160
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 161
    .line 162
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 167
    .line 168
    .line 169
    :goto_7
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 170
    .line 171
    invoke-static {v0, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 175
    .line 176
    invoke-static {v0, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 180
    .line 181
    if-nez v6, :cond_a

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_b

    .line 196
    .line 197
    :cond_a
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 198
    .line 199
    invoke-static {v7, v0, v7, v6}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 200
    .line 201
    .line 202
    :cond_b
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 203
    .line 204
    invoke-static {v0, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 205
    .line 206
    .line 207
    const v2, -0x6fbd9c5e

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 211
    .line 212
    .line 213
    sget-object v2, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, Ljava/lang/Number;

    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 226
    .line 227
    .line 228
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    shr-int/lit8 v1, v1, 0x9

    .line 237
    .line 238
    and-int/lit8 v1, v1, 0x70

    .line 239
    .line 240
    const/16 v6, 0x8

    .line 241
    .line 242
    or-int/2addr v1, v6

    .line 243
    invoke-static {v2, v4, v0, v1}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 247
    .line 248
    .line 249
    move-object v2, v3

    .line 250
    move v3, v9

    .line 251
    goto :goto_8

    .line 252
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 253
    .line 254
    .line 255
    move/from16 v3, p2

    .line 256
    .line 257
    move-object v2, v6

    .line 258
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    if-eqz v7, :cond_d

    .line 263
    .line 264
    new-instance v0, Ls9;

    .line 265
    .line 266
    move-object v1, p0

    .line 267
    move/from16 v6, p6

    .line 268
    .line 269
    invoke-direct/range {v0 .. v6}, Ls9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 270
    .line 271
    .line 272
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 273
    .line 274
    :cond_d
    return-void
.end method
