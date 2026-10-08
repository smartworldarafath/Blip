.class public final Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
.super Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final k:Landroid/view/Window$Callback;

.field public final l:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

.field public final m:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

.field public final n:Lio/sentry/SentryOptions;

.field public final o:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;

.field public volatile p:Z


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Landroid/app/Activity;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;-><init>(Landroid/content/Context;Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;-><init>(Landroid/view/Window$Callback;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->k:Landroid/view/Window$Callback;

    .line 15
    .line 16
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->l:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 17
    .line 18
    iput-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->n:Lio/sentry/SentryOptions;

    .line 19
    .line 20
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->m:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    .line 21
    .line 22
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->o:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->m:Lio/sentry/android/core/internal/gestures/SentryGestureDetector;

    .line 8
    .line 9
    iget v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->c:I

    .line 10
    .line 11
    iget-object v2, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 12
    .line 13
    iget-object v3, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-object v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->l:Landroid/view/VelocityTracker;

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iput-object v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->l:Landroid/view/VelocityTracker;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->l:Landroid/view/VelocityTracker;

    .line 38
    .line 39
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x1

    .line 44
    if-eqz v4, :cond_a

    .line 45
    .line 46
    if-eq v4, v6, :cond_5

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v4, v1, :cond_4

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    if-eq v4, v1, :cond_3

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    if-eq v4, v1, :cond_2

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_2
    iput-boolean v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->e:Z

    .line 60
    .line 61
    iput-boolean v6, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->f:Z

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->a()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iget v7, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->g:F

    .line 79
    .line 80
    sub-float v7, v1, v7

    .line 81
    .line 82
    iget v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->h:F

    .line 83
    .line 84
    sub-float v8, v4, v8

    .line 85
    .line 86
    mul-float/2addr v7, v7

    .line 87
    mul-float/2addr v8, v8

    .line 88
    add-float/2addr v8, v7

    .line 89
    iget v7, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->b:I

    .line 90
    .line 91
    int-to-float v7, v7

    .line 92
    cmpl-float v7, v8, v7

    .line 93
    .line 94
    if-lez v7, :cond_c

    .line 95
    .line 96
    iget v7, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->i:F

    .line 97
    .line 98
    sub-float/2addr v7, v1

    .line 99
    iget v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->j:F

    .line 100
    .line 101
    sub-float/2addr v8, v4

    .line 102
    iget-object v9, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->k:Landroid/view/MotionEvent;

    .line 103
    .line 104
    invoke-virtual {v2, v9, p1, v7, v8}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 105
    .line 106
    .line 107
    iput-boolean v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->e:Z

    .line 108
    .line 109
    iput v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->i:F

    .line 110
    .line 111
    iput v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->j:F

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    iget-boolean v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->f:Z

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->a()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    iget-boolean v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->e:Z

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    invoke-virtual {v2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    iget-object v7, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->l:Landroid/view/VelocityTracker;

    .line 135
    .line 136
    iget v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->d:I

    .line 137
    .line 138
    int-to-float v8, v8

    .line 139
    const/16 v9, 0x3e8

    .line 140
    .line 141
    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 142
    .line 143
    .line 144
    iget-object v7, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->l:Landroid/view/VelocityTracker;

    .line 145
    .line 146
    invoke-virtual {v7, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    iget-object v8, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->l:Landroid/view/VelocityTracker;

    .line 151
    .line 152
    invoke-virtual {v8, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    int-to-float v1, v1

    .line 161
    cmpl-float v8, v8, v1

    .line 162
    .line 163
    if-gtz v8, :cond_8

    .line 164
    .line 165
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    cmpl-float v1, v8, v1

    .line 170
    .line 171
    if-lez v1, :cond_9

    .line 172
    .line 173
    :cond_8
    iget-object v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->k:Landroid/view/MotionEvent;

    .line 174
    .line 175
    invoke-virtual {v2, v1, p1, v7, v4}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 176
    .line 177
    .line 178
    :cond_9
    :goto_1
    invoke-virtual {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->a()V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    iput v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->g:F

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->h:F

    .line 193
    .line 194
    iget v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->g:F

    .line 195
    .line 196
    iput v4, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->i:F

    .line 197
    .line 198
    iput v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->j:F

    .line 199
    .line 200
    iput-boolean v6, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->e:Z

    .line 201
    .line 202
    iput-boolean v5, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->f:Z

    .line 203
    .line 204
    iget-object v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->k:Landroid/view/MotionEvent;

    .line 205
    .line 206
    if-eqz v1, :cond_b

    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 209
    .line 210
    .line 211
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iput-object v1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureDetector;->k:Landroid/view/MotionEvent;

    .line 216
    .line 217
    invoke-virtual {v2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onDown(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .line 219
    .line 220
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-ne v0, v6, :cond_12

    .line 228
    .line 229
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->l:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 230
    .line 231
    const-string v0, "onUp"

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b(Ljava/lang/String;)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 238
    .line 239
    iget-object v2, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->b:Lio/sentry/internal/gestures/UiElement;

    .line 240
    .line 241
    if-eqz v0, :cond_12

    .line 242
    .line 243
    if-nez v2, :cond_d

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_d
    iget-object v0, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 247
    .line 248
    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 249
    .line 250
    if-ne v0, v3, :cond_e

    .line 251
    .line 252
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 253
    .line 254
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 259
    .line 260
    const-string v0, "Unable to define scroll type. No breadcrumb captured."

    .line 261
    .line 262
    new-array v1, v5, [Ljava/lang/Object;

    .line 263
    .line 264
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    iget v4, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->c:F

    .line 273
    .line 274
    sub-float/2addr v0, v4

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    iget v5, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->d:F

    .line 280
    .line 281
    sub-float/2addr v4, v5

    .line 282
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    cmpl-float v5, v5, v6

    .line 291
    .line 292
    const/4 v6, 0x0

    .line 293
    if-lez v5, :cond_10

    .line 294
    .line 295
    cmpl-float v0, v0, v6

    .line 296
    .line 297
    if-lez v0, :cond_f

    .line 298
    .line 299
    const-string v0, "right"

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_f
    const-string v0, "left"

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_10
    cmpl-float v0, v4, v6

    .line 306
    .line 307
    if-lez v0, :cond_11

    .line 308
    .line 309
    const-string v0, "down"

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_11
    const-string v0, "up"

    .line 313
    .line 314
    :goto_3
    iget-object v4, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 315
    .line 316
    const-string v5, "direction"

    .line 317
    .line 318
    invoke-static {v5, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p0, v2, v4, v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->a(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 323
    .line 324
    .line 325
    iget-object p1, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 326
    .line 327
    invoke-virtual {p0, v2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V

    .line 328
    .line 329
    .line 330
    const/4 p0, 0x0

    .line 331
    iput-object p0, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->b:Lio/sentry/internal/gestures/UiElement;

    .line 332
    .line 333
    iput-object v3, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 334
    .line 335
    iput v6, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->c:F

    .line 336
    .line 337
    iput v6, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->d:F

    .line 338
    .line 339
    :cond_12
    :goto_4
    return-void

    .line 340
    :goto_5
    :try_start_1
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :catchall_1
    move-exception p1

    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    :goto_6
    throw p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->o:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->n:Lio/sentry/SentryOptions;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 29
    .line 30
    const-string v4, "Error dispatching touch event"

    .line 31
    .line 32
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_1
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->j:Landroid/view/Window$Callback;

    .line 42
    .line 43
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method
