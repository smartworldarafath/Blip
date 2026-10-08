.class final Landroidx/compose/foundation/CombinedClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;
    }
.end annotation


# instance fields
.field public T:Lkotlin/jvm/functions/Function0;

.field public U:Z

.field public final V:Landroidx/collection/MutableLongObjectMap;

.field public final W:Landroidx/collection/MutableLongObjectMap;

.field public X:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public Y:Lkotlinx/coroutines/Job;

.field public Z:Lkotlinx/coroutines/Job;

.field public a0:Z

.field public b0:Z

.field public c0:J

.field public d0:Z

.field public e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

.field public f0:Lkotlinx/coroutines/Job;

.field public g0:Lkotlinx/coroutines/Job;

.field public h0:Z

.field public i0:Z

.field public j0:J

.field public k0:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/IndicationNodeFactory;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v1, p2

    .line 7
    move-object v7, p3

    .line 8
    move v4, p5

    .line 9
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    iput-object p4, v0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    iput-boolean p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->U:Z

    .line 16
    .line 17
    sget p0, Landroidx/collection/LongObjectMapKt;->a:I

    .line 18
    .line 19
    new-instance p0, Landroidx/collection/MutableLongObjectMap;

    .line 20
    .line 21
    const/4 p1, 0x6

    .line 22
    invoke-direct {p0, p1}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->V:Landroidx/collection/MutableLongObjectMap;

    .line 26
    .line 27
    new-instance p0, Landroidx/collection/MutableLongObjectMap;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->W:Landroidx/collection/MutableLongObjectMap;

    .line 33
    .line 34
    const-wide/16 p0, -0x1

    .line 35
    .line 36
    iput-wide p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->c0:J

    .line 37
    .line 38
    iput-wide p0, v0, Landroidx/compose/foundation/CombinedClickableNode;->j0:J

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_10

    .line 8
    .line 9
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez p2, :cond_3

    .line 14
    .line 15
    invoke-static {p1, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_12

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 33
    .line 34
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 35
    .line 36
    if-eqz p2, :cond_12

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Lkotlinx/coroutines/Job;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    check-cast p2, Lkotlinx/coroutines/AbstractCoroutine;

    .line 43
    .line 44
    invoke-virtual {p2}, Lkotlinx/coroutines/JobSupport;->h()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-ne p2, v2, :cond_2

    .line 49
    .line 50
    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 51
    .line 52
    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-wide p2, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 62
    .line 63
    iget-wide v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->c0:J

    .line 64
    .line 65
    sub-long/2addr p2, v3

    .line 66
    const-wide/16 v3, 0x28

    .line 67
    .line 68
    cmp-long p2, p2, v3

    .line 69
    .line 70
    if-gez p2, :cond_0

    .line 71
    .line 72
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->d0:Z

    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->a0:Z

    .line 76
    .line 77
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Lkotlinx/coroutines/Job;

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    check-cast p2, Lkotlinx/coroutines/JobSupport;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Lkotlinx/coroutines/Job;

    .line 87
    .line 88
    :cond_2
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->i1(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    if-eqz p1, :cond_12

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$1;

    .line 102
    .line 103
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 104
    .line 105
    .line 106
    const/4 p3, 0x3

    .line 107
    invoke-static {p1, v0, v0, p2, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    iget p2, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->c:I

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    if-ne p2, v3, :cond_4

    .line 118
    .line 119
    move p2, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    move p2, v1

    .line 122
    :goto_0
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 123
    .line 124
    if-eqz p2, :cond_8

    .line 125
    .line 126
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 127
    .line 128
    if-nez p2, :cond_8

    .line 129
    .line 130
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 131
    .line 132
    if-eqz p2, :cond_8

    .line 133
    .line 134
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 135
    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 139
    .line 140
    if-eqz p2, :cond_5

    .line 141
    .line 142
    check-cast p2, Lkotlinx/coroutines/JobSupport;

    .line 143
    .line 144
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    iput-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 148
    .line 149
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 150
    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_6
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->U:Z

    .line 157
    .line 158
    if-eqz p2, :cond_7

    .line 159
    .line 160
    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 161
    .line 162
    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 167
    .line 168
    check-cast p2, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->a(I)V

    .line 171
    .line 172
    .line 173
    :cond_7
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 174
    .line 175
    :cond_8
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 176
    .line 177
    if-eqz p2, :cond_b

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    move p3, v1

    .line 184
    :goto_1
    if-ge p3, p2, :cond_a

    .line 185
    .line 186
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 191
    .line 192
    invoke-static {p4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 193
    .line 194
    .line 195
    move-result p4

    .line 196
    if-nez p4, :cond_9

    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    :goto_2
    if-ge v1, p0, :cond_12

    .line 203
    .line 204
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 209
    .line 210
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v1, v1, 0x1

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_9
    add-int/lit8 p3, p3, 0x1

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 226
    .line 227
    .line 228
    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 229
    .line 230
    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 231
    .line 232
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/CombinedClickableNode;->r1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    move v0, v1

    .line 244
    :goto_3
    if-ge v0, p2, :cond_f

    .line 245
    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 251
    .line 252
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_e

    .line 257
    .line 258
    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->e1(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v2

    .line 262
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    move v0, v1

    .line 267
    :goto_4
    if-ge v0, p2, :cond_12

    .line 268
    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 274
    .line 275
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-nez v5, :cond_d

    .line 280
    .line 281
    invoke-static {v4, p3, p4, v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_c

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_d
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_f
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 303
    .line 304
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 305
    .line 306
    .line 307
    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 308
    .line 309
    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 310
    .line 311
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/CombinedClickableNode;->r1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_10
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 319
    .line 320
    if-ne p2, p3, :cond_12

    .line 321
    .line 322
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 323
    .line 324
    if-eqz p2, :cond_12

    .line 325
    .line 326
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 327
    .line 328
    if-nez p2, :cond_12

    .line 329
    .line 330
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 331
    .line 332
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    move p3, v1

    .line 337
    :goto_6
    if-ge p3, p2, :cond_12

    .line 338
    .line 339
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p4

    .line 343
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 344
    .line 345
    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_11

    .line 350
    .line 351
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 352
    .line 353
    if-eq p4, v0, :cond_11

    .line 354
    .line 355
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :cond_11
    add-int/lit8 p3, p3, 0x1

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_12
    return-void
.end method

.method public final L()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->M:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->M:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final S0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNode;->s1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b1(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/c;-><init>(Landroidx/compose/ui/node/DelegatingNode;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 14
    .line 15
    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final k0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final k1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNode;->s1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final l1(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Landroidx/collection/MutableLongObjectMap;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyDownEvent$1;

    .line 23
    .line 24
    invoke-direct {v4, p0, v2}, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyDownEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    invoke-static {v3, v2, v2, v4, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Landroidx/collection/MutableLongObjectMap;->g(JLjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->W:Landroidx/collection/MutableLongObjectMap;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    .line 45
    .line 46
    return p1
.end method

.method public final m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->j1()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->I:Landroidx/compose/ui/node/DelegatableNode;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/GestureNode;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->I:Landroidx/compose/ui/node/DelegatableNode;

    .line 23
    .line 24
    :cond_0
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne p2, v0, :cond_e

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 31
    .line 32
    if-nez p2, :cond_5

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    move v0, v2

    .line 39
    :goto_0
    if-ge v0, p2, :cond_10

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 46
    .line 47
    invoke-static {v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 58
    .line 59
    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 60
    .line 61
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 62
    .line 63
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 64
    .line 65
    if-eqz p2, :cond_10

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->g0:Lkotlinx/coroutines/Job;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    check-cast p2, Lkotlinx/coroutines/AbstractCoroutine;

    .line 73
    .line 74
    invoke-virtual {p2}, Lkotlinx/coroutines/JobSupport;->h()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-ne p2, v1, :cond_3

    .line 79
    .line 80
    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 81
    .line 82
    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-wide v3, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    .line 92
    .line 93
    iget-wide v5, p0, Landroidx/compose/foundation/CombinedClickableNode;->j0:J

    .line 94
    .line 95
    sub-long/2addr v3, v5

    .line 96
    const-wide/16 v5, 0x28

    .line 97
    .line 98
    cmp-long p2, v3, v5

    .line 99
    .line 100
    if-gez p2, :cond_1

    .line 101
    .line 102
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->k0:Z

    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Z

    .line 106
    .line 107
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->g0:Lkotlinx/coroutines/Job;

    .line 108
    .line 109
    if-eqz p2, :cond_2

    .line 110
    .line 111
    check-cast p2, Lkotlinx/coroutines/JobSupport;

    .line 112
    .line 113
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->g0:Lkotlinx/coroutines/Job;

    .line 117
    .line 118
    :cond_3
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->i0:Z

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->h1(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    if-eqz p1, :cond_10

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$2;

    .line 132
    .line 133
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 134
    .line 135
    .line 136
    const/4 v1, 0x3

    .line 137
    invoke-static {p1, v0, v0, p2, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->f0:Lkotlinx/coroutines/Job;

    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->i0:Z

    .line 148
    .line 149
    if-eqz p2, :cond_8

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    move v0, v2

    .line 156
    :goto_1
    if-ge v0, p2, :cond_7

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 163
    .line 164
    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    .line 165
    .line 166
    if-eqz v4, :cond_6

    .line 167
    .line 168
    iget-boolean v3, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 169
    .line 170
    if-nez v3, :cond_6

    .line 171
    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    :goto_2
    if-ge v2, p0, :cond_10

    .line 180
    .line 181
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 186
    .line 187
    iput-boolean v1, p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 188
    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 197
    .line 198
    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 199
    .line 200
    iget-wide p1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    .line 201
    .line 202
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/foundation/CombinedClickableNode;->q1(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    move v0, v2

    .line 216
    :goto_3
    if-ge v0, p2, :cond_d

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 223
    .line 224
    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 225
    .line 226
    if-nez v4, :cond_9

    .line 227
    .line 228
    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    .line 229
    .line 230
    if-eqz v4, :cond_9

    .line 231
    .line 232
    iget-boolean v3, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 233
    .line 234
    if-nez v3, :cond_9

    .line 235
    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_9
    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 240
    .line 241
    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 246
    .line 247
    invoke-interface {p2}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    move v3, v2

    .line 256
    :goto_4
    if-ge v3, v0, :cond_10

    .line 257
    .line 258
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 263
    .line 264
    iget-wide v5, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 265
    .line 266
    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    iget-wide v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 272
    .line 273
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 274
    .line 275
    .line 276
    move-result-wide v5

    .line 277
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    cmpl-float v5, v5, p2

    .line 286
    .line 287
    if-lez v5, :cond_a

    .line 288
    .line 289
    move v5, v1

    .line 290
    goto :goto_5

    .line 291
    :cond_a
    move v5, v2

    .line 292
    :goto_5
    iget-boolean v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 293
    .line 294
    if-nez v4, :cond_c

    .line 295
    .line 296
    if-eqz v5, :cond_b

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_c
    :goto_6
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_d
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 311
    .line 312
    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 313
    .line 314
    iget-wide p1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    .line 315
    .line 316
    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/foundation/CombinedClickableNode;->q1(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_e
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 326
    .line 327
    if-ne p2, v0, :cond_10

    .line 328
    .line 329
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 330
    .line 331
    if-eqz p2, :cond_10

    .line 332
    .line 333
    iget-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->i0:Z

    .line 334
    .line 335
    if-nez p2, :cond_10

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    :goto_7
    if-ge v2, p2, :cond_10

    .line 342
    .line 343
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 348
    .line 349
    iget-boolean v3, v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 350
    .line 351
    if-eqz v3, :cond_f

    .line 352
    .line 353
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 354
    .line 355
    if-eq v0, v3, :cond_f

    .line 356
    .line 357
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_10
    return-void
.end method

.method public final m1(Landroid/view/KeyEvent;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Landroidx/collection/MutableLongObjectMap;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->h()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v2, v4}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->f(J)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public final p1(Z)V
    .locals 5

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->f0:Lkotlinx/coroutines/Job;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    check-cast v4, Lkotlinx/coroutines/JobSupport;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->f0:Lkotlinx/coroutines/Job;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->g0:Lkotlinx/coroutines/Job;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    check-cast v4, Lkotlinx/coroutines/JobSupport;

    .line 25
    .line 26
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->g0:Lkotlinx/coroutines/Job;

    .line 30
    .line 31
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Z

    .line 32
    .line 33
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->i0:Z

    .line 34
    .line 35
    iput-wide v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->j0:J

    .line 36
    .line 37
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->k0:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    check-cast v4, Lkotlinx/coroutines/JobSupport;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 52
    .line 53
    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Lkotlinx/coroutines/Job;

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    check-cast v4, Lkotlinx/coroutines/JobSupport;

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Lkotlinx/coroutines/Job;

    .line 63
    .line 64
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->a0:Z

    .line 65
    .line 66
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 67
    .line 68
    iput-wide v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->c0:J

    .line 69
    .line 70
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->d0:Z

    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->f1(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final q1(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->k0:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    invoke-virtual {p0, v0, v1, p3}, Landroidx/compose/foundation/AbstractClickableNode;->g1(JZ)V

    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->j0:J

    .line 16
    .line 17
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->i0:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->e0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->k0:Z

    .line 34
    .line 35
    iput-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Z

    .line 36
    .line 37
    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->f0:Lkotlinx/coroutines/Job;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    check-cast p3, Lkotlinx/coroutines/JobSupport;

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->f0:Lkotlinx/coroutines/Job;

    .line 47
    .line 48
    iput-boolean p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->i0:Z

    .line 49
    .line 50
    return-void
.end method

.method public final r1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->d0:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-wide v2, p3, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3, v1}, Landroidx/compose/foundation/AbstractClickableNode;->g1(JZ)V

    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->c0:J

    .line 16
    .line 17
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->a0:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 31
    .line 32
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->d0:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->a0:Z

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    check-cast p2, Lkotlinx/coroutines/JobSupport;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:Lkotlinx/coroutines/Job;

    .line 46
    .line 47
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->b0:Z

    .line 48
    .line 49
    return-void
.end method

.method public final s1()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->V:Landroidx/collection/MutableLongObjectMap;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/collection/LongObjectMap;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/collection/LongObjectMap;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v10, 0x7

    .line 14
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/16 v13, 0x8

    .line 20
    .line 21
    const/4 v14, 0x0

    .line 22
    if-ltz v4, :cond_3

    .line 23
    .line 24
    move v15, v14

    .line 25
    const-wide/16 v16, 0x80

    .line 26
    .line 27
    :goto_0
    aget-wide v6, v3, v15

    .line 28
    .line 29
    const-wide/16 v18, 0xff

    .line 30
    .line 31
    not-long v8, v6

    .line 32
    shl-long/2addr v8, v10

    .line 33
    and-long/2addr v8, v6

    .line 34
    and-long/2addr v8, v11

    .line 35
    cmp-long v8, v8, v11

    .line 36
    .line 37
    if-eqz v8, :cond_2

    .line 38
    .line 39
    sub-int v8, v15, v4

    .line 40
    .line 41
    not-int v8, v8

    .line 42
    ushr-int/lit8 v8, v8, 0x1f

    .line 43
    .line 44
    rsub-int/lit8 v8, v8, 0x8

    .line 45
    .line 46
    move v9, v14

    .line 47
    :goto_1
    if-ge v9, v8, :cond_1

    .line 48
    .line 49
    and-long v20, v6, v18

    .line 50
    .line 51
    cmp-long v20, v20, v16

    .line 52
    .line 53
    if-gez v20, :cond_0

    .line 54
    .line 55
    shl-int/lit8 v20, v15, 0x3

    .line 56
    .line 57
    add-int v20, v20, v9

    .line 58
    .line 59
    aget-object v20, v2, v20

    .line 60
    .line 61
    move/from16 v21, v10

    .line 62
    .line 63
    move-object/from16 v10, v20

    .line 64
    .line 65
    check-cast v10, Lkotlinx/coroutines/Job;

    .line 66
    .line 67
    invoke-interface {v10, v5}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    move/from16 v21, v10

    .line 72
    .line 73
    :goto_2
    shr-long/2addr v6, v13

    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    move/from16 v10, v21

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move/from16 v21, v10

    .line 80
    .line 81
    if-ne v8, v13, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    move/from16 v21, v10

    .line 85
    .line 86
    :goto_3
    if-eq v15, v4, :cond_4

    .line 87
    .line 88
    add-int/lit8 v15, v15, 0x1

    .line 89
    .line 90
    move/from16 v10, v21

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move/from16 v21, v10

    .line 94
    .line 95
    const-wide/16 v16, 0x80

    .line 96
    .line 97
    const-wide/16 v18, 0xff

    .line 98
    .line 99
    :cond_4
    invoke-virtual {v1}, Landroidx/collection/MutableLongObjectMap;->c()V

    .line 100
    .line 101
    .line 102
    iget-object v0, v0, Landroidx/compose/foundation/CombinedClickableNode;->W:Landroidx/collection/MutableLongObjectMap;

    .line 103
    .line 104
    iget-object v1, v0, Landroidx/collection/LongObjectMap;->c:[Ljava/lang/Object;

    .line 105
    .line 106
    iget-object v2, v0, Landroidx/collection/LongObjectMap;->a:[J

    .line 107
    .line 108
    array-length v3, v2

    .line 109
    add-int/lit8 v3, v3, -0x2

    .line 110
    .line 111
    if-ltz v3, :cond_8

    .line 112
    .line 113
    move v4, v14

    .line 114
    :goto_4
    aget-wide v6, v2, v4

    .line 115
    .line 116
    not-long v8, v6

    .line 117
    shl-long v8, v8, v21

    .line 118
    .line 119
    and-long/2addr v8, v6

    .line 120
    and-long/2addr v8, v11

    .line 121
    cmp-long v8, v8, v11

    .line 122
    .line 123
    if-eqz v8, :cond_7

    .line 124
    .line 125
    sub-int v8, v4, v3

    .line 126
    .line 127
    not-int v8, v8

    .line 128
    ushr-int/lit8 v8, v8, 0x1f

    .line 129
    .line 130
    rsub-int/lit8 v8, v8, 0x8

    .line 131
    .line 132
    move v9, v14

    .line 133
    :goto_5
    if-ge v9, v8, :cond_6

    .line 134
    .line 135
    and-long v22, v6, v18

    .line 136
    .line 137
    cmp-long v10, v22, v16

    .line 138
    .line 139
    if-ltz v10, :cond_5

    .line 140
    .line 141
    shr-long/2addr v6, v13

    .line 142
    add-int/lit8 v9, v9, 0x1

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_5
    shl-int/lit8 v0, v4, 0x3

    .line 146
    .line 147
    add-int/2addr v0, v9

    .line 148
    aget-object v0, v1, v0

    .line 149
    .line 150
    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    throw v5

    .line 156
    :cond_6
    if-ne v8, v13, :cond_8

    .line 157
    .line 158
    :cond_7
    if-eq v4, v3, :cond_8

    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    invoke-virtual {v0}, Landroidx/collection/MutableLongObjectMap;->c()V

    .line 164
    .line 165
    .line 166
    return-void
.end method
