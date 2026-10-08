.class final Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/core/TransitionInstance;

.field public final synthetic l:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->k:Landroidx/compose/animation/core/TransitionInstance;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->l:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->m:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    and-int/lit8 v2, p2, 0x3

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v0

    .line 23
    :goto_0
    and-int/2addr p2, v4

    .line 24
    move-object v10, p1

    .line 25
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {v10, p2, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_e

    .line 32
    .line 33
    new-instance p1, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$alpha$2;

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->l:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 36
    .line 37
    invoke-direct {p1, p2}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$alpha$2;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->k:Landroidx/compose/animation/core/TransitionInstance;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v2, v5, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 47
    .line 48
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 49
    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    const p2, 0x6355e4b0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-nez p2, :cond_1

    .line 67
    .line 68
    if-ne v6, v3, :cond_3

    .line 69
    .line 70
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v6, 0x0

    .line 82
    :goto_1
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {p2, v7, v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v6, v2

    .line 97
    :cond_3
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object p0, v0

    .line 103
    invoke-static {p2, v7, v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    const p2, 0x6359c50d

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    :goto_2
    const p2, 0x522f0047

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->m:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    const/4 v7, 0x0

    .line 133
    const/high16 v8, 0x3f800000    # 1.0f

    .line 134
    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    move v6, v8

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    move v6, v7

    .line 140
    :goto_3
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 141
    .line 142
    .line 143
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    if-nez v9, :cond_6

    .line 156
    .line 157
    if-ne v11, v3, :cond_7

    .line 158
    .line 159
    :cond_6
    new-instance v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1;

    .line 160
    .line 161
    invoke-direct {v9, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1;-><init>(Landroidx/compose/animation/core/TransitionInstance;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    check-cast v11, Landroidx/compose/runtime/State;

    .line 172
    .line 173
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-eqz p2, :cond_8

    .line 185
    .line 186
    move v7, v8

    .line 187
    :cond_8
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 188
    .line 189
    .line 190
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    if-nez p2, :cond_9

    .line 203
    .line 204
    if-ne v8, v3, :cond_a

    .line 205
    .line 206
    :cond_9
    new-instance p2, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2;

    .line 207
    .line 208
    invoke-direct {p2, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2;-><init>(Landroidx/compose/animation/core/TransitionInstance;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_a
    check-cast v8, Landroidx/compose/runtime/State;

    .line 219
    .line 220
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1, p2, v10, v1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$alpha$2;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    move-object v8, p1

    .line 229
    check-cast v8, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 230
    .line 231
    const/4 v11, 0x0

    .line 232
    sget-object v9, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 233
    .line 234
    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    if-nez p2, :cond_b

    .line 247
    .line 248
    if-ne v5, v3, :cond_c

    .line 249
    .line 250
    :cond_b
    new-instance v5, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$1$1;

    .line 251
    .line 252
    invoke-direct {v5, p1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1$1$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 259
    .line 260
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 261
    .line 262
    invoke-static {p1, v5}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 267
    .line 268
    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    iget-wide v5, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 273
    .line 274
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v10, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 292
    .line 293
    .line 294
    iget-boolean v5, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 295
    .line 296
    if-eqz v5, :cond_d

    .line 297
    .line 298
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 299
    .line 300
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 305
    .line 306
    .line 307
    :goto_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 308
    .line 309
    invoke-static {v10, p2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    .line 311
    .line 312
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 313
    .line 314
    invoke-static {v10, v3, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-static {v10, p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 325
    .line 326
    .line 327
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 328
    .line 329
    invoke-static {v10, p1, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    iget-object p0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 333
    .line 334
    invoke-virtual {p0, v2, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 342
    .line 343
    .line 344
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 345
    .line 346
    return-object p0
.end method
