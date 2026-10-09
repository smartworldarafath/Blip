.class public abstract Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseRequiresApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static b:Z

.field public static c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;->k:Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->a:Lkotlin/Lazy;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroidx/compose/ui/semantics/SemanticsConfiguration;ZLio/sentry/SentryMaskingOptions;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    sget-object v1, Lio/sentry/android/replay/SentryReplayModifiers;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    :cond_1
    const-string v1, "unmask"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->d()V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    const-string v1, "mask"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->d()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_3
    if-eqz p1, :cond_4

    .line 45
    .line 46
    const-string p0, "android.widget.ImageView"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    if-eqz p0, :cond_6

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 52
    .line 53
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    :cond_5
    const-string p0, "android.widget.TextView"

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    const-string p0, "android.view.View"

    .line 81
    .line 82
    :goto_1
    iget-object p1, p2, Lio/sentry/SentryMaskingOptions;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    return v2

    .line 91
    :cond_7
    iget-object p1, p2, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0
.end method

.method public static b(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZLio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    move-object/from16 v13, p4

    .line 8
    .line 9
    sget-object v14, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->a:Lkotlin/Lazy;

    .line 10
    .line 11
    sget-object v1, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a:Ljava/lang/Boolean;

    .line 12
    .line 13
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v15, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    move-object v1, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a()Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->a:Ljava/lang/reflect/Method;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast v0, Ljava/util/List;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-nez v1, :cond_30

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v2, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    sput-object v1, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->a()Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v1, v1, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->a:Ljava/lang/reflect/Method;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    check-cast v0, Ljava/util/List;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/4 v6, 0x0

    .line 108
    :goto_2
    if-ge v6, v3, :cond_2f

    .line 109
    .line 110
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    move-object v7, v0

    .line 115
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 116
    .line 117
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 122
    .line 123
    if-eqz v0, :cond_2d

    .line 124
    .line 125
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2d

    .line 130
    .line 131
    if-eqz p2, :cond_3

    .line 132
    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 134
    .line 135
    iget-object v9, v8, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 136
    .line 137
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-direct {v0, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->c:Ljava/lang/ref/WeakReference;

    .line 145
    .line 146
    :cond_3
    iget-object v0, v8, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 147
    .line 148
    sget-object v8, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->c:Ljava/lang/ref/WeakReference;

    .line 149
    .line 150
    if-eqz v8, :cond_4

    .line 151
    .line 152
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    check-cast v8, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    move-object v8, v15

    .line 160
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    if-nez v8, :cond_5

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    :cond_5
    invoke-interface {v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 170
    .line 171
    .line 172
    move-result-wide v9

    .line 173
    const/16 v11, 0x20

    .line 174
    .line 175
    shr-long/2addr v9, v11

    .line 176
    long-to-int v9, v9

    .line 177
    int-to-float v9, v9

    .line 178
    invoke-interface {v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 179
    .line 180
    .line 181
    move-result-wide v16

    .line 182
    const-wide v18, 0xffffffffL

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    move v10, v6

    .line 188
    and-long v5, v16, v18

    .line 189
    .line 190
    long-to-int v5, v5

    .line 191
    int-to-float v5, v5

    .line 192
    const/4 v6, 0x1

    .line 193
    invoke-interface {v8, v0, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move/from16 v16, v11

    .line 198
    .line 199
    iget v11, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 200
    .line 201
    const/16 v17, 0x0

    .line 202
    .line 203
    cmpg-float v20, v11, v17

    .line 204
    .line 205
    if-gez v20, :cond_6

    .line 206
    .line 207
    move/from16 v11, v17

    .line 208
    .line 209
    :cond_6
    cmpl-float v20, v11, v9

    .line 210
    .line 211
    if-lez v20, :cond_7

    .line 212
    .line 213
    move v11, v9

    .line 214
    :cond_7
    iget v6, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 215
    .line 216
    cmpg-float v21, v6, v17

    .line 217
    .line 218
    if-gez v21, :cond_8

    .line 219
    .line 220
    move/from16 v6, v17

    .line 221
    .line 222
    :cond_8
    cmpl-float v21, v6, v5

    .line 223
    .line 224
    if-lez v21, :cond_9

    .line 225
    .line 226
    move v6, v5

    .line 227
    :cond_9
    iget v15, v0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 228
    .line 229
    cmpg-float v22, v15, v17

    .line 230
    .line 231
    if-gez v22, :cond_a

    .line 232
    .line 233
    move/from16 v15, v17

    .line 234
    .line 235
    :cond_a
    cmpl-float v22, v15, v9

    .line 236
    .line 237
    if-lez v22, :cond_b

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_b
    move v9, v15

    .line 241
    :goto_4
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 242
    .line 243
    cmpg-float v15, v0, v17

    .line 244
    .line 245
    if-gez v15, :cond_c

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_c
    move/from16 v17, v0

    .line 249
    .line 250
    :goto_5
    cmpl-float v0, v17, v5

    .line 251
    .line 252
    if-lez v0, :cond_d

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_d
    move/from16 v5, v17

    .line 256
    .line 257
    :goto_6
    cmpg-float v0, v11, v9

    .line 258
    .line 259
    if-nez v0, :cond_e

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_e
    cmpg-float v0, v6, v5

    .line 263
    .line 264
    if-nez v0, :cond_f

    .line 265
    .line 266
    :goto_7
    new-instance v0, Landroid/graphics/Rect;

    .line 267
    .line 268
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 269
    .line 270
    .line 271
    move-object v5, v0

    .line 272
    move-object v15, v1

    .line 273
    move-object v9, v2

    .line 274
    move v11, v3

    .line 275
    goto/16 :goto_8

    .line 276
    .line 277
    :cond_f
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    move-object v15, v1

    .line 282
    int-to-long v0, v0

    .line 283
    move-wide/from16 v22, v0

    .line 284
    .line 285
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    int-to-long v0, v0

    .line 290
    shl-long v22, v22, v16

    .line 291
    .line 292
    and-long v0, v0, v18

    .line 293
    .line 294
    or-long v0, v22, v0

    .line 295
    .line 296
    invoke-interface {v8, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d(J)J

    .line 297
    .line 298
    .line 299
    move-result-wide v0

    .line 300
    move-wide/from16 v22, v0

    .line 301
    .line 302
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    int-to-long v0, v0

    .line 307
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    move-wide/from16 v24, v0

    .line 312
    .line 313
    int-to-long v0, v6

    .line 314
    shl-long v24, v24, v16

    .line 315
    .line 316
    and-long v0, v0, v18

    .line 317
    .line 318
    or-long v0, v24, v0

    .line 319
    .line 320
    invoke-interface {v8, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d(J)J

    .line 321
    .line 322
    .line 323
    move-result-wide v0

    .line 324
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    move-wide/from16 v24, v0

    .line 329
    .line 330
    int-to-long v0, v6

    .line 331
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    move-wide/from16 v26, v0

    .line 336
    .line 337
    int-to-long v0, v6

    .line 338
    shl-long v26, v26, v16

    .line 339
    .line 340
    and-long v0, v0, v18

    .line 341
    .line 342
    or-long v0, v26, v0

    .line 343
    .line 344
    invoke-interface {v8, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d(J)J

    .line 345
    .line 346
    .line 347
    move-result-wide v0

    .line 348
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    move-wide/from16 v26, v0

    .line 353
    .line 354
    int-to-long v0, v6

    .line 355
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    int-to-long v5, v5

    .line 360
    shl-long v0, v0, v16

    .line 361
    .line 362
    and-long v5, v5, v18

    .line 363
    .line 364
    or-long/2addr v0, v5

    .line 365
    invoke-interface {v8, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d(J)J

    .line 366
    .line 367
    .line 368
    move-result-wide v0

    .line 369
    shr-long v5, v22, v16

    .line 370
    .line 371
    long-to-int v5, v5

    .line 372
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    shr-long v8, v24, v16

    .line 377
    .line 378
    long-to-int v6, v8

    .line 379
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    shr-long v8, v0, v16

    .line 384
    .line 385
    long-to-int v8, v8

    .line 386
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    move-wide/from16 v28, v0

    .line 391
    .line 392
    shr-long v0, v26, v16

    .line 393
    .line 394
    long-to-int v0, v0

    .line 395
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    and-long v5, v22, v18

    .line 424
    .line 425
    long-to-int v5, v5

    .line 426
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    and-long v8, v24, v18

    .line 431
    .line 432
    long-to-int v6, v8

    .line 433
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    and-long v8, v28, v18

    .line 438
    .line 439
    long-to-int v8, v8

    .line 440
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    move-object v9, v2

    .line 445
    move v11, v3

    .line 446
    and-long v2, v26, v18

    .line 447
    .line 448
    long-to-int v2, v2

    .line 449
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    new-instance v5, Landroid/graphics/Rect;

    .line 478
    .line 479
    float-to-int v1, v1

    .line 480
    float-to-int v3, v3

    .line 481
    float-to-int v0, v0

    .line 482
    float-to-int v2, v2

    .line 483
    invoke-direct {v5, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 484
    .line 485
    .line 486
    :goto_8
    :try_start_1
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 487
    .line 488
    .line 489
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    const/4 v1, 0x0

    .line 491
    goto :goto_9

    .line 492
    :catchall_0
    move-exception v0

    .line 493
    :try_start_2
    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Ljava/lang/reflect/Method;

    .line 498
    .line 499
    if-eqz v1, :cond_2a

    .line 500
    .line 501
    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Ljava/lang/reflect/Method;

    .line 506
    .line 507
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 508
    .line 509
    .line 510
    const/4 v1, 0x0

    .line 511
    :try_start_3
    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 516
    .line 517
    :goto_9
    invoke-static {v7}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    if-nez v2, :cond_11

    .line 522
    .line 523
    if-eqz v0, :cond_10

    .line 524
    .line 525
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 526
    .line 527
    iget-object v3, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 528
    .line 529
    invoke-virtual {v3, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-nez v2, :cond_11

    .line 534
    .line 535
    :cond_10
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-lez v2, :cond_11

    .line 540
    .line 541
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-lez v2, :cond_11

    .line 546
    .line 547
    const/4 v6, 0x1

    .line 548
    goto :goto_a

    .line 549
    :cond_11
    const/4 v6, 0x0

    .line 550
    :goto_a
    if-eqz v0, :cond_12

    .line 551
    .line 552
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 553
    .line 554
    iget-object v3, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 555
    .line 556
    invoke-virtual {v3, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    const/4 v3, 0x1

    .line 561
    if-ne v2, v3, :cond_13

    .line 562
    .line 563
    goto :goto_b

    .line 564
    :cond_12
    const/4 v3, 0x1

    .line 565
    :cond_13
    if-eqz v0, :cond_14

    .line 566
    .line 567
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 568
    .line 569
    iget-object v8, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 570
    .line 571
    invoke-virtual {v8, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-ne v2, v3, :cond_14

    .line 576
    .line 577
    :goto_b
    move v2, v3

    .line 578
    goto :goto_c

    .line 579
    :cond_14
    const/4 v2, 0x0

    .line 580
    :goto_c
    if-eqz v0, :cond_15

    .line 581
    .line 582
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 583
    .line 584
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 585
    .line 586
    invoke-virtual {v1, v8}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-ne v1, v3, :cond_15

    .line 591
    .line 592
    goto :goto_d

    .line 593
    :cond_15
    if-eqz v2, :cond_23

    .line 594
    .line 595
    :goto_d
    if-eqz v6, :cond_16

    .line 596
    .line 597
    const/4 v1, 0x0

    .line 598
    invoke-static {v0, v1, v12}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;ZLio/sentry/SentryMaskingOptions;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-eqz v3, :cond_16

    .line 603
    .line 604
    move-object v1, v9

    .line 605
    const/4 v9, 0x1

    .line 606
    goto :goto_e

    .line 607
    :cond_16
    move-object v1, v9

    .line 608
    const/4 v9, 0x0

    .line 609
    :goto_e
    new-instance v3, Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .line 613
    .line 614
    if-eqz v0, :cond_18

    .line 615
    .line 616
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 617
    .line 618
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 619
    .line 620
    invoke-virtual {v0, v8}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    if-nez v0, :cond_17

    .line 625
    .line 626
    const/4 v0, 0x0

    .line 627
    :cond_17
    check-cast v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 628
    .line 629
    if-eqz v0, :cond_18

    .line 630
    .line 631
    iget-object v0, v0, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 632
    .line 633
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 634
    .line 635
    if-eqz v0, :cond_18

    .line 636
    .line 637
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Ljava/lang/Boolean;

    .line 642
    .line 643
    :cond_18
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 648
    .line 649
    if-eqz v0, :cond_19

    .line 650
    .line 651
    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 652
    .line 653
    if-eqz v3, :cond_19

    .line 654
    .line 655
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    .line 656
    .line 657
    if-eqz v3, :cond_19

    .line 658
    .line 659
    move-object/from16 v16, v1

    .line 660
    .line 661
    move v8, v2

    .line 662
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 663
    .line 664
    .line 665
    move-result-wide v1

    .line 666
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 667
    .line 668
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 669
    .line 670
    .line 671
    goto :goto_f

    .line 672
    :cond_19
    move-object/from16 v16, v1

    .line 673
    .line 674
    move v8, v2

    .line 675
    const/4 v3, 0x0

    .line 676
    :goto_f
    if-eqz v3, :cond_1e

    .line 677
    .line 678
    iget-wide v1, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 679
    .line 680
    const-wide/16 v17, 0x10

    .line 681
    .line 682
    cmp-long v1, v1, v17

    .line 683
    .line 684
    if-nez v1, :cond_1e

    .line 685
    .line 686
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->u()Ljava/util/List;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    const/4 v3, 0x0

    .line 695
    :goto_10
    if-ge v3, v2, :cond_1d

    .line 696
    .line 697
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v17

    .line 701
    move-object/from16 v18, v1

    .line 702
    .line 703
    move-object/from16 v1, v17

    .line 704
    .line 705
    check-cast v1, Landroidx/compose/ui/layout/ModifierInfo;

    .line 706
    .line 707
    iget-object v1, v1, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    move-result-object v17

    .line 713
    move/from16 v19, v2

    .line 714
    .line 715
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    move/from16 v17, v3

    .line 720
    .line 721
    const-string v3, "Text"

    .line 722
    .line 723
    move-object/from16 v22, v5

    .line 724
    .line 725
    const/4 v5, 0x0

    .line 726
    invoke-static {v2, v3, v5}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    if-eqz v2, :cond_1c

    .line 731
    .line 732
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    const-string v3, "color"

    .line 737
    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    const/4 v3, 0x1

    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    instance-of v2, v1, Landroidx/compose/ui/graphics/ColorProducer;

    .line 751
    .line 752
    if-eqz v2, :cond_1a

    .line 753
    .line 754
    check-cast v1, Landroidx/compose/ui/graphics/ColorProducer;

    .line 755
    .line 756
    goto :goto_11

    .line 757
    :cond_1a
    const/4 v1, 0x0

    .line 758
    :goto_11
    if-eqz v1, :cond_1b

    .line 759
    .line 760
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 761
    .line 762
    .line 763
    move-result-wide v1

    .line 764
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 765
    .line 766
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 767
    .line 768
    .line 769
    goto :goto_13

    .line 770
    :catchall_1
    :cond_1b
    :goto_12
    const/4 v3, 0x0

    .line 771
    goto :goto_13

    .line 772
    :cond_1c
    add-int/lit8 v3, v17, 0x1

    .line 773
    .line 774
    move-object/from16 v1, v18

    .line 775
    .line 776
    move/from16 v2, v19

    .line 777
    .line 778
    move-object/from16 v5, v22

    .line 779
    .line 780
    goto :goto_10

    .line 781
    :cond_1d
    move-object/from16 v22, v5

    .line 782
    .line 783
    const/4 v5, 0x0

    .line 784
    goto :goto_12

    .line 785
    :cond_1e
    move-object/from16 v22, v5

    .line 786
    .line 787
    const/4 v5, 0x0

    .line 788
    :goto_13
    if-eqz v0, :cond_1f

    .line 789
    .line 790
    iget-object v1, v0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 791
    .line 792
    if-eqz v1, :cond_1f

    .line 793
    .line 794
    iget-object v1, v1, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    .line 795
    .line 796
    if-eqz v1, :cond_1f

    .line 797
    .line 798
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 799
    .line 800
    iget-wide v1, v1, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 801
    .line 802
    new-instance v5, Landroidx/compose/ui/unit/TextUnit;

    .line 803
    .line 804
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 805
    .line 806
    .line 807
    goto :goto_14

    .line 808
    :cond_1f
    const/4 v5, 0x0

    .line 809
    :goto_14
    sget-wide v1, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 810
    .line 811
    if-nez v5, :cond_20

    .line 812
    .line 813
    move/from16 v17, v6

    .line 814
    .line 815
    const/4 v1, 0x0

    .line 816
    goto :goto_15

    .line 817
    :cond_20
    move/from16 v17, v6

    .line 818
    .line 819
    iget-wide v5, v5, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 820
    .line 821
    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    :goto_15
    new-instance v2, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    .line 826
    .line 827
    if-eqz v0, :cond_21

    .line 828
    .line 829
    if-nez v8, :cond_21

    .line 830
    .line 831
    if-nez v1, :cond_21

    .line 832
    .line 833
    new-instance v1, Lio/sentry/android/replay/util/ComposeTextLayout;

    .line 834
    .line 835
    invoke-direct {v1, v0}, Lio/sentry/android/replay/util/ComposeTextLayout;-><init>(Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 836
    .line 837
    .line 838
    goto :goto_16

    .line 839
    :cond_21
    const/4 v1, 0x0

    .line 840
    :goto_16
    if-eqz v3, :cond_22

    .line 841
    .line 842
    iget-wide v5, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 843
    .line 844
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    const/high16 v3, -0x1000000

    .line 849
    .line 850
    or-int/2addr v0, v3

    .line 851
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    goto :goto_17

    .line 856
    :cond_22
    const/4 v0, 0x0

    .line 857
    :goto_17
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 858
    .line 859
    .line 860
    move-result v5

    .line 861
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    move-object v3, v7

    .line 866
    iget v7, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 867
    .line 868
    move-object v8, v3

    .line 869
    const/4 v3, 0x0

    .line 870
    const/4 v4, 0x0

    .line 871
    move-object/from16 p0, v2

    .line 872
    .line 873
    move-object v2, v0

    .line 874
    move-object/from16 v0, p0

    .line 875
    .line 876
    move-object/from16 p0, v8

    .line 877
    .line 878
    move/from16 v18, v10

    .line 879
    .line 880
    move-object/from16 v30, v16

    .line 881
    .line 882
    move/from16 v10, v17

    .line 883
    .line 884
    const/16 v21, 0x0

    .line 885
    .line 886
    move-object/from16 v8, p1

    .line 887
    .line 888
    move/from16 v17, v11

    .line 889
    .line 890
    move-object/from16 v16, v15

    .line 891
    .line 892
    move-object/from16 v11, v22

    .line 893
    .line 894
    const/4 v15, 0x0

    .line 895
    invoke-direct/range {v0 .. v11}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;-><init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIIIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 896
    .line 897
    .line 898
    move-object v1, v0

    .line 899
    move-object v4, v8

    .line 900
    goto/16 :goto_22

    .line 901
    .line 902
    :cond_23
    move-object/from16 p0, v7

    .line 903
    .line 904
    move-object/from16 v30, v9

    .line 905
    .line 906
    move/from16 v18, v10

    .line 907
    .line 908
    move/from16 v17, v11

    .line 909
    .line 910
    move-object/from16 v16, v15

    .line 911
    .line 912
    const/4 v15, 0x0

    .line 913
    const/16 v21, 0x0

    .line 914
    .line 915
    move-object v7, v5

    .line 916
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->u()Ljava/util/List;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 921
    .line 922
    .line 923
    move-result v2

    .line 924
    move v5, v15

    .line 925
    :goto_18
    if-ge v5, v2, :cond_24

    .line 926
    .line 927
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    check-cast v3, Landroidx/compose/ui/layout/ModifierInfo;

    .line 932
    .line 933
    iget-object v3, v3, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    .line 934
    .line 935
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    move-result-object v8

    .line 939
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v8

    .line 943
    const-string v9, "Painter"

    .line 944
    .line 945
    invoke-static {v8, v9, v15}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 946
    .line 947
    .line 948
    move-result v8

    .line 949
    if-eqz v8, :cond_25

    .line 950
    .line 951
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    const-string v2, "painter"

    .line 956
    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    const/4 v2, 0x1

    .line 962
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    instance-of v2, v1, Landroidx/compose/ui/graphics/painter/Painter;

    .line 970
    .line 971
    if-eqz v2, :cond_24

    .line 972
    .line 973
    check-cast v1, Landroidx/compose/ui/graphics/painter/Painter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 974
    .line 975
    goto :goto_19

    .line 976
    :catchall_2
    :cond_24
    move-object/from16 v1, v21

    .line 977
    .line 978
    goto :goto_19

    .line 979
    :cond_25
    add-int/lit8 v5, v5, 0x1

    .line 980
    .line 981
    goto :goto_18

    .line 982
    :goto_19
    if-eqz v1, :cond_28

    .line 983
    .line 984
    if-eqz v6, :cond_26

    .line 985
    .line 986
    const/4 v3, 0x1

    .line 987
    invoke-static {v0, v3, v12}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;ZLio/sentry/SentryMaskingOptions;)Z

    .line 988
    .line 989
    .line 990
    move-result v0

    .line 991
    if-eqz v0, :cond_26

    .line 992
    .line 993
    const/4 v5, 0x1

    .line 994
    :goto_1a
    move-object v0, v1

    .line 995
    goto :goto_1b

    .line 996
    :cond_26
    move v5, v15

    .line 997
    goto :goto_1a

    .line 998
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    iget v3, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 1007
    .line 1008
    if-eqz v5, :cond_27

    .line 1009
    .line 1010
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    const-string v5, "Vector"

    .line 1019
    .line 1020
    invoke-static {v0, v5, v15}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v5

    .line 1024
    if-nez v5, :cond_27

    .line 1025
    .line 1026
    const-string v5, "Color"

    .line 1027
    .line 1028
    invoke-static {v0, v5, v15}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v5

    .line 1032
    if-nez v5, :cond_27

    .line 1033
    .line 1034
    const-string v5, "Brush"

    .line 1035
    .line 1036
    invoke-static {v0, v5, v15}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v0

    .line 1040
    if-nez v0, :cond_27

    .line 1041
    .line 1042
    const/4 v5, 0x1

    .line 1043
    goto :goto_1c

    .line 1044
    :cond_27
    move v5, v15

    .line 1045
    :goto_1c
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    .line 1046
    .line 1047
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 1048
    .line 1049
    .line 1050
    goto/16 :goto_21

    .line 1051
    .line 1052
    :cond_28
    if-eqz v6, :cond_29

    .line 1053
    .line 1054
    invoke-static {v0, v15, v12}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;ZLio/sentry/SentryMaskingOptions;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v0

    .line 1058
    if-eqz v0, :cond_29

    .line 1059
    .line 1060
    const/4 v5, 0x1

    .line 1061
    goto :goto_1d

    .line 1062
    :cond_29
    move v5, v15

    .line 1063
    :goto_1d
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;

    .line 1064
    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 1066
    .line 1067
    .line 1068
    move-result v1

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 1070
    .line 1071
    .line 1072
    move-result v2

    .line 1073
    iget v3, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 1074
    .line 1075
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 1076
    .line 1077
    .line 1078
    goto/16 :goto_21

    .line 1079
    .line 1080
    :catchall_3
    move-exception v0

    .line 1081
    move-object/from16 v21, v1

    .line 1082
    .line 1083
    move-object/from16 p0, v7

    .line 1084
    .line 1085
    move-object/from16 v30, v9

    .line 1086
    .line 1087
    move/from16 v18, v10

    .line 1088
    .line 1089
    move/from16 v17, v11

    .line 1090
    .line 1091
    move-object/from16 v16, v15

    .line 1092
    .line 1093
    const/4 v15, 0x0

    .line 1094
    goto :goto_1e

    .line 1095
    :catchall_4
    move-exception v0

    .line 1096
    move-object/from16 p0, v7

    .line 1097
    .line 1098
    move-object/from16 v30, v9

    .line 1099
    .line 1100
    move/from16 v18, v10

    .line 1101
    .line 1102
    move/from16 v17, v11

    .line 1103
    .line 1104
    move-object/from16 v16, v15

    .line 1105
    .line 1106
    const/4 v15, 0x0

    .line 1107
    const/16 v21, 0x0

    .line 1108
    .line 1109
    :goto_1e
    move-object v7, v5

    .line 1110
    goto :goto_1f

    .line 1111
    :cond_2a
    move-object/from16 p0, v7

    .line 1112
    .line 1113
    move-object/from16 v30, v9

    .line 1114
    .line 1115
    move/from16 v18, v10

    .line 1116
    .line 1117
    move/from16 v17, v11

    .line 1118
    .line 1119
    move-object/from16 v16, v15

    .line 1120
    .line 1121
    const/4 v15, 0x0

    .line 1122
    const/16 v21, 0x0

    .line 1123
    .line 1124
    move-object v7, v5

    .line 1125
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1126
    :catchall_5
    move-exception v0

    .line 1127
    :goto_1f
    sget-boolean v1, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->b:Z

    .line 1128
    .line 1129
    const/16 v20, 0x1

    .line 1130
    .line 1131
    if-nez v1, :cond_2b

    .line 1132
    .line 1133
    sput-boolean v20, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->b:Z

    .line 1134
    .line 1135
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1136
    .line 1137
    const-string v2, "Error retrieving semantics information from Compose tree. Most likely you\'re using\nan unsupported version of androidx.compose.ui:ui. The supported\nversion range is 1.5.0 - 1.10.2.\nIf you\'re using a newer version, please open a github issue with the version\nyou\'re using, so we can add support for it."

    .line 1138
    .line 1139
    new-array v3, v15, [Ljava/lang/Object;

    .line 1140
    .line 1141
    invoke-interface {v13, v1, v0, v2, v3}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    .line 1143
    .line 1144
    :cond_2b
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;

    .line 1145
    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 1147
    .line 1148
    .line 1149
    move-result v1

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 1151
    .line 1152
    .line 1153
    move-result v2

    .line 1154
    iget v3, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 1155
    .line 1156
    invoke-static/range {p0 .. p0}, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v5

    .line 1160
    if-nez v5, :cond_2c

    .line 1161
    .line 1162
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 1163
    .line 1164
    .line 1165
    move-result v5

    .line 1166
    if-lez v5, :cond_2c

    .line 1167
    .line 1168
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 1169
    .line 1170
    .line 1171
    move-result v5

    .line 1172
    if-lez v5, :cond_2c

    .line 1173
    .line 1174
    move/from16 v6, v20

    .line 1175
    .line 1176
    goto :goto_20

    .line 1177
    :cond_2c
    move v6, v15

    .line 1178
    :goto_20
    const/4 v5, 0x1

    .line 1179
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 1180
    .line 1181
    .line 1182
    :goto_21
    move-object v1, v0

    .line 1183
    goto :goto_22

    .line 1184
    :cond_2d
    move-object/from16 v16, v1

    .line 1185
    .line 1186
    move-object/from16 v30, v2

    .line 1187
    .line 1188
    move/from16 v17, v3

    .line 1189
    .line 1190
    move/from16 v18, v6

    .line 1191
    .line 1192
    move-object/from16 p0, v7

    .line 1193
    .line 1194
    move-object/from16 v21, v15

    .line 1195
    .line 1196
    const/4 v15, 0x0

    .line 1197
    move-object/from16 v1, v21

    .line 1198
    .line 1199
    :goto_22
    move-object/from16 v9, v30

    .line 1200
    .line 1201
    if-eqz v1, :cond_2e

    .line 1202
    .line 1203
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-object/from16 v3, p0

    .line 1207
    .line 1208
    invoke-static {v3, v1, v15, v12, v13}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->b(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZLio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;)V

    .line 1209
    .line 1210
    .line 1211
    :cond_2e
    add-int/lit8 v6, v18, 0x1

    .line 1212
    .line 1213
    move-object v2, v9

    .line 1214
    move-object/from16 v1, v16

    .line 1215
    .line 1216
    move/from16 v3, v17

    .line 1217
    .line 1218
    move-object/from16 v15, v21

    .line 1219
    .line 1220
    goto/16 :goto_2

    .line 1221
    .line 1222
    :cond_2f
    move-object v9, v2

    .line 1223
    iput-object v9, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->g:Ljava/util/ArrayList;

    .line 1224
    .line 1225
    return-void

    .line 1226
    :cond_30
    invoke-static {}, Lk8;->e()V

    .line 1227
    .line 1228
    .line 1229
    return-void
.end method
