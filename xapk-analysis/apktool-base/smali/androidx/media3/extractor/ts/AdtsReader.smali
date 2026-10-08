.class public final Landroidx/media3/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final x:[B


# instance fields
.field public final a:Z

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroidx/media3/extractor/TrackOutput;

.field public i:Landroidx/media3/extractor/TrackOutput;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:Landroidx/media3/extractor/TrackOutput;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/extractor/ts/AdtsReader;->x:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    sget-object v1, Landroidx/media3/extractor/ts/AdtsReader;->x:[B

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->o:I

    .line 31
    .line 32
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    .line 33
    .line 34
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    .line 40
    .line 41
    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 42
    .line 43
    iput-boolean p4, p0, Landroidx/media3/extractor/ts/AdtsReader;->a:Z

    .line 44
    .line 45
    iput-object p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->d:Ljava/lang/String;

    .line 46
    .line 47
    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->e:I

    .line 48
    .line 49
    iput-object p3, p0, Landroidx/media3/extractor/ts/AdtsReader;->f:Ljava/lang/String;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 53
    .line 54
    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 55
    .line 56
    const/16 p1, 0x100

    .line 57
    .line 58
    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 14
    .line 15
    const/16 v0, 0x100

    .line 16
    .line 17
    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 18
    .line 19
    return-void
.end method

.method public final b(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_27

    .line 17
    .line 18
    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 19
    .line 20
    const/16 v3, 0x100

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    const/16 v5, 0xd

    .line 24
    .line 25
    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 26
    .line 27
    const/4 v7, 0x7

    .line 28
    const/4 v8, 0x3

    .line 29
    iget-object v9, v0, Landroidx/media3/extractor/ts/AdtsReader;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x4

    .line 33
    const/4 v12, 0x2

    .line 34
    const/4 v13, 0x1

    .line 35
    if-eqz v2, :cond_d

    .line 36
    .line 37
    if-eq v2, v13, :cond_9

    .line 38
    .line 39
    const/16 v4, 0xa

    .line 40
    .line 41
    if-eq v2, v12, :cond_8

    .line 42
    .line 43
    if-eq v2, v8, :cond_3

    .line 44
    .line 45
    if-ne v2, v11, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    .line 52
    .line 53
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 54
    .line 55
    sub-int/2addr v4, v5

    .line 56
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iget-object v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    .line 61
    .line 62
    invoke-interface {v4, v2, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 63
    .line 64
    .line 65
    iget v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 66
    .line 67
    add-int/2addr v4, v2

    .line 68
    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 69
    .line 70
    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    .line 71
    .line 72
    if-ne v4, v2, :cond_0

    .line 73
    .line 74
    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 75
    .line 76
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v2, v4, v6

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v13, v10

    .line 87
    :goto_1
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    .line 91
    .line 92
    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 93
    .line 94
    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    .line 95
    .line 96
    const/16 v19, 0x0

    .line 97
    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/16 v17, 0x1

    .line 101
    .line 102
    move/from16 v18, v2

    .line 103
    .line 104
    move-wide v15, v4

    .line 105
    invoke-interface/range {v14 .. v20}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 106
    .line 107
    .line 108
    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 109
    .line 110
    iget-wide v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->w:J

    .line 111
    .line 112
    add-long/2addr v4, v6

    .line 113
    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 114
    .line 115
    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 116
    .line 117
    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 118
    .line 119
    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    invoke-static {}, Lio/sentry/d;->d()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->m:Z

    .line 127
    .line 128
    const/4 v3, 0x5

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    move v2, v7

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move v2, v3

    .line 134
    :goto_2
    iget-object v6, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 135
    .line 136
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    iget v15, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 141
    .line 142
    sub-int v15, v2, v15

    .line 143
    .line 144
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    iget v15, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 149
    .line 150
    invoke-virtual {v1, v6, v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 151
    .line 152
    .line 153
    iget v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 154
    .line 155
    add-int/2addr v6, v14

    .line 156
    iput v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 157
    .line 158
    if-ne v6, v2, :cond_0

    .line 159
    .line 160
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 161
    .line 162
    .line 163
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->r:Z

    .line 164
    .line 165
    if-nez v2, :cond_6

    .line 166
    .line 167
    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    add-int/2addr v2, v13

    .line 172
    if-eq v2, v12, :cond_5

    .line 173
    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v6, "Detected audio object type: "

    .line 177
    .line 178
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, ", but assuming AAC LC."

    .line 185
    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const-string v4, "AdtsReader"

    .line 194
    .line 195
    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move v2, v12

    .line 199
    :cond_5
    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    iget v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    .line 207
    .line 208
    shl-int/2addr v2, v8

    .line 209
    and-int/lit16 v2, v2, 0xf8

    .line 210
    .line 211
    shr-int/lit8 v6, v4, 0x1

    .line 212
    .line 213
    and-int/2addr v6, v7

    .line 214
    or-int/2addr v2, v6

    .line 215
    int-to-byte v2, v2

    .line 216
    shl-int/2addr v4, v7

    .line 217
    and-int/lit16 v4, v4, 0x80

    .line 218
    .line 219
    shl-int/2addr v3, v8

    .line 220
    and-int/lit8 v3, v3, 0x78

    .line 221
    .line 222
    or-int/2addr v3, v4

    .line 223
    int-to-byte v3, v3

    .line 224
    new-array v4, v12, [B

    .line 225
    .line 226
    aput-byte v2, v4, v10

    .line 227
    .line 228
    aput-byte v3, v4, v13

    .line 229
    .line 230
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    .line 231
    .line 232
    invoke-direct {v2, v12, v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 233
    .line 234
    .line 235
    invoke-static {v2, v10}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 240
    .line 241
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 242
    .line 243
    .line 244
    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->g:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->f:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 255
    .line 256
    const-string v6, "audio/mp4a-latm"

    .line 257
    .line 258
    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v6, v2, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    .line 265
    .line 266
    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 267
    .line 268
    iget v6, v2, Landroidx/media3/extractor/AacUtil$Config;->b:I

    .line 269
    .line 270
    iput v6, v3, Landroidx/media3/common/Format$Builder;->I:I

    .line 271
    .line 272
    iget v2, v2, Landroidx/media3/extractor/AacUtil$Config;->a:I

    .line 273
    .line 274
    iput v2, v3, Landroidx/media3/common/Format$Builder;->K:I

    .line 275
    .line 276
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 281
    .line 282
    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->d:Ljava/lang/String;

    .line 283
    .line 284
    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 285
    .line 286
    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->e:I

    .line 287
    .line 288
    iput v2, v3, Landroidx/media3/common/Format$Builder;->f:I

    .line 289
    .line 290
    new-instance v2, Landroidx/media3/common/Format;

    .line 291
    .line 292
    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 293
    .line 294
    .line 295
    iget v3, v2, Landroidx/media3/common/Format;->L:I

    .line 296
    .line 297
    int-to-long v3, v3

    .line 298
    const-wide/32 v6, 0x3d090000

    .line 299
    .line 300
    .line 301
    div-long/2addr v6, v3

    .line 302
    iput-wide v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    .line 303
    .line 304
    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    .line 305
    .line 306
    invoke-interface {v3, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 307
    .line 308
    .line 309
    iput-boolean v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->r:Z

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_6
    invoke-virtual {v9, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 313
    .line 314
    .line 315
    :goto_3
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    add-int/lit8 v3, v2, -0x7

    .line 323
    .line 324
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->m:Z

    .line 325
    .line 326
    if-eqz v4, :cond_7

    .line 327
    .line 328
    add-int/lit8 v3, v2, -0x9

    .line 329
    .line 330
    :cond_7
    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    .line 331
    .line 332
    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    .line 333
    .line 334
    iput v11, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 335
    .line 336
    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 337
    .line 338
    iput-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    .line 339
    .line 340
    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->w:J

    .line 341
    .line 342
    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_8
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 347
    .line 348
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 353
    .line 354
    rsub-int/lit8 v5, v5, 0xa

    .line 355
    .line 356
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 361
    .line 362
    invoke-virtual {v1, v2, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 363
    .line 364
    .line 365
    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 366
    .line 367
    add-int/2addr v2, v3

    .line 368
    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 369
    .line 370
    if-ne v2, v4, :cond_0

    .line 371
    .line 372
    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    .line 373
    .line 374
    invoke-interface {v2, v4, v6}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 375
    .line 376
    .line 377
    const/4 v2, 0x6

    .line 378
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    .line 382
    .line 383
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->y()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    add-int/2addr v3, v4

    .line 388
    iput v11, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 389
    .line 390
    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 391
    .line 392
    iput-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    .line 393
    .line 394
    const-wide/16 v4, 0x0

    .line 395
    .line 396
    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->w:J

    .line 397
    .line 398
    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-nez v2, :cond_a

    .line 407
    .line 408
    goto/16 :goto_0

    .line 409
    .line 410
    :cond_a
    iget-object v2, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 411
    .line 412
    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 413
    .line 414
    iget v6, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 415
    .line 416
    aget-byte v5, v5, v6

    .line 417
    .line 418
    aput-byte v5, v2, v10

    .line 419
    .line 420
    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    .line 428
    .line 429
    if-eq v5, v4, :cond_b

    .line 430
    .line 431
    if-eq v2, v5, :cond_b

    .line 432
    .line 433
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    .line 434
    .line 435
    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 436
    .line 437
    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 438
    .line 439
    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_b
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    .line 444
    .line 445
    if-nez v3, :cond_c

    .line 446
    .line 447
    iput-boolean v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    .line 448
    .line 449
    iget v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->q:I

    .line 450
    .line 451
    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->o:I

    .line 452
    .line 453
    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    .line 454
    .line 455
    :cond_c
    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 456
    .line 457
    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_d
    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 462
    .line 463
    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 464
    .line 465
    iget v15, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 466
    .line 467
    :goto_4
    if-ge v14, v15, :cond_26

    .line 468
    .line 469
    add-int/lit8 v3, v14, 0x1

    .line 470
    .line 471
    move/from16 v17, v8

    .line 472
    .line 473
    aget-byte v8, v2, v14

    .line 474
    .line 475
    and-int/lit16 v7, v8, 0xff

    .line 476
    .line 477
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 478
    .line 479
    const/16 v12, 0x200

    .line 480
    .line 481
    if-ne v5, v12, :cond_20

    .line 482
    .line 483
    int-to-byte v5, v7

    .line 484
    and-int/lit16 v5, v5, 0xff

    .line 485
    .line 486
    const v21, 0xff00

    .line 487
    .line 488
    .line 489
    or-int v5, v21, v5

    .line 490
    .line 491
    const v22, 0xfff6

    .line 492
    .line 493
    .line 494
    and-int v5, v5, v22

    .line 495
    .line 496
    const v12, 0xfff0

    .line 497
    .line 498
    .line 499
    if-ne v5, v12, :cond_20

    .line 500
    .line 501
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    .line 502
    .line 503
    if-nez v5, :cond_1d

    .line 504
    .line 505
    add-int/lit8 v5, v14, -0x1

    .line 506
    .line 507
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 508
    .line 509
    .line 510
    iget-object v12, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 511
    .line 512
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    if-ge v4, v13, :cond_e

    .line 517
    .line 518
    :goto_5
    const/4 v10, -0x1

    .line 519
    goto/16 :goto_7

    .line 520
    .line 521
    :cond_e
    invoke-virtual {v1, v12, v10, v13}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v9, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    iget v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->o:I

    .line 532
    .line 533
    const/4 v11, -0x1

    .line 534
    if-eq v12, v11, :cond_f

    .line 535
    .line 536
    if-eq v4, v12, :cond_f

    .line 537
    .line 538
    move v10, v11

    .line 539
    goto/16 :goto_7

    .line 540
    .line 541
    :cond_f
    iget v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    .line 542
    .line 543
    if-eq v12, v11, :cond_12

    .line 544
    .line 545
    iget-object v11, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 546
    .line 547
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 548
    .line 549
    .line 550
    move-result v12

    .line 551
    if-ge v12, v13, :cond_10

    .line 552
    .line 553
    goto/16 :goto_8

    .line 554
    .line 555
    :cond_10
    invoke-virtual {v1, v11, v10, v13}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 556
    .line 557
    .line 558
    const/4 v11, 0x2

    .line 559
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 560
    .line 561
    .line 562
    const/4 v11, 0x4

    .line 563
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 564
    .line 565
    .line 566
    move-result v12

    .line 567
    iget v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    .line 568
    .line 569
    if-eq v12, v13, :cond_11

    .line 570
    .line 571
    goto :goto_5

    .line 572
    :cond_11
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 573
    .line 574
    .line 575
    goto :goto_6

    .line 576
    :cond_12
    const/4 v11, 0x4

    .line 577
    :goto_6
    iget-object v12, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 578
    .line 579
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 580
    .line 581
    .line 582
    move-result v13

    .line 583
    if-ge v13, v11, :cond_13

    .line 584
    .line 585
    goto :goto_8

    .line 586
    :cond_13
    invoke-virtual {v1, v12, v10, v11}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 587
    .line 588
    .line 589
    const/16 v12, 0xe

    .line 590
    .line 591
    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 592
    .line 593
    .line 594
    const/16 v12, 0xd

    .line 595
    .line 596
    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 597
    .line 598
    .line 599
    move-result v13

    .line 600
    const/4 v11, 0x7

    .line 601
    if-ge v13, v11, :cond_14

    .line 602
    .line 603
    goto :goto_5

    .line 604
    :cond_14
    iget-object v11, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 605
    .line 606
    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 607
    .line 608
    add-int/2addr v5, v13

    .line 609
    if-lt v5, v12, :cond_15

    .line 610
    .line 611
    goto :goto_8

    .line 612
    :cond_15
    aget-byte v13, v11, v5

    .line 613
    .line 614
    const/4 v10, -0x1

    .line 615
    if-ne v13, v10, :cond_17

    .line 616
    .line 617
    add-int/lit8 v5, v5, 0x1

    .line 618
    .line 619
    if-ne v5, v12, :cond_16

    .line 620
    .line 621
    goto :goto_8

    .line 622
    :cond_16
    aget-byte v5, v11, v5

    .line 623
    .line 624
    and-int/lit16 v11, v5, 0xff

    .line 625
    .line 626
    or-int v11, v21, v11

    .line 627
    .line 628
    and-int v11, v11, v22

    .line 629
    .line 630
    const v12, 0xfff0

    .line 631
    .line 632
    .line 633
    if-ne v11, v12, :cond_1c

    .line 634
    .line 635
    and-int/lit8 v5, v5, 0x8

    .line 636
    .line 637
    shr-int/lit8 v5, v5, 0x3

    .line 638
    .line 639
    if-ne v5, v4, :cond_1c

    .line 640
    .line 641
    goto :goto_8

    .line 642
    :cond_17
    const/16 v4, 0x49

    .line 643
    .line 644
    if-eq v13, v4, :cond_18

    .line 645
    .line 646
    goto :goto_7

    .line 647
    :cond_18
    add-int/lit8 v4, v5, 0x1

    .line 648
    .line 649
    if-ne v4, v12, :cond_19

    .line 650
    .line 651
    goto :goto_8

    .line 652
    :cond_19
    aget-byte v4, v11, v4

    .line 653
    .line 654
    const/16 v13, 0x44

    .line 655
    .line 656
    if-eq v4, v13, :cond_1a

    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_1a
    add-int/lit8 v5, v5, 0x2

    .line 660
    .line 661
    if-ne v5, v12, :cond_1b

    .line 662
    .line 663
    goto :goto_8

    .line 664
    :cond_1b
    aget-byte v4, v11, v5

    .line 665
    .line 666
    const/16 v5, 0x33

    .line 667
    .line 668
    if-ne v4, v5, :cond_1c

    .line 669
    .line 670
    goto :goto_8

    .line 671
    :cond_1c
    :goto_7
    const/4 v4, 0x1

    .line 672
    goto :goto_b

    .line 673
    :cond_1d
    :goto_8
    and-int/lit8 v2, v8, 0x8

    .line 674
    .line 675
    shr-int/lit8 v2, v2, 0x3

    .line 676
    .line 677
    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->q:I

    .line 678
    .line 679
    and-int/lit8 v2, v8, 0x1

    .line 680
    .line 681
    if-nez v2, :cond_1e

    .line 682
    .line 683
    const/4 v2, 0x1

    .line 684
    goto :goto_9

    .line 685
    :cond_1e
    const/4 v2, 0x0

    .line 686
    :goto_9
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->m:Z

    .line 687
    .line 688
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    .line 689
    .line 690
    if-nez v2, :cond_1f

    .line 691
    .line 692
    const/4 v4, 0x1

    .line 693
    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 694
    .line 695
    const/4 v2, 0x0

    .line 696
    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 697
    .line 698
    goto :goto_a

    .line 699
    :cond_1f
    move/from16 v4, v17

    .line 700
    .line 701
    const/4 v2, 0x0

    .line 702
    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 703
    .line 704
    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 705
    .line 706
    :goto_a
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_0

    .line 710
    .line 711
    :cond_20
    move v10, v4

    .line 712
    move v4, v13

    .line 713
    :goto_b
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 714
    .line 715
    or-int/2addr v7, v5

    .line 716
    const/16 v8, 0x149

    .line 717
    .line 718
    if-eq v7, v8, :cond_25

    .line 719
    .line 720
    const/16 v8, 0x1ff

    .line 721
    .line 722
    if-eq v7, v8, :cond_24

    .line 723
    .line 724
    const/16 v8, 0x344

    .line 725
    .line 726
    if-eq v7, v8, :cond_23

    .line 727
    .line 728
    const/16 v8, 0x433

    .line 729
    .line 730
    if-eq v7, v8, :cond_22

    .line 731
    .line 732
    const/16 v7, 0x100

    .line 733
    .line 734
    if-eq v5, v7, :cond_21

    .line 735
    .line 736
    iput v7, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 737
    .line 738
    const/4 v5, 0x3

    .line 739
    const/4 v8, 0x0

    .line 740
    const/4 v11, 0x2

    .line 741
    goto :goto_d

    .line 742
    :cond_21
    const/4 v5, 0x3

    .line 743
    const/4 v8, 0x0

    .line 744
    const/4 v11, 0x2

    .line 745
    goto :goto_c

    .line 746
    :cond_22
    const/4 v11, 0x2

    .line 747
    iput v11, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    .line 748
    .line 749
    const/4 v5, 0x3

    .line 750
    iput v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    .line 751
    .line 752
    const/4 v8, 0x0

    .line 753
    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    .line 754
    .line 755
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_0

    .line 762
    .line 763
    :cond_23
    const/4 v5, 0x3

    .line 764
    const/16 v7, 0x100

    .line 765
    .line 766
    const/4 v8, 0x0

    .line 767
    const/4 v11, 0x2

    .line 768
    const/16 v12, 0x400

    .line 769
    .line 770
    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 771
    .line 772
    goto :goto_c

    .line 773
    :cond_24
    const/4 v5, 0x3

    .line 774
    const/16 v7, 0x100

    .line 775
    .line 776
    const/4 v8, 0x0

    .line 777
    const/4 v11, 0x2

    .line 778
    const/16 v12, 0x200

    .line 779
    .line 780
    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 781
    .line 782
    goto :goto_c

    .line 783
    :cond_25
    const/4 v5, 0x3

    .line 784
    const/16 v7, 0x100

    .line 785
    .line 786
    const/4 v8, 0x0

    .line 787
    const/4 v11, 0x2

    .line 788
    const/16 v12, 0x300

    .line 789
    .line 790
    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    .line 791
    .line 792
    :goto_c
    move v14, v3

    .line 793
    :goto_d
    move v13, v4

    .line 794
    move v3, v7

    .line 795
    move v4, v10

    .line 796
    move v12, v11

    .line 797
    const/4 v7, 0x7

    .line 798
    const/4 v11, 0x4

    .line 799
    move v10, v8

    .line 800
    move v8, v5

    .line 801
    const/16 v5, 0xd

    .line 802
    .line 803
    goto/16 :goto_4

    .line 804
    .line 805
    :cond_26
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_0

    .line 809
    .line 810
    :cond_27
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    .line 2
    .line 3
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    .line 24
    .line 25
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 33
    .line 34
    .line 35
    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    .line 43
    .line 44
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 50
    .line 51
    .line 52
    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p2, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsReader;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 63
    .line 64
    const-string p0, "application/id3"

    .line 65
    .line 66
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 71
    .line 72
    new-instance p0, Landroidx/media3/common/Format;

    .line 73
    .line 74
    invoke-direct {p0, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p0}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    new-instance p1, Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 82
    .line 83
    invoke-direct {p1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    .line 87
    .line 88
    return-void
.end method
