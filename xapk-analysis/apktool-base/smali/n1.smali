.class public final synthetic Ln1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    .line 1
    const/4 p4, 0x5

    .line 2
    iput p4, p0, Ln1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ln1;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Ln1;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Ln1;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 14
    const/4 v0, 0x4

    iput v0, p0, Ln1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1;->k:Ljava/lang/Object;

    iput-object p2, p0, Ln1;->m:Ljava/lang/Object;

    iput-object p3, p0, Ln1;->l:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Ln1;->j:I

    iput-object p1, p0, Ln1;->k:Ljava/lang/Object;

    iput-object p2, p0, Ln1;->l:Ljava/lang/Object;

    iput-object p3, p0, Ln1;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Ln1;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v5, p0, Ln1;->m:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v6, p0, Ln1;->l:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Ln1;->k:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 18
    .line 19
    check-cast v6, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1;

    .line 20
    .line 21
    check-cast v5, Lpi;

    .line 22
    .line 23
    invoke-virtual {p0, v6}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v5}, Landroidx/customview/poolingcontainer/PoolingContainer;->e(Landroid/view/View;Lpi;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :pswitch_0
    check-cast p0, Lnet/blip/libblip/PeerPickerViewModel;

    .line 31
    .line 32
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    check-cast v5, Landroidx/compose/runtime/State;

    .line 35
    .line 36
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lnet/blip/libblip/PeerPickerViewModel;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_0
    return-object v4

    .line 58
    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 59
    .line 60
    check-cast v6, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 61
    .line 62
    check-cast v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    .line 63
    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    iget v0, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 71
    .line 72
    sub-int/2addr p0, v0

    .line 73
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->a(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget p0, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 77
    .line 78
    invoke-static {v6, v3, p0, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->b:Ljava/lang/Integer;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object v0, v3

    .line 94
    :goto_1
    invoke-interface {v5, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->a(Ljava/lang/Integer;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 112
    .line 113
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget v2, v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->a:I

    .line 118
    .line 119
    new-instance v4, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 120
    .line 121
    invoke-direct {v4, v2, v3, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :cond_4
    :goto_2
    new-instance v0, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 133
    .line 134
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->b()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_2
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    .line 149
    .line 150
    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 151
    .line 152
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->g0:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 153
    .line 154
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object p0, v6, Landroidx/compose/ui/node/NodeCoordinator;->S:Landroidx/compose/ui/graphics/Shape;

    .line 158
    .line 159
    iget-object v7, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:Landroidx/compose/ui/graphics/Shape;

    .line 160
    .line 161
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    iget-boolean v7, v6, Landroidx/compose/ui/node/NodeCoordinator;->V:Z

    .line 166
    .line 167
    iget-boolean v8, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Z

    .line 168
    .line 169
    if-eq v7, v8, :cond_5

    .line 170
    .line 171
    move v1, v2

    .line 172
    :cond_5
    iget-object v7, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:Landroidx/compose/ui/graphics/Shape;

    .line 173
    .line 174
    iget-wide v8, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->A:J

    .line 175
    .line 176
    iget-object v10, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->D:Landroidx/compose/ui/unit/LayoutDirection;

    .line 177
    .line 178
    iget-object v11, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 179
    .line 180
    invoke-interface {v7, v8, v9, v10, v11}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    iput-object v7, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H:Landroidx/compose/ui/graphics/Outline;

    .line 185
    .line 186
    iget-object v8, v6, Landroidx/compose/ui/node/NodeCoordinator;->U:Landroidx/compose/ui/geometry/Rect;

    .line 187
    .line 188
    if-eqz v7, :cond_6

    .line 189
    .line 190
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Outline;->a()Landroidx/compose/ui/geometry/Rect;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    :cond_6
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    xor-int/lit8 v7, v3, 0x1

    .line 199
    .line 200
    iput-boolean v7, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 201
    .line 202
    if-eqz p0, :cond_7

    .line 203
    .line 204
    if-nez v1, :cond_7

    .line 205
    .line 206
    if-nez v3, :cond_c

    .line 207
    .line 208
    :cond_7
    iget-object v3, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:Landroidx/compose/ui/graphics/Shape;

    .line 209
    .line 210
    iput-object v3, v6, Landroidx/compose/ui/node/NodeCoordinator;->S:Landroidx/compose/ui/graphics/Shape;

    .line 211
    .line 212
    iget-boolean v3, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Z

    .line 213
    .line 214
    iput-boolean v3, v6, Landroidx/compose/ui/node/NodeCoordinator;->V:Z

    .line 215
    .line 216
    iget-object v3, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H:Landroidx/compose/ui/graphics/Outline;

    .line 217
    .line 218
    sget-object v5, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 219
    .line 220
    if-eqz v3, :cond_8

    .line 221
    .line 222
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Outline;->a()Landroidx/compose/ui/geometry/Rect;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-nez v3, :cond_9

    .line 227
    .line 228
    :cond_8
    move-object v3, v5

    .line 229
    :cond_9
    iput-object v3, v6, Landroidx/compose/ui/node/NodeCoordinator;->U:Landroidx/compose/ui/geometry/Rect;

    .line 230
    .line 231
    iget-object v0, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H:Landroidx/compose/ui/graphics/Outline;

    .line 232
    .line 233
    if-eqz v0, :cond_a

    .line 234
    .line 235
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline;->a()Landroidx/compose/ui/geometry/Rect;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_a

    .line 240
    .line 241
    invoke-static {v0}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v5, Landroidx/compose/ui/geometry/Rect;

    .line 246
    .line 247
    iget v3, v0, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 248
    .line 249
    int-to-float v3, v3

    .line 250
    iget v7, v0, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 251
    .line 252
    int-to-float v7, v7

    .line 253
    iget v8, v0, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 254
    .line 255
    int-to-float v8, v8

    .line 256
    iget v0, v0, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 257
    .line 258
    int-to-float v0, v0

    .line 259
    invoke-direct {v5, v3, v7, v8, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 260
    .line 261
    .line 262
    :cond_a
    iput-object v5, v6, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 263
    .line 264
    iget-boolean v0, v6, Landroidx/compose/ui/node/NodeCoordinator;->W:Z

    .line 265
    .line 266
    if-eqz v0, :cond_c

    .line 267
    .line 268
    if-nez v1, :cond_b

    .line 269
    .line 270
    iget-boolean v0, v6, Landroidx/compose/ui/node/NodeCoordinator;->V:Z

    .line 271
    .line 272
    if-eqz v0, :cond_c

    .line 273
    .line 274
    if-nez p0, :cond_c

    .line 275
    .line 276
    :cond_b
    iget-object p0, v6, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 277
    .line 278
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->J()V

    .line 279
    .line 280
    .line 281
    :cond_c
    iput-boolean v2, v6, Landroidx/compose/ui/node/NodeCoordinator;->W:Z

    .line 282
    .line 283
    return-object v4

    .line 284
    :pswitch_3
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 285
    .line 286
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 287
    .line 288
    check-cast v5, Landroidx/compose/ui/layout/Ruler;

    .line 289
    .line 290
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 293
    .line 294
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->v:Landroidx/collection/MutableScatterMap;

    .line 295
    .line 296
    if-nez v2, :cond_d

    .line 297
    .line 298
    sget-object v2, Landroidx/collection/ScatterMapKt;->a:[J

    .line 299
    .line 300
    new-instance v2, Landroidx/collection/MutableScatterMap;

    .line 301
    .line 302
    invoke-direct {v2}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 303
    .line 304
    .line 305
    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->v:Landroidx/collection/MutableScatterMap;

    .line 306
    .line 307
    :cond_d
    invoke-virtual {v2, v5}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    if-nez v3, :cond_e

    .line 312
    .line 313
    new-instance v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 314
    .line 315
    invoke-direct {v3, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v5, v3}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_e
    check-cast v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 322
    .line 323
    iput-boolean v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 324
    .line 325
    invoke-interface {p0, v3, v5}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    return-object v4

    .line 329
    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 330
    .line 331
    check-cast v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 332
    .line 333
    check-cast v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 334
    .line 335
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 336
    .line 337
    iget-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 338
    .line 339
    :try_start_0
    iput-object v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 340
    .line 341
    iget-object v6, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 342
    .line 343
    iget-object v7, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 344
    .line 345
    iget-object v8, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 346
    .line 347
    iput-object v3, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 348
    .line 349
    iput-object v3, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 350
    .line 351
    :try_start_1
    iput-object v5, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 352
    .line 353
    iget-boolean v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    .line 355
    :try_start_2
    iput-boolean v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 356
    .line 357
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    :try_start_3
    iput-boolean v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 360
    .line 361
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 362
    :catchall_1
    move-exception v0

    .line 363
    :try_start_4
    iput-object v6, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 364
    .line 365
    iput-object v7, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 366
    .line 367
    iput-object v8, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 368
    .line 369
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 370
    :catchall_2
    move-exception v0

    .line 371
    move-object p0, v0

    .line 372
    iput-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 373
    .line 374
    throw p0

    .line 375
    :pswitch_5
    check-cast p0, Landroidx/media3/exoplayer/ExoPlayer;

    .line 376
    .line 377
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 378
    .line 379
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 380
    .line 381
    invoke-interface {v5, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_f

    .line 395
    .line 396
    check-cast p0, Landroidx/media3/common/BasePlayer;

    .line 397
    .line 398
    invoke-interface {p0, v2}, Landroidx/media3/common/Player;->u(Z)V

    .line 399
    .line 400
    .line 401
    :cond_f
    return-object v4

    .line 402
    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 403
    .line 404
    move-object v0, v6

    .line 405
    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 406
    .line 407
    move-object v12, v5

    .line 408
    check-cast v12, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 409
    .line 410
    iget-object v13, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->C:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 411
    .line 412
    :goto_3
    iget-object v5, v13, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 413
    .line 414
    iget v6, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 415
    .line 416
    if-eqz v6, :cond_12

    .line 417
    .line 418
    if-eqz v6, :cond_11

    .line 419
    .line 420
    add-int/lit8 v6, v6, -0x1

    .line 421
    .line 422
    iget-object v5, v5, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 423
    .line 424
    aget-object v5, v5, v6

    .line 425
    .line 426
    check-cast v5, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 427
    .line 428
    iget-object v5, v5, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->a:Lkotlin/jvm/functions/Function0;

    .line 429
    .line 430
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    move-object v6, v5

    .line 435
    check-cast v6, Landroidx/compose/ui/geometry/Rect;

    .line 436
    .line 437
    if-nez v6, :cond_10

    .line 438
    .line 439
    move-object v5, p0

    .line 440
    move p0, v2

    .line 441
    goto :goto_4

    .line 442
    :cond_10
    const-wide/16 v9, 0x0

    .line 443
    .line 444
    const/4 v11, 0x3

    .line 445
    const-wide/16 v7, 0x0

    .line 446
    .line 447
    move-object v5, p0

    .line 448
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/ContentInViewNode;->a1(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 449
    .line 450
    .line 451
    move-result p0

    .line 452
    :goto_4
    if-eqz p0, :cond_13

    .line 453
    .line 454
    iget-object p0, v13, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 455
    .line 456
    iget v6, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 457
    .line 458
    sub-int/2addr v6, v2

    .line 459
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 464
    .line 465
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 466
    .line 467
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    move-object p0, v5

    .line 471
    goto :goto_3

    .line 472
    :cond_11
    const-string p0, "MutableVector is empty."

    .line 473
    .line 474
    invoke-static {p0}, Lfe;->o(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_12
    move-object v5, p0

    .line 479
    :cond_13
    iget-boolean p0, v5, Landroidx/compose/foundation/gestures/ContentInViewNode;->D:Z

    .line 480
    .line 481
    if-eqz p0, :cond_15

    .line 482
    .line 483
    iget-object p0, v5, Landroidx/compose/foundation/gestures/ContentInViewNode;->B:Lwe;

    .line 484
    .line 485
    invoke-virtual {p0}, Lwe;->a()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object p0

    .line 489
    move-object v6, p0

    .line 490
    check-cast v6, Landroidx/compose/ui/geometry/Rect;

    .line 491
    .line 492
    if-eqz v6, :cond_14

    .line 493
    .line 494
    const-wide/16 v9, 0x0

    .line 495
    .line 496
    const/4 v11, 0x3

    .line 497
    const-wide/16 v7, 0x0

    .line 498
    .line 499
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/ContentInViewNode;->a1(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    if-ne p0, v2, :cond_14

    .line 504
    .line 505
    goto :goto_5

    .line 506
    :cond_14
    move v2, v1

    .line 507
    :goto_5
    if-eqz v2, :cond_15

    .line 508
    .line 509
    iput-boolean v1, v5, Landroidx/compose/foundation/gestures/ContentInViewNode;->D:Z

    .line 510
    .line 511
    :cond_15
    const-wide/16 v1, 0x0

    .line 512
    .line 513
    invoke-static {v5, v12, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Y0(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F

    .line 514
    .line 515
    .line 516
    move-result p0

    .line 517
    iput p0, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    .line 518
    .line 519
    move-object v3, v4

    .line 520
    :goto_6
    return-object v3

    .line 521
    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 522
    .line 523
    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    .line 524
    .line 525
    check-cast v5, Lp0;

    .line 526
    .line 527
    invoke-static {p0, v6, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->Y0(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lp0;)Landroidx/compose/ui/geometry/Rect;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    if-eqz v8, :cond_17

    .line 532
    .line 533
    iget-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->x:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 534
    .line 535
    iget-wide v0, v7, Landroidx/compose/foundation/gestures/ContentInViewNode;->E:J

    .line 536
    .line 537
    const-wide/16 v2, -0x1

    .line 538
    .line 539
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 540
    .line 541
    .line 542
    move-result p0

    .line 543
    if-eqz p0, :cond_16

    .line 544
    .line 545
    const-string p0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 546
    .line 547
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    :cond_16
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Z0()J

    .line 551
    .line 552
    .line 553
    move-result-wide v9

    .line 554
    const-wide/16 v11, 0x0

    .line 555
    .line 556
    invoke-virtual/range {v7 .. v12}, Landroidx/compose/foundation/gestures/ContentInViewNode;->c1(Landroidx/compose/ui/geometry/Rect;JJ)J

    .line 557
    .line 558
    .line 559
    move-result-wide v0

    .line 560
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    xor-long/2addr v0, v2

    .line 566
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/geometry/Rect;->i(J)Landroidx/compose/ui/geometry/Rect;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    :cond_17
    return-object v3

    .line 571
    :pswitch_8
    check-cast p0, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    .line 572
    .line 573
    check-cast v6, Landroidx/compose/runtime/internal/AwaiterQueue;

    .line 574
    .line 575
    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 576
    .line 577
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->a()V

    .line 578
    .line 579
    .line 580
    iget-object v0, v6, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 581
    .line 582
    iget v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 583
    .line 584
    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 585
    .line 586
    .line 587
    move-result p0

    .line 588
    ushr-int/lit8 v2, p0, 0x1b

    .line 589
    .line 590
    and-int/lit8 v2, v2, 0xf

    .line 591
    .line 592
    if-ne v2, v1, :cond_19

    .line 593
    .line 594
    add-int/lit8 v2, p0, -0x1

    .line 595
    .line 596
    goto :goto_7

    .line 597
    :cond_19
    move v2, p0

    .line 598
    :goto_7
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 599
    .line 600
    .line 601
    move-result p0

    .line 602
    if-eqz p0, :cond_18

    .line 603
    .line 604
    return-object v4

    .line 605
    :pswitch_9
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 606
    .line 607
    check-cast v6, Lnet/blip/libblip/Peer;

    .line 608
    .line 609
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 610
    .line 611
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 612
    .line 613
    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v6}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    return-object v4

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
