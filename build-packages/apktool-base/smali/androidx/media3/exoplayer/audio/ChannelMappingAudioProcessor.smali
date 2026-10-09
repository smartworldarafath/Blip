.class public final Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public i:Lcom/google/common/primitives/ImmutableIntArray;

.field public j:Lcom/google/common/primitives/ImmutableIntArray;


# virtual methods
.method public final a(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 8

    .line 1
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->i:Lcom/google/common/primitives/ImmutableIntArray;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray;->k:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    move v5, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v5, v3

    .line 27
    :goto_0
    move v6, v3

    .line 28
    :goto_1
    if-ge v6, v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, v6}, Lcom/google/common/primitives/ImmutableIntArray;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-ge v7, v1, :cond_3

    .line 35
    .line 36
    if-eq v7, v6, :cond_2

    .line 37
    .line 38
    move v7, v4

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v7, v3

    .line 41
    :goto_2
    or-int/2addr v5, v7

    .line 42
    add-int/lit8 v6, v6, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Channel map ("

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ") trying to access non-existent input channel."

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_4
    if-eqz v5, :cond_5

    .line 71
    .line 72
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 73
    .line 74
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    .line 75
    .line 76
    invoke-direct {p0, p1, v2, v0}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_5
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_6
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 84
    .line 85
    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->i:Lcom/google/common/primitives/ImmutableIntArray;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->j:Lcom/google/common/primitives/ImmutableIntArray;

    .line 4
    .line 5
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->j:Lcom/google/common/primitives/ImmutableIntArray;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->i:Lcom/google/common/primitives/ImmutableIntArray;

    .line 5
    .line 6
    return-void
.end method

.method public final j(Ljava/nio/ByteBuffer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->j:Lcom/google/common/primitives/ImmutableIntArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    sub-int v5, v4, v3

    .line 19
    .line 20
    iget-object v6, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 21
    .line 22
    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->d:I

    .line 23
    .line 24
    div-int/2addr v5, v6

    .line 25
    iget-object v6, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->c:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 26
    .line 27
    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->d:I

    .line 28
    .line 29
    mul-int/2addr v5, v6

    .line 30
    invoke-virtual {v0, v5}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :goto_0
    if-ge v3, v4, :cond_f

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    :goto_1
    iget v8, v2, Lcom/google/common/primitives/ImmutableIntArray;->k:I

    .line 38
    .line 39
    if-ge v7, v8, :cond_e

    .line 40
    .line 41
    invoke-virtual {v2, v7}, Lcom/google/common/primitives/ImmutableIntArray;->a(I)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    iget-object v9, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 46
    .line 47
    iget v9, v9, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 48
    .line 49
    invoke-static {v9}, Landroidx/media3/common/util/Util;->n(I)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    mul-int/2addr v9, v8

    .line 54
    add-int/2addr v9, v3

    .line 55
    iget-object v8, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 56
    .line 57
    iget v8, v8, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 58
    .line 59
    const/4 v10, 0x2

    .line 60
    if-eq v8, v10, :cond_d

    .line 61
    .line 62
    const/4 v10, 0x3

    .line 63
    if-eq v8, v10, :cond_c

    .line 64
    .line 65
    const/4 v11, 0x4

    .line 66
    if-eq v8, v11, :cond_b

    .line 67
    .line 68
    const/16 v11, 0x15

    .line 69
    .line 70
    if-eq v8, v11, :cond_3

    .line 71
    .line 72
    const/16 v11, 0x16

    .line 73
    .line 74
    if-eq v8, v11, :cond_2

    .line 75
    .line 76
    const/high16 v11, 0x10000000

    .line 77
    .line 78
    if-eq v8, v11, :cond_d

    .line 79
    .line 80
    const/high16 v11, 0x50000000

    .line 81
    .line 82
    if-eq v8, v11, :cond_3

    .line 83
    .line 84
    const/high16 v10, 0x60000000

    .line 85
    .line 86
    if-eq v8, v10, :cond_2

    .line 87
    .line 88
    const/high16 v10, 0x70000000

    .line 89
    .line 90
    if-eq v8, v10, :cond_1

    .line 91
    .line 92
    const/high16 v10, 0x71000000

    .line 93
    .line 94
    if-eq v8, v10, :cond_b

    .line 95
    .line 96
    const/high16 v10, 0x72000000

    .line 97
    .line 98
    if-ne v8, v10, :cond_0

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    iget-object v0, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 104
    .line 105
    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v3, "Unexpected encoding: "

    .line 110
    .line 111
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :cond_1
    :goto_2
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getDouble(I)D

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    invoke-virtual {v5, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    goto/16 :goto_b

    .line 133
    .line 134
    :cond_2
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    .line 141
    goto/16 :goto_b

    .line 142
    .line 143
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 148
    .line 149
    if-ne v8, v11, :cond_4

    .line 150
    .line 151
    move v8, v9

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    add-int/lit8 v8, v9, 0x2

    .line 154
    .line 155
    :goto_3
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    add-int/lit8 v12, v9, 0x1

    .line 160
    .line 161
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    if-ne v13, v11, :cond_5

    .line 170
    .line 171
    add-int/lit8 v9, v9, 0x2

    .line 172
    .line 173
    :cond_5
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    shl-int/lit8 v8, v8, 0x18

    .line 178
    .line 179
    const/high16 v13, -0x1000000

    .line 180
    .line 181
    and-int/2addr v8, v13

    .line 182
    shl-int/lit8 v12, v12, 0x10

    .line 183
    .line 184
    const/high16 v14, 0xff0000

    .line 185
    .line 186
    and-int/2addr v12, v14

    .line 187
    or-int/2addr v8, v12

    .line 188
    shl-int/lit8 v9, v9, 0x8

    .line 189
    .line 190
    const v12, 0xff00

    .line 191
    .line 192
    .line 193
    and-int/2addr v9, v12

    .line 194
    or-int/2addr v8, v9

    .line 195
    shr-int/lit8 v8, v8, 0x8

    .line 196
    .line 197
    and-int v9, v8, v13

    .line 198
    .line 199
    const/4 v13, 0x1

    .line 200
    if-eqz v9, :cond_7

    .line 201
    .line 202
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    .line 203
    .line 204
    and-int v15, v8, v9

    .line 205
    .line 206
    if-ne v15, v9, :cond_6

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    const/4 v9, 0x0

    .line 210
    goto :goto_5

    .line 211
    :cond_7
    :goto_4
    move v9, v13

    .line 212
    :goto_5
    const-string v15, "Value out of range of 24-bit integer: %s"

    .line 213
    .line 214
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v9, v15, v6}, Lcom/google/common/base/Preconditions;->g(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-lt v6, v10, :cond_8

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_8
    const/4 v13, 0x0

    .line 229
    :goto_6
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    if-ne v6, v11, :cond_9

    .line 237
    .line 238
    and-int v6, v8, v14

    .line 239
    .line 240
    shr-int/lit8 v6, v6, 0x10

    .line 241
    .line 242
    :goto_7
    int-to-byte v6, v6

    .line 243
    goto :goto_8

    .line 244
    :cond_9
    and-int/lit16 v6, v8, 0xff

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :goto_8
    and-int v9, v8, v12

    .line 248
    .line 249
    shr-int/lit8 v9, v9, 0x8

    .line 250
    .line 251
    int-to-byte v9, v9

    .line 252
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    if-ne v10, v11, :cond_a

    .line 257
    .line 258
    and-int/lit16 v8, v8, 0xff

    .line 259
    .line 260
    :goto_9
    int-to-byte v8, v8

    .line 261
    goto :goto_a

    .line 262
    :cond_a
    and-int/2addr v8, v14

    .line 263
    shr-int/lit8 v8, v8, 0x10

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :goto_a
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 275
    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_b
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 283
    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_c
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_d
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 299
    .line 300
    .line 301
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :cond_e
    iget-object v6, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 306
    .line 307
    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->d:I

    .line 308
    .line 309
    add-int/2addr v3, v6

    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_f
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 316
    .line 317
    .line 318
    return-void
.end method
