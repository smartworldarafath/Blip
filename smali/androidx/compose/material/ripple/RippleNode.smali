.class public abstract Landroidx/compose/material/ripple/RippleNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# instance fields
.field public final A:Landroidx/compose/material/b;

.field public B:Landroidx/compose/material/ripple/StateLayer;

.field public C:F

.field public D:J

.field public E:Z

.field public final F:Landroidx/collection/MutableObjectList;

.field private final color:Landroidx/compose/ui/graphics/ColorProducer;

.field public final x:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final y:Z

.field public final z:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/material/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->y:Z

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material/ripple/RippleNode;->z:F

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/ripple/RippleNode;->A:Landroidx/compose/material/b;

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->D:J

    .line 17
    .line 18
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->F:Landroidx/collection/MutableObjectList;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Q0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/compose/material/ripple/RippleNode;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Y0(Landroidx/compose/foundation/interaction/PressInteraction;)V
    .locals 12

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 7
    .line 8
    iget-wide v4, p0, Landroidx/compose/material/ripple/RippleNode;->D:J

    .line 9
    .line 10
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->C:F

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->G:Landroidx/compose/material/ripple/RippleContainer;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    move-object v3, v0

    .line 33
    check-cast v3, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v6, v3, Landroid/view/View;

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    move-object v0, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, "Couldn\'t find a valid parent for "

    .line 46
    .line 47
    const-string p1, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    .line 48
    .line 49
    invoke-static {p0, v0, p1}, Lfe;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    move v6, v1

    .line 60
    :goto_1
    if-ge v6, v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    instance-of v8, v7, Landroidx/compose/material/ripple/RippleContainer;

    .line 67
    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    check-cast v7, Landroidx/compose/material/ripple/RippleContainer;

    .line 71
    .line 72
    move-object v0, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    new-instance v3, Landroidx/compose/material/ripple/RippleContainer;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-direct {v3, v6}, Landroidx/compose/material/ripple/RippleContainer;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    move-object v0, v3

    .line 90
    :goto_2
    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->G:Landroidx/compose/material/ripple/RippleContainer;

    .line 91
    .line 92
    :goto_3
    iget-object v3, v0, Landroidx/compose/material/ripple/RippleContainer;->k:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v6, v0, Landroidx/compose/material/ripple/RippleContainer;->m:Landroidx/compose/material/ripple/RippleHostMap;

    .line 95
    .line 96
    iget-object v7, v6, Landroidx/compose/material/ripple/RippleHostMap;->a:Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    iget-object v8, v6, Landroidx/compose/material/ripple/RippleHostMap;->a:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    iget-object v6, v6, Landroidx/compose/material/ripple/RippleHostMap;->b:Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-virtual {v7, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 107
    .line 108
    const/4 v9, 0x1

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    :goto_4
    move-object v1, v7

    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_5
    iget-object v7, v0, Landroidx/compose/material/ripple/RippleContainer;->l:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    const/4 v11, 0x0

    .line 124
    if-eqz v10, :cond_6

    .line 125
    .line 126
    move-object v7, v11

    .line 127
    goto :goto_5

    .line 128
    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    :goto_5
    check-cast v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 133
    .line 134
    if-nez v7, :cond_b

    .line 135
    .line 136
    iget v7, v0, Landroidx/compose/material/ripple/RippleContainer;->n:I

    .line 137
    .line 138
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    if-le v7, v10, :cond_7

    .line 143
    .line 144
    new-instance v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_7
    iget v7, v0, Landroidx/compose/material/ripple/RippleContainer;->n:I

    .line 161
    .line 162
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    move-object v7, v3

    .line 167
    check-cast v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Landroidx/compose/material/ripple/RippleHostKey;

    .line 174
    .line 175
    if-eqz v3, :cond_9

    .line 176
    .line 177
    move-object v10, v3

    .line 178
    check-cast v10, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 179
    .line 180
    iput-object v11, v10, Landroidx/compose/material/ripple/AndroidRippleNode;->H:Landroidx/compose/material/ripple/RippleHostView;

    .line 181
    .line 182
    invoke-static {v10}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, Landroidx/compose/material/ripple/RippleHostView;

    .line 190
    .line 191
    if-eqz v10, :cond_8

    .line 192
    .line 193
    invoke-interface {v6, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Landroidx/compose/material/ripple/RippleHostKey;

    .line 198
    .line 199
    :cond_8
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Landroidx/compose/material/ripple/RippleHostView;->c()V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_6
    iget v3, v0, Landroidx/compose/material/ripple/RippleContainer;->n:I

    .line 206
    .line 207
    iget v10, v0, Landroidx/compose/material/ripple/RippleContainer;->j:I

    .line 208
    .line 209
    sub-int/2addr v10, v9

    .line 210
    if-ge v3, v10, :cond_a

    .line 211
    .line 212
    add-int/2addr v3, v9

    .line 213
    iput v3, v0, Landroidx/compose/material/ripple/RippleContainer;->n:I

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    iput v1, v0, Landroidx/compose/material/ripple/RippleContainer;->n:I

    .line 217
    .line 218
    :cond_b
    :goto_7
    invoke-interface {v8, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :goto_8
    invoke-static {p1}, Lkotlin/math/MathKt;->b(F)I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 230
    .line 231
    invoke-interface {p1}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 232
    .line 233
    .line 234
    move-result-wide v7

    .line 235
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->A:Landroidx/compose/material/b;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroidx/compose/material/b;->a()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 242
    .line 243
    iget p1, p1, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 244
    .line 245
    new-instance v10, Lr1;

    .line 246
    .line 247
    invoke-direct {v10, v9, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-boolean v3, p0, Landroidx/compose/material/ripple/RippleNode;->y:Z

    .line 251
    .line 252
    move v9, p1

    .line 253
    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material/ripple/RippleHostView;->b(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLr1;)V

    .line 254
    .line 255
    .line 256
    iput-object v1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->H:Landroidx/compose/material/ripple/RippleHostView;

    .line 257
    .line 258
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_c
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 263
    .line 264
    if-eqz v0, :cond_d

    .line 265
    .line 266
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 267
    .line 268
    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->H:Landroidx/compose/material/ripple/RippleHostView;

    .line 269
    .line 270
    if-eqz p0, :cond_e

    .line 271
    .line 272
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->d()V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_d
    instance-of p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 277
    .line 278
    if-eqz p1, :cond_e

    .line 279
    .line 280
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 281
    .line 282
    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->H:Landroidx/compose/material/ripple/RippleHostView;

    .line 283
    .line 284
    if-eqz p0, :cond_e

    .line 285
    .line 286
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->d()V

    .line 287
    .line 288
    .line 289
    :cond_e
    return-void
.end method

.method public final b(J)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->E:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->D:J

    .line 15
    .line 16
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->z:F

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->D:J

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    int-to-long v1, p2

    .line 39
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    int-to-long p1, p1

    .line 44
    const/16 v3, 0x20

    .line 45
    .line 46
    shl-long/2addr v1, v3

    .line 47
    const-wide v3, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    and-long/2addr p1, v3

    .line 53
    or-long/2addr p1, v1

    .line 54
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/high16 p2, 0x40000000    # 2.0f

    .line 59
    .line 60
    div-float/2addr p1, p2

    .line 61
    iget-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->y:Z

    .line 62
    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    const/high16 p2, 0x41200000    # 10.0f

    .line 66
    .line 67
    invoke-interface {v0, p2}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    add-float/2addr p1, p2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/compose/material/ripple/RippleNode;->C:F

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->F:Landroidx/collection/MutableObjectList;

    .line 80
    .line 81
    iget-object p2, p1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 82
    .line 83
    iget v0, p1, Landroidx/collection/ObjectList;->b:I

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    :goto_1
    if-ge v1, v0, :cond_2

    .line 87
    .line 88
    aget-object v2, p2, v1

    .line 89
    .line 90
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode;->Y0(Landroidx/compose/foundation/interaction/PressInteraction;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->k()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 14

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleNode;->B:Landroidx/compose/material/ripple/StateLayer;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v5, p0, Landroidx/compose/material/ripple/RippleNode;->C:F

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 13
    .line 14
    invoke-interface {v2}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v4, v1, Landroidx/compose/material/ripple/StateLayer;->c:Landroidx/compose/animation/core/Animatable;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v6, 0x0

    .line 31
    cmpl-float v6, v4, v6

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iget-boolean v1, v1, Landroidx/compose/material/ripple/StateLayer;->a:Z

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 62
    .line 63
    .line 64
    move-result-wide v12

    .line 65
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 70
    .line 71
    .line 72
    :try_start_0
    iget-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 73
    .line 74
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v11, 0x1

    .line 83
    invoke-interface/range {v6 .. v11}, Landroidx/compose/ui/graphics/Canvas;->n(FFFFI)V

    .line 84
    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    const/16 v9, 0x7c

    .line 88
    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    move-object v2, p1

    .line 92
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->J(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v12, v13}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    move-object p0, v0

    .line 101
    invoke-static {v1, v12, v13}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_0
    move-object v2, p1

    .line 106
    const/4 v8, 0x0

    .line 107
    const/16 v9, 0x7c

    .line 108
    .line 109
    const-wide/16 v6, 0x0

    .line 110
    .line 111
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->J(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFI)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 115
    .line 116
    iget-object p1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->H:Landroidx/compose/material/ripple/RippleHostView;

    .line 123
    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    iget-wide v1, p0, Landroidx/compose/material/ripple/RippleNode;->D:J

    .line 127
    .line 128
    iget v3, p0, Landroidx/compose/material/ripple/RippleNode;->C:F

    .line 129
    .line 130
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget-object v4, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 135
    .line 136
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->A:Landroidx/compose/material/b;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/compose/material/b;->a()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 147
    .line 148
    iget v6, p0, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 149
    .line 150
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->e(JIJF)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleHostView;->draw(Landroid/graphics/Canvas;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    return-void
.end method
