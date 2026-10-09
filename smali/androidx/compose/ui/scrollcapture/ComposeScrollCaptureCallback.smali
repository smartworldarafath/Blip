.class public final Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# instance fields
.field public final a:Landroidx/compose/ui/semantics/SemanticsNode;

.field public final b:Landroidx/compose/ui/unit/IntRect;

.field public final c:Landroidx/compose/ui/scrollcapture/ScrollCapture;

.field public final d:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final e:Lkotlinx/coroutines/internal/ContextScope;

.field public final f:Landroidx/compose/ui/scrollcapture/RelativeScroller;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/ui/scrollcapture/ScrollCapture;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->b:Landroidx/compose/ui/unit/IntRect;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->c:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    new-instance p1, Lkotlinx/coroutines/internal/ContextScope;

    .line 13
    .line 14
    iget-object p3, p3, Lkotlinx/coroutines/internal/ContextScope;->j:Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    sget-object p4, Landroidx/compose/ui/scrollcapture/DisableAnimationMotionDurationScale;->j:Landroidx/compose/ui/scrollcapture/DisableAnimationMotionDurationScale;

    .line 17
    .line 18
    invoke-interface {p3, p4}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p1, p3}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Lkotlinx/coroutines/internal/ContextScope;

    .line 26
    .line 27
    new-instance p1, Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    new-instance p3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$scrollTracker$1;

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    invoke-direct {p3, p0, p4}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$scrollTracker$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2, p3}, Landroidx/compose/ui/scrollcapture/RelativeScroller;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 43
    .line 44
    return-void
.end method

