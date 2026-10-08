.class final Landroidx/media3/extractor/text/CuesWithTimingSubtitle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# static fields
.field public static final l:Lcom/google/common/collect/Ordering;


# instance fields
.field public final j:Lcom/google/common/collect/ImmutableList;

.field public final k:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/media3/extractor/text/a;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->d(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->l:Lcom/google/common/collect/Ordering;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x2

    .line 13
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x1

    .line 20
    if-ne v2, v9, :cond_5

    .line 21
    .line 22
    check-cast v1, Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList;->p(I)Lcom/google/common/collect/UnmodifiableListIterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    if-nez v10, :cond_2

    .line 37
    .line 38
    check-cast v2, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 39
    .line 40
    iget-wide v10, v2, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    .line 41
    .line 42
    iget-wide v12, v2, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    .line 43
    .line 44
    cmp-long v1, v10, v6

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-wide v4, v10

    .line 52
    :goto_0
    cmp-long v1, v12, v6

    .line 53
    .line 54
    iget-object v2, v2, Landroidx/media3/extractor/text/CuesWithTiming;->a:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 63
    .line 64
    new-array v1, v9, [J

    .line 65
    .line 66
    aput-wide v4, v1, v8

    .line 67
    .line 68
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v2, v1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    add-long/2addr v12, v4

    .line 82
    new-array v1, v3, [J

    .line 83
    .line 84
    aput-wide v4, v1, v8

    .line 85
    .line 86
    aput-wide v12, v1, v9

    .line 87
    .line 88
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "expected one element but was: <"

    .line 94
    .line 95
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :goto_1
    const/4 v2, 0x4

    .line 102
    if-ge v8, v2, :cond_3

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    const-string v2, ", "

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    const-string v1, ", ..."

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_4
    const/16 v1, 0x3e

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v1

    .line 151
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    mul-int/2addr v2, v3

    .line 156
    new-array v2, v2, [J

    .line 157
    .line 158
    iput-object v2, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 159
    .line 160
    const-wide v9, 0x7fffffffffffffffL

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    invoke-static {v2, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    .line 166
    .line 167
    .line 168
    new-instance v2, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    sget-object v3, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->l:Lcom/google/common/collect/Ordering;

    .line 174
    .line 175
    invoke-static {v3, v1}, Lcom/google/common/collect/ImmutableList;->x(Lcom/google/common/collect/Ordering;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    move v3, v8

    .line 180
    :goto_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-ge v8, v9, :cond_b

    .line 185
    .line 186
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 191
    .line 192
    iget-wide v10, v9, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    .line 193
    .line 194
    iget-wide v12, v9, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    .line 195
    .line 196
    iget-object v9, v9, Landroidx/media3/extractor/text/CuesWithTiming;->a:Lcom/google/common/collect/ImmutableList;

    .line 197
    .line 198
    cmp-long v14, v10, v6

    .line 199
    .line 200
    if-nez v14, :cond_6

    .line 201
    .line 202
    const-wide/16 v10, 0x0

    .line 203
    .line 204
    :cond_6
    add-long v14, v10, v12

    .line 205
    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    iget-object v4, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 209
    .line 210
    add-int/lit8 v5, v3, -0x1

    .line 211
    .line 212
    aget-wide v16, v4, v5

    .line 213
    .line 214
    cmp-long v4, v16, v10

    .line 215
    .line 216
    if-gez v4, :cond_8

    .line 217
    .line 218
    :cond_7
    move-wide/from16 v16, v6

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    if-nez v4, :cond_9

    .line 222
    .line 223
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Lcom/google/common/collect/ImmutableList;

    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_9

    .line 234
    .line 235
    invoke-virtual {v2, v5, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-wide/from16 v16, v6

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_9
    const-string v4, "CuesWithTimingSubtitle"

    .line 242
    .line 243
    move-wide/from16 v16, v6

    .line 244
    .line 245
    const-string v6, "Truncating unsupported overlapping cues."

    .line 246
    .line 247
    invoke-static {v4, v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v4, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 251
    .line 252
    aput-wide v10, v4, v5

    .line 253
    .line 254
    invoke-virtual {v2, v5, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :goto_3
    iget-object v4, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 259
    .line 260
    add-int/lit8 v5, v3, 0x1

    .line 261
    .line 262
    aput-wide v10, v4, v3

    .line 263
    .line 264
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move v3, v5

    .line 268
    :goto_4
    cmp-long v4, v12, v16

    .line 269
    .line 270
    if-eqz v4, :cond_a

    .line 271
    .line 272
    iget-object v4, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 273
    .line 274
    add-int/lit8 v5, v3, 0x1

    .line 275
    .line 276
    aput-wide v14, v4, v3

    .line 277
    .line 278
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move v3, v5

    .line 286
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 287
    .line 288
    move-wide/from16 v6, v16

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_b
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 296
    .line 297
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->a([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ge p1, p0, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public final b(I)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 16
    .line 17
    aget-wide p0, p0, p1

    .line 18
    .line 19
    return-wide p0
.end method

.method public final c(J)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->k:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->d([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, -0x1

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->j:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
