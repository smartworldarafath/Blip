.class final Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lio/sentry/android/replay/util/MaskRenderer;

.field public final synthetic l:Landroid/graphics/Bitmap;

.field public final synthetic m:Landroid/graphics/Matrix;

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Ljava/util/ArrayList;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->k:Lio/sentry/android/replay/util/MaskRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->l:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->m:Landroid/graphics/Matrix;

    .line 6
    .line 7
    iput-object p4, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->n:Ljava/util/ArrayList;

    .line 8
    .line 9
    iput-object p5, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->o:Landroid/graphics/Canvas;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->k:Lio/sentry/android/replay/util/MaskRenderer;

    .line 4
    .line 5
    iget-object v1, v0, Lio/sentry/android/replay/util/MaskRenderer;->l:Lkotlin/Lazy;

    .line 6
    .line 7
    iget-object v2, v0, Lio/sentry/android/replay/util/MaskRenderer;->j:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v3, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->f:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-boolean v4, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->d:Z

    .line 15
    .line 16
    if-eqz v4, :cond_b

    .line 17
    .line 18
    iget v4, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->a:I

    .line 19
    .line 20
    if-lez v4, :cond_b

    .line 21
    .line 22
    iget v4, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->b:I

    .line 23
    .line 24
    if-lez v4, :cond_b

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    instance-of v4, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/high16 v6, -0x1000000

    .line 35
    .line 36
    if-eqz v4, :cond_4

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v4, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->l:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_3

    .line 49
    .line 50
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Landroid/graphics/RectF;

    .line 69
    .line 70
    invoke-direct {v3, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object v7, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->m:Landroid/graphics/Matrix;

    .line 74
    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Lio/sentry/android/replay/util/MaskRenderer;->k:Lkotlin/Lazy;

    .line 84
    .line 85
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/graphics/Canvas;

    .line 90
    .line 91
    new-instance v3, Landroid/graphics/Rect;

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    invoke-direct {v3, v5, v5, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    invoke-virtual {v0, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/graphics/Bitmap;

    .line 106
    .line 107
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    :cond_3
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v2, Lkotlin/Pair;

    .line 116
    .line 117
    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_4
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    check-cast p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    .line 127
    .line 128
    iget-object v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->h:Lio/sentry/android/replay/util/TextLayout;

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-interface {v0}, Lio/sentry/android/replay/util/TextLayout;->e()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    iget-object v2, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->i:Ljava/lang/Integer;

    .line 144
    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    :goto_2
    iget v2, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->j:I

    .line 149
    .line 150
    iget p1, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->k:I

    .line 151
    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    goto :goto_4

    .line 159
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Lio/sentry/android/replay/util/TextLayout;->c()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    :goto_3
    if-ge v5, v7, :cond_8

    .line 169
    .line 170
    invoke-interface {v0, v5}, Lio/sentry/android/replay/util/TextLayout;->f(I)F

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    float-to-int v8, v8

    .line 175
    invoke-interface {v0, v5}, Lio/sentry/android/replay/util/TextLayout;->d(I)F

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    float-to-int v9, v9

    .line 180
    invoke-interface {v0, v5}, Lio/sentry/android/replay/util/TextLayout;->a(I)I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-interface {v0, v5}, Lio/sentry/android/replay/util/TextLayout;->b(I)I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    new-instance v12, Landroid/graphics/Rect;

    .line 189
    .line 190
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .line 192
    .line 193
    iget v13, v3, Landroid/graphics/Rect;->left:I

    .line 194
    .line 195
    add-int/2addr v13, v2

    .line 196
    add-int/2addr v13, v8

    .line 197
    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 198
    .line 199
    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 200
    .line 201
    add-int/2addr v8, v2

    .line 202
    add-int/2addr v8, v9

    .line 203
    iput v8, v12, Landroid/graphics/Rect;->right:I

    .line 204
    .line 205
    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 206
    .line 207
    add-int/2addr v8, p1

    .line 208
    add-int/2addr v8, v10

    .line 209
    iput v8, v12, Landroid/graphics/Rect;->top:I

    .line 210
    .line 211
    sub-int/2addr v11, v10

    .line 212
    add-int/2addr v11, v8

    .line 213
    iput v11, v12, Landroid/graphics/Rect;->bottom:I

    .line 214
    .line 215
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    move-object p1, v4

    .line 222
    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    new-instance v2, Lkotlin/Pair;

    .line 227
    .line 228
    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_9
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    new-instance v2, Lkotlin/Pair;

    .line 241
    .line 242
    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :goto_5
    iget-object p1, v2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p1, Ljava/util/List;

    .line 248
    .line 249
    iget-object v0, v2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Ljava/lang/Number;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Landroid/graphics/Paint;

    .line 262
    .line 263
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_a

    .line 275
    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Landroid/graphics/Rect;

    .line 281
    .line 282
    new-instance v3, Landroid/graphics/RectF;

    .line 283
    .line 284
    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Landroid/graphics/Paint;

    .line 292
    .line 293
    iget-object v4, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->o:Landroid/graphics/Canvas;

    .line 294
    .line 295
    const/high16 v5, 0x41200000    # 10.0f

    .line 296
    .line 297
    invoke-virtual {v4, v3, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_a
    iget-object p0, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->n:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    .line 305
    .line 306
    :cond_b
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 307
    .line 308
    return-object p0
.end method
