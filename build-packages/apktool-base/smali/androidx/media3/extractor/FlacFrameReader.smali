.class public abstract Landroidx/media3/extractor/FlacFrameReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;
    }
.end annotation


# direct methods
.method public static a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->H()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 10
    .line 11
    int-to-long v3, p0

    .line 12
    mul-long/2addr v1, v3

    .line 13
    :goto_0
    iget-wide p0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long p2, p0, v3

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    cmp-long p0, v1, p0

    .line 22
    .line 23
    if-lez p0, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iput-wide v1, p3, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :catch_0
    return v0
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/16 v6, 0x10

    .line 14
    .line 15
    ushr-long v6, v4, v6

    .line 16
    .line 17
    move/from16 v8, p2

    .line 18
    .line 19
    int-to-long v8, v8

    .line 20
    cmp-long v8, v6, v8

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    if-eqz v8, :cond_0

    .line 24
    .line 25
    return v9

    .line 26
    :cond_0
    const-wide/16 v10, 0x1

    .line 27
    .line 28
    and-long/2addr v6, v10

    .line 29
    cmp-long v6, v6, v10

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    move v6, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v6, v9

    .line 37
    :goto_0
    const/16 v8, 0xc

    .line 38
    .line 39
    shr-long v12, v4, v8

    .line 40
    .line 41
    const-wide/16 v14, 0xf

    .line 42
    .line 43
    and-long/2addr v12, v14

    .line 44
    long-to-int v12, v12

    .line 45
    const/16 v13, 0x8

    .line 46
    .line 47
    shr-long v16, v4, v13

    .line 48
    .line 49
    move/from16 p2, v9

    .line 50
    .line 51
    move-wide/from16 v18, v10

    .line 52
    .line 53
    and-long v9, v16, v14

    .line 54
    .line 55
    long-to-int v9, v9

    .line 56
    const/4 v10, 0x4

    .line 57
    shr-long v10, v4, v10

    .line 58
    .line 59
    and-long/2addr v10, v14

    .line 60
    long-to-int v10, v10

    .line 61
    shr-long v13, v4, v7

    .line 62
    .line 63
    const-wide/16 v15, 0x7

    .line 64
    .line 65
    and-long/2addr v13, v15

    .line 66
    long-to-int v11, v13

    .line 67
    and-long v4, v4, v18

    .line 68
    .line 69
    cmp-long v4, v4, v18

    .line 70
    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    move v4, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move/from16 v4, p2

    .line 76
    .line 77
    :goto_1
    const/4 v5, 0x2

    .line 78
    const/4 v13, 0x7

    .line 79
    if-gt v10, v13, :cond_3

    .line 80
    .line 81
    iget v14, v1, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 82
    .line 83
    sub-int/2addr v14, v7

    .line 84
    if-ne v10, v14, :cond_12

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/16 v14, 0xa

    .line 88
    .line 89
    if-gt v10, v14, :cond_12

    .line 90
    .line 91
    iget v10, v1, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 92
    .line 93
    if-ne v10, v5, :cond_12

    .line 94
    .line 95
    :goto_2
    if-nez v11, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget v10, v1, Landroidx/media3/extractor/FlacStreamMetadata;->i:I

    .line 99
    .line 100
    if-ne v11, v10, :cond_12

    .line 101
    .line 102
    :goto_3
    if-nez v4, :cond_12

    .line 103
    .line 104
    invoke-static {v0, v1, v6, v2}, Landroidx/media3/extractor/FlacFrameReader;->a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_12

    .line 109
    .line 110
    iget-wide v10, v2, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    .line 111
    .line 112
    invoke-static {v12, v0}, Landroidx/media3/extractor/FlacFrameReader;->c(ILandroidx/media3/common/util/ParsableByteArray;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iget-wide v14, v1, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 117
    .line 118
    const-wide/16 v16, 0x0

    .line 119
    .line 120
    cmp-long v4, v14, v16

    .line 121
    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    move-wide/from16 v16, v14

    .line 125
    .line 126
    int-to-long v13, v2

    .line 127
    add-long/2addr v10, v13

    .line 128
    cmp-long v6, v10, v16

    .line 129
    .line 130
    if-ltz v6, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    move/from16 v6, p2

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_6
    :goto_4
    move v6, v7

    .line 137
    :goto_5
    const/4 v10, -0x1

    .line 138
    if-eq v2, v10, :cond_12

    .line 139
    .line 140
    if-nez v6, :cond_7

    .line 141
    .line 142
    iget v6, v1, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 143
    .line 144
    if-lt v2, v6, :cond_12

    .line 145
    .line 146
    :cond_7
    iget v6, v1, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 147
    .line 148
    if-gt v2, v6, :cond_12

    .line 149
    .line 150
    iget v2, v1, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 151
    .line 152
    if-nez v9, :cond_8

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_8
    const/16 v6, 0xb

    .line 156
    .line 157
    if-gt v9, v6, :cond_9

    .line 158
    .line 159
    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->f:I

    .line 160
    .line 161
    if-ne v9, v1, :cond_12

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_9
    if-ne v9, v8, :cond_a

    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    mul-int/lit16 v1, v1, 0x3e8

    .line 171
    .line 172
    if-ne v1, v2, :cond_12

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_a
    const/16 v1, 0xe

    .line 176
    .line 177
    if-gt v9, v1, :cond_12

    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-ne v9, v1, :cond_b

    .line 184
    .line 185
    mul-int/lit8 v6, v6, 0xa

    .line 186
    .line 187
    :cond_b
    if-ne v6, v2, :cond_12

    .line 188
    .line 189
    :goto_6
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 194
    .line 195
    iget-object v6, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 196
    .line 197
    sub-int/2addr v2, v7

    .line 198
    move/from16 v8, p2

    .line 199
    .line 200
    :goto_7
    if-ge v3, v2, :cond_c

    .line 201
    .line 202
    sget-object v9, Landroidx/media3/common/util/Util;->i:[I

    .line 203
    .line 204
    aget-byte v10, v6, v3

    .line 205
    .line 206
    and-int/lit16 v10, v10, 0xff

    .line 207
    .line 208
    xor-int/2addr v8, v10

    .line 209
    aget v8, v9, v8

    .line 210
    .line 211
    add-int/lit8 v3, v3, 0x1

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_c
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 215
    .line 216
    if-ne v1, v8, :cond_12

    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_d

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_d
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    and-int/lit16 v1, v0, 0x80

    .line 230
    .line 231
    if-eqz v1, :cond_e

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_e
    and-int/lit8 v0, v0, 0x7e

    .line 235
    .line 236
    shr-int/2addr v0, v7

    .line 237
    if-lt v0, v5, :cond_f

    .line 238
    .line 239
    const/4 v4, 0x7

    .line 240
    if-le v0, v4, :cond_10

    .line 241
    .line 242
    :cond_f
    const/16 v1, 0xd

    .line 243
    .line 244
    if-lt v0, v1, :cond_11

    .line 245
    .line 246
    const/16 v1, 0x1f

    .line 247
    .line 248
    if-gt v0, v1, :cond_11

    .line 249
    .line 250
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, "Ignoring frame where first subframe has a reserved type: "

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const-string v1, "FlacFrameReader"

    .line 265
    .line 266
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_11
    :goto_8
    return v7

    .line 271
    :cond_12
    :goto_9
    return p2
.end method

.method public static c(ILandroidx/media3/common/util/ParsableByteArray;)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    return p0

    .line 6
    :pswitch_0
    add-int/lit8 p0, p0, -0x8

    .line 7
    .line 8
    const/16 p1, 0x100

    .line 9
    .line 10
    shl-int p0, p1, p0

    .line 11
    .line 12
    return p0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_3
    add-int/lit8 p0, p0, -0x2

    .line 28
    .line 29
    const/16 p1, 0x240

    .line 30
    .line 31
    shl-int p0, p1, p0

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_4
    const/16 p0, 0xc0

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
