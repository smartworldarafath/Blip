.class final Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/relocation/BringIntoViewModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/TraversableNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RootModifierNode"
.end annotation


# instance fields
.field public final x:Landroidx/compose/ui/platform/b;

.field public final synthetic y:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->y:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/platform/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/platform/b;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->x:Landroidx/compose/ui/platform/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final I(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a:[I

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->b:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 19
    .line 20
    invoke-direct {v0, v5}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->c:J

    .line 26
    .line 27
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 34
    .line 35
    invoke-direct {v0, v4}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->p:J

    .line 41
    .line 42
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    move v0, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v4

    .line 57
    :goto_0
    new-instance v1, Landroidx/compose/ui/focus/FocusDirection;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 60
    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_3
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->g:J

    .line 66
    .line 67
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_4
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->f:J

    .line 82
    .line 83
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 90
    .line 91
    invoke-direct {v0, v3}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_5
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->d:J

    .line 97
    .line 98
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_d

    .line 103
    .line 104
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->C:J

    .line 105
    .line 106
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->e:J

    .line 114
    .line 115
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_c

    .line 120
    .line 121
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->D:J

    .line 122
    .line 123
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->h:J

    .line 131
    .line 132
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_b

    .line 137
    .line 138
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->r:J

    .line 139
    .line 140
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_b

    .line 145
    .line 146
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->E:J

    .line 147
    .line 148
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_8

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->a:J

    .line 156
    .line 157
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_a

    .line 162
    .line 163
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->u:J

    .line 164
    .line 165
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_9
    const/4 v0, 0x0

    .line 173
    goto :goto_5

    .line 174
    :cond_a
    :goto_1
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 175
    .line 176
    const/16 v1, 0x8

    .line 177
    .line 178
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_b
    :goto_2
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 183
    .line 184
    const/4 v1, 0x7

    .line 185
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_c
    :goto_3
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 190
    .line 191
    const/4 v1, 0x6

    .line 192
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_d
    :goto_4
    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    .line 197
    .line 198
    const/4 v1, 0x5

    .line 199
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 200
    .line 201
    .line 202
    :goto_5
    const/4 v1, 0x0

    .line 203
    if-eqz v0, :cond_17

    .line 204
    .line 205
    iget v2, v0, Landroidx/compose/ui/focus/FocusDirection;->a:I

    .line 206
    .line 207
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-ne v6, v5, :cond_17

    .line 212
    .line 213
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->y:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 220
    .line 221
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    if-eqz v6, :cond_f

    .line 226
    .line 227
    iget-boolean v6, v6, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 228
    .line 229
    if-ne v6, v4, :cond_f

    .line 230
    .line 231
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->t(I)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_f

    .line 236
    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getPlayNavigationSoundEffect$ui()Lkotlin/jvm/functions/Function2;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-lez p1, :cond_e

    .line 246
    .line 247
    move v1, v4

    .line 248
    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    return v4

    .line 256
    :cond_f
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getEmbeddedViewFocusRect()Landroidx/compose/ui/geometry/Rect;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    new-instance v8, Lc;

    .line 265
    .line 266
    invoke-direct {v8, v3, v0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    check-cast v7, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 270
    .line 271
    invoke-virtual {v7, v2, v6, v8}, Landroidx/compose/ui/focus/FocusOwnerImpl;->f(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-eqz v3, :cond_16

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_11

    .line 282
    .line 283
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getPlayNavigationSoundEffect$ui()Lkotlin/jvm/functions/Function2;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-lez p1, :cond_10

    .line 292
    .line 293
    move v1, v4

    .line 294
    :cond_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    return v4

    .line 302
    :cond_11
    if-ne v2, v4, :cond_12

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_12
    if-ne v2, v5, :cond_15

    .line 306
    .line 307
    :goto_6
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->c(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    if-eqz p1, :cond_13

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    :cond_13
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    .line 330
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {p1, v0, v3, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    if-eqz p1, :cond_14

    .line 339
    .line 340
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_17

    .line 345
    .line 346
    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 351
    .line 352
    invoke-virtual {p0, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->i(I)Z

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    return p0

    .line 357
    :cond_15
    return v1

    .line 358
    :cond_16
    return v4

    .line 359
    :cond_17
    return v1
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

    .line 1
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget v1, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 6
    .line 7
    iget v2, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 8
    .line 9
    new-instance v5, Lf;

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    invoke-direct {v5, p2, p3}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->x:Landroidx/compose/ui/platform/b;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/layout/MeasureScope;->v0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final l(Landroidx/compose/ui/node/NodeCoordinator;Lp0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Lp0;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->i(J)Landroidx/compose/ui/geometry/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p2, Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p3, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 26
    .line 27
    float-to-int p3, p3

    .line 28
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 29
    .line 30
    float-to-int v0, v0

    .line 31
    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 32
    .line 33
    float-to-int v1, v1

    .line 34
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 35
    .line 36
    float-to-int p1, p1

    .line 37
    invoke-direct {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->y:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 42
    .line 43
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method public final o(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p()Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p0, "androidx.compose.ui.layout.WindowInsetsRulers"

    .line 2
    .line 3
    return-object p0
.end method