.method public static final a(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Landroid/view/ScrollCaptureSession;Landroidx/compose/ui/unit/IntRect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->q:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->s:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    if-ne v2, v5, :cond_1

    .line 39
    .line 40
    iget p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->p:I

    .line 41
    .line 42
    iget p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->o:I

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->n:Landroidx/compose/ui/unit/IntRect;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->m:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v0}, Lu0;->g(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_2
    iget p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->p:I

    .line 64
    .line 65
    iget p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->o:I

    .line 66
    .line 67
    iget-object v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->n:Landroidx/compose/ui/unit/IntRect;

    .line 68
    .line 69
    iget-object v3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->m:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v3}, Lu0;->g(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move p3, p2

    .line 79
    move-object p2, v2

    .line 80
    move v2, p1

    .line 81
    move-object p1, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget p3, p2, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 87
    .line 88
    iget v2, p2, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 89
    .line 90
    iget-object v6, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 91
    .line 92
    iput-object p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->m:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->n:Landroidx/compose/ui/unit/IntRect;

    .line 95
    .line 96
    iput p3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->o:I

    .line 97
    .line 98
    iput v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->p:I

    .line 99
    .line 100
    iput v4, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->s:I

    .line 101
    .line 102
    if-gt p3, v2, :cond_a

    .line 103
    .line 104
    sub-int v4, v2, p3

    .line 105
    .line 106
    iget v7, v6, Landroidx/compose/ui/scrollcapture/RelativeScroller;->a:I

    .line 107
    .line 108
    if-gt v4, v7, :cond_9

    .line 109
    .line 110
    div-int/2addr v4, v5

    .line 111
    add-int/2addr v4, p3

    .line 112
    div-int/2addr v7, v5

    .line 113
    sub-int/2addr v4, v7

    .line 114
    int-to-float v3, v4

    .line 115
    iget v4, v6, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c:F

    .line 116
    .line 117
    sub-float/2addr v3, v4

    .line 118
    invoke-virtual {v6, v3, v0}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->a(FLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    if-ne v3, v1, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    move-object v3, v4

    .line 128
    :goto_1
    if-ne v3, v1, :cond_5

    .line 129
    .line 130
    move-object v4, v3

    .line 131
    :cond_5
    if-ne v4, v1, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    :goto_2
    new-instance v3, Lla;

    .line 135
    .line 136
    const/4 v4, 0x5

    .line 137
    invoke-direct {v3, v4}, Lla;-><init>(I)V

    .line 138
    .line 139
    .line 140
    iput-object p1, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->m:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object p2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->n:Landroidx/compose/ui/unit/IntRect;

    .line 143
    .line 144
    iput p3, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->o:I

    .line 145
    .line 146
    iput v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->p:I

    .line 147
    .line 148
    iput v5, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2;->s:I

    .line 149
    .line 150
    iget-object v4, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v4}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-interface {v4, v0, v3}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-ne v0, v1, :cond_7

    .line 164
    .line 165
    :goto_3
    return-object v1

    .line 166
    :cond_7
    move-object v0, p1

    .line 167
    move-object v1, p2

    .line 168
    move p2, p3

    .line 169
    move p1, v2

    .line 170
    :goto_4
    iget-object p3, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 171
    .line 172
    iget v2, p3, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c:F

    .line 173
    .line 174
    invoke-static {v2}, Lkotlin/math/MathKt;->b(F)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    sub-int/2addr p2, v2

    .line 179
    iget p3, p3, Landroidx/compose/ui/scrollcapture/RelativeScroller;->a:I

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-static {p2, v2, p3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    iget-object p3, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 187
    .line 188
    iget v3, p3, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c:F

    .line 189
    .line 190
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    sub-int/2addr p1, v3

    .line 195
    iget p3, p3, Landroidx/compose/ui/scrollcapture/RelativeScroller;->a:I

    .line 196
    .line 197
    invoke-static {p1, v2, p3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iget p3, v1, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 202
    .line 203
    iget v1, v1, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 204
    .line 205
    if-ne p2, p1, :cond_8

    .line 206
    .line 207
    sget-object p0, Landroidx/compose/ui/unit/IntRect;->e:Landroidx/compose/ui/unit/IntRect;

    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_8
    invoke-static {v0}, Lu0;->h(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 219
    .line 220
    .line 221
    int-to-float v3, p3

    .line 222
    neg-float v3, v3

    .line 223
    int-to-float v4, p2

    .line 224
    neg-float v4, v4

    .line 225
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    .line 227
    .line 228
    iget-object v3, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->b:Landroidx/compose/ui/unit/IntRect;

    .line 229
    .line 230
    iget v4, v3, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 231
    .line 232
    int-to-float v4, v4

    .line 233
    neg-float v4, v4

    .line 234
    iget v3, v3, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 235
    .line 236
    int-to-float v3, v3

    .line 237
    neg-float v3, v3

    .line 238
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    .line 240
    .line 241
    iget-object v3, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->d:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .line 249
    .line 250
    invoke-static {v0}, Lu0;->C(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 258
    .line 259
    iget p0, p0, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c:F

    .line 260
    .line 261
    invoke-static {p0}, Lkotlin/math/MathKt;->b(F)I

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 266
    .line 267
    add-int/2addr p2, p0

    .line 268
    add-int/2addr p1, p0

    .line 269
    invoke-direct {v0, p3, p2, v1, p1}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 270
    .line 271
    .line 272
    return-object v0

    .line 273
    :catchall_0
    move-exception p0

    .line 274
    invoke-static {v0}, Lu0;->C(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :cond_9
    const-string p0, "Expected range ("

    .line 283
    .line 284
    const-string p1, ") to be \u2264 viewportSize="

    .line 285
    .line 286
    invoke-static {v4, v7, p0, p1}, Lq;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    return-object v3

    .line 294
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    const-string p0, "Expected min="

    .line 298
    .line 299
    const-string p1, " \u2264 max="

    .line 300
    .line 301
    invoke-static {p3, v2, p1, p0}, Lk8;->h(IILjava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-object v3
.end method


# virtual methods
.method public final onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->k:Lkotlinx/coroutines/NonCancellable;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureEnd$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureEnd$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Lkotlinx/coroutines/internal/ContextScope;

    .line 11
    .line 12
    invoke-static {p0, v0, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    const/4 p1, 0x3

    .line 13
    iget-object p3, v1, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->e:Lkotlinx/coroutines/internal/ContextScope;

    .line 14
    .line 15
    invoke-static {p3, p0, p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Lc;

    .line 20
    .line 21
    const/16 p3, 0xb

    .line 22
    .line 23
    invoke-direct {p1, p3, p2}, Lc;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object p3, p0

    .line 27
    check-cast p3, Lkotlinx/coroutines/JobSupport;

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Lkotlinx/coroutines/JobSupport;->v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 30
    .line 31
    .line 32
    new-instance p1, Lh6;

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-direct {p1, p3, p0}, Lh6;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->b:Landroidx/compose/ui/unit/IntRect;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->a(Landroidx/compose/ui/unit/IntRect;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->f:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput p2, p1, Landroidx/compose/ui/scrollcapture/RelativeScroller;->c:F

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->c:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
