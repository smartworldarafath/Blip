.class public final Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final b(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 13

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x74

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-ne p0, p1, :cond_7

    .line 9
    .line 10
    new-instance p0, Landroidx/media3/common/util/ParsableBitArray;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-direct {p0, p2, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0xc

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v1, p2

    .line 37
    const/4 p2, 0x4

    .line 38
    sub-int/2addr v1, p2

    .line 39
    const/16 v2, 0x2c

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 49
    .line 50
    .line 51
    const/16 v2, 0x10

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-ge v4, v1, :cond_5

    .line 66
    .line 67
    const/16 v4, 0x30

    .line 68
    .line 69
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 70
    .line 71
    .line 72
    const/16 v4, 0x8

    .line 73
    .line 74
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    add-int/2addr v7, v6

    .line 90
    move-object v6, v0

    .line 91
    move-object v8, v6

    .line 92
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-ge v9, v7, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    add-int/2addr v11, v10

    .line 111
    const/4 v12, 0x2

    .line 112
    if-ne v9, v12, :cond_2

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 119
    .line 120
    .line 121
    const/4 v10, 0x3

    .line 122
    if-ne v9, v10, :cond_3

    .line 123
    .line 124
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-ge v9, v11, :cond_3

    .line 129
    .line 130
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    new-array v10, v6, [B

    .line 137
    .line 138
    invoke-virtual {p0, v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->j(I[B)V

    .line 139
    .line 140
    .line 141
    new-instance v6, Ljava/lang/String;

    .line 142
    .line 143
    invoke-direct {v6, v10, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    const/4 v10, 0x0

    .line 151
    :goto_2
    if-ge v10, v9, :cond_1

    .line 152
    .line 153
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    invoke-virtual {p0, v12}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v10, v10, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    const/16 v12, 0x15

    .line 164
    .line 165
    if-ne v9, v12, :cond_3

    .line 166
    .line 167
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    new-array v9, v10, [B

    .line 170
    .line 171
    invoke-virtual {p0, v10, v9}, Landroidx/media3/common/util/ParsableBitArray;->j(I[B)V

    .line 172
    .line 173
    .line 174
    new-instance v10, Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v10, v9, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 177
    .line 178
    .line 179
    move-object v8, v10

    .line 180
    :cond_3
    mul-int/lit8 v11, v11, 0x8

    .line 181
    .line 182
    invoke-virtual {p0, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    mul-int/lit8 v7, v7, 0x8

    .line 187
    .line 188
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 189
    .line 190
    .line 191
    if-eqz v6, :cond_0

    .line 192
    .line 193
    if-eqz v8, :cond_0

    .line 194
    .line 195
    new-instance v4, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    .line 196
    .line 197
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_6

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    new-instance p0, Landroidx/media3/common/Metadata;

    .line 217
    .line 218
    invoke-direct {p0, v3}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :cond_7
    :goto_3
    return-object v0
.end method
