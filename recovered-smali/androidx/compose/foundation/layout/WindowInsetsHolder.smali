.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;
    }
.end annotation


# static fields
.field public static final v:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final c:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final d:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final e:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final f:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final g:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final h:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final i:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final j:Landroidx/compose/foundation/layout/ValueInsets;

.field public final k:Landroidx/compose/runtime/MutableState;

.field public final l:Landroidx/compose/foundation/layout/ValueInsets;

.field public final m:Landroidx/compose/foundation/layout/ValueInsets;

.field public final n:Landroidx/compose/foundation/layout/ValueInsets;

.field public final o:Landroidx/compose/foundation/layout/ValueInsets;

.field public final p:Landroidx/compose/foundation/layout/ValueInsets;

.field public final q:Landroidx/compose/foundation/layout/ValueInsets;

.field public final r:Landroidx/compose/foundation/layout/ValueInsets;

.field public final s:Z

.field public t:I

.field public final u:Landroidx/compose/foundation/layout/InsetsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "captionBar"

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 14
    .line 15
    const-string v3, "displayCutout"

    .line 16
    .line 17
    const/16 v4, 0x80

    .line 18
    .line 19
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iput-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 24
    .line 25
    const-string v5, "ime"

    .line 26
    .line 27
    const/16 v6, 0x8

    .line 28
    .line 29
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iput-object v5, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 34
    .line 35
    const-string v7, "mandatorySystemGestures"

    .line 36
    .line 37
    const/16 v8, 0x20

    .line 38
    .line 39
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iput-object v7, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 44
    .line 45
    const-string v9, "navigationBars"

    .line 46
    .line 47
    const/4 v10, 0x2

    .line 48
    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    iput-object v9, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 53
    .line 54
    const-string v11, "statusBars"

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    iput-object v11, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 62
    .line 63
    const-string v13, "systemBars"

    .line 64
    .line 65
    const/16 v14, 0x207

    .line 66
    .line 67
    invoke-static {v14, v13}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    iput-object v13, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 72
    .line 73
    const-string v15, "systemGestures"

    .line 74
    .line 75
    const/16 v8, 0x10

    .line 76
    .line 77
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    iput-object v15, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 82
    .line 83
    const-string v8, "tappableElement"

    .line 84
    .line 85
    const/16 v6, 0x40

    .line 86
    .line 87
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iput-object v8, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->i:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 92
    .line 93
    new-instance v4, Landroidx/compose/foundation/layout/ValueInsets;

    .line 94
    .line 95
    sget-object v16, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    .line 96
    .line 97
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const-string v14, "waterfall"

    .line 102
    .line 103
    invoke-direct {v4, v6, v14}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/ValueInsets;

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    iput-object v14, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->k:Landroidx/compose/runtime/MutableState;

    .line 114
    .line 115
    new-instance v14, Landroidx/compose/foundation/layout/UnionInsets;

    .line 116
    .line 117
    invoke-direct {v14, v13, v5}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Landroidx/compose/foundation/layout/UnionInsets;

    .line 121
    .line 122
    invoke-direct {v6, v14, v3}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 123
    .line 124
    .line 125
    new-instance v14, Landroidx/compose/foundation/layout/UnionInsets;

    .line 126
    .line 127
    invoke-direct {v14, v8, v7}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 128
    .line 129
    .line 130
    new-instance v12, Landroidx/compose/foundation/layout/UnionInsets;

    .line 131
    .line 132
    invoke-direct {v12, v14, v15}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 133
    .line 134
    .line 135
    new-instance v14, Landroidx/compose/foundation/layout/UnionInsets;

    .line 136
    .line 137
    invoke-direct {v14, v12, v4}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Landroidx/compose/foundation/layout/UnionInsets;

    .line 141
    .line 142
    invoke-direct {v4, v6, v14}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 143
    .line 144
    .line 145
    const-string v4, "captionBarIgnoringVisibility"

    .line 146
    .line 147
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->l:Landroidx/compose/foundation/layout/ValueInsets;

    .line 152
    .line 153
    const-string v4, "navigationBarsIgnoringVisibility"

    .line 154
    .line 155
    invoke-static {v10, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->m:Landroidx/compose/foundation/layout/ValueInsets;

    .line 160
    .line 161
    const-string v4, "statusBarsIgnoringVisibility"

    .line 162
    .line 163
    const/4 v6, 0x1

    .line 164
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->n:Landroidx/compose/foundation/layout/ValueInsets;

    .line 169
    .line 170
    const-string v4, "systemBarsIgnoringVisibility"

    .line 171
    .line 172
    const/16 v6, 0x207

    .line 173
    .line 174
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->o:Landroidx/compose/foundation/layout/ValueInsets;

    .line 179
    .line 180
    const-string v4, "tappableElementIgnoringVisibility"

    .line 181
    .line 182
    const/16 v6, 0x40

    .line 183
    .line 184
    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->p:Landroidx/compose/foundation/layout/ValueInsets;

    .line 189
    .line 190
    new-instance v4, Landroidx/compose/foundation/layout/ValueInsets;

    .line 191
    .line 192
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const-string v12, "imeAnimationTarget"

    .line 197
    .line 198
    invoke-direct {v4, v6, v12}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/ValueInsets;

    .line 202
    .line 203
    new-instance v4, Landroidx/compose/foundation/layout/ValueInsets;

    .line 204
    .line 205
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    const-string v12, "imeAnimationSource"

    .line 210
    .line 211
    invoke-direct {v4, v6, v12}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/ValueInsets;

    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    instance-of v6, v4, Landroid/view/View;

    .line 221
    .line 222
    if-eqz v6, :cond_0

    .line 223
    .line 224
    check-cast v4, Landroid/view/View;

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_0
    const/4 v4, 0x0

    .line 228
    :goto_0
    if-eqz v4, :cond_1

    .line 229
    .line 230
    const v6, 0x7f0a007b

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    goto :goto_1

    .line 238
    :cond_1
    const/4 v4, 0x0

    .line 239
    :goto_1
    instance-of v6, v4, Ljava/lang/Boolean;

    .line 240
    .line 241
    if-eqz v6, :cond_2

    .line 242
    .line 243
    move-object v6, v4

    .line 244
    check-cast v6, Ljava/lang/Boolean;

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_2
    const/4 v6, 0x0

    .line 248
    :goto_2
    if-eqz v6, :cond_3

    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    goto :goto_3

    .line 255
    :cond_3
    const/4 v4, 0x0

    .line 256
    :goto_3
    iput-boolean v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Z

    .line 257
    .line 258
    new-instance v4, Landroidx/compose/foundation/layout/InsetsListener;

    .line 259
    .line 260
    invoke-direct {v4, v0}, Landroidx/compose/foundation/layout/InsetsListener;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;)V

    .line 261
    .line 262
    .line 263
    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->u:Landroidx/compose/foundation/layout/InsetsListener;

    .line 264
    .line 265
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->h(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_4

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 276
    .line 277
    .line 278
    const/16 v1, 0x80

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v3, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 285
    .line 286
    .line 287
    const/16 v1, 0x8

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 294
    .line 295
    .line 296
    const/16 v1, 0x20

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    invoke-virtual {v7, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v10}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {v9, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 310
    .line 311
    .line 312
    const/4 v6, 0x1

    .line 313
    invoke-virtual {v0, v6}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-virtual {v11, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 318
    .line 319
    .line 320
    const/16 v6, 0x207

    .line 321
    .line 322
    invoke-virtual {v0, v6}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-virtual {v13, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 327
    .line 328
    .line 329
    const/16 v1, 0x10

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {v15, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 336
    .line 337
    .line 338
    const/16 v6, 0x40

    .line 339
    .line 340
    invoke-virtual {v0, v6}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-virtual {v8, v0}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    .line 345
    .line 346
    .line 347
    :cond_4
    return-void
.end method

.method public static b(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->i:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->l:Landroidx/compose/foundation/layout/ValueInsets;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->m:Landroidx/compose/foundation/layout/ValueInsets;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->n:Landroidx/compose/foundation/layout/ValueInsets;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->o:Landroidx/compose/foundation/layout/ValueInsets;

    .line 90
    .line 91
    const/16 v1, 0x207

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->p:Landroidx/compose/foundation/layout/ValueInsets;

    .line 105
    .line 106
    const/16 v1, 0x40

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->d()Landroidx/core/view/DisplayCutoutCompat;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/ValueInsets;

    .line 124
    .line 125
    if-eqz p1, :cond_0

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->b()Landroidx/core/graphics/Insets;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    sget-object v1, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    .line 133
    .line 134
    :goto_0
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    .line 139
    .line 140
    .line 141
    if-eqz p1, :cond_1

    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->a()Landroid/graphics/Path;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_1

    .line 148
    .line 149
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 150
    .line 151
    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    const/4 v0, 0x0

    .line 156
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->k:Landroidx/compose/runtime/MutableState;

    .line 157
    .line 158
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V

    .line 164
    .line 165
    .line 166
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->u:Landroidx/compose/foundation/layout/InsetsListener;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Landroidx/compose/foundation/layout/InsetsListener;->m:Z

    .line 9
    .line 10
    iput-boolean v1, v0, Landroidx/compose/foundation/layout/InsetsListener;->n:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Landroidx/compose/foundation/layout/InsetsListener;->o:Landroidx/core/view/WindowInsetsCompat;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->q(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->t:I

    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->t:I

    .line 38
    .line 39
    return-void
.end method
