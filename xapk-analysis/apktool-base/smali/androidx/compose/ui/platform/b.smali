.class public final synthetic Landroidx/compose/ui/platform/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/platform/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/b;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/platform/b;->k:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;

    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/platform/InputMethodSession;->d:Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 21
    .line 22
    iget v4, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 23
    .line 24
    :goto_0
    if-ge v2, v4, :cond_1

    .line 25
    .line 26
    aget-object v5, v3, v2

    .line 27
    .line 28
    check-cast v5, Landroidx/compose/ui/node/WeakReference;

    .line 29
    .line 30
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, -0x1

    .line 41
    :goto_1
    if-ltz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget p1, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->b:Lr1;

    .line 51
    .line 52
    invoke-virtual {p0}, Lr1;->a()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_3
    return-object v1

    .line 56
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;

    .line 57
    .line 58
    move-object v3, p1

    .line 59
    check-cast v3, Landroidx/compose/ui/layout/RulerScope;

    .line 60
    .line 61
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;->y:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->p:Landroidx/compose/runtime/MutableIntState;

    .line 68
    .line 69
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-lez p1, :cond_7

    .line 76
    .line 77
    sget-object p1, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 78
    .line 79
    move-object p1, v3

    .line 80
    check-cast p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 84
    .line 85
    iget-object v0, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->m:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-wide v5, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 92
    .line 93
    const-wide v7, 0x7fffffff7fffffffL

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    const-wide/16 v5, 0x0

    .line 105
    .line 106
    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->u(J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    iput-wide v5, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 115
    .line 116
    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    iput-wide v5, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->b()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->o:Landroidx/collection/MutableScatterMap;

    .line 140
    .line 141
    const/16 v0, 0x20

    .line 142
    .line 143
    shr-long v6, v4, v0

    .line 144
    .line 145
    long-to-int v7, v6

    .line 146
    const-wide v8, 0xffffffffL

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    and-long/2addr v4, v8

    .line 152
    long-to-int v8, v4

    .line 153
    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->b:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 154
    .line 155
    array-length v9, v0

    .line 156
    move v10, v2

    .line 157
    :goto_2
    if-ge v10, v9, :cond_6

    .line 158
    .line 159
    aget-object v11, v0, v10

    .line 160
    .line 161
    invoke-virtual {p1, v11}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-object v12, v4

    .line 169
    check-cast v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 170
    .line 171
    invoke-interface {v11}, Landroidx/compose/ui/layout/WindowInsetsRulers;->a()Landroidx/compose/ui/layout/RectRulers;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->h:J

    .line 176
    .line 177
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 178
    .line 179
    .line 180
    iget-object v4, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->b:Landroidx/compose/runtime/MutableState;

    .line 181
    .line 182
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 183
    .line 184
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_5

    .line 195
    .line 196
    iget-object v4, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->f:Landroidx/compose/ui/layout/RectRulers;

    .line 197
    .line 198
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->j:J

    .line 199
    .line 200
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 201
    .line 202
    .line 203
    iget-object v4, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->g:Landroidx/compose/ui/layout/RectRulers;

    .line 204
    .line 205
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->k:J

    .line 206
    .line 207
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 208
    .line 209
    .line 210
    :cond_5
    invoke-interface {v11}, Landroidx/compose/ui/layout/WindowInsetsRulers;->b()Landroidx/compose/ui/layout/RectRulers;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    iget-wide v5, v12, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->i:J

    .line 215
    .line 216
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v10, v10, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iget-object p1, p1, Landroidx/compose/ui/layout/InsetsListener;->q:Landroidx/collection/MutableObjectList;

    .line 227
    .line 228
    invoke-virtual {p1}, Landroidx/collection/ObjectList;->e()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_7

    .line 233
    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    iget-object p0, p0, Landroidx/compose/ui/layout/InsetsListener;->r:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 239
    .line 240
    iget-object v0, p1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 241
    .line 242
    iget p1, p1, Landroidx/collection/ObjectList;->b:I

    .line 243
    .line 244
    :goto_3
    if-ge v2, p1, :cond_7

    .line 245
    .line 246
    aget-object v4, v0, v2

    .line 247
    .line 248
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 249
    .line 250
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Landroidx/compose/ui/layout/RectRulers;

    .line 255
    .line 256
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Landroid/graphics/Rect;

    .line 261
    .line 262
    invoke-interface {v5}, Landroidx/compose/ui/layout/RectRulers;->b()Landroidx/compose/ui/layout/VerticalRuler;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 267
    .line 268
    int-to-float v7, v7

    .line 269
    move-object v8, v3

    .line 270
    check-cast v8, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 271
    .line 272
    invoke-virtual {v8, v6, v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->a(Landroidx/compose/ui/layout/Ruler;F)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v5}, Landroidx/compose/ui/layout/RectRulers;->c()Landroidx/compose/ui/layout/HorizontalRuler;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 280
    .line 281
    int-to-float v7, v7

    .line 282
    invoke-virtual {v8, v6, v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->a(Landroidx/compose/ui/layout/Ruler;F)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v5}, Landroidx/compose/ui/layout/RectRulers;->d()Landroidx/compose/ui/layout/VerticalRuler;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 290
    .line 291
    int-to-float v7, v7

    .line 292
    invoke-virtual {v8, v6, v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->a(Landroidx/compose/ui/layout/Ruler;F)V

    .line 293
    .line 294
    .line 295
    invoke-interface {v5}, Landroidx/compose/ui/layout/RectRulers;->a()Landroidx/compose/ui/layout/HorizontalRuler;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 300
    .line 301
    int-to-float v4, v4

    .line 302
    invoke-virtual {v8, v5, v4}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->a(Landroidx/compose/ui/layout/Ruler;F)V

    .line 303
    .line 304
    .line 305
    add-int/lit8 v2, v2, 0x1

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_7
    return-object v1

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
