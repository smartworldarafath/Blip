.class public abstract Landroidx/compose/ui/node/NodeKindKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/ObjectIntMapKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 2
    .line 3
    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/NodeKindKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 3

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/node/DelegatingNode;->x:I

    .line 9
    .line 10
    and-int v2, v1, p1

    .line 11
    .line 12
    invoke-static {p0, v2, p2}, Landroidx/compose/ui/node/NodeKindKt;->b(Landroidx/compose/ui/Modifier$Node;II)V

    .line 13
    .line 14
    .line 15
    not-int p0, v1

    .line 16
    and-int/2addr p0, p1

    .line 17
    iget-object p1, v0, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/node/NodeKindKt;->a(Landroidx/compose/ui/Modifier$Node;II)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 29
    .line 30
    and-int/2addr p1, v0

    .line 31
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeKindKt;->b(Landroidx/compose/ui/Modifier$Node;II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 11

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->N0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    instance-of v0, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Landroidx/compose/ui/node/LayoutModifierNode;

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 24
    .line 25
    .line 26
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    invoke-static {p0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->q1()V

    .line 33
    .line 34
    .line 35
    :cond_1
    and-int/lit16 v0, p1, 0x80

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    if-eq p2, v1, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 46
    .line 47
    .line 48
    :cond_2
    const/high16 v0, 0x400000

    .line 49
    .line 50
    and-int/2addr v0, p1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    if-eq p2, v1, :cond_3

    .line 55
    .line 56
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    and-int/lit16 v0, p1, 0x100

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x1

    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    instance-of v0, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    .line 70
    .line 71
    if-eqz v0, :cond_8

    .line 72
    .line 73
    if-eq p2, v4, :cond_5

    .line 74
    .line 75
    if-eq p2, v1, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v5, v0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 83
    .line 84
    add-int/lit8 v5, v5, -0x1

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/LayoutNode;->e0(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v5, v0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 95
    .line 96
    add-int/2addr v5, v4

    .line 97
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/LayoutNode;->e0(I)V

    .line 98
    .line 99
    .line 100
    :goto_0
    if-eq p2, v1, :cond_8

    .line 101
    .line 102
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v5, v0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 107
    .line 108
    if-eqz v5, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_8

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_8

    .line 121
    .line 122
    iget-boolean v5, v0, Landroidx/compose/ui/node/LayoutNode;->X:Z

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 132
    .line 133
    iget-object v6, v5, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 134
    .line 135
    iget-object v6, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget v7, v0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 141
    .line 142
    if-lez v7, :cond_7

    .line 143
    .line 144
    iget-object v6, v6, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 145
    .line 146
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v4, v0, Landroidx/compose/ui/node/LayoutNode;->X:Z

    .line 150
    .line 151
    :cond_7
    invoke-virtual {v5, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->F(Landroidx/compose/ui/node/LayoutNode;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_1
    and-int/lit8 v0, p1, 0x4

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    instance-of v0, p0, Landroidx/compose/ui/node/DrawModifierNode;

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    move-object v0, p0

    .line 163
    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 166
    .line 167
    .line 168
    :cond_9
    and-int/lit8 v0, p1, 0x8

    .line 169
    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    instance-of v0, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-boolean v4, v0, Landroidx/compose/ui/node/LayoutNode;->A:Z

    .line 181
    .line 182
    :cond_a
    and-int/lit8 v0, p1, 0x40

    .line 183
    .line 184
    if-eqz v0, :cond_b

    .line 185
    .line 186
    instance-of v0, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    .line 187
    .line 188
    if-eqz v0, :cond_b

    .line 189
    .line 190
    move-object v0, p0

    .line 191
    check-cast v0, Landroidx/compose/ui/node/ParentDataModifierNode;

    .line 192
    .line 193
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 198
    .line 199
    iget-object v5, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 200
    .line 201
    iput-boolean v4, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->A:Z

    .line 202
    .line 203
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 204
    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    iput-boolean v4, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->G:Z

    .line 208
    .line 209
    :cond_b
    and-int/lit16 v0, p1, 0x800

    .line 210
    .line 211
    if-eqz v0, :cond_18

    .line 212
    .line 213
    instance-of v0, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 214
    .line 215
    if-eqz v0, :cond_18

    .line 216
    .line 217
    move-object v0, p0

    .line 218
    check-cast v0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 219
    .line 220
    sput-object v3, Landroidx/compose/ui/node/CanFocusChecker;->b:Ljava/lang/Boolean;

    .line 221
    .line 222
    sget-object v5, Landroidx/compose/ui/node/CanFocusChecker;->a:Landroidx/compose/ui/node/CanFocusChecker;

    .line 223
    .line 224
    invoke-interface {v0, v5}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->F(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 225
    .line 226
    .line 227
    sget-object v5, Landroidx/compose/ui/node/CanFocusChecker;->b:Ljava/lang/Boolean;

    .line 228
    .line 229
    if-eqz v5, :cond_18

    .line 230
    .line 231
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 232
    .line 233
    iget-object v5, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 234
    .line 235
    iget-boolean v5, v5, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 236
    .line 237
    if-nez v5, :cond_c

    .line 238
    .line 239
    const-string v5, "visitChildren called on an unattached node"

    .line 240
    .line 241
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_c
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 245
    .line 246
    const/16 v6, 0x10

    .line 247
    .line 248
    new-array v7, v6, [Landroidx/compose/ui/Modifier$Node;

    .line 249
    .line 250
    invoke-direct {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 254
    .line 255
    iget-object v7, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 256
    .line 257
    if-nez v7, :cond_d

    .line 258
    .line 259
    invoke-static {v5, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_d
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_e
    :goto_2
    iget v0, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 267
    .line 268
    if-eqz v0, :cond_18

    .line 269
    .line 270
    add-int/lit8 v0, v0, -0x1

    .line 271
    .line 272
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 277
    .line 278
    iget v7, v0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 279
    .line 280
    and-int/lit16 v7, v7, 0x400

    .line 281
    .line 282
    if-nez v7, :cond_f

    .line 283
    .line 284
    invoke-static {v5, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_f
    :goto_3
    if-eqz v0, :cond_e

    .line 289
    .line 290
    iget v7, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 291
    .line 292
    and-int/lit16 v7, v7, 0x400

    .line 293
    .line 294
    if-eqz v7, :cond_17

    .line 295
    .line 296
    move-object v7, v3

    .line 297
    :goto_4
    if-eqz v0, :cond_e

    .line 298
    .line 299
    instance-of v8, v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 300
    .line 301
    if-eqz v8, :cond_10

    .line 302
    .line 303
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 304
    .line 305
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-interface {v8}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    check-cast v8, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 314
    .line 315
    iget-object v8, v8, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 316
    .line 317
    iget-object v9, v8, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    .line 318
    .line 319
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_16

    .line 324
    .line 325
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusInvalidationManager;->a()V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_10
    iget v8, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 330
    .line 331
    and-int/lit16 v8, v8, 0x400

    .line 332
    .line 333
    if-eqz v8, :cond_16

    .line 334
    .line 335
    instance-of v8, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 336
    .line 337
    if-eqz v8, :cond_16

    .line 338
    .line 339
    move-object v8, v0

    .line 340
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 341
    .line 342
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 343
    .line 344
    move v9, v2

    .line 345
    :goto_5
    if-eqz v8, :cond_15

    .line 346
    .line 347
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 348
    .line 349
    and-int/lit16 v10, v10, 0x400

    .line 350
    .line 351
    if-eqz v10, :cond_14

    .line 352
    .line 353
    add-int/lit8 v9, v9, 0x1

    .line 354
    .line 355
    if-ne v9, v4, :cond_11

    .line 356
    .line 357
    move-object v0, v8

    .line 358
    goto :goto_6

    .line 359
    :cond_11
    if-nez v7, :cond_12

    .line 360
    .line 361
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 362
    .line 363
    new-array v10, v6, [Landroidx/compose/ui/Modifier$Node;

    .line 364
    .line 365
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_12
    if-eqz v0, :cond_13

    .line 369
    .line 370
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    move-object v0, v3

    .line 374
    :cond_13
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :cond_14
    :goto_6
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_15
    if-ne v9, v4, :cond_16

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_16
    :goto_7
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    goto :goto_4

    .line 388
    :cond_17
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_18
    and-int/lit16 v0, p1, 0x1000

    .line 392
    .line 393
    if-eqz v0, :cond_19

    .line 394
    .line 395
    instance-of v0, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 396
    .line 397
    if-eqz v0, :cond_19

    .line 398
    .line 399
    move-object v0, p0

    .line 400
    check-cast v0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 401
    .line 402
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 411
    .line 412
    iget-object v2, v2, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 413
    .line 414
    iget-object v3, v2, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    .line 415
    .line 416
    invoke-virtual {v3, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_19

    .line 421
    .line 422
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->a()V

    .line 423
    .line 424
    .line 425
    :cond_19
    const/high16 v0, 0x200000

    .line 426
    .line 427
    and-int/2addr p1, v0

    .line 428
    if-eqz p1, :cond_1a

    .line 429
    .line 430
    instance-of p1, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 431
    .line 432
    if-eqz p1, :cond_1a

    .line 433
    .line 434
    if-ne p2, v1, :cond_1a

    .line 435
    .line 436
    check-cast p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 437
    .line 438
    invoke-interface {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->k0()V

    .line 439
    .line 440
    .line 441
    :cond_1a
    :goto_8
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->a(Landroidx/compose/ui/Modifier$Node;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier$Element;)I
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    instance-of v1, p0, Landroidx/compose/ui/draw/DrawModifier;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x10

    .line 25
    .line 26
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    or-int/lit8 v0, v0, 0x20

    .line 31
    .line 32
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    or-int/lit8 v0, v0, 0x40

    .line 37
    .line 38
    :cond_5
    instance-of p0, p0, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    .line 39
    .line 40
    if-eqz p0, :cond_6

    .line 41
    .line 42
    const/high16 p0, 0x80000

    .line 43
    .line 44
    or-int/2addr p0, v0

    .line 45
    return p0

    .line 46
    :cond_6
    return v0
.end method

.method public static final e(Landroidx/compose/ui/Modifier$Node;)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/ui/node/NodeKindKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    iget-object p0, v1, Landroidx/collection/ObjectIntMap;->c:[I

    .line 19
    .line 20
    aget p0, p0, v2

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    instance-of v2, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v2, 0x1

    .line 30
    :goto_0
    instance-of v3, p0, Landroidx/compose/ui/node/DrawModifierNode;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    or-int/lit8 v2, v2, 0x4

    .line 35
    .line 36
    :cond_3
    instance-of v3, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    or-int/lit8 v2, v2, 0x8

    .line 41
    .line 42
    :cond_4
    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 43
    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    or-int/lit8 v2, v2, 0x10

    .line 47
    .line 48
    :cond_5
    instance-of v3, p0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 49
    .line 50
    if-eqz v3, :cond_6

    .line 51
    .line 52
    or-int/lit8 v2, v2, 0x20

    .line 53
    .line 54
    :cond_6
    instance-of v3, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    .line 55
    .line 56
    if-eqz v3, :cond_7

    .line 57
    .line 58
    or-int/lit8 v2, v2, 0x40

    .line 59
    .line 60
    :cond_7
    instance-of v3, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 61
    .line 62
    if-eqz v3, :cond_8

    .line 63
    .line 64
    const v3, 0x400080

    .line 65
    .line 66
    .line 67
    or-int/2addr v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_8
    instance-of v3, p0, Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;

    .line 70
    .line 71
    if-eqz v3, :cond_9

    .line 72
    .line 73
    or-int/lit16 v2, v2, 0x80

    .line 74
    .line 75
    :cond_9
    :goto_1
    instance-of v3, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    .line 76
    .line 77
    if-eqz v3, :cond_a

    .line 78
    .line 79
    or-int/lit16 v2, v2, 0x100

    .line 80
    .line 81
    :cond_a
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 82
    .line 83
    if-eqz v3, :cond_b

    .line 84
    .line 85
    or-int/lit16 v2, v2, 0x400

    .line 86
    .line 87
    :cond_b
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 88
    .line 89
    if-eqz v3, :cond_c

    .line 90
    .line 91
    or-int/lit16 v2, v2, 0x800

    .line 92
    .line 93
    :cond_c
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 94
    .line 95
    if-eqz v3, :cond_d

    .line 96
    .line 97
    or-int/lit16 v2, v2, 0x1000

    .line 98
    .line 99
    :cond_d
    instance-of v3, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 100
    .line 101
    if-eqz v3, :cond_e

    .line 102
    .line 103
    or-int/lit16 v2, v2, 0x2000

    .line 104
    .line 105
    :cond_e
    instance-of v3, p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 106
    .line 107
    if-eqz v3, :cond_f

    .line 108
    .line 109
    or-int/lit16 v2, v2, 0x4000

    .line 110
    .line 111
    :cond_f
    instance-of v3, p0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 112
    .line 113
    if-eqz v3, :cond_10

    .line 114
    .line 115
    const v3, 0x8000

    .line 116
    .line 117
    .line 118
    or-int/2addr v2, v3

    .line 119
    :cond_10
    instance-of v3, p0, Landroidx/compose/ui/node/TraversableNode;

    .line 120
    .line 121
    if-eqz v3, :cond_11

    .line 122
    .line 123
    const/high16 v3, 0x40000

    .line 124
    .line 125
    or-int/2addr v2, v3

    .line 126
    :cond_11
    instance-of v3, p0, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    .line 127
    .line 128
    if-eqz v3, :cond_12

    .line 129
    .line 130
    const/high16 v3, 0x80000

    .line 131
    .line 132
    or-int/2addr v2, v3

    .line 133
    :cond_12
    instance-of v3, p0, Landroidx/compose/ui/node/UnplacedAwareModifierNode;

    .line 134
    .line 135
    if-eqz v3, :cond_13

    .line 136
    .line 137
    const/high16 v3, 0x100000

    .line 138
    .line 139
    or-int/2addr v2, v3

    .line 140
    :cond_13
    instance-of v3, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 141
    .line 142
    if-eqz v3, :cond_14

    .line 143
    .line 144
    const/high16 v3, 0x200000

    .line 145
    .line 146
    or-int/2addr v2, v3

    .line 147
    :cond_14
    instance-of p0, p0, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    .line 148
    .line 149
    if-eqz p0, :cond_15

    .line 150
    .line 151
    const/high16 p0, 0x800000

    .line 152
    .line 153
    or-int/2addr v2, p0

    .line 154
    :cond_15
    invoke-virtual {v1, v2, v0}, Landroidx/collection/MutableObjectIntMap;->g(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return v2
.end method

.method public static final f(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/node/DelegatingNode;->x:I

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->f(Landroidx/compose/ui/Modifier$Node;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v0

    .line 22
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->e(Landroidx/compose/ui/Modifier$Node;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static final g(I)Z
    .locals 4

    .line 1
    and-int/lit16 v0, p0, 0x80

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const/high16 v3, 0x400000

    .line 11
    .line 12
    and-int/2addr p0, v3

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_1
    or-int p0, v0, v1

    .line 17
    .line 18
    return p0
.end method
