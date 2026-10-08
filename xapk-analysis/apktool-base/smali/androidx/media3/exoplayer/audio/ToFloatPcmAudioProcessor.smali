.class public final Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static g(ILjava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    int-to-double v2, p0

    .line 7
    mul-double/2addr v2, v0

    .line 8
    double-to-float p0, v2

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 2

    .line 1
    iget p0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 13
    .line 14
    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    .line 15
    .line 16
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    .line 17
    .line 18
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final j(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v2, v1, v0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 12
    .line 13
    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v3, v4, :cond_9

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-eq v3, v5, :cond_8

    .line 20
    .line 21
    const/16 v6, 0x15

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    if-eq v3, v6, :cond_7

    .line 25
    .line 26
    const/16 v6, 0x16

    .line 27
    .line 28
    if-eq v3, v6, :cond_6

    .line 29
    .line 30
    const/high16 v6, 0x10000000

    .line 31
    .line 32
    if-eq v3, v6, :cond_5

    .line 33
    .line 34
    const/high16 v6, 0x50000000

    .line 35
    .line 36
    if-eq v3, v6, :cond_4

    .line 37
    .line 38
    const/high16 v5, 0x60000000

    .line 39
    .line 40
    if-eq v3, v5, :cond_3

    .line 41
    .line 42
    const/high16 v5, 0x70000000

    .line 43
    .line 44
    if-eq v3, v5, :cond_2

    .line 45
    .line 46
    const/high16 v5, 0x71000000

    .line 47
    .line 48
    if-eq v3, v5, :cond_1

    .line 49
    .line 50
    const/high16 v5, 0x72000000

    .line 51
    .line 52
    if-ne v3, v5, :cond_0

    .line 53
    .line 54
    div-int/2addr v2, v4

    .line 55
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_0
    if-ge v0, v1, :cond_a

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    double-to-float v2, v2

    .line 74
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_1
    if-ge v0, v1, :cond_a

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    div-int/2addr v2, v4

    .line 109
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :goto_2
    if-ge v0, v1, :cond_a

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getDouble(I)D

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    double-to-float v2, v2

    .line 120
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v0, v0, 0x8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :goto_3
    if-ge v0, v1, :cond_a

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    div-int/2addr v2, v5

    .line 147
    mul-int/lit8 v2, v2, 0x4

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    :goto_4
    if-ge v0, v1, :cond_a

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/lit8 v3, v0, 0x1

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    add-int/lit8 v4, v0, 0x2

    .line 166
    .line 167
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-static {v2, v3, v4, v7}, Lcom/google/common/primitives/Ints;->c(BBBB)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v0, v0, 0x3

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    mul-int/2addr v2, v4

    .line 182
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :goto_5
    if-ge v0, v1, :cond_a

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    shl-int/lit8 v2, v2, 0x10

    .line 197
    .line 198
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v0, v0, 0x2

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_6
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    :goto_6
    if-ge v0, v1, :cond_a

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v0, v0, 0x4

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_7
    div-int/2addr v2, v5

    .line 221
    mul-int/lit8 v2, v2, 0x4

    .line 222
    .line 223
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    :goto_7
    if-ge v0, v1, :cond_a

    .line 228
    .line 229
    add-int/lit8 v2, v0, 0x2

    .line 230
    .line 231
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    add-int/lit8 v3, v0, 0x1

    .line 236
    .line 237
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-static {v2, v3, v4, v7}, Lcom/google/common/primitives/Ints;->c(BBBB)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v0, v0, 0x3

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_8
    mul-int/lit8 v2, v2, 0x4

    .line 256
    .line 257
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    :goto_8
    if-ge v0, v1, :cond_a

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    and-int/lit16 v2, v2, 0xff

    .line 268
    .line 269
    add-int/lit8 v2, v2, -0x80

    .line 270
    .line 271
    shl-int/lit8 v2, v2, 0x18

    .line 272
    .line 273
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 274
    .line 275
    .line 276
    add-int/lit8 v0, v0, 0x1

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_9
    mul-int/2addr v2, v4

    .line 280
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    :goto_9
    if-ge v0, v1, :cond_a

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    shl-int/lit8 v2, v2, 0x10

    .line 291
    .line 292
    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->g(ILjava/nio/ByteBuffer;)V

    .line 293
    .line 294
    .line 295
    add-int/lit8 v0, v0, 0x2

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_a
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 306
    .line 307
    .line 308
    return-void
.end method
