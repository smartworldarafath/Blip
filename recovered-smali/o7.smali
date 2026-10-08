.class public final synthetic Lo7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic k:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7;->j:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 5
    .line 6
    iput-object p2, p0, Lo7;->k:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    check-cast p1, Landroidx/media3/common/Format;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 4
    .line 5
    iget-object v0, p0, Lo7;->j:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lo7;->k:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 11
    .line 12
    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->B:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p0, :cond_f

    .line 16
    .line 17
    iget-object p0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_f

    .line 26
    .line 27
    :cond_0
    iget p0, p1, Landroidx/media3/common/Format;->J:I

    .line 28
    .line 29
    iget-object v2, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    if-eq p0, v3, :cond_f

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-le p0, v4, :cond_f

    .line 36
    .line 37
    const-string p0, "audio/ac4"

    .line 38
    .line 39
    const-string v5, "audio/eac3-joc"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    sparse-switch v8, :sswitch_data_0

    .line 52
    .line 53
    .line 54
    :goto_0
    move v8, v3

    .line 55
    goto :goto_1

    .line 56
    :sswitch_0
    const-string v8, "audio/eac3"

    .line 57
    .line 58
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v8, 0x3

    .line 66
    goto :goto_1

    .line 67
    :sswitch_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v8, v4

    .line 75
    goto :goto_1

    .line 76
    :sswitch_2
    const-string v8, "audio/ac3"

    .line 77
    .line 78
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move v8, v1

    .line 86
    goto :goto_1

    .line 87
    :sswitch_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    move v8, v6

    .line 95
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :pswitch_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .line 101
    if-lt v8, v7, :cond_f

    .line 102
    .line 103
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 104
    .line 105
    if-eqz v8, :cond_f

    .line 106
    .line 107
    iget-boolean v8, v8, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 108
    .line 109
    if-eqz v8, :cond_f

    .line 110
    .line 111
    :goto_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    if-lt v8, v7, :cond_e

    .line 114
    .line 115
    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 116
    .line 117
    if-eqz v7, :cond_e

    .line 118
    .line 119
    iget-boolean v8, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 120
    .line 121
    if-eqz v8, :cond_e

    .line 122
    .line 123
    iget-object v7, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 124
    .line 125
    if-eqz v7, :cond_e

    .line 126
    .line 127
    invoke-static {v7}, Lk;->h(Landroid/media/Spatializer;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_e

    .line 132
    .line 133
    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 134
    .line 135
    iget-object v7, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 136
    .line 137
    if-eqz v7, :cond_e

    .line 138
    .line 139
    invoke-static {v7}, Lk;->l(Landroid/media/Spatializer;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_e

    .line 144
    .line 145
    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    .line 148
    .line 149
    iget-object v8, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 150
    .line 151
    if-eqz v8, :cond_b

    .line 152
    .line 153
    iget-boolean v9, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 154
    .line 155
    if-eqz v9, :cond_b

    .line 156
    .line 157
    invoke-static {v8}, Lk;->h(Landroid/media/Spatializer;)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_b

    .line 162
    .line 163
    iget-object v8, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 164
    .line 165
    if-eqz v8, :cond_b

    .line 166
    .line 167
    invoke-static {v8}, Lk;->l(Landroid/media/Spatializer;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_b

    .line 172
    .line 173
    iget v8, p1, Landroidx/media3/common/Format;->J:I

    .line 174
    .line 175
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_6

    .line 180
    .line 181
    const/16 p0, 0x10

    .line 182
    .line 183
    if-ne v8, p0, :cond_9

    .line 184
    .line 185
    const/16 p0, 0xc

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    const-string v5, "audio/iamf"

    .line 189
    .line 190
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_7

    .line 195
    .line 196
    if-ne v8, v3, :cond_9

    .line 197
    .line 198
    const/4 p0, 0x6

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    invoke-static {v2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_9

    .line 205
    .line 206
    const/16 p0, 0x12

    .line 207
    .line 208
    if-eq v8, p0, :cond_8

    .line 209
    .line 210
    const/16 p0, 0x15

    .line 211
    .line 212
    if-ne v8, p0, :cond_9

    .line 213
    .line 214
    :cond_8
    const/16 p0, 0x18

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    move p0, v8

    .line 218
    :goto_3
    iget v2, p1, Landroidx/media3/common/Format;->K:I

    .line 219
    .line 220
    if-eq v2, v3, :cond_a

    .line 221
    .line 222
    if-ne v8, p0, :cond_a

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    invoke-static {p0}, Landroidx/media3/common/util/Util;->m(I)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    :goto_4
    if-nez v2, :cond_c

    .line 230
    .line 231
    :cond_b
    move p0, v6

    .line 232
    goto :goto_5

    .line 233
    :cond_c
    new-instance p0, Landroid/media/AudioFormat$Builder;

    .line 234
    .line 235
    invoke-direct {p0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {p0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    iget p1, p1, Landroidx/media3/common/Format;->L:I

    .line 247
    .line 248
    if-eq p1, v3, :cond_d

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 251
    .line 252
    .line 253
    :cond_d
    iget-object p1, v7, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {p1}, Lk;->c(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {p1, v0, p0}, Lk;->i(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    :goto_5
    if-eqz p0, :cond_e

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_e
    return v6

    .line 278
    :cond_f
    :goto_6
    return v1

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
