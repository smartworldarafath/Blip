.class public final synthetic Landroidx/media3/exoplayer/trackselection/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/b;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/b;->j:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 10
    .line 11
    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 12
    .line 13
    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:Z

    .line 14
    .line 15
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->s:I

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->H:Z

    .line 38
    .line 39
    iget-boolean v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->H:Z

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->t:I

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->t:I

    .line 52
    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3, p0}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->D:Z

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->F:Z

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->G:I

    .line 70
    .line 71
    iget v3, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->G:I

    .line 72
    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_1
    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->E:Z

    .line 78
    .line 79
    iget-boolean v2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->E:Z

    .line 80
    .line 81
    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget p2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->s:I

    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, v0, p2, p0}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->e()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 105
    .line 106
    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 107
    .line 108
    iget-boolean p0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:Z

    .line 109
    .line 110
    iget-boolean v0, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:Z

    .line 111
    .line 112
    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:I

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:I

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->w:I

    .line 141
    .line 142
    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->w:I

    .line 143
    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:I

    .line 149
    .line 150
    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:I

    .line 151
    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->y:I

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->y:I

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->z:Z

    .line 181
    .line 182
    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->z:Z

    .line 183
    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->A:I

    .line 189
    .line 190
    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->A:I

    .line 191
    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->r:Z

    .line 197
    .line 198
    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->r:Z

    .line 199
    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:Z

    .line 205
    .line 206
    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:Z

    .line 207
    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:Z

    .line 213
    .line 214
    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:Z

    .line 215
    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    iget v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->u:I

    .line 221
    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->u:I

    .line 227
    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->e()Lcom/google/common/collect/Ordering;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->D:Z

    .line 245
    .line 246
    iget-boolean v1, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->D:Z

    .line 247
    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->F:Z

    .line 253
    .line 254
    iget-boolean p2, p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->F:Z

    .line 255
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComparisonChain;->c(ZZ)Lcom/google/common/collect/ComparisonChain;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->e()I

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    return p0

    .line 265
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 266
    .line 267
    check-cast p2, Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 274
    .line 275
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->c(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    return p0

    .line 286
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 287
    .line 288
    check-cast p2, Ljava/util/List;

    .line 289
    .line 290
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    .line 295
    .line 296
    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    .line 301
    .line 302
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->c(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    return p0

    .line 307
    :pswitch_3
    check-cast p1, Ljava/util/List;

    .line 308
    .line 309
    check-cast p2, Ljava/util/List;

    .line 310
    .line 311
    new-instance p0, Landroidx/media3/exoplayer/trackselection/b;

    .line 312
    .line 313
    const/4 v0, 0x4

    .line 314
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-static {p1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 322
    .line 323
    new-instance v2, Landroidx/media3/exoplayer/trackselection/b;

    .line 324
    .line 325
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 326
    .line 327
    .line 328
    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 333
    .line 334
    new-instance v3, Landroidx/media3/exoplayer/trackselection/b;

    .line 335
    .line 336
    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, p0, v2, v3}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(II)Lcom/google/common/collect/ComparisonChain;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    new-instance v0, Landroidx/media3/exoplayer/trackselection/b;

    .line 356
    .line 357
    const/4 v1, 0x5

    .line 358
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 359
    .line 360
    .line 361
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 366
    .line 367
    new-instance v0, Landroidx/media3/exoplayer/trackselection/b;

    .line 368
    .line 369
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 370
    .line 371
    .line 372
    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    check-cast p2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 377
    .line 378
    new-instance v0, Landroidx/media3/exoplayer/trackselection/b;

    .line 379
    .line 380
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComparisonChain;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->e()I

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    return p0

    .line 392
    :pswitch_4
    check-cast p1, Ljava/util/List;

    .line 393
    .line 394
    check-cast p2, Ljava/util/List;

    .line 395
    .line 396
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    .line 401
    .line 402
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;

    .line 407
    .line 408
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->o:I

    .line 409
    .line 410
    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ImageTrackInfo;->o:I

    .line 411
    .line 412
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    return p0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
