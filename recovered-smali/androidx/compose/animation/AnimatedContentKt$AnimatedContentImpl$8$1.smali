.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;
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
.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroidx/compose/animation/core/Transition;

.field public final synthetic m:Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

.field public final synthetic p:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final synthetic q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/PendingAnimatedContentTransitionScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->l:Landroidx/compose/animation/core/Transition;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->m:Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->n:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->o:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->p:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

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
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/2addr p2, v3

    .line 20
    move-object v11, p1

    .line 21
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    invoke-virtual {v11, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_10

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->l:Landroidx/compose/animation/core/Transition;

    .line 30
    .line 31
    iget-object p2, p1, Landroidx/compose/animation/core/Transition;->e:Landroidx/compose/runtime/MutableState;

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    move-object v1, p2

    .line 36
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->k:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->n:Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    iget-object v7, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->m:Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

    .line 59
    .line 60
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 61
    .line 62
    iget-object v9, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->o:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    if-ne v5, v8, :cond_4

    .line 67
    .line 68
    :cond_1
    move-object v1, p2

    .line 69
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 88
    .line 89
    :goto_1
    move-object v5, v1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_3

    .line 118
    .line 119
    new-instance v1, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v5}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-direct {v1, v9, v5, v4}, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScope;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :goto_2
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    check-cast v5, Landroidx/compose/animation/ContentTransform;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    check-cast p2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 164
    .line 165
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    or-int/2addr v1, v10

    .line 182
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    if-nez v1, :cond_5

    .line 187
    .line 188
    if-ne v10, v8, :cond_9

    .line 189
    .line 190
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_8

    .line 203
    .line 204
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_6

    .line 213
    .line 214
    if-eqz v7, :cond_6

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_7

    .line 230
    .line 231
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_7

    .line 244
    .line 245
    new-instance v1, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-interface {v7}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-direct {v1, v9, v4, v7}, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScope;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 263
    .line 264
    iget-object v1, v1, Landroidx/compose/animation/ContentTransform;->b:Landroidx/compose/animation/ExitTransition;

    .line 265
    .line 266
    :goto_3
    move-object v10, v1

    .line 267
    goto :goto_5

    .line 268
    :cond_7
    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 273
    .line 274
    iget-object v1, v1, Landroidx/compose/animation/ContentTransform;->b:Landroidx/compose/animation/ExitTransition;

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_8
    :goto_4
    sget-object v1, Landroidx/compose/animation/ExitTransition;->a:Landroidx/compose/animation/ExitTransition;

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :goto_5
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_9
    check-cast v10, Landroidx/compose/animation/ExitTransition;

    .line 284
    .line 285
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-ne v1, v8, :cond_a

    .line 290
    .line 291
    new-instance v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    .line 292
    .line 293
    move-object v6, v0

    .line 294
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 295
    .line 296
    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    invoke-direct {v1, v6}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;-><init>(Z)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_a
    check-cast v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;

    .line 311
    .line 312
    iget-object v7, v5, Landroidx/compose/animation/ContentTransform;->a:Landroidx/compose/animation/EnterTransition;

    .line 313
    .line 314
    new-instance v6, Landroidx/compose/animation/ZIndexModifierElement;

    .line 315
    .line 316
    iget-object v5, v5, Landroidx/compose/animation/ContentTransform;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 317
    .line 318
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 319
    .line 320
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-direct {v6, v5, v4}, Landroidx/compose/animation/ZIndexModifierElement;-><init>(FLjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 328
    .line 329
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    iget-object v12, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;->b:Landroidx/compose/runtime/MutableState;

    .line 338
    .line 339
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    check-cast v12, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 344
    .line 345
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-eqz p2, :cond_b

    .line 357
    .line 358
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p2

    .line 366
    if-nez p2, :cond_b

    .line 367
    .line 368
    iget-object p1, p1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 369
    .line 370
    invoke-virtual {p1}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-nez p1, :cond_b

    .line 379
    .line 380
    move v2, v3

    .line 381
    :cond_b
    iget-object p1, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;->c:Landroidx/compose/runtime/MutableState;

    .line 382
    .line 383
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 388
    .line 389
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v6, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    if-nez p1, :cond_c

    .line 405
    .line 406
    if-ne p2, v8, :cond_d

    .line 407
    .line 408
    :cond_c
    new-instance p2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$3$1;

    .line 409
    .line 410
    invoke-direct {p2, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$3$1;-><init>(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v11, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_d
    move-object v5, p2

    .line 417
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 418
    .line 419
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    if-nez p1, :cond_e

    .line 428
    .line 429
    if-ne p2, v8, :cond_f

    .line 430
    .line 431
    :cond_e
    new-instance p2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$4$1;

    .line 432
    .line 433
    invoke-direct {p2, v10}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$4$1;-><init>(Landroidx/compose/animation/ExitTransition;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_f
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 440
    .line 441
    new-instance p1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5;

    .line 442
    .line 443
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->p:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 444
    .line 445
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 446
    .line 447
    invoke-direct {p1, v4, v0, v9, v1}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 448
    .line 449
    .line 450
    const v0, 0x6d31f397

    .line 451
    .line 452
    .line 453
    invoke-static {v0, p1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    const/high16 v12, 0x6000000

    .line 458
    .line 459
    iget-object v4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;->l:Landroidx/compose/animation/core/Transition;

    .line 460
    .line 461
    move-object v9, p2

    .line 462
    move-object v8, v10

    .line 463
    move-object v10, p1

    .line 464
    invoke-static/range {v4 .. v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 465
    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 469
    .line 470
    .line 471
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 472
    .line 473
    return-object p0
.end method
