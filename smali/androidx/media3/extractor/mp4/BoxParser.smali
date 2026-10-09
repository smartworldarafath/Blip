.class public abstract Landroidx/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/BoxParser$TkhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$MdhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StsdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;,
        Landroidx/media3/extractor/mp4/BoxParser$EsdsData;,
        Landroidx/media3/extractor/mp4/BoxParser$VexuData;,
        Landroidx/media3/extractor/mp4/BoxParser$EyesData;,
        Landroidx/media3/extractor/mp4/BoxParser$StriData;,
        Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "OpusHead"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 12
    .line 13
    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x68646c72    # 4.3148E24f

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .locals 10

    .line 1
    add-int/lit8 p0, p0, 0xc

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->d(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    move-wide v4, v3

    .line 105
    new-array v3, p0, [B

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {p1, v3, v6, p0}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 109
    .line 110
    .line 111
    move-wide p0, v0

    .line 112
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 113
    .line 114
    const-wide/16 v6, 0x0

    .line 115
    .line 116
    cmp-long v0, v4, v6

    .line 117
    .line 118
    const-wide/16 v8, -0x1

    .line 119
    .line 120
    if-lez v0, :cond_4

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    move-wide v4, v8

    .line 124
    :goto_0
    cmp-long v0, p0, v6

    .line 125
    .line 126
    if-lez v0, :cond_5

    .line 127
    .line 128
    move-wide v6, p0

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-wide v6, v8

    .line 131
    :goto_1
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_6
    :goto_2
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 136
    .line 137
    const-wide/16 v4, -0x1

    .line 138
    .line 139
    const-wide/16 v6, -0x1

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 143
    .line 144
    .line 145
    return-object v1
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public static d(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static e(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;
    .locals 14

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    if-eqz p0, :cond_8

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const v3, 0x6d647461

    .line 41
    .line 42
    .line 43
    if-eq v0, v3, :cond_0

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_0
    iget-object v0, v1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 48
    .line 49
    const/16 v1, 0xc

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-array v3, v1, [Ljava/lang/String;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    :goto_0
    const/16 v6, 0x8

    .line 63
    .line 64
    if-ge v5, v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x4

    .line 71
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 72
    .line 73
    .line 74
    sub-int/2addr v7, v6

    .line 75
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {v0, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    aput-object v6, v3, v5

    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 87
    .line 88
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-le v5, v6, :cond_6

    .line 101
    .line 102
    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    add-int/lit8 v8, v8, -0x1

    .line 113
    .line 114
    if-ltz v8, :cond_4

    .line 115
    .line 116
    if-ge v8, v1, :cond_4

    .line 117
    .line 118
    aget-object v8, v3, v8

    .line 119
    .line 120
    add-int v9, v5, v7

    .line 121
    .line 122
    :goto_2
    iget v10, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 123
    .line 124
    if-ge v10, v9, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    const v13, 0x64617461

    .line 135
    .line 136
    .line 137
    if-ne v12, v13, :cond_2

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    add-int/lit8 v11, v11, -0x10

    .line 148
    .line 149
    new-array v12, v11, [B

    .line 150
    .line 151
    invoke-virtual {p0, v12, v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 152
    .line 153
    .line 154
    :try_start_0
    new-instance v11, Landroidx/media3/container/MdtaMetadataEntry;

    .line 155
    .line 156
    invoke-direct {v11, v8, v12, v10, v9}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catch_0
    const-string v9, "MetadataUtil"

    .line 161
    .line 162
    const-string v10, "Failed to parse metadata entry with key: "

    .line 163
    .line 164
    invoke-static {v10, v8, v9}, Lq;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_2
    add-int/2addr v10, v11

    .line 169
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    :goto_3
    move-object v11, v2

    .line 174
    :goto_4
    if-eqz v11, :cond_5

    .line 175
    .line 176
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_4
    const-string v9, "BoxParsers"

    .line 181
    .line 182
    const-string v10, "Skipped metadata with unknown key index: "

    .line 183
    .line 184
    invoke-static {v10, v8, v9}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_5
    add-int/2addr v5, v7

    .line 188
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_7

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_7
    new-instance v2, Landroidx/media3/common/Metadata;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    :cond_8
    :goto_6
    return-object v2
.end method

.method public static f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance v4, Landroidx/media3/container/Mp4TimestampData;

    .line 41
    .line 42
    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    .line 43
    .line 44
    .line 45
    return-object v4
.end method

.method public static g(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 4
    .line 5
    :goto_0
    sub-int v2, v1, p1

    .line 6
    .line 7
    move/from16 v4, p2

    .line 8
    .line 9
    if-ge v2, v4, :cond_10

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    move v7, v6

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v7, v5

    .line 25
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 26
    .line 27
    invoke-static {v8, v7}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const v8, 0x73696e66

    .line 35
    .line 36
    .line 37
    if-ne v7, v8, :cond_f

    .line 38
    .line 39
    add-int/lit8 v7, v1, 0x8

    .line 40
    .line 41
    const/4 v8, -0x1

    .line 42
    move v12, v5

    .line 43
    move v9, v8

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    :goto_2
    sub-int v13, v7, v1

    .line 47
    .line 48
    const/4 v14, 0x4

    .line 49
    if-ge v13, v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const v3, 0x66726d61

    .line 65
    .line 66
    .line 67
    if-ne v15, v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    const v3, 0x7363686d

    .line 79
    .line 80
    .line 81
    if-ne v15, v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-virtual {v0, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    const v3, 0x73636869

    .line 94
    .line 95
    .line 96
    if-ne v15, v3, :cond_3

    .line 97
    .line 98
    move v9, v7

    .line 99
    move v12, v13

    .line 100
    :cond_3
    :goto_3
    add-int/2addr v7, v13

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/16 v16, 0x0

    .line 103
    .line 104
    const-string v3, "cenc"

    .line 105
    .line 106
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_6

    .line 111
    .line 112
    const-string v3, "cbc1"

    .line 113
    .line 114
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    const-string v3, "cens"

    .line 121
    .line 122
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_6

    .line 127
    .line 128
    const-string v3, "cbcs"

    .line 129
    .line 130
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    move-object/from16 v3, v16

    .line 138
    .line 139
    goto/16 :goto_b

    .line 140
    .line 141
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    .line 142
    .line 143
    move v3, v6

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    move v3, v5

    .line 146
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 147
    .line 148
    invoke-static {v7, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    if-eq v9, v8, :cond_8

    .line 152
    .line 153
    move v3, v6

    .line 154
    goto :goto_6

    .line 155
    :cond_8
    move v3, v5

    .line 156
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 157
    .line 158
    invoke-static {v7, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v3, v9, 0x8

    .line 162
    .line 163
    :goto_7
    sub-int v7, v3, v9

    .line 164
    .line 165
    if-ge v7, v12, :cond_d

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    const v13, 0x74656e63

    .line 179
    .line 180
    .line 181
    if-ne v8, v13, :cond_c

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 192
    .line 193
    .line 194
    if-nez v3, :cond_9

    .line 195
    .line 196
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 197
    .line 198
    .line 199
    move v14, v5

    .line 200
    move v15, v14

    .line 201
    goto :goto_8

    .line 202
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    and-int/lit16 v7, v3, 0xf0

    .line 207
    .line 208
    shr-int/2addr v7, v14

    .line 209
    and-int/lit8 v3, v3, 0xf

    .line 210
    .line 211
    move v15, v3

    .line 212
    move v14, v7

    .line 213
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-ne v3, v6, :cond_a

    .line 218
    .line 219
    move-object v3, v10

    .line 220
    move v10, v6

    .line 221
    goto :goto_9

    .line 222
    :cond_a
    move-object v3, v10

    .line 223
    move v10, v5

    .line 224
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    const/16 v7, 0x10

    .line 229
    .line 230
    new-array v13, v7, [B

    .line 231
    .line 232
    invoke-virtual {v0, v13, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 233
    .line 234
    .line 235
    if-eqz v10, :cond_b

    .line 236
    .line 237
    if-nez v12, :cond_b

    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    new-array v8, v7, [B

    .line 244
    .line 245
    invoke-virtual {v0, v8, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v16, v8

    .line 249
    .line 250
    :cond_b
    new-instance v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 251
    .line 252
    move-object v8, v3

    .line 253
    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 254
    .line 255
    .line 256
    move-object v3, v9

    .line 257
    goto :goto_a

    .line 258
    :cond_c
    move-object v8, v10

    .line 259
    add-int/2addr v3, v7

    .line 260
    goto :goto_7

    .line 261
    :cond_d
    move-object v8, v10

    .line 262
    move-object/from16 v3, v16

    .line 263
    .line 264
    :goto_a
    if-eqz v3, :cond_e

    .line 265
    .line 266
    move v5, v6

    .line 267
    :cond_e
    const-string v6, "tenc atom is mandatory"

    .line 268
    .line 269
    invoke-static {v6, v5}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 270
    .line 271
    .line 272
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    :goto_b
    if-eqz v3, :cond_f

    .line 279
    .line 280
    return-object v3

    .line 281
    :cond_f
    add-int/2addr v1, v2

    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_10
    const/16 v16, 0x0

    .line 285
    .line 286
    return-object v16
.end method

.method public static h(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    iget v9, v4, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->a:I

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 17
    .line 18
    .line 19
    move-result v10

    .line 20
    new-instance v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    .line 21
    .line 22
    invoke-direct {v7, v10}, Landroidx/media3/extractor/mp4/BoxParser$StsdData;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_0
    if-ge v8, v10, :cond_80

    .line 27
    .line 28
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lez v3, :cond_0

    .line 35
    .line 36
    const/4 v12, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v12, 0x0

    .line 39
    :goto_1
    const-string v13, "childAtomSize must be positive"

    .line 40
    .line 41
    invoke-static {v13, v12}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    const v14, 0x61766331

    .line 49
    .line 50
    .line 51
    if-eq v12, v14, :cond_7f

    .line 52
    .line 53
    const v14, 0x61766333

    .line 54
    .line 55
    .line 56
    if-eq v12, v14, :cond_7f

    .line 57
    .line 58
    const v14, 0x656e6376

    .line 59
    .line 60
    .line 61
    if-eq v12, v14, :cond_7f

    .line 62
    .line 63
    const v14, 0x6d317620

    .line 64
    .line 65
    .line 66
    if-eq v12, v14, :cond_7f

    .line 67
    .line 68
    const v14, 0x6d703476

    .line 69
    .line 70
    .line 71
    if-eq v12, v14, :cond_7f

    .line 72
    .line 73
    const v14, 0x68766331

    .line 74
    .line 75
    .line 76
    if-eq v12, v14, :cond_7f

    .line 77
    .line 78
    const v14, 0x68657631

    .line 79
    .line 80
    .line 81
    if-eq v12, v14, :cond_7f

    .line 82
    .line 83
    const v14, 0x76766331

    .line 84
    .line 85
    .line 86
    if-eq v12, v14, :cond_7f

    .line 87
    .line 88
    const v14, 0x76766931

    .line 89
    .line 90
    .line 91
    if-eq v12, v14, :cond_7f

    .line 92
    .line 93
    const v14, 0x73323633

    .line 94
    .line 95
    .line 96
    if-eq v12, v14, :cond_7f

    .line 97
    .line 98
    const v14, 0x48323633

    .line 99
    .line 100
    .line 101
    if-eq v12, v14, :cond_7f

    .line 102
    .line 103
    const v14, 0x68323633

    .line 104
    .line 105
    .line 106
    if-eq v12, v14, :cond_7f

    .line 107
    .line 108
    const v14, 0x76703038

    .line 109
    .line 110
    .line 111
    if-eq v12, v14, :cond_7f

    .line 112
    .line 113
    const v14, 0x76703039

    .line 114
    .line 115
    .line 116
    if-eq v12, v14, :cond_7f

    .line 117
    .line 118
    const v14, 0x61763031

    .line 119
    .line 120
    .line 121
    if-eq v12, v14, :cond_7f

    .line 122
    .line 123
    const v14, 0x64766176

    .line 124
    .line 125
    .line 126
    if-eq v12, v14, :cond_7f

    .line 127
    .line 128
    const v14, 0x64766131

    .line 129
    .line 130
    .line 131
    if-eq v12, v14, :cond_7f

    .line 132
    .line 133
    const v14, 0x64766865

    .line 134
    .line 135
    .line 136
    if-eq v12, v14, :cond_7f

    .line 137
    .line 138
    const v14, 0x64766831

    .line 139
    .line 140
    .line 141
    if-eq v12, v14, :cond_7f

    .line 142
    .line 143
    const v14, 0x61707631

    .line 144
    .line 145
    .line 146
    if-eq v12, v14, :cond_7f

    .line 147
    .line 148
    const v14, 0x64617631

    .line 149
    .line 150
    .line 151
    if-ne v12, v14, :cond_1

    .line 152
    .line 153
    move/from16 v37, v9

    .line 154
    .line 155
    move/from16 v22, v10

    .line 156
    .line 157
    move v1, v12

    .line 158
    const/4 v15, 0x0

    .line 159
    goto/16 :goto_52

    .line 160
    .line 161
    :cond_1
    const v14, 0x6d703461

    .line 162
    .line 163
    .line 164
    const/16 v17, 0x3

    .line 165
    .line 166
    const/16 v19, 0x0

    .line 167
    .line 168
    const/16 v28, 0x8

    .line 169
    .line 170
    const v1, 0x61632d33

    .line 171
    .line 172
    .line 173
    const v11, 0x656e6361

    .line 174
    .line 175
    .line 176
    if-eq v12, v14, :cond_2

    .line 177
    .line 178
    if-eq v12, v11, :cond_2

    .line 179
    .line 180
    if-eq v12, v1, :cond_2

    .line 181
    .line 182
    const v14, 0x65632d33

    .line 183
    .line 184
    .line 185
    if-eq v12, v14, :cond_2

    .line 186
    .line 187
    const v14, 0x61632d34

    .line 188
    .line 189
    .line 190
    if-eq v12, v14, :cond_2

    .line 191
    .line 192
    const v14, 0x6d6c7061

    .line 193
    .line 194
    .line 195
    if-eq v12, v14, :cond_2

    .line 196
    .line 197
    const v14, 0x64747363

    .line 198
    .line 199
    .line 200
    if-eq v12, v14, :cond_2

    .line 201
    .line 202
    const v14, 0x64747365

    .line 203
    .line 204
    .line 205
    if-eq v12, v14, :cond_2

    .line 206
    .line 207
    const v14, 0x64747368

    .line 208
    .line 209
    .line 210
    if-eq v12, v14, :cond_2

    .line 211
    .line 212
    const v14, 0x6474736c

    .line 213
    .line 214
    .line 215
    if-eq v12, v14, :cond_2

    .line 216
    .line 217
    const v14, 0x64747378

    .line 218
    .line 219
    .line 220
    if-eq v12, v14, :cond_2

    .line 221
    .line 222
    const v14, 0x73616d72

    .line 223
    .line 224
    .line 225
    if-eq v12, v14, :cond_2

    .line 226
    .line 227
    const v14, 0x73617762

    .line 228
    .line 229
    .line 230
    if-eq v12, v14, :cond_2

    .line 231
    .line 232
    const v14, 0x6c70636d

    .line 233
    .line 234
    .line 235
    if-eq v12, v14, :cond_2

    .line 236
    .line 237
    const v14, 0x736f7774

    .line 238
    .line 239
    .line 240
    if-eq v12, v14, :cond_2

    .line 241
    .line 242
    const v14, 0x74776f73

    .line 243
    .line 244
    .line 245
    if-eq v12, v14, :cond_2

    .line 246
    .line 247
    const v14, 0x2e6d7032

    .line 248
    .line 249
    .line 250
    if-eq v12, v14, :cond_2

    .line 251
    .line 252
    const v14, 0x2e6d7033

    .line 253
    .line 254
    .line 255
    if-eq v12, v14, :cond_2

    .line 256
    .line 257
    const v14, 0x6d686131

    .line 258
    .line 259
    .line 260
    if-eq v12, v14, :cond_2

    .line 261
    .line 262
    const v14, 0x6d686d31

    .line 263
    .line 264
    .line 265
    if-eq v12, v14, :cond_2

    .line 266
    .line 267
    const v14, 0x616c6163

    .line 268
    .line 269
    .line 270
    if-eq v12, v14, :cond_2

    .line 271
    .line 272
    const v14, 0x616c6177

    .line 273
    .line 274
    .line 275
    if-eq v12, v14, :cond_2

    .line 276
    .line 277
    const v14, 0x756c6177

    .line 278
    .line 279
    .line 280
    if-eq v12, v14, :cond_2

    .line 281
    .line 282
    const v14, 0x4f707573

    .line 283
    .line 284
    .line 285
    if-eq v12, v14, :cond_2

    .line 286
    .line 287
    const v14, 0x664c6143

    .line 288
    .line 289
    .line 290
    if-eq v12, v14, :cond_2

    .line 291
    .line 292
    const v14, 0x69616d66

    .line 293
    .line 294
    .line 295
    if-eq v12, v14, :cond_2

    .line 296
    .line 297
    const v14, 0x6970636d

    .line 298
    .line 299
    .line 300
    if-eq v12, v14, :cond_2

    .line 301
    .line 302
    const v14, 0x6670636d

    .line 303
    .line 304
    .line 305
    if-ne v12, v14, :cond_3

    .line 306
    .line 307
    :cond_2
    move/from16 v36, v8

    .line 308
    .line 309
    move/from16 v37, v9

    .line 310
    .line 311
    goto/16 :goto_d

    .line 312
    .line 313
    :cond_3
    const v13, 0x63363038

    .line 314
    .line 315
    .line 316
    const v14, 0x73747070

    .line 317
    .line 318
    .line 319
    const v15, 0x77767474

    .line 320
    .line 321
    .line 322
    const v1, 0x74783367

    .line 323
    .line 324
    .line 325
    const v11, 0x54544d4c

    .line 326
    .line 327
    .line 328
    if-eq v12, v11, :cond_a

    .line 329
    .line 330
    if-eq v12, v1, :cond_a

    .line 331
    .line 332
    if-eq v12, v15, :cond_a

    .line 333
    .line 334
    if-eq v12, v14, :cond_a

    .line 335
    .line 336
    if-eq v12, v13, :cond_a

    .line 337
    .line 338
    const v13, 0x6d703473

    .line 339
    .line 340
    .line 341
    if-eq v12, v13, :cond_a

    .line 342
    .line 343
    const v13, 0x74657874

    .line 344
    .line 345
    .line 346
    if-ne v12, v13, :cond_4

    .line 347
    .line 348
    goto/16 :goto_5

    .line 349
    .line 350
    :cond_4
    const v1, 0x69743335

    .line 351
    .line 352
    .line 353
    const v11, 0x6d657474

    .line 354
    .line 355
    .line 356
    if-eq v12, v11, :cond_8

    .line 357
    .line 358
    if-ne v12, v1, :cond_5

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_5
    const v1, 0x63616d6d

    .line 362
    .line 363
    .line 364
    if-ne v12, v1, :cond_6

    .line 365
    .line 366
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 367
    .line 368
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    iput-object v11, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 376
    .line 377
    const-string v11, "application/x-camera-motion"

    .line 378
    .line 379
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    iput-object v11, v1, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 384
    .line 385
    new-instance v11, Landroidx/media3/common/Format;

    .line 386
    .line 387
    invoke-direct {v11, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 388
    .line 389
    .line 390
    iput-object v11, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 391
    .line 392
    :cond_6
    :goto_2
    move/from16 v36, v8

    .line 393
    .line 394
    move/from16 v37, v9

    .line 395
    .line 396
    :cond_7
    :goto_3
    move/from16 v22, v10

    .line 397
    .line 398
    const/4 v15, 0x0

    .line 399
    goto/16 :goto_53

    .line 400
    .line 401
    :cond_8
    :goto_4
    add-int/lit8 v13, v2, 0x10

    .line 402
    .line 403
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 404
    .line 405
    .line 406
    if-ne v12, v11, :cond_9

    .line 407
    .line 408
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-eqz v1, :cond_6

    .line 416
    .line 417
    new-instance v11, Landroidx/media3/common/Format$Builder;

    .line 418
    .line 419
    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    iput-object v12, v11, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iput-object v1, v11, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 433
    .line 434
    new-instance v1, Landroidx/media3/common/Format;

    .line 435
    .line 436
    invoke-direct {v1, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 437
    .line 438
    .line 439
    iput-object v1, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 440
    .line 441
    goto :goto_2

    .line 442
    :cond_9
    if-ne v12, v1, :cond_6

    .line 443
    .line 444
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    new-array v11, v1, [B

    .line 449
    .line 450
    const/4 v12, 0x0

    .line 451
    invoke-virtual {v0, v11, v12, v1}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 452
    .line 453
    .line 454
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 455
    .line 456
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    iput-object v12, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 464
    .line 465
    const-string v12, "application/x-itut-t35"

    .line 466
    .line 467
    invoke-static {v12}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    iput-object v12, v1, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    iput-object v11, v1, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 478
    .line 479
    new-instance v11, Landroidx/media3/common/Format;

    .line 480
    .line 481
    invoke-direct {v11, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 482
    .line 483
    .line 484
    iput-object v11, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 485
    .line 486
    goto :goto_2

    .line 487
    :cond_a
    :goto_5
    add-int/lit8 v13, v2, 0x10

    .line 488
    .line 489
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 490
    .line 491
    .line 492
    const-string v13, "application/ttml+xml"

    .line 493
    .line 494
    const-wide v23, 0x7fffffffffffffffL

    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    if-ne v12, v11, :cond_b

    .line 500
    .line 501
    :goto_6
    move/from16 v36, v8

    .line 502
    .line 503
    move/from16 v37, v9

    .line 504
    .line 505
    :goto_7
    move-object/from16 v15, v19

    .line 506
    .line 507
    :goto_8
    move-wide/from16 v8, v23

    .line 508
    .line 509
    goto/16 :goto_c

    .line 510
    .line 511
    :cond_b
    if-ne v12, v1, :cond_c

    .line 512
    .line 513
    add-int/lit8 v1, v3, -0x10

    .line 514
    .line 515
    new-array v11, v1, [B

    .line 516
    .line 517
    const/4 v12, 0x0

    .line 518
    invoke-virtual {v0, v11, v12, v1}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 519
    .line 520
    .line 521
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 522
    .line 523
    .line 524
    move-result-object v15

    .line 525
    const-string v13, "application/x-quicktime-tx3g"

    .line 526
    .line 527
    move/from16 v36, v8

    .line 528
    .line 529
    move/from16 v37, v9

    .line 530
    .line 531
    goto :goto_8

    .line 532
    :cond_c
    if-ne v12, v15, :cond_d

    .line 533
    .line 534
    const-string v13, "application/x-mp4-vtt"

    .line 535
    .line 536
    goto :goto_6

    .line 537
    :cond_d
    if-ne v12, v14, :cond_e

    .line 538
    .line 539
    const-wide/16 v23, 0x0

    .line 540
    .line 541
    goto :goto_6

    .line 542
    :cond_e
    const v1, 0x63363038

    .line 543
    .line 544
    .line 545
    if-ne v12, v1, :cond_f

    .line 546
    .line 547
    const/4 v1, 0x1

    .line 548
    iput v1, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->d:I

    .line 549
    .line 550
    const-string v13, "application/x-mp4-cea-608"

    .line 551
    .line 552
    goto :goto_6

    .line 553
    :cond_f
    const v13, 0x6d703473

    .line 554
    .line 555
    .line 556
    if-ne v12, v13, :cond_14

    .line 557
    .line 558
    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 559
    .line 560
    const/4 v11, 0x4

    .line 561
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    const v12, 0x65736473

    .line 569
    .line 570
    .line 571
    if-ne v11, v12, :cond_13

    .line 572
    .line 573
    invoke-static {v1, v0}, Landroidx/media3/extractor/mp4/BoxParser;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    iget-object v1, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    .line 578
    .line 579
    if-eqz v1, :cond_6

    .line 580
    .line 581
    array-length v11, v1

    .line 582
    const/16 v12, 0x40

    .line 583
    .line 584
    if-eq v11, v12, :cond_10

    .line 585
    .line 586
    goto/16 :goto_2

    .line 587
    .line 588
    :cond_10
    iget v11, v4, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->e:I

    .line 589
    .line 590
    iget v13, v4, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->f:I

    .line 591
    .line 592
    array-length v14, v1

    .line 593
    if-ne v14, v12, :cond_11

    .line 594
    .line 595
    const/16 v20, 0x1

    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_11
    const/16 v20, 0x0

    .line 599
    .line 600
    :goto_9
    invoke-static/range {v20 .. v20}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 601
    .line 602
    .line 603
    new-instance v12, Ljava/util/ArrayList;

    .line 604
    .line 605
    const/16 v14, 0x10

    .line 606
    .line 607
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 608
    .line 609
    .line 610
    const/4 v14, 0x0

    .line 611
    :goto_a
    array-length v15, v1

    .line 612
    add-int/lit8 v15, v15, -0x3

    .line 613
    .line 614
    if-ge v14, v15, :cond_12

    .line 615
    .line 616
    aget-byte v15, v1, v14

    .line 617
    .line 618
    add-int/lit8 v18, v14, 0x1

    .line 619
    .line 620
    move-object/from16 v19, v1

    .line 621
    .line 622
    aget-byte v1, v19, v18

    .line 623
    .line 624
    add-int/lit8 v18, v14, 0x2

    .line 625
    .line 626
    aget-byte v4, v19, v18

    .line 627
    .line 628
    add-int/lit8 v18, v14, 0x3

    .line 629
    .line 630
    move/from16 v36, v8

    .line 631
    .line 632
    aget-byte v8, v19, v18

    .line 633
    .line 634
    invoke-static {v15, v1, v4, v8}, Lcom/google/common/primitives/Ints;->c(BBBB)I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    shr-int/lit8 v4, v1, 0x10

    .line 639
    .line 640
    const/16 v8, 0xff

    .line 641
    .line 642
    and-int/2addr v4, v8

    .line 643
    shr-int/lit8 v15, v1, 0x8

    .line 644
    .line 645
    and-int/2addr v15, v8

    .line 646
    and-int/2addr v1, v8

    .line 647
    add-int/lit8 v15, v15, -0x80

    .line 648
    .line 649
    mul-int/lit16 v8, v15, 0x36fb

    .line 650
    .line 651
    div-int/lit16 v8, v8, 0x2710

    .line 652
    .line 653
    add-int/2addr v8, v4

    .line 654
    add-int/lit8 v1, v1, -0x80

    .line 655
    .line 656
    move/from16 v18, v4

    .line 657
    .line 658
    mul-int/lit16 v4, v1, 0xd7f

    .line 659
    .line 660
    div-int/lit16 v4, v4, 0x2710

    .line 661
    .line 662
    sub-int v4, v18, v4

    .line 663
    .line 664
    mul-int/lit16 v15, v15, 0x1c01

    .line 665
    .line 666
    div-int/lit16 v15, v15, 0x2710

    .line 667
    .line 668
    sub-int/2addr v4, v15

    .line 669
    mul-int/lit16 v1, v1, 0x457e

    .line 670
    .line 671
    div-int/lit16 v1, v1, 0x2710

    .line 672
    .line 673
    add-int v1, v1, v18

    .line 674
    .line 675
    move/from16 v37, v9

    .line 676
    .line 677
    const/4 v9, 0x0

    .line 678
    const/16 v15, 0xff

    .line 679
    .line 680
    invoke-static {v8, v9, v15}, Landroidx/media3/common/util/Util;->g(III)I

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    const/16 v35, 0x10

    .line 685
    .line 686
    shl-int/lit8 v8, v8, 0x10

    .line 687
    .line 688
    invoke-static {v4, v9, v15}, Landroidx/media3/common/util/Util;->g(III)I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    shl-int/lit8 v4, v4, 0x8

    .line 693
    .line 694
    or-int/2addr v4, v8

    .line 695
    invoke-static {v1, v9, v15}, Landroidx/media3/common/util/Util;->g(III)I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    or-int/2addr v1, v4

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    const-string v4, "%06x"

    .line 709
    .line 710
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    add-int/lit8 v14, v14, 0x4

    .line 718
    .line 719
    move-object/from16 v4, p1

    .line 720
    .line 721
    move-object/from16 v1, v19

    .line 722
    .line 723
    move/from16 v8, v36

    .line 724
    .line 725
    move/from16 v9, v37

    .line 726
    .line 727
    goto :goto_a

    .line 728
    :cond_12
    move/from16 v36, v8

    .line 729
    .line 730
    move/from16 v37, v9

    .line 731
    .line 732
    const-string v1, "x"

    .line 733
    .line 734
    const-string v4, "\npalette: "

    .line 735
    .line 736
    const-string v8, "size: "

    .line 737
    .line 738
    invoke-static {v8, v11, v1, v13, v4}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    new-instance v4, Lcom/google/common/base/Joiner;

    .line 743
    .line 744
    const-string v8, ", "

    .line 745
    .line 746
    invoke-direct {v4, v8}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 750
    .line 751
    .line 752
    move-result-object v8

    .line 753
    new-instance v9, Ljava/lang/StringBuilder;

    .line 754
    .line 755
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v4, v9, v8}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    const-string v4, "\n"

    .line 769
    .line 770
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 778
    .line 779
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 780
    .line 781
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 786
    .line 787
    .line 788
    move-result-object v15

    .line 789
    const-string v1, "application/vobsub"

    .line 790
    .line 791
    goto :goto_b

    .line 792
    :cond_13
    move/from16 v36, v8

    .line 793
    .line 794
    move/from16 v37, v9

    .line 795
    .line 796
    move-object/from16 v1, v19

    .line 797
    .line 798
    move-object v15, v1

    .line 799
    :goto_b
    move-object v13, v1

    .line 800
    goto/16 :goto_8

    .line 801
    .line 802
    :cond_14
    move/from16 v36, v8

    .line 803
    .line 804
    move/from16 v37, v9

    .line 805
    .line 806
    const v13, 0x74657874

    .line 807
    .line 808
    .line 809
    if-ne v12, v13, :cond_15

    .line 810
    .line 811
    const-string v13, "text/x-unknown"

    .line 812
    .line 813
    goto/16 :goto_7

    .line 814
    .line 815
    :goto_c
    if-eqz v13, :cond_7

    .line 816
    .line 817
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 818
    .line 819
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 827
    .line 828
    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 833
    .line 834
    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 835
    .line 836
    iput-wide v8, v1, Landroidx/media3/common/Format$Builder;->t:J

    .line 837
    .line 838
    iput-object v15, v1, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 839
    .line 840
    new-instance v4, Landroidx/media3/common/Format;

    .line 841
    .line 842
    invoke-direct {v4, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 843
    .line 844
    .line 845
    iput-object v4, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 846
    .line 847
    goto/16 :goto_3

    .line 848
    .line 849
    :cond_15
    invoke-static {}, Lio/sentry/d;->d()V

    .line 850
    .line 851
    .line 852
    return-object v19

    .line 853
    :goto_d
    add-int/lit8 v4, v2, 0x10

    .line 854
    .line 855
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 856
    .line 857
    .line 858
    const/4 v4, 0x6

    .line 859
    if-eqz p4, :cond_16

    .line 860
    .line 861
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 862
    .line 863
    .line 864
    move-result v8

    .line 865
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 866
    .line 867
    .line 868
    goto :goto_e

    .line 869
    :cond_16
    move/from16 v8, v28

    .line 870
    .line 871
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 872
    .line 873
    .line 874
    const/4 v8, 0x0

    .line 875
    :goto_e
    const/4 v9, 0x2

    .line 876
    if-eqz v8, :cond_17

    .line 877
    .line 878
    const/4 v15, 0x1

    .line 879
    if-ne v8, v15, :cond_18

    .line 880
    .line 881
    :cond_17
    move v15, v10

    .line 882
    goto/16 :goto_16

    .line 883
    .line 884
    :cond_18
    if-ne v8, v9, :cond_1f

    .line 885
    .line 886
    const/16 v8, 0x10

    .line 887
    .line 888
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 892
    .line 893
    .line 894
    move-result-wide v38

    .line 895
    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 896
    .line 897
    .line 898
    move-result-wide v38

    .line 899
    move v15, v10

    .line 900
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    .line 901
    .line 902
    .line 903
    move-result-wide v9

    .line 904
    long-to-int v8, v9

    .line 905
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 906
    .line 907
    .line 908
    move-result v9

    .line 909
    const/4 v10, 0x4

    .line 910
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 914
    .line 915
    .line 916
    move-result v10

    .line 917
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 918
    .line 919
    .line 920
    move-result v35

    .line 921
    and-int/lit8 v38, v35, 0x1

    .line 922
    .line 923
    if-eqz v38, :cond_19

    .line 924
    .line 925
    const/16 v38, 0x1

    .line 926
    .line 927
    goto :goto_f

    .line 928
    :cond_19
    const/16 v38, 0x0

    .line 929
    .line 930
    :goto_f
    and-int/lit8 v35, v35, 0x2

    .line 931
    .line 932
    if-eqz v35, :cond_1a

    .line 933
    .line 934
    const/16 v35, 0x1

    .line 935
    .line 936
    goto :goto_10

    .line 937
    :cond_1a
    const/16 v35, 0x0

    .line 938
    .line 939
    :goto_10
    if-eqz v38, :cond_1c

    .line 940
    .line 941
    if-eqz v35, :cond_1b

    .line 942
    .line 943
    sget-object v35, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 944
    .line 945
    :goto_11
    move-object/from16 v14, v35

    .line 946
    .line 947
    goto :goto_12

    .line 948
    :cond_1b
    sget-object v35, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 949
    .line 950
    goto :goto_11

    .line 951
    :goto_12
    invoke-static {v10, v14}, Landroidx/media3/common/util/Util;->r(ILjava/nio/ByteOrder;)I

    .line 952
    .line 953
    .line 954
    move-result v10

    .line 955
    goto :goto_14

    .line 956
    :cond_1c
    if-eqz v35, :cond_1d

    .line 957
    .line 958
    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 959
    .line 960
    goto :goto_13

    .line 961
    :cond_1d
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 962
    .line 963
    :goto_13
    invoke-static {v10, v14}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    .line 964
    .line 965
    .line 966
    move-result v10

    .line 967
    :goto_14
    if-nez v10, :cond_1e

    .line 968
    .line 969
    const/4 v10, -0x1

    .line 970
    :cond_1e
    const/16 v14, 0x8

    .line 971
    .line 972
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 973
    .line 974
    .line 975
    const/4 v14, 0x0

    .line 976
    :goto_15
    const v4, 0x69616d66

    .line 977
    .line 978
    .line 979
    goto :goto_17

    .line 980
    :cond_1f
    move/from16 v44, v2

    .line 981
    .line 982
    move/from16 v24, v3

    .line 983
    .line 984
    move/from16 v22, v10

    .line 985
    .line 986
    const/4 v15, 0x0

    .line 987
    goto/16 :goto_51

    .line 988
    .line 989
    :goto_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 990
    .line 991
    .line 992
    move-result v9

    .line 993
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    .line 997
    .line 998
    .line 999
    move-result v10

    .line 1000
    iget v14, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 1001
    .line 1002
    const/16 v29, 0x4

    .line 1003
    .line 1004
    add-int/lit8 v14, v14, -0x4

    .line 1005
    .line 1006
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1010
    .line 1011
    .line 1012
    move-result v14

    .line 1013
    const/4 v4, 0x1

    .line 1014
    if-ne v8, v4, :cond_20

    .line 1015
    .line 1016
    const/16 v8, 0x10

    .line 1017
    .line 1018
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1019
    .line 1020
    .line 1021
    :cond_20
    move v8, v10

    .line 1022
    const/4 v10, -0x1

    .line 1023
    goto :goto_15

    .line 1024
    :goto_17
    if-ne v12, v4, :cond_21

    .line 1025
    .line 1026
    const/4 v4, -0x1

    .line 1027
    const/4 v9, -0x1

    .line 1028
    goto :goto_19

    .line 1029
    :cond_21
    const v4, 0x73616d72

    .line 1030
    .line 1031
    .line 1032
    if-ne v12, v4, :cond_22

    .line 1033
    .line 1034
    const/16 v4, 0x1f40

    .line 1035
    .line 1036
    :goto_18
    const/4 v9, 0x1

    .line 1037
    goto :goto_19

    .line 1038
    :cond_22
    const v4, 0x73617762

    .line 1039
    .line 1040
    .line 1041
    if-ne v12, v4, :cond_23

    .line 1042
    .line 1043
    const/16 v4, 0x3e80

    .line 1044
    .line 1045
    goto :goto_18

    .line 1046
    :cond_23
    move v4, v8

    .line 1047
    :goto_19
    iget v8, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 1048
    .line 1049
    if-ne v12, v11, :cond_26

    .line 1050
    .line 1051
    invoke-static {v0, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser;->g(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v11

    .line 1055
    if-eqz v11, :cond_25

    .line 1056
    .line 1057
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1058
    .line 1059
    check-cast v12, Ljava/lang/Integer;

    .line 1060
    .line 1061
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 1062
    .line 1063
    .line 1064
    move-result v12

    .line 1065
    if-nez v6, :cond_24

    .line 1066
    .line 1067
    move-object/from16 v1, v19

    .line 1068
    .line 1069
    goto :goto_1a

    .line 1070
    :cond_24
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1073
    .line 1074
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-virtual {v6, v1}, Landroidx/media3/common/DrmInitData;->a(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    :goto_1a
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1081
    .line 1082
    check-cast v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1083
    .line 1084
    move-object/from16 v41, v1

    .line 1085
    .line 1086
    iget-object v1, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1087
    .line 1088
    aput-object v11, v1, v36

    .line 1089
    .line 1090
    move-object/from16 v1, v41

    .line 1091
    .line 1092
    goto :goto_1b

    .line 1093
    :cond_25
    move-object v1, v6

    .line 1094
    :goto_1b
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_1c

    .line 1098
    :cond_26
    move-object v1, v6

    .line 1099
    :goto_1c
    const-string v11, "audio/mhm1"

    .line 1100
    .line 1101
    const-string v41, "audio/eac3"

    .line 1102
    .line 1103
    const-string v42, "audio/ac3"

    .line 1104
    .line 1105
    const-string v43, "audio/raw"

    .line 1106
    .line 1107
    move/from16 v44, v2

    .line 1108
    .line 1109
    const v2, 0x61632d33

    .line 1110
    .line 1111
    .line 1112
    if-ne v12, v2, :cond_27

    .line 1113
    .line 1114
    move-object/from16 v2, v42

    .line 1115
    .line 1116
    goto/16 :goto_20

    .line 1117
    .line 1118
    :cond_27
    const v2, 0x65632d33

    .line 1119
    .line 1120
    .line 1121
    if-ne v12, v2, :cond_28

    .line 1122
    .line 1123
    move-object/from16 v2, v41

    .line 1124
    .line 1125
    goto/16 :goto_20

    .line 1126
    .line 1127
    :cond_28
    const v2, 0x61632d34

    .line 1128
    .line 1129
    .line 1130
    if-ne v12, v2, :cond_29

    .line 1131
    .line 1132
    const-string v2, "audio/ac4"

    .line 1133
    .line 1134
    goto/16 :goto_20

    .line 1135
    .line 1136
    :cond_29
    const v2, 0x64747363

    .line 1137
    .line 1138
    .line 1139
    if-ne v12, v2, :cond_2a

    .line 1140
    .line 1141
    const-string v2, "audio/vnd.dts"

    .line 1142
    .line 1143
    goto/16 :goto_20

    .line 1144
    .line 1145
    :cond_2a
    const v2, 0x64747368

    .line 1146
    .line 1147
    .line 1148
    if-eq v12, v2, :cond_3f

    .line 1149
    .line 1150
    const v2, 0x6474736c

    .line 1151
    .line 1152
    .line 1153
    if-ne v12, v2, :cond_2b

    .line 1154
    .line 1155
    goto/16 :goto_1f

    .line 1156
    .line 1157
    :cond_2b
    const v2, 0x64747365

    .line 1158
    .line 1159
    .line 1160
    if-ne v12, v2, :cond_2c

    .line 1161
    .line 1162
    const-string v2, "audio/vnd.dts.hd;profile=lbr"

    .line 1163
    .line 1164
    goto/16 :goto_20

    .line 1165
    .line 1166
    :cond_2c
    const v2, 0x64747378

    .line 1167
    .line 1168
    .line 1169
    if-ne v12, v2, :cond_2d

    .line 1170
    .line 1171
    const-string v2, "audio/vnd.dts.uhd;profile=p2"

    .line 1172
    .line 1173
    goto/16 :goto_20

    .line 1174
    .line 1175
    :cond_2d
    const v2, 0x73616d72

    .line 1176
    .line 1177
    .line 1178
    if-ne v12, v2, :cond_2e

    .line 1179
    .line 1180
    const-string v2, "audio/3gpp"

    .line 1181
    .line 1182
    goto/16 :goto_20

    .line 1183
    .line 1184
    :cond_2e
    const v2, 0x73617762

    .line 1185
    .line 1186
    .line 1187
    if-ne v12, v2, :cond_2f

    .line 1188
    .line 1189
    const-string v2, "audio/amr-wb"

    .line 1190
    .line 1191
    goto/16 :goto_20

    .line 1192
    .line 1193
    :cond_2f
    const v2, 0x736f7774

    .line 1194
    .line 1195
    .line 1196
    if-ne v12, v2, :cond_30

    .line 1197
    .line 1198
    :goto_1d
    move-object/from16 v2, v43

    .line 1199
    .line 1200
    const/4 v10, 0x2

    .line 1201
    goto/16 :goto_20

    .line 1202
    .line 1203
    :cond_30
    const v2, 0x74776f73

    .line 1204
    .line 1205
    .line 1206
    if-ne v12, v2, :cond_32

    .line 1207
    .line 1208
    const/high16 v2, 0x10000000

    .line 1209
    .line 1210
    move v10, v2

    .line 1211
    :cond_31
    move-object/from16 v2, v43

    .line 1212
    .line 1213
    goto/16 :goto_20

    .line 1214
    .line 1215
    :cond_32
    const v2, 0x6c70636d

    .line 1216
    .line 1217
    .line 1218
    if-ne v12, v2, :cond_33

    .line 1219
    .line 1220
    const/4 v2, -0x1

    .line 1221
    if-ne v10, v2, :cond_31

    .line 1222
    .line 1223
    goto :goto_1d

    .line 1224
    :cond_33
    const v2, 0x2e6d7032

    .line 1225
    .line 1226
    .line 1227
    if-eq v12, v2, :cond_3e

    .line 1228
    .line 1229
    const v2, 0x2e6d7033

    .line 1230
    .line 1231
    .line 1232
    if-ne v12, v2, :cond_34

    .line 1233
    .line 1234
    goto :goto_1e

    .line 1235
    :cond_34
    const v2, 0x6d686131

    .line 1236
    .line 1237
    .line 1238
    if-ne v12, v2, :cond_35

    .line 1239
    .line 1240
    const-string v2, "audio/mha1"

    .line 1241
    .line 1242
    goto :goto_20

    .line 1243
    :cond_35
    const v2, 0x6d686d31

    .line 1244
    .line 1245
    .line 1246
    if-ne v12, v2, :cond_36

    .line 1247
    .line 1248
    move-object v2, v11

    .line 1249
    goto :goto_20

    .line 1250
    :cond_36
    const v2, 0x616c6163

    .line 1251
    .line 1252
    .line 1253
    if-ne v12, v2, :cond_37

    .line 1254
    .line 1255
    const-string v2, "audio/alac"

    .line 1256
    .line 1257
    goto :goto_20

    .line 1258
    :cond_37
    const v2, 0x616c6177

    .line 1259
    .line 1260
    .line 1261
    if-ne v12, v2, :cond_38

    .line 1262
    .line 1263
    const-string v2, "audio/g711-alaw"

    .line 1264
    .line 1265
    goto :goto_20

    .line 1266
    :cond_38
    const v2, 0x756c6177

    .line 1267
    .line 1268
    .line 1269
    if-ne v12, v2, :cond_39

    .line 1270
    .line 1271
    const-string v2, "audio/g711-mlaw"

    .line 1272
    .line 1273
    goto :goto_20

    .line 1274
    :cond_39
    const v2, 0x4f707573

    .line 1275
    .line 1276
    .line 1277
    if-ne v12, v2, :cond_3a

    .line 1278
    .line 1279
    const-string v2, "audio/opus"

    .line 1280
    .line 1281
    goto :goto_20

    .line 1282
    :cond_3a
    const v2, 0x664c6143

    .line 1283
    .line 1284
    .line 1285
    if-ne v12, v2, :cond_3b

    .line 1286
    .line 1287
    const-string v2, "audio/flac"

    .line 1288
    .line 1289
    goto :goto_20

    .line 1290
    :cond_3b
    const v2, 0x6d6c7061

    .line 1291
    .line 1292
    .line 1293
    if-ne v12, v2, :cond_3c

    .line 1294
    .line 1295
    const-string v2, "audio/true-hd"

    .line 1296
    .line 1297
    goto :goto_20

    .line 1298
    :cond_3c
    const v2, 0x69616d66

    .line 1299
    .line 1300
    .line 1301
    if-ne v12, v2, :cond_3d

    .line 1302
    .line 1303
    const-string v2, "audio/iamf"

    .line 1304
    .line 1305
    goto :goto_20

    .line 1306
    :cond_3d
    move-object/from16 v2, v19

    .line 1307
    .line 1308
    goto :goto_20

    .line 1309
    :cond_3e
    :goto_1e
    const-string v2, "audio/mpeg"

    .line 1310
    .line 1311
    goto :goto_20

    .line 1312
    :cond_3f
    :goto_1f
    const-string v2, "audio/vnd.dts.hd"

    .line 1313
    .line 1314
    :goto_20
    move/from16 v23, v10

    .line 1315
    .line 1316
    move/from16 v22, v15

    .line 1317
    .line 1318
    move-object/from16 v6, v19

    .line 1319
    .line 1320
    move-object v15, v6

    .line 1321
    move-object/from16 v45, v15

    .line 1322
    .line 1323
    move-object/from16 v46, v45

    .line 1324
    .line 1325
    :goto_21
    sub-int v10, v8, v44

    .line 1326
    .line 1327
    if-ge v10, v3, :cond_7b

    .line 1328
    .line 1329
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1333
    .line 1334
    .line 1335
    move-result v10

    .line 1336
    move/from16 v24, v3

    .line 1337
    .line 1338
    if-lez v10, :cond_40

    .line 1339
    .line 1340
    const/4 v3, 0x1

    .line 1341
    goto :goto_22

    .line 1342
    :cond_40
    const/4 v3, 0x0

    .line 1343
    :goto_22
    invoke-static {v13, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1347
    .line 1348
    .line 1349
    move-result v3

    .line 1350
    move-object/from16 v25, v6

    .line 1351
    .line 1352
    const v6, 0x6d686143

    .line 1353
    .line 1354
    .line 1355
    if-ne v3, v6, :cond_44

    .line 1356
    .line 1357
    add-int/lit8 v3, v8, 0x8

    .line 1358
    .line 1359
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1360
    .line 1361
    .line 1362
    const/4 v3, 0x1

    .line 1363
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1367
    .line 1368
    .line 1369
    move-result v6

    .line 1370
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1371
    .line 1372
    .line 1373
    invoke-static {v2, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v3

    .line 1377
    if-eqz v3, :cond_41

    .line 1378
    .line 1379
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v3

    .line 1383
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    const-string v6, "mhm1.%02X"

    .line 1388
    .line 1389
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v3

    .line 1393
    :goto_23
    move-object v6, v3

    .line 1394
    goto :goto_24

    .line 1395
    :cond_41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v3

    .line 1403
    const-string v6, "mha1.%02X"

    .line 1404
    .line 1405
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v3

    .line 1409
    goto :goto_23

    .line 1410
    :goto_24
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    move-object/from16 v26, v2

    .line 1415
    .line 1416
    new-array v2, v3, [B

    .line 1417
    .line 1418
    move-object/from16 v25, v6

    .line 1419
    .line 1420
    const/4 v6, 0x0

    .line 1421
    invoke-virtual {v0, v2, v6, v3}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1422
    .line 1423
    .line 1424
    if-nez v15, :cond_42

    .line 1425
    .line 1426
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v2

    .line 1430
    :goto_25
    move-object v15, v2

    .line 1431
    goto :goto_26

    .line 1432
    :cond_42
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    check-cast v3, [B

    .line 1437
    .line 1438
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v2

    .line 1442
    goto :goto_25

    .line 1443
    :cond_43
    :goto_26
    move-object v2, v13

    .line 1444
    move v13, v10

    .line 1445
    move-object v10, v2

    .line 1446
    move/from16 v27, v8

    .line 1447
    .line 1448
    move-object/from16 v31, v11

    .line 1449
    .line 1450
    move-object/from16 v33, v15

    .line 1451
    .line 1452
    move-object/from16 v6, v25

    .line 1453
    .line 1454
    move-object/from16 v2, v26

    .line 1455
    .line 1456
    :goto_27
    const/4 v15, 0x0

    .line 1457
    goto/16 :goto_4f

    .line 1458
    .line 1459
    :cond_44
    move-object/from16 v26, v2

    .line 1460
    .line 1461
    const v2, 0x6d686150

    .line 1462
    .line 1463
    .line 1464
    if-ne v3, v2, :cond_46

    .line 1465
    .line 1466
    add-int/lit8 v2, v8, 0x8

    .line 1467
    .line 1468
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1472
    .line 1473
    .line 1474
    move-result v2

    .line 1475
    if-lez v2, :cond_43

    .line 1476
    .line 1477
    new-array v3, v2, [B

    .line 1478
    .line 1479
    const/4 v6, 0x0

    .line 1480
    invoke-virtual {v0, v3, v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1481
    .line 1482
    .line 1483
    if-nez v15, :cond_45

    .line 1484
    .line 1485
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v15

    .line 1489
    goto :goto_26

    .line 1490
    :cond_45
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v2

    .line 1494
    check-cast v2, [B

    .line 1495
    .line 1496
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v15

    .line 1500
    goto :goto_26

    .line 1501
    :cond_46
    const v2, 0x65736473

    .line 1502
    .line 1503
    .line 1504
    if-eq v3, v2, :cond_47

    .line 1505
    .line 1506
    if-eqz p4, :cond_48

    .line 1507
    .line 1508
    const v2, 0x77617665

    .line 1509
    .line 1510
    .line 1511
    if-ne v3, v2, :cond_48

    .line 1512
    .line 1513
    const v2, 0x65736473

    .line 1514
    .line 1515
    .line 1516
    :cond_47
    move/from16 v30, v10

    .line 1517
    .line 1518
    move-object/from16 v31, v11

    .line 1519
    .line 1520
    move-object/from16 v34, v13

    .line 1521
    .line 1522
    move-object/from16 v33, v15

    .line 1523
    .line 1524
    const v6, 0x6970636d

    .line 1525
    .line 1526
    .line 1527
    const v10, 0x6670636d

    .line 1528
    .line 1529
    .line 1530
    const/4 v15, 0x6

    .line 1531
    goto/16 :goto_40

    .line 1532
    .line 1533
    :cond_48
    const v2, 0x62747274

    .line 1534
    .line 1535
    .line 1536
    if-ne v3, v2, :cond_49

    .line 1537
    .line 1538
    add-int/lit8 v2, v8, 0x8

    .line 1539
    .line 1540
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1541
    .line 1542
    .line 1543
    const/4 v2, 0x4

    .line 1544
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1548
    .line 1549
    .line 1550
    move-result-wide v2

    .line 1551
    move/from16 v30, v10

    .line 1552
    .line 1553
    move-object v6, v11

    .line 1554
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1555
    .line 1556
    .line 1557
    move-result-wide v10

    .line 1558
    move-object/from16 v31, v6

    .line 1559
    .line 1560
    new-instance v6, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    .line 1561
    .line 1562
    invoke-direct {v6, v10, v11, v2, v3}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    .line 1563
    .line 1564
    .line 1565
    move-object/from16 v46, v6

    .line 1566
    .line 1567
    move/from16 v27, v8

    .line 1568
    .line 1569
    move-object v10, v13

    .line 1570
    move-object/from16 v33, v15

    .line 1571
    .line 1572
    move-object/from16 v6, v25

    .line 1573
    .line 1574
    move-object/from16 v2, v26

    .line 1575
    .line 1576
    move/from16 v13, v30

    .line 1577
    .line 1578
    goto :goto_27

    .line 1579
    :cond_49
    move/from16 v30, v10

    .line 1580
    .line 1581
    move-object/from16 v31, v11

    .line 1582
    .line 1583
    const v2, 0x64616333

    .line 1584
    .line 1585
    .line 1586
    sget-object v6, Landroidx/media3/extractor/Ac3Util;->d:[I

    .line 1587
    .line 1588
    sget-object v10, Landroidx/media3/extractor/Ac3Util;->b:[I

    .line 1589
    .line 1590
    if-ne v3, v2, :cond_4b

    .line 1591
    .line 1592
    add-int/lit8 v2, v8, 0x8

    .line 1593
    .line 1594
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1595
    .line 1596
    .line 1597
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v2

    .line 1601
    new-instance v3, Landroidx/media3/common/util/ParsableBitArray;

    .line 1602
    .line 1603
    invoke-direct {v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1607
    .line 1608
    .line 1609
    const/4 v11, 0x2

    .line 1610
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1611
    .line 1612
    .line 1613
    move-result v33

    .line 1614
    aget v10, v10, v33

    .line 1615
    .line 1616
    const/16 v11, 0x8

    .line 1617
    .line 1618
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1619
    .line 1620
    .line 1621
    move/from16 v11, v17

    .line 1622
    .line 1623
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1624
    .line 1625
    .line 1626
    move-result v33

    .line 1627
    aget v6, v6, v33

    .line 1628
    .line 1629
    const/4 v11, 0x1

    .line 1630
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1631
    .line 1632
    .line 1633
    move-result v33

    .line 1634
    if-eqz v33, :cond_4a

    .line 1635
    .line 1636
    add-int/lit8 v6, v6, 0x1

    .line 1637
    .line 1638
    :cond_4a
    const/4 v11, 0x5

    .line 1639
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1640
    .line 1641
    .line 1642
    move-result v11

    .line 1643
    sget-object v32, Landroidx/media3/extractor/Ac3Util;->e:[I

    .line 1644
    .line 1645
    aget v11, v32, v11

    .line 1646
    .line 1647
    mul-int/lit16 v11, v11, 0x3e8

    .line 1648
    .line 1649
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 1653
    .line 1654
    .line 1655
    move-result v3

    .line 1656
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1657
    .line 1658
    .line 1659
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 1660
    .line 1661
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1662
    .line 1663
    .line 1664
    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 1665
    .line 1666
    invoke-static/range {v42 .. v42}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v2

    .line 1670
    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 1671
    .line 1672
    iput v6, v3, Landroidx/media3/common/Format$Builder;->I:I

    .line 1673
    .line 1674
    iput v10, v3, Landroidx/media3/common/Format$Builder;->K:I

    .line 1675
    .line 1676
    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 1677
    .line 1678
    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 1679
    .line 1680
    iput v11, v3, Landroidx/media3/common/Format$Builder;->i:I

    .line 1681
    .line 1682
    iput v11, v3, Landroidx/media3/common/Format$Builder;->j:I

    .line 1683
    .line 1684
    new-instance v2, Landroidx/media3/common/Format;

    .line 1685
    .line 1686
    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 1687
    .line 1688
    .line 1689
    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 1690
    .line 1691
    move-object/from16 v34, v13

    .line 1692
    .line 1693
    move-object/from16 v33, v15

    .line 1694
    .line 1695
    :goto_28
    const v6, 0x6970636d

    .line 1696
    .line 1697
    .line 1698
    const v10, 0x6670636d

    .line 1699
    .line 1700
    .line 1701
    const/4 v15, 0x6

    .line 1702
    const/16 v17, 0x3

    .line 1703
    .line 1704
    goto/16 :goto_3f

    .line 1705
    .line 1706
    :cond_4b
    const v2, 0x64656333

    .line 1707
    .line 1708
    .line 1709
    if-ne v3, v2, :cond_50

    .line 1710
    .line 1711
    add-int/lit8 v2, v8, 0x8

    .line 1712
    .line 1713
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1714
    .line 1715
    .line 1716
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v2

    .line 1720
    new-instance v3, Landroidx/media3/common/util/ParsableBitArray;

    .line 1721
    .line 1722
    invoke-direct {v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1726
    .line 1727
    .line 1728
    const/16 v11, 0xd

    .line 1729
    .line 1730
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1731
    .line 1732
    .line 1733
    move-result v11

    .line 1734
    mul-int/lit16 v11, v11, 0x3e8

    .line 1735
    .line 1736
    move-object/from16 v33, v6

    .line 1737
    .line 1738
    const/4 v6, 0x3

    .line 1739
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1740
    .line 1741
    .line 1742
    const/4 v6, 0x2

    .line 1743
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1744
    .line 1745
    .line 1746
    move-result v32

    .line 1747
    aget v6, v10, v32

    .line 1748
    .line 1749
    const/16 v10, 0xa

    .line 1750
    .line 1751
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1752
    .line 1753
    .line 1754
    const/4 v10, 0x3

    .line 1755
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1756
    .line 1757
    .line 1758
    move-result v17

    .line 1759
    aget v17, v33, v17

    .line 1760
    .line 1761
    const/4 v10, 0x1

    .line 1762
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1763
    .line 1764
    .line 1765
    move-result v20

    .line 1766
    if-eqz v20, :cond_4c

    .line 1767
    .line 1768
    add-int/lit8 v17, v17, 0x1

    .line 1769
    .line 1770
    :cond_4c
    move/from16 v20, v17

    .line 1771
    .line 1772
    const/4 v10, 0x3

    .line 1773
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1774
    .line 1775
    .line 1776
    const/4 v10, 0x4

    .line 1777
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1778
    .line 1779
    .line 1780
    move-result v33

    .line 1781
    const/4 v10, 0x1

    .line 1782
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1783
    .line 1784
    .line 1785
    if-lez v33, :cond_4e

    .line 1786
    .line 1787
    move-object/from16 v33, v15

    .line 1788
    .line 1789
    const/4 v15, 0x6

    .line 1790
    invoke-virtual {v3, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1794
    .line 1795
    .line 1796
    move-result v15

    .line 1797
    if-eqz v15, :cond_4d

    .line 1798
    .line 1799
    add-int/lit8 v20, v20, 0x2

    .line 1800
    .line 1801
    :cond_4d
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1802
    .line 1803
    .line 1804
    :goto_29
    move/from16 v15, v20

    .line 1805
    .line 1806
    goto :goto_2a

    .line 1807
    :cond_4e
    move-object/from16 v33, v15

    .line 1808
    .line 1809
    goto :goto_29

    .line 1810
    :goto_2a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 1811
    .line 1812
    .line 1813
    move-result v10

    .line 1814
    move-object/from16 v34, v13

    .line 1815
    .line 1816
    const/4 v13, 0x7

    .line 1817
    if-le v10, v13, :cond_4f

    .line 1818
    .line 1819
    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 1820
    .line 1821
    .line 1822
    const/4 v10, 0x1

    .line 1823
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 1824
    .line 1825
    .line 1826
    move-result v13

    .line 1827
    if-eqz v13, :cond_4f

    .line 1828
    .line 1829
    const-string v10, "audio/eac3-joc"

    .line 1830
    .line 1831
    goto :goto_2b

    .line 1832
    :cond_4f
    move-object/from16 v10, v41

    .line 1833
    .line 1834
    :goto_2b
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    .line 1838
    .line 1839
    .line 1840
    move-result v3

    .line 1841
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1842
    .line 1843
    .line 1844
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 1845
    .line 1846
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1847
    .line 1848
    .line 1849
    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 1850
    .line 1851
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v2

    .line 1855
    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 1856
    .line 1857
    iput v15, v3, Landroidx/media3/common/Format$Builder;->I:I

    .line 1858
    .line 1859
    iput v6, v3, Landroidx/media3/common/Format$Builder;->K:I

    .line 1860
    .line 1861
    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 1862
    .line 1863
    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 1864
    .line 1865
    iput v11, v3, Landroidx/media3/common/Format$Builder;->j:I

    .line 1866
    .line 1867
    new-instance v2, Landroidx/media3/common/Format;

    .line 1868
    .line 1869
    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 1870
    .line 1871
    .line 1872
    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 1873
    .line 1874
    goto/16 :goto_28

    .line 1875
    .line 1876
    :cond_50
    move-object/from16 v34, v13

    .line 1877
    .line 1878
    move-object/from16 v33, v15

    .line 1879
    .line 1880
    const v2, 0x64616334

    .line 1881
    .line 1882
    .line 1883
    if-ne v3, v2, :cond_51

    .line 1884
    .line 1885
    add-int/lit8 v2, v8, 0x8

    .line 1886
    .line 1887
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1888
    .line 1889
    .line 1890
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v2

    .line 1894
    invoke-static {v0, v2, v5, v1}, Landroidx/media3/extractor/Ac4Util;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v2

    .line 1898
    iput-object v2, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 1899
    .line 1900
    goto/16 :goto_28

    .line 1901
    .line 1902
    :cond_51
    const v2, 0x646d6c70

    .line 1903
    .line 1904
    .line 1905
    if-ne v3, v2, :cond_53

    .line 1906
    .line 1907
    if-lez v14, :cond_52

    .line 1908
    .line 1909
    move/from16 v27, v8

    .line 1910
    .line 1911
    move v4, v14

    .line 1912
    move-object/from16 v6, v25

    .line 1913
    .line 1914
    move-object/from16 v2, v26

    .line 1915
    .line 1916
    move/from16 v13, v30

    .line 1917
    .line 1918
    move-object/from16 v10, v34

    .line 1919
    .line 1920
    const/4 v9, 0x2

    .line 1921
    :goto_2c
    const/4 v15, 0x0

    .line 1922
    const/16 v17, 0x3

    .line 1923
    .line 1924
    goto/16 :goto_4f

    .line 1925
    .line 1926
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1927
    .line 1928
    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 1929
    .line 1930
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1934
    .line 1935
    .line 1936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v0

    .line 1940
    move-object/from16 v1, v19

    .line 1941
    .line 1942
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v0

    .line 1946
    throw v0

    .line 1947
    :cond_53
    const v2, 0x64647473

    .line 1948
    .line 1949
    .line 1950
    if-eq v3, v2, :cond_54

    .line 1951
    .line 1952
    const v2, 0x75647473

    .line 1953
    .line 1954
    .line 1955
    if-ne v3, v2, :cond_55

    .line 1956
    .line 1957
    :cond_54
    const v6, 0x6970636d

    .line 1958
    .line 1959
    .line 1960
    const v10, 0x6670636d

    .line 1961
    .line 1962
    .line 1963
    const/4 v15, 0x6

    .line 1964
    const/16 v17, 0x3

    .line 1965
    .line 1966
    goto/16 :goto_3e

    .line 1967
    .line 1968
    :cond_55
    const v2, 0x644f7073

    .line 1969
    .line 1970
    .line 1971
    if-ne v3, v2, :cond_56

    .line 1972
    .line 1973
    add-int/lit8 v10, v30, -0x8

    .line 1974
    .line 1975
    sget-object v2, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 1976
    .line 1977
    array-length v3, v2

    .line 1978
    add-int/2addr v3, v10

    .line 1979
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 1980
    .line 1981
    .line 1982
    move-result-object v3

    .line 1983
    add-int/lit8 v6, v8, 0x8

    .line 1984
    .line 1985
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1986
    .line 1987
    .line 1988
    array-length v2, v2

    .line 1989
    invoke-virtual {v0, v3, v2, v10}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1990
    .line 1991
    .line 1992
    invoke-static {v3}, Landroidx/media3/container/OpusUtil;->a([B)Ljava/util/ArrayList;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v15

    .line 1996
    move/from16 v27, v8

    .line 1997
    .line 1998
    move-object/from16 v33, v15

    .line 1999
    .line 2000
    move-object/from16 v6, v25

    .line 2001
    .line 2002
    move-object/from16 v2, v26

    .line 2003
    .line 2004
    move/from16 v13, v30

    .line 2005
    .line 2006
    move-object/from16 v10, v34

    .line 2007
    .line 2008
    goto :goto_2c

    .line 2009
    :cond_56
    const v2, 0x64664c61

    .line 2010
    .line 2011
    .line 2012
    if-ne v3, v2, :cond_58

    .line 2013
    .line 2014
    add-int/lit8 v10, v30, -0xc

    .line 2015
    .line 2016
    add-int/lit8 v2, v30, -0x8

    .line 2017
    .line 2018
    new-array v2, v2, [B

    .line 2019
    .line 2020
    const/16 v3, 0x66

    .line 2021
    .line 2022
    const/16 v21, 0x0

    .line 2023
    .line 2024
    aput-byte v3, v2, v21

    .line 2025
    .line 2026
    const/16 v3, 0x4c

    .line 2027
    .line 2028
    const/16 v20, 0x1

    .line 2029
    .line 2030
    aput-byte v3, v2, v20

    .line 2031
    .line 2032
    const/16 v3, 0x61

    .line 2033
    .line 2034
    const/16 v40, 0x2

    .line 2035
    .line 2036
    aput-byte v3, v2, v40

    .line 2037
    .line 2038
    const/16 v3, 0x43

    .line 2039
    .line 2040
    const/16 v17, 0x3

    .line 2041
    .line 2042
    aput-byte v3, v2, v17

    .line 2043
    .line 2044
    add-int/lit8 v3, v8, 0xc

    .line 2045
    .line 2046
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2047
    .line 2048
    .line 2049
    const/4 v11, 0x4

    .line 2050
    invoke-virtual {v0, v2, v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 2051
    .line 2052
    .line 2053
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v15

    .line 2057
    :goto_2d
    move/from16 v27, v8

    .line 2058
    .line 2059
    move-object/from16 v33, v15

    .line 2060
    .line 2061
    :goto_2e
    move-object/from16 v6, v25

    .line 2062
    .line 2063
    :cond_57
    :goto_2f
    move-object/from16 v2, v26

    .line 2064
    .line 2065
    move/from16 v13, v30

    .line 2066
    .line 2067
    move-object/from16 v10, v34

    .line 2068
    .line 2069
    goto/16 :goto_27

    .line 2070
    .line 2071
    :cond_58
    const v2, 0x616c6163

    .line 2072
    .line 2073
    .line 2074
    const/16 v17, 0x3

    .line 2075
    .line 2076
    if-ne v3, v2, :cond_5a

    .line 2077
    .line 2078
    add-int/lit8 v10, v30, -0xc

    .line 2079
    .line 2080
    new-array v3, v10, [B

    .line 2081
    .line 2082
    add-int/lit8 v4, v8, 0xc

    .line 2083
    .line 2084
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2085
    .line 2086
    .line 2087
    const/4 v6, 0x0

    .line 2088
    invoke-virtual {v0, v3, v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 2089
    .line 2090
    .line 2091
    sget-object v4, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 2092
    .line 2093
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 2094
    .line 2095
    invoke-direct {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 2096
    .line 2097
    .line 2098
    const/4 v11, 0x5

    .line 2099
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2103
    .line 2104
    .line 2105
    move-result v6

    .line 2106
    const/16 v9, 0x9

    .line 2107
    .line 2108
    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2112
    .line 2113
    .line 2114
    move-result v9

    .line 2115
    const/16 v10, 0x14

    .line 2116
    .line 2117
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2118
    .line 2119
    .line 2120
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 2121
    .line 2122
    .line 2123
    move-result v4

    .line 2124
    filled-new-array {v4, v9, v6}, [I

    .line 2125
    .line 2126
    .line 2127
    move-result-object v4

    .line 2128
    const/16 v21, 0x0

    .line 2129
    .line 2130
    aget v6, v4, v21

    .line 2131
    .line 2132
    const/16 v20, 0x1

    .line 2133
    .line 2134
    aget v9, v4, v20

    .line 2135
    .line 2136
    const/16 v40, 0x2

    .line 2137
    .line 2138
    aget v4, v4, v40

    .line 2139
    .line 2140
    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 2141
    .line 2142
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2143
    .line 2144
    invoke-static {v4, v10}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    .line 2145
    .line 2146
    .line 2147
    move-result v4

    .line 2148
    if-nez v4, :cond_59

    .line 2149
    .line 2150
    const/4 v4, -0x1

    .line 2151
    :cond_59
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v15

    .line 2155
    move/from16 v23, v4

    .line 2156
    .line 2157
    move v4, v6

    .line 2158
    goto :goto_2d

    .line 2159
    :cond_5a
    const v6, 0x69616362

    .line 2160
    .line 2161
    .line 2162
    if-ne v3, v6, :cond_68

    .line 2163
    .line 2164
    add-int/lit8 v3, v8, 0x9

    .line 2165
    .line 2166
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2167
    .line 2168
    .line 2169
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    .line 2170
    .line 2171
    .line 2172
    move-result v3

    .line 2173
    new-array v6, v3, [B

    .line 2174
    .line 2175
    const/4 v10, 0x0

    .line 2176
    invoke-virtual {v0, v6, v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 2177
    .line 2178
    .line 2179
    sget-object v3, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 2180
    .line 2181
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 2182
    .line 2183
    invoke-direct {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 2184
    .line 2185
    .line 2186
    const/4 v10, 0x0

    .line 2187
    const/4 v11, 0x0

    .line 2188
    :goto_30
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 2189
    .line 2190
    .line 2191
    move-result v13

    .line 2192
    if-lez v13, :cond_5b

    .line 2193
    .line 2194
    if-eqz v10, :cond_5c

    .line 2195
    .line 2196
    if-nez v11, :cond_5b

    .line 2197
    .line 2198
    goto :goto_31

    .line 2199
    :cond_5b
    move-object/from16 v27, v6

    .line 2200
    .line 2201
    const/4 v15, 0x6

    .line 2202
    goto/16 :goto_3a

    .line 2203
    .line 2204
    :cond_5c
    :goto_31
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2205
    .line 2206
    .line 2207
    move-result v13

    .line 2208
    shr-int/lit8 v15, v13, 0x3

    .line 2209
    .line 2210
    and-int/lit8 v25, v13, 0x2

    .line 2211
    .line 2212
    if-eqz v25, :cond_5d

    .line 2213
    .line 2214
    const/16 v25, 0x1

    .line 2215
    .line 2216
    goto :goto_32

    .line 2217
    :cond_5d
    const/16 v25, 0x0

    .line 2218
    .line 2219
    :goto_32
    and-int/lit8 v13, v13, 0x1

    .line 2220
    .line 2221
    if-eqz v13, :cond_5e

    .line 2222
    .line 2223
    const/4 v13, 0x1

    .line 2224
    goto :goto_33

    .line 2225
    :cond_5e
    const/4 v13, 0x0

    .line 2226
    :goto_33
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    .line 2227
    .line 2228
    .line 2229
    move-result v27

    .line 2230
    const/4 v2, 0x4

    .line 2231
    if-le v15, v2, :cond_60

    .line 2232
    .line 2233
    const/16 v2, 0x18

    .line 2234
    .line 2235
    if-ge v15, v2, :cond_60

    .line 2236
    .line 2237
    if-eqz v25, :cond_60

    .line 2238
    .line 2239
    :goto_34
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2240
    .line 2241
    .line 2242
    move-result v2

    .line 2243
    and-int/lit16 v2, v2, 0x80

    .line 2244
    .line 2245
    if-eqz v2, :cond_5f

    .line 2246
    .line 2247
    goto :goto_34

    .line 2248
    :cond_5f
    :goto_35
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2249
    .line 2250
    .line 2251
    move-result v2

    .line 2252
    and-int/lit16 v2, v2, 0x80

    .line 2253
    .line 2254
    if-eqz v2, :cond_60

    .line 2255
    .line 2256
    goto :goto_35

    .line 2257
    :cond_60
    if-eqz v13, :cond_61

    .line 2258
    .line 2259
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    .line 2260
    .line 2261
    .line 2262
    move-result v2

    .line 2263
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2264
    .line 2265
    .line 2266
    :cond_61
    iget v2, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2267
    .line 2268
    add-int v2, v2, v27

    .line 2269
    .line 2270
    const/16 v13, 0x1f

    .line 2271
    .line 2272
    if-ne v15, v13, :cond_63

    .line 2273
    .line 2274
    const/4 v13, 0x4

    .line 2275
    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2276
    .line 2277
    .line 2278
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2279
    .line 2280
    .line 2281
    move-result v10

    .line 2282
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2283
    .line 2284
    .line 2285
    move-result v13

    .line 2286
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v10

    .line 2290
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v13

    .line 2294
    filled-new-array {v10, v13}, [Ljava/lang/Object;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v10

    .line 2298
    sget-object v13, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 2299
    .line 2300
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2301
    .line 2302
    const-string v15, "iamf.%03X.%03X"

    .line 2303
    .line 2304
    invoke-static {v13, v15, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2305
    .line 2306
    .line 2307
    move-result-object v10

    .line 2308
    :cond_62
    move-object/from16 v27, v6

    .line 2309
    .line 2310
    const/4 v15, 0x6

    .line 2311
    goto :goto_39

    .line 2312
    :cond_63
    if-nez v15, :cond_62

    .line 2313
    .line 2314
    :goto_36
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2315
    .line 2316
    .line 2317
    move-result v11

    .line 2318
    and-int/lit16 v11, v11, 0x80

    .line 2319
    .line 2320
    if-eqz v11, :cond_64

    .line 2321
    .line 2322
    goto :goto_36

    .line 2323
    :cond_64
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2324
    .line 2325
    const/4 v13, 0x4

    .line 2326
    invoke-virtual {v3, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v11

    .line 2330
    const-string v15, "mp4a"

    .line 2331
    .line 2332
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2333
    .line 2334
    .line 2335
    move-result v15

    .line 2336
    if-eqz v15, :cond_62

    .line 2337
    .line 2338
    :goto_37
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2339
    .line 2340
    .line 2341
    move-result v15

    .line 2342
    and-int/lit16 v15, v15, 0x80

    .line 2343
    .line 2344
    if-eqz v15, :cond_65

    .line 2345
    .line 2346
    goto :goto_37

    .line 2347
    :cond_65
    const/4 v15, 0x2

    .line 2348
    invoke-virtual {v3, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2349
    .line 2350
    .line 2351
    new-instance v13, Landroidx/media3/common/util/ParsableBitArray;

    .line 2352
    .line 2353
    invoke-direct {v13}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 2354
    .line 2355
    .line 2356
    invoke-virtual {v13, v3}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 2357
    .line 2358
    .line 2359
    move-object/from16 v27, v6

    .line 2360
    .line 2361
    const/4 v15, 0x5

    .line 2362
    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2363
    .line 2364
    .line 2365
    move-result v6

    .line 2366
    const/16 v15, 0x1f

    .line 2367
    .line 2368
    if-ne v6, v15, :cond_66

    .line 2369
    .line 2370
    const/4 v15, 0x6

    .line 2371
    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2372
    .line 2373
    .line 2374
    move-result v6

    .line 2375
    add-int/lit8 v6, v6, 0x20

    .line 2376
    .line 2377
    goto :goto_38

    .line 2378
    :cond_66
    const/4 v15, 0x6

    .line 2379
    :goto_38
    new-instance v13, Ljava/lang/StringBuilder;

    .line 2380
    .line 2381
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2382
    .line 2383
    .line 2384
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    .line 2386
    .line 2387
    const-string v11, ".40."

    .line 2388
    .line 2389
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    .line 2391
    .line 2392
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2393
    .line 2394
    .line 2395
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v6

    .line 2399
    move-object v11, v6

    .line 2400
    :goto_39
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2401
    .line 2402
    .line 2403
    move-object/from16 v6, v27

    .line 2404
    .line 2405
    const v2, 0x616c6163

    .line 2406
    .line 2407
    .line 2408
    goto/16 :goto_30

    .line 2409
    .line 2410
    :goto_3a
    if-eqz v10, :cond_67

    .line 2411
    .line 2412
    if-eqz v11, :cond_67

    .line 2413
    .line 2414
    const-string v2, "."

    .line 2415
    .line 2416
    invoke-static {v10, v2, v11}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v2

    .line 2420
    move-object v6, v2

    .line 2421
    goto :goto_3b

    .line 2422
    :cond_67
    const/4 v6, 0x0

    .line 2423
    :goto_3b
    invoke-static/range {v27 .. v27}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v2

    .line 2427
    move-object/from16 v33, v2

    .line 2428
    .line 2429
    move/from16 v27, v8

    .line 2430
    .line 2431
    goto/16 :goto_2f

    .line 2432
    .line 2433
    :cond_68
    const/4 v15, 0x6

    .line 2434
    const v2, 0x70636d43

    .line 2435
    .line 2436
    .line 2437
    if-ne v3, v2, :cond_6d

    .line 2438
    .line 2439
    add-int/lit8 v2, v8, 0xc

    .line 2440
    .line 2441
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2442
    .line 2443
    .line 2444
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2445
    .line 2446
    .line 2447
    move-result v2

    .line 2448
    const/16 v20, 0x1

    .line 2449
    .line 2450
    and-int/lit8 v2, v2, 0x1

    .line 2451
    .line 2452
    if-eqz v2, :cond_69

    .line 2453
    .line 2454
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2455
    .line 2456
    goto :goto_3c

    .line 2457
    :cond_69
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2458
    .line 2459
    :goto_3c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2460
    .line 2461
    .line 2462
    move-result v3

    .line 2463
    const v6, 0x6970636d

    .line 2464
    .line 2465
    .line 2466
    if-ne v12, v6, :cond_6a

    .line 2467
    .line 2468
    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    .line 2469
    .line 2470
    .line 2471
    move-result v2

    .line 2472
    const v10, 0x6670636d

    .line 2473
    .line 2474
    .line 2475
    goto :goto_3d

    .line 2476
    :cond_6a
    const v10, 0x6670636d

    .line 2477
    .line 2478
    .line 2479
    if-ne v12, v10, :cond_6b

    .line 2480
    .line 2481
    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->r(ILjava/nio/ByteOrder;)I

    .line 2482
    .line 2483
    .line 2484
    move-result v2

    .line 2485
    goto :goto_3d

    .line 2486
    :cond_6b
    move/from16 v2, v23

    .line 2487
    .line 2488
    :goto_3d
    if-nez v2, :cond_6c

    .line 2489
    .line 2490
    const/4 v2, -0x1

    .line 2491
    :cond_6c
    const/4 v3, -0x1

    .line 2492
    move/from16 v23, v2

    .line 2493
    .line 2494
    move/from16 v27, v8

    .line 2495
    .line 2496
    move-object/from16 v6, v25

    .line 2497
    .line 2498
    if-eq v2, v3, :cond_57

    .line 2499
    .line 2500
    move/from16 v13, v30

    .line 2501
    .line 2502
    move-object/from16 v10, v34

    .line 2503
    .line 2504
    move-object/from16 v2, v43

    .line 2505
    .line 2506
    goto/16 :goto_27

    .line 2507
    .line 2508
    :cond_6d
    const v6, 0x6970636d

    .line 2509
    .line 2510
    .line 2511
    const v10, 0x6670636d

    .line 2512
    .line 2513
    .line 2514
    goto :goto_3f

    .line 2515
    :goto_3e
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 2516
    .line 2517
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2518
    .line 2519
    .line 2520
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2521
    .line 2522
    .line 2523
    move-result-object v3

    .line 2524
    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 2525
    .line 2526
    invoke-static/range {v26 .. v26}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v3

    .line 2530
    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 2531
    .line 2532
    iput v9, v2, Landroidx/media3/common/Format$Builder;->I:I

    .line 2533
    .line 2534
    iput v4, v2, Landroidx/media3/common/Format$Builder;->K:I

    .line 2535
    .line 2536
    iput-object v1, v2, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 2537
    .line 2538
    iput-object v5, v2, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 2539
    .line 2540
    new-instance v3, Landroidx/media3/common/Format;

    .line 2541
    .line 2542
    invoke-direct {v3, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 2543
    .line 2544
    .line 2545
    iput-object v3, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 2546
    .line 2547
    :goto_3f
    move/from16 v27, v8

    .line 2548
    .line 2549
    goto/16 :goto_2e

    .line 2550
    .line 2551
    :goto_40
    if-ne v3, v2, :cond_6e

    .line 2552
    .line 2553
    move v11, v2

    .line 2554
    move v2, v8

    .line 2555
    move/from16 v13, v30

    .line 2556
    .line 2557
    move-object/from16 v10, v34

    .line 2558
    .line 2559
    :goto_41
    const/4 v3, -0x1

    .line 2560
    goto :goto_47

    .line 2561
    :cond_6e
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2562
    .line 2563
    if-lt v2, v8, :cond_6f

    .line 2564
    .line 2565
    const/4 v3, 0x1

    .line 2566
    :goto_42
    const/4 v11, 0x0

    .line 2567
    goto :goto_43

    .line 2568
    :cond_6f
    const/4 v3, 0x0

    .line 2569
    goto :goto_42

    .line 2570
    :goto_43
    invoke-static {v11, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 2571
    .line 2572
    .line 2573
    :goto_44
    sub-int v3, v2, v8

    .line 2574
    .line 2575
    move/from16 v13, v30

    .line 2576
    .line 2577
    if-ge v3, v13, :cond_72

    .line 2578
    .line 2579
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2580
    .line 2581
    .line 2582
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 2583
    .line 2584
    .line 2585
    move-result v3

    .line 2586
    if-lez v3, :cond_70

    .line 2587
    .line 2588
    const/4 v6, 0x1

    .line 2589
    :goto_45
    move-object/from16 v10, v34

    .line 2590
    .line 2591
    goto :goto_46

    .line 2592
    :cond_70
    const/4 v6, 0x0

    .line 2593
    goto :goto_45

    .line 2594
    :goto_46
    invoke-static {v10, v6}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 2595
    .line 2596
    .line 2597
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 2598
    .line 2599
    .line 2600
    move-result v6

    .line 2601
    const v11, 0x65736473

    .line 2602
    .line 2603
    .line 2604
    if-ne v6, v11, :cond_71

    .line 2605
    .line 2606
    goto :goto_41

    .line 2607
    :cond_71
    add-int/2addr v2, v3

    .line 2608
    move-object/from16 v34, v10

    .line 2609
    .line 2610
    move/from16 v30, v13

    .line 2611
    .line 2612
    const v6, 0x6970636d

    .line 2613
    .line 2614
    .line 2615
    const v10, 0x6670636d

    .line 2616
    .line 2617
    .line 2618
    const/4 v11, 0x0

    .line 2619
    goto :goto_44

    .line 2620
    :cond_72
    move-object/from16 v10, v34

    .line 2621
    .line 2622
    const v11, 0x65736473

    .line 2623
    .line 2624
    .line 2625
    const/4 v2, -0x1

    .line 2626
    goto :goto_41

    .line 2627
    :goto_47
    if-eq v2, v3, :cond_7a

    .line 2628
    .line 2629
    invoke-static {v2, v0}, Landroidx/media3/extractor/mp4/BoxParser;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 2630
    .line 2631
    .line 2632
    move-result-object v2

    .line 2633
    iget-object v6, v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->a:Ljava/lang/String;

    .line 2634
    .line 2635
    iget-object v3, v2, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    .line 2636
    .line 2637
    if-eqz v3, :cond_79

    .line 2638
    .line 2639
    const-string v11, "audio/vorbis"

    .line 2640
    .line 2641
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2642
    .line 2643
    .line 2644
    move-result v11

    .line 2645
    if-eqz v11, :cond_77

    .line 2646
    .line 2647
    sget-object v11, Landroidx/media3/extractor/VorbisUtil;->a:Lcom/google/common/primitives/ImmutableIntArray;

    .line 2648
    .line 2649
    new-instance v11, Landroidx/media3/common/util/ParsableByteArray;

    .line 2650
    .line 2651
    invoke-direct {v11, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 2652
    .line 2653
    .line 2654
    const/4 v15, 0x1

    .line 2655
    invoke-virtual {v11, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2656
    .line 2657
    .line 2658
    const/4 v15, 0x0

    .line 2659
    :goto_48
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 2660
    .line 2661
    .line 2662
    move-result v26

    .line 2663
    if-lez v26, :cond_73

    .line 2664
    .line 2665
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    .line 2666
    .line 2667
    .line 2668
    move-result v0

    .line 2669
    move-object/from16 v26, v2

    .line 2670
    .line 2671
    const/16 v2, 0xff

    .line 2672
    .line 2673
    if-ne v0, v2, :cond_74

    .line 2674
    .line 2675
    add-int/lit16 v15, v15, 0xff

    .line 2676
    .line 2677
    const/4 v0, 0x1

    .line 2678
    invoke-virtual {v11, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2679
    .line 2680
    .line 2681
    move-object/from16 v0, p0

    .line 2682
    .line 2683
    move-object/from16 v2, v26

    .line 2684
    .line 2685
    goto :goto_48

    .line 2686
    :cond_73
    move-object/from16 v26, v2

    .line 2687
    .line 2688
    :cond_74
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2689
    .line 2690
    .line 2691
    move-result v0

    .line 2692
    add-int/2addr v0, v15

    .line 2693
    const/4 v2, 0x0

    .line 2694
    :goto_49
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 2695
    .line 2696
    .line 2697
    move-result v15

    .line 2698
    if-lez v15, :cond_76

    .line 2699
    .line 2700
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    .line 2701
    .line 2702
    .line 2703
    move-result v15

    .line 2704
    move/from16 v27, v8

    .line 2705
    .line 2706
    const/16 v8, 0xff

    .line 2707
    .line 2708
    if-ne v15, v8, :cond_75

    .line 2709
    .line 2710
    add-int/lit16 v2, v2, 0xff

    .line 2711
    .line 2712
    const/4 v15, 0x1

    .line 2713
    invoke-virtual {v11, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2714
    .line 2715
    .line 2716
    move/from16 v8, v27

    .line 2717
    .line 2718
    goto :goto_49

    .line 2719
    :cond_75
    :goto_4a
    const/4 v15, 0x1

    .line 2720
    goto :goto_4b

    .line 2721
    :cond_76
    move/from16 v27, v8

    .line 2722
    .line 2723
    const/16 v8, 0xff

    .line 2724
    .line 2725
    goto :goto_4a

    .line 2726
    :goto_4b
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2727
    .line 2728
    .line 2729
    move-result v16

    .line 2730
    add-int v16, v16, v2

    .line 2731
    .line 2732
    new-array v2, v0, [B

    .line 2733
    .line 2734
    iget v11, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2735
    .line 2736
    const/4 v15, 0x0

    .line 2737
    invoke-static {v3, v11, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2738
    .line 2739
    .line 2740
    add-int/2addr v11, v0

    .line 2741
    add-int v11, v11, v16

    .line 2742
    .line 2743
    array-length v0, v3

    .line 2744
    sub-int/2addr v0, v11

    .line 2745
    new-array v8, v0, [B

    .line 2746
    .line 2747
    invoke-static {v3, v11, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2748
    .line 2749
    .line 2750
    invoke-static {v2, v8}, Lcom/google/common/collect/ImmutableList;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2751
    .line 2752
    .line 2753
    move-result-object v0

    .line 2754
    :goto_4c
    move-object v2, v6

    .line 2755
    move-object/from16 v6, v25

    .line 2756
    .line 2757
    move-object/from16 v45, v26

    .line 2758
    .line 2759
    goto :goto_4e

    .line 2760
    :cond_77
    move-object/from16 v26, v2

    .line 2761
    .line 2762
    move/from16 v27, v8

    .line 2763
    .line 2764
    const/4 v15, 0x0

    .line 2765
    const-string v0, "audio/mp4a-latm"

    .line 2766
    .line 2767
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2768
    .line 2769
    .line 2770
    move-result v0

    .line 2771
    if-eqz v0, :cond_78

    .line 2772
    .line 2773
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 2774
    .line 2775
    array-length v2, v3

    .line 2776
    invoke-direct {v0, v2, v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 2777
    .line 2778
    .line 2779
    invoke-static {v0, v15}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v0

    .line 2783
    iget v4, v0, Landroidx/media3/extractor/AacUtil$Config;->a:I

    .line 2784
    .line 2785
    iget v9, v0, Landroidx/media3/extractor/AacUtil$Config;->b:I

    .line 2786
    .line 2787
    iget-object v0, v0, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    .line 2788
    .line 2789
    move-object/from16 v25, v0

    .line 2790
    .line 2791
    :cond_78
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2792
    .line 2793
    .line 2794
    move-result-object v0

    .line 2795
    goto :goto_4c

    .line 2796
    :cond_79
    move-object/from16 v26, v2

    .line 2797
    .line 2798
    move/from16 v27, v8

    .line 2799
    .line 2800
    const/4 v15, 0x0

    .line 2801
    move-object v2, v6

    .line 2802
    move-object/from16 v6, v25

    .line 2803
    .line 2804
    move-object/from16 v45, v26

    .line 2805
    .line 2806
    :goto_4d
    move-object/from16 v0, v33

    .line 2807
    .line 2808
    goto :goto_4e

    .line 2809
    :cond_7a
    move/from16 v27, v8

    .line 2810
    .line 2811
    const/4 v15, 0x0

    .line 2812
    move-object/from16 v6, v25

    .line 2813
    .line 2814
    move-object/from16 v2, v26

    .line 2815
    .line 2816
    goto :goto_4d

    .line 2817
    :goto_4e
    move-object/from16 v33, v0

    .line 2818
    .line 2819
    :goto_4f
    add-int v8, v27, v13

    .line 2820
    .line 2821
    move-object/from16 v0, p0

    .line 2822
    .line 2823
    move-object v13, v10

    .line 2824
    move/from16 v3, v24

    .line 2825
    .line 2826
    move-object/from16 v11, v31

    .line 2827
    .line 2828
    move-object/from16 v15, v33

    .line 2829
    .line 2830
    const/16 v19, 0x0

    .line 2831
    .line 2832
    goto/16 :goto_21

    .line 2833
    .line 2834
    :cond_7b
    move-object/from16 v26, v2

    .line 2835
    .line 2836
    move/from16 v24, v3

    .line 2837
    .line 2838
    move-object/from16 v25, v6

    .line 2839
    .line 2840
    move-object/from16 v33, v15

    .line 2841
    .line 2842
    const/4 v15, 0x0

    .line 2843
    iget-object v0, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 2844
    .line 2845
    if-nez v0, :cond_7e

    .line 2846
    .line 2847
    if-eqz v26, :cond_7e

    .line 2848
    .line 2849
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 2850
    .line 2851
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2852
    .line 2853
    .line 2854
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v2

    .line 2858
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 2859
    .line 2860
    invoke-static/range {v26 .. v26}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 2861
    .line 2862
    .line 2863
    move-result-object v2

    .line 2864
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 2865
    .line 2866
    move-object/from16 v6, v25

    .line 2867
    .line 2868
    iput-object v6, v0, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 2869
    .line 2870
    iput v9, v0, Landroidx/media3/common/Format$Builder;->I:I

    .line 2871
    .line 2872
    iput v4, v0, Landroidx/media3/common/Format$Builder;->K:I

    .line 2873
    .line 2874
    move/from16 v10, v23

    .line 2875
    .line 2876
    iput v10, v0, Landroidx/media3/common/Format$Builder;->L:I

    .line 2877
    .line 2878
    move-object/from16 v2, v33

    .line 2879
    .line 2880
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 2881
    .line 2882
    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 2883
    .line 2884
    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 2885
    .line 2886
    move-object/from16 v1, v45

    .line 2887
    .line 2888
    if-eqz v1, :cond_7c

    .line 2889
    .line 2890
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->c:J

    .line 2891
    .line 2892
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2893
    .line 2894
    .line 2895
    move-result v2

    .line 2896
    iput v2, v0, Landroidx/media3/common/Format$Builder;->i:I

    .line 2897
    .line 2898
    iget-wide v1, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->d:J

    .line 2899
    .line 2900
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2901
    .line 2902
    .line 2903
    move-result v1

    .line 2904
    iput v1, v0, Landroidx/media3/common/Format$Builder;->j:I

    .line 2905
    .line 2906
    goto :goto_50

    .line 2907
    :cond_7c
    move-object/from16 v1, v46

    .line 2908
    .line 2909
    if-eqz v1, :cond_7d

    .line 2910
    .line 2911
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->a:J

    .line 2912
    .line 2913
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2914
    .line 2915
    .line 2916
    move-result v2

    .line 2917
    iput v2, v0, Landroidx/media3/common/Format$Builder;->i:I

    .line 2918
    .line 2919
    iget-wide v1, v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->b:J

    .line 2920
    .line 2921
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2922
    .line 2923
    .line 2924
    move-result v1

    .line 2925
    iput v1, v0, Landroidx/media3/common/Format$Builder;->j:I

    .line 2926
    .line 2927
    :cond_7d
    :goto_50
    new-instance v1, Landroidx/media3/common/Format;

    .line 2928
    .line 2929
    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 2930
    .line 2931
    .line 2932
    iput-object v1, v7, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 2933
    .line 2934
    :cond_7e
    :goto_51
    move-object/from16 v0, p0

    .line 2935
    .line 2936
    move/from16 v3, v24

    .line 2937
    .line 2938
    move/from16 v2, v44

    .line 2939
    .line 2940
    goto :goto_53

    .line 2941
    :cond_7f
    move/from16 v37, v9

    .line 2942
    .line 2943
    move/from16 v22, v10

    .line 2944
    .line 2945
    const/4 v15, 0x0

    .line 2946
    move-object/from16 v0, p0

    .line 2947
    .line 2948
    move-object/from16 v4, p1

    .line 2949
    .line 2950
    move-object/from16 v6, p3

    .line 2951
    .line 2952
    move v1, v12

    .line 2953
    :goto_52
    invoke-static/range {v0 .. v8}, Landroidx/media3/extractor/mp4/BoxParser;->k(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    .line 2954
    .line 2955
    .line 2956
    move/from16 v36, v8

    .line 2957
    .line 2958
    :goto_53
    add-int/2addr v2, v3

    .line 2959
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2960
    .line 2961
    .line 2962
    add-int/lit8 v8, v36, 0x1

    .line 2963
    .line 2964
    move-object/from16 v4, p1

    .line 2965
    .line 2966
    move-object/from16 v5, p2

    .line 2967
    .line 2968
    move-object/from16 v6, p3

    .line 2969
    .line 2970
    move/from16 v10, v22

    .line 2971
    .line 2972
    move/from16 v9, v37

    .line 2973
    .line 2974
    goto/16 :goto_0

    .line 2975
    .line 2976
    :cond_80
    return-object v7
.end method

.method public static i(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/ArrayList;
    .locals 59

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_81

    .line 3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 4
    iget v7, v6, Landroidx/media3/container/Mp4Box;->a:I

    const v8, 0x7472616b

    if-eq v7, v8, :cond_0

    move-object/from16 v34, v2

    move-object v0, v3

    move/from16 v21, v5

    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_62

    :cond_0
    const v7, 0x6d766864

    .line 5
    invoke-virtual {v0, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x6d646961

    .line 7
    invoke-virtual {v6, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v9, v10}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v10

    .line 10
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v10, v10, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v11, 0x10

    .line 12
    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 13
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    const v12, 0x736f756e

    const/4 v14, -0x1

    if-ne v10, v12, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const v12, 0x76696465

    if-ne v10, v12, :cond_2

    const/4 v10, 0x2

    goto :goto_3

    :cond_2
    const v12, 0x74657874

    if-eq v10, v12, :cond_5

    const v12, 0x7362746c

    if-eq v10, v12, :cond_5

    const v12, 0x73756274

    if-eq v10, v12, :cond_5

    const v12, 0x636c6370

    if-eq v10, v12, :cond_5

    const v12, 0x73756270

    if-ne v10, v12, :cond_3

    goto :goto_2

    :cond_3
    const v12, 0x6d657461

    if-ne v10, v12, :cond_4

    const/4 v10, 0x5

    goto :goto_3

    :cond_4
    move v10, v14

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x3

    .line 14
    :goto_3
    const-string v12, "BoxParsers"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x4

    move/from16 v21, v5

    if-ne v10, v14, :cond_6

    move-object/from16 v1, p7

    move-object/from16 v34, v2

    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v26, v12

    move-object/from16 v0, v20

    const-wide/16 v23, 0x0

    goto/16 :goto_26

    :cond_6
    const-wide/16 v23, 0x0

    const v4, 0x746b6864

    .line 15
    invoke-virtual {v6, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0x8

    .line 18
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 19
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v25

    .line 20
    invoke-static/range {v25 .. v25}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v25

    if-nez v25, :cond_7

    goto :goto_4

    :cond_7
    move v5, v11

    .line 21
    :goto_4
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 22
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v28

    .line 23
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 24
    iget v5, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-nez v25, :cond_8

    move v8, v13

    goto :goto_5

    :cond_8
    const/16 v8, 0x8

    :goto_5
    move/from16 v15, v18

    :goto_6
    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v15, v8, :cond_b

    .line 25
    iget-object v11, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int v27, v5, v15

    .line 26
    aget-byte v11, v11, v27

    if-eq v11, v14, :cond_a

    if-nez v25, :cond_9

    .line 27
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    move-result-wide v29

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    move-result-wide v29

    :goto_7
    cmp-long v5, v29, v23

    if-nez v5, :cond_c

    :goto_8
    move-wide/from16 v29, v38

    goto :goto_9

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x10

    goto :goto_6

    .line 28
    :cond_b
    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_8

    :cond_c
    :goto_9
    const/16 v5, 0xa

    .line 29
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 30
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    move-result v31

    .line 31
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 32
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    .line 33
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    .line 34
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 35
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v11

    .line 36
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v15

    const/high16 v13, -0x10000

    const/high16 v14, 0x10000

    if-nez v5, :cond_e

    if-ne v8, v14, :cond_e

    if-eq v11, v13, :cond_d

    if-ne v11, v14, :cond_e

    :cond_d
    if-nez v15, :cond_e

    const/16 v13, 0x5a

    :goto_a
    move/from16 v32, v13

    :goto_b
    const/16 v13, 0x10

    goto :goto_c

    :cond_e
    if-nez v5, :cond_10

    if-ne v8, v13, :cond_10

    if-eq v11, v14, :cond_f

    if-ne v11, v13, :cond_10

    :cond_f
    if-nez v15, :cond_10

    const/16 v13, 0x10e

    goto :goto_a

    :cond_10
    if-eq v5, v13, :cond_11

    if-ne v5, v14, :cond_12

    :cond_11
    if-nez v8, :cond_12

    if-nez v11, :cond_12

    if-ne v15, v13, :cond_12

    const/16 v13, 0xb4

    goto :goto_a

    :cond_12
    move/from16 v32, v18

    goto :goto_b

    .line 37
    :goto_c
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 38
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    move-result v34

    const/4 v14, 0x2

    .line 39
    invoke-virtual {v4, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 40
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    move-result v35

    int-to-long v4, v5

    int-to-long v14, v15

    mul-long/2addr v4, v14

    int-to-long v14, v8

    move-wide/from16 v42, v14

    int-to-long v13, v11

    mul-long v14, v42, v13

    sub-long/2addr v4, v14

    cmp-long v4, v4, v23

    if-gez v4, :cond_13

    move/from16 v33, v17

    goto :goto_d

    :cond_13
    move/from16 v33, v18

    .line 41
    :goto_d
    new-instance v27, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    invoke-direct/range {v27 .. v35}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;-><init>(IJIIZII)V

    move-object/from16 v4, v27

    cmp-long v5, p2, v38

    if-nez v5, :cond_14

    move-wide/from16 v42, v29

    goto :goto_e

    :cond_14
    move-wide/from16 v42, p2

    .line 42
    :goto_e
    iget-object v5, v7, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v5

    iget-wide v7, v5, Landroidx/media3/container/Mp4TimestampData;->c:J

    cmp-long v5, v42, v38

    if-nez v5, :cond_15

    move-wide v13, v7

    move-wide/from16 v7, v38

    :goto_f
    const v5, 0x6d696e66

    goto :goto_10

    .line 43
    :cond_15
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 44
    sget-object v48, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v44, 0xf4240

    move-wide/from16 v46, v7

    invoke-static/range {v42 .. v48}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-wide/from16 v13, v46

    goto :goto_f

    .line 45
    :goto_10
    invoke-virtual {v9, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v11

    .line 46
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7374626c

    .line 47
    invoke-virtual {v11, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v11

    .line 48
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d646864

    .line 49
    invoke-virtual {v9, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v5, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    .line 52
    invoke-virtual {v5, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 53
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    .line 54
    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v9

    if-nez v9, :cond_16

    const/16 v15, 0x8

    goto :goto_11

    :cond_16
    const/16 v15, 0x10

    .line 55
    :goto_11
    invoke-virtual {v5, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 56
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    move-result-wide v28

    .line 57
    iget v15, v5, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-nez v9, :cond_17

    const/4 v0, 0x4

    goto :goto_12

    :cond_17
    const/16 v0, 0x8

    :goto_12
    move-object/from16 v34, v2

    move/from16 v2, v18

    :goto_13
    if-ge v2, v0, :cond_1b

    move/from16 v27, v2

    .line 58
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int v30, v15, v27

    .line 59
    aget-byte v2, v2, v30

    move/from16 v30, v9

    const/4 v9, -0x1

    if-eq v2, v9, :cond_1a

    if-nez v30, :cond_18

    .line 60
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    move-result-wide v30

    goto :goto_14

    :cond_18
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    move-result-wide v30

    :goto_14
    cmp-long v0, v30, v23

    if-nez v0, :cond_19

    move-wide/from16 v31, v28

    goto :goto_15

    .line 61
    :cond_19
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 62
    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v57, v30

    move-wide/from16 v31, v28

    move-wide/from16 v27, v57

    const-wide/32 v29, 0xf4240

    invoke-static/range {v27 .. v33}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v38

    goto :goto_15

    :cond_1a
    move-wide/from16 v31, v28

    add-int/lit8 v2, v27, 0x1

    move/from16 v9, v30

    goto :goto_13

    :cond_1b
    move-wide/from16 v31, v28

    .line 63
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 64
    :goto_15
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    move-result v0

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    shr-int/lit8 v5, v0, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    const/4 v9, 0x3

    .line 65
    new-array v15, v9, [C

    aput-char v2, v15, v18

    aput-char v5, v15, v17

    const/16 v37, 0x2

    aput-char v0, v15, v37

    move/from16 v0, v18

    :goto_16
    if-ge v0, v9, :cond_1e

    .line 66
    aget-char v2, v15, v0

    const/16 v5, 0x61

    if-lt v2, v5, :cond_1d

    const/16 v5, 0x7a

    if-le v2, v5, :cond_1c

    goto :goto_17

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1d
    :goto_17
    move-object/from16 v0, v20

    goto :goto_18

    .line 67
    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([C)V

    .line 68
    :goto_18
    new-instance v27, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-wide/from16 v28, v31

    move-wide/from16 v30, v38

    move-object/from16 v32, v0

    invoke-direct/range {v27 .. v32}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;-><init>(JJLjava/lang/String;)V

    move-object/from16 v2, v27

    const v5, 0x73747364

    .line 69
    invoke-virtual {v11, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v5

    if-nez v5, :cond_1f

    .line 70
    const-string v0, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v12, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p7

    move-object/from16 v19, v3

    move-object/from16 v30, v6

    move-object/from16 v26, v12

    :goto_19
    move-object/from16 v0, v20

    goto/16 :goto_26

    .line 71
    :cond_1f
    iget-object v5, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v9, p4

    move/from16 v11, p6

    invoke-static {v5, v4, v0, v9, v11}, Landroidx/media3/extractor/mp4/BoxParser;->h(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    move-result-object v0

    const v5, 0x74726566

    .line 72
    invoke-virtual {v6, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v5

    if-eqz v5, :cond_20

    const v15, 0x63686170

    .line 73
    invoke-virtual {v5, v15}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 74
    iget-object v5, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    .line 75
    invoke-virtual {v5, v15}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 76
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v15

    move-object/from16 v19, v5

    const/4 v5, 0x4

    if-lt v15, v5, :cond_20

    .line 77
    invoke-virtual/range {v19 .. v19}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    goto :goto_1a

    :cond_20
    const/4 v5, -0x1

    :goto_1a
    if-nez p5, :cond_2a

    const v15, 0x65647473

    .line 78
    invoke-virtual {v6, v15}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v15

    if-eqz v15, :cond_2a

    const v9, 0x656c7374

    .line 79
    invoke-virtual {v15, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    if-nez v9, :cond_21

    move-object/from16 v19, v3

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v26, v12

    move-object/from16 v1, v20

    goto/16 :goto_23

    .line 80
    :cond_21
    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    .line 81
    invoke-virtual {v9, v15}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 82
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v15

    .line 83
    invoke-static {v15}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v15

    .line 84
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v11

    move-object/from16 v19, v3

    if-ltz v11, :cond_22

    move/from16 v3, v17

    goto :goto_1b

    :cond_22
    move/from16 v3, v18

    .line 85
    :goto_1b
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v11, v1, v3}, Lcom/google/common/base/Preconditions;->c(ILjava/lang/String;Z)V

    .line 86
    new-instance v3, Lcom/google/common/primitives/ImmutableLongArray$Builder;

    .line 87
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v26, v12

    move/from16 v12, v18

    .line 88
    iput v12, v3, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    .line 89
    new-array v12, v11, [J

    iput-object v12, v3, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    if-ltz v11, :cond_23

    move/from16 v12, v17

    goto :goto_1c

    :cond_23
    const/4 v12, 0x0

    .line 90
    :goto_1c
    invoke-static {v11, v1, v12}, Lcom/google/common/base/Preconditions;->c(ILjava/lang/String;Z)V

    .line 91
    new-instance v1, Lcom/google/common/primitives/ImmutableLongArray$Builder;

    .line 92
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    .line 93
    iput v12, v1, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    .line 94
    new-array v12, v11, [J

    iput-object v12, v1, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    const/4 v12, 0x0

    :goto_1d
    if-ge v12, v11, :cond_27

    move/from16 v27, v11

    move/from16 v11, v17

    if-ne v15, v11, :cond_24

    .line 95
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    move-result-wide v28

    :goto_1e
    move/from16 v31, v5

    move-object/from16 v30, v6

    move-wide/from16 v5, v28

    goto :goto_1f

    :cond_24
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    move-result-wide v28

    goto :goto_1e

    .line 96
    :goto_1f
    invoke-virtual {v3, v5, v6}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a(J)V

    if-ne v15, v11, :cond_25

    .line 97
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    move-result-wide v5

    goto :goto_20

    :cond_25
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    int-to-long v5, v5

    :goto_20
    invoke-virtual {v1, v5, v6}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a(J)V

    .line 98
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    move-result v5

    if-ne v5, v11, :cond_26

    const/4 v5, 0x2

    .line 99
    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v27

    move-object/from16 v6, v30

    move/from16 v5, v31

    const/16 v17, 0x1

    goto :goto_1d

    .line 100
    :cond_26
    const-string v0, "Unsupported media rate."

    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    return-object v20

    :cond_27
    move/from16 v31, v5

    move-object/from16 v30, v6

    .line 101
    iget v5, v3, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    sget-object v6, Lcom/google/common/primitives/ImmutableLongArray;->l:Lcom/google/common/primitives/ImmutableLongArray;

    if-nez v5, :cond_28

    move-object v9, v6

    goto :goto_21

    :cond_28
    new-instance v9, Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v3, v3, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    .line 102
    invoke-direct {v9, v3, v5}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JI)V

    .line 103
    :goto_21
    iget v3, v1, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    if-nez v3, :cond_29

    goto :goto_22

    :cond_29
    new-instance v6, Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v1, v1, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    .line 104
    invoke-direct {v6, v1, v3}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JI)V

    .line 105
    :goto_22
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_2b

    .line 106
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/primitives/ImmutableLongArray;

    .line 107
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/primitives/ImmutableLongArray;

    goto :goto_24

    :cond_2a
    move-object/from16 v19, v3

    move/from16 v31, v5

    move-object/from16 v30, v6

    move-object/from16 v26, v12

    :cond_2b
    move-object/from16 v1, v20

    move-object v3, v1

    .line 108
    :goto_24
    iget-object v5, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    if-nez v5, :cond_2c

    move-object/from16 v1, p7

    goto/16 :goto_19

    .line 109
    :cond_2c
    iget v6, v4, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->b:I

    if-eqz v6, :cond_2e

    .line 110
    new-instance v9, Landroidx/media3/container/Mp4AlternateGroupData;

    .line 111
    invoke-direct {v9, v6}, Landroidx/media3/container/Mp4AlternateGroupData;-><init>(I)V

    .line 112
    invoke-virtual {v5}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 113
    iget-object v6, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    iget-object v6, v6, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    if-eqz v6, :cond_2d

    const/4 v11, 0x1

    .line 114
    new-array v12, v11, [Landroidx/media3/common/Metadata$Entry;

    const/16 v18, 0x0

    aput-object v9, v12, v18

    invoke-virtual {v6, v12}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v6

    goto :goto_25

    :cond_2d
    const/4 v11, 0x1

    const/16 v18, 0x0

    .line 115
    new-instance v6, Landroidx/media3/common/Metadata;

    new-array v12, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v9, v12, v18

    invoke-direct {v6, v12}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 116
    :goto_25
    iput-object v6, v5, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 117
    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object v5, v6

    .line 118
    :cond_2e
    iget-object v6, v5, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    const-string v9, "text/x-unknown"

    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v11, 0x1

    xor-int/2addr v6, v11

    .line 119
    new-instance v9, Landroidx/media3/extractor/mp4/Track$Builder;

    .line 120
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v11, v9, Landroidx/media3/extractor/mp4/Track$Builder;->m:Z

    const/4 v11, -0x1

    .line 122
    iput v11, v9, Landroidx/media3/extractor/mp4/Track$Builder;->n:I

    .line 123
    iget v4, v4, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->a:I

    .line 124
    iput v4, v9, Landroidx/media3/extractor/mp4/Track$Builder;->a:I

    .line 125
    iput v10, v9, Landroidx/media3/extractor/mp4/Track$Builder;->b:I

    .line 126
    iget-wide v10, v2, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->a:J

    .line 127
    iput-wide v10, v9, Landroidx/media3/extractor/mp4/Track$Builder;->c:J

    .line 128
    iput-wide v13, v9, Landroidx/media3/extractor/mp4/Track$Builder;->d:J

    .line 129
    iput-wide v7, v9, Landroidx/media3/extractor/mp4/Track$Builder;->e:J

    .line 130
    iget-wide v7, v2, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->b:J

    .line 131
    iput-wide v7, v9, Landroidx/media3/extractor/mp4/Track$Builder;->f:J

    .line 132
    iput-object v5, v9, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 133
    iget v2, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->d:I

    .line 134
    iput v2, v9, Landroidx/media3/extractor/mp4/Track$Builder;->h:I

    .line 135
    iget-object v2, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 136
    invoke-virtual {v2}, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iput-object v2, v9, Landroidx/media3/extractor/mp4/Track$Builder;->i:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 137
    iget v0, v0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    .line 138
    iput v0, v9, Landroidx/media3/extractor/mp4/Track$Builder;->j:I

    .line 139
    iput-object v3, v9, Landroidx/media3/extractor/mp4/Track$Builder;->k:Lcom/google/common/primitives/ImmutableLongArray;

    .line 140
    iput-object v1, v9, Landroidx/media3/extractor/mp4/Track$Builder;->l:Lcom/google/common/primitives/ImmutableLongArray;

    .line 141
    iput-boolean v6, v9, Landroidx/media3/extractor/mp4/Track$Builder;->m:Z

    move/from16 v5, v31

    .line 142
    iput v5, v9, Landroidx/media3/extractor/mp4/Track$Builder;->n:I

    .line 143
    iget-object v0, v9, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    new-instance v0, Landroidx/media3/extractor/mp4/Track;

    invoke-direct {v0, v9}, Landroidx/media3/extractor/mp4/Track;-><init>(Landroidx/media3/extractor/mp4/Track$Builder;)V

    move-object/from16 v1, p7

    .line 146
    :goto_26
    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media3/extractor/mp4/Track;

    if-nez v3, :cond_2f

    move-object/from16 v0, v19

    goto/16 :goto_1

    .line 147
    :cond_2f
    iget-object v0, v3, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    move-object/from16 v6, v30

    const v2, 0x6d646961

    .line 148
    invoke-virtual {v6, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d696e66

    .line 150
    invoke-virtual {v2, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7374626c

    .line 152
    invoke-virtual {v2, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374737a

    .line 154
    invoke-virtual {v2, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 155
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;

    invoke-direct {v5, v4, v0}, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V

    goto :goto_27

    :cond_30
    const v4, 0x73747a32

    .line 156
    invoke-virtual {v2, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 157
    new-instance v5, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;

    invoke-direct {v5, v4}, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;)V

    .line 158
    :goto_27
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->b()I

    move-result v4

    if-nez v4, :cond_31

    .line 159
    new-instance v2, Landroidx/media3/extractor/mp4/TrackSampleTable;

    const/4 v12, 0x0

    new-array v4, v12, [J

    new-array v5, v12, [I

    new-array v7, v12, [J

    new-array v8, v12, [I

    new-array v9, v12, [I

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v13}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    move-object/from16 v0, v19

    :goto_28
    const/16 v18, 0x0

    goto/16 :goto_61

    .line 160
    :cond_31
    iget v6, v3, Landroidx/media3/extractor/mp4/Track;->b:I

    const/4 v14, 0x2

    if-ne v6, v14, :cond_34

    iget-wide v6, v3, Landroidx/media3/extractor/mp4/Track;->f:J

    cmp-long v8, v6, v23

    if-lez v8, :cond_34

    int-to-float v8, v4

    long-to-float v6, v6

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    div-float/2addr v8, v6

    .line 161
    invoke-virtual {v0}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_33

    const/4 v6, 0x0

    cmpl-float v6, v8, v6

    if-lez v6, :cond_32

    goto :goto_29

    :cond_32
    const/4 v6, 0x0

    goto :goto_2a

    :cond_33
    :goto_29
    const/4 v6, 0x1

    .line 162
    :goto_2a
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 163
    iput v8, v0, Landroidx/media3/common/Format$Builder;->A:F

    .line 164
    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 165
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/Track;->a()Landroidx/media3/extractor/mp4/Track$Builder;

    move-result-object v0

    .line 166
    iput-object v6, v0, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 167
    new-instance v3, Landroidx/media3/extractor/mp4/Track;

    invoke-direct {v3, v0}, Landroidx/media3/extractor/mp4/Track;-><init>(Landroidx/media3/extractor/mp4/Track$Builder;)V

    .line 168
    :cond_34
    iget-object v0, v3, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    const v6, 0x7374636f

    invoke-virtual {v2, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    if-nez v6, :cond_35

    const v6, 0x636f3634

    .line 169
    invoke-virtual {v2, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    .line 170
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    goto :goto_2b

    :cond_35
    const/4 v7, 0x0

    .line 171
    :goto_2b
    iget-object v6, v6, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v8, 0x73747363

    .line 172
    invoke-virtual {v2, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    .line 173
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    iget-object v8, v8, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v9, 0x73747473

    .line 175
    invoke-virtual {v2, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    .line 176
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v10, 0x73747373

    .line 178
    invoke-virtual {v2, v10}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v10

    if-eqz v10, :cond_36

    .line 179
    iget-object v10, v10, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_2c

    :cond_36
    move-object/from16 v10, v20

    :goto_2c
    const v11, 0x63747473

    .line 180
    invoke-virtual {v2, v11}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 181
    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_2d

    :cond_37
    move-object/from16 v2, v20

    .line 182
    :goto_2d
    new-instance v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v11, v8, v6, v7}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    .line 183
    invoke-virtual {v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 184
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 185
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v8

    .line 186
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v12

    if-eqz v2, :cond_38

    .line 187
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 188
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v13

    goto :goto_2e

    :cond_38
    const/4 v13, 0x0

    :goto_2e
    if-eqz v10, :cond_3a

    .line 189
    invoke-virtual {v10, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 190
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v6

    if-lez v6, :cond_39

    .line 191
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_30

    :cond_39
    move-object/from16 v10, v20

    :goto_2f
    const/4 v14, -0x1

    goto :goto_30

    :cond_3a
    const/4 v6, 0x0

    goto :goto_2f

    .line 192
    :goto_30
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->a()I

    move-result v15

    .line 193
    iget-object v1, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v0, -0x1

    if-eq v15, v0, :cond_3c

    .line 194
    const-string v0, "audio/raw"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "audio/g711-mlaw"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "audio/g711-alaw"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3b
    if-nez v7, :cond_3c

    if-nez v13, :cond_3c

    if-nez v6, :cond_3c

    const/4 v0, 0x1

    goto :goto_31

    :cond_3c
    const/4 v0, 0x0

    .line 198
    :goto_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v10, :cond_3d

    const/16 v46, 0x1

    goto :goto_32

    :cond_3d
    const/16 v46, 0x0

    :goto_32
    if-eqz v0, :cond_46

    .line 199
    iget v0, v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->a:I

    new-array v2, v0, [J

    .line 200
    new-array v4, v0, [I

    .line 201
    :goto_33
    invoke-virtual {v11}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->a()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 202
    iget v5, v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->b:I

    iget-wide v6, v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->d:J

    aput-wide v6, v2, v5

    .line 203
    iget v6, v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->c:I

    aput v6, v4, v5

    goto :goto_33

    :cond_3e
    int-to-long v5, v12

    const/16 v7, 0x2000

    .line 204
    div-int/2addr v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_34
    if-ge v8, v0, :cond_3f

    .line 205
    aget v10, v4, v8

    .line 206
    invoke-static {v10, v7}, Landroidx/media3/common/util/Util;->e(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 207
    :cond_3f
    new-array v8, v9, [J

    .line 208
    new-array v10, v9, [I

    .line 209
    new-array v11, v9, [J

    .line 210
    new-array v12, v9, [I

    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    :goto_35
    if-ge v13, v0, :cond_41

    .line 211
    aget v27, v4, v13

    .line 212
    aget-wide v28, v22, v13

    move/from16 v57, v26

    move/from16 v26, v0

    move/from16 v0, v20

    move/from16 v20, v57

    move/from16 v57, v27

    move/from16 v27, v2

    move/from16 v2, v57

    :goto_36
    if-lez v2, :cond_40

    .line 213
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 214
    aput-wide v28, v8, v20

    move/from16 v31, v2

    mul-int v2, v15, v30

    .line 215
    aput v2, v10, v20

    add-int v27, v27, v2

    .line 216
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v32, v4

    move-wide/from16 v35, v5

    int-to-long v4, v14

    mul-long v5, v35, v4

    .line 217
    aput-wide v5, v11, v20

    const/16 v17, 0x1

    .line 218
    aput v17, v12, v20

    .line 219
    aget v2, v10, v20

    int-to-long v4, v2

    add-long v28, v28, v4

    add-int v14, v14, v30

    sub-int v2, v31, v30

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v4, v32

    move-wide/from16 v5, v35

    goto :goto_36

    :cond_40
    move-object/from16 v32, v4

    move-wide/from16 v35, v5

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v20

    move/from16 v20, v0

    move/from16 v0, v26

    move/from16 v26, v2

    move/from16 v2, v27

    goto :goto_35

    :cond_41
    move-wide/from16 v35, v5

    int-to-long v4, v14

    mul-long v5, v35, v4

    int-to-long v13, v2

    const/4 v0, 0x0

    if-eqz p8, :cond_42

    .line 220
    new-array v8, v0, [J

    :cond_42
    if-eqz p8, :cond_43

    .line 221
    new-array v10, v0, [I

    :cond_43
    if-eqz p8, :cond_44

    .line 222
    new-array v11, v0, [J

    :cond_44
    if-eqz p8, :cond_45

    .line 223
    new-array v12, v0, [I

    :cond_45
    move-wide/from16 v26, v5

    move/from16 v49, v9

    move-object/from16 v41, v10

    move/from16 v42, v20

    :goto_37
    move-object/from16 v40, v8

    move-object/from16 v44, v12

    goto/16 :goto_46

    :cond_46
    const/4 v0, 0x0

    if-eqz p8, :cond_47

    .line 224
    new-array v15, v0, [J

    goto :goto_38

    :cond_47
    new-array v15, v4, [J

    :goto_38
    move-object/from16 v22, v2

    if-eqz p8, :cond_48

    .line 225
    new-array v2, v0, [I

    goto :goto_39

    :cond_48
    new-array v2, v4, [I

    :goto_39
    move-object/from16 v27, v5

    if-eqz p8, :cond_49

    .line 226
    new-array v5, v0, [J

    goto :goto_3a

    :cond_49
    new-array v5, v4, [J

    :goto_3a
    move/from16 v20, v6

    if-eqz p8, :cond_4a

    .line 227
    new-array v6, v0, [I

    goto :goto_3b

    :cond_4a
    new-array v6, v4, [I

    :goto_3b
    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v13

    move/from16 v0, v20

    move-wide/from16 v32, v23

    move-wide/from16 v35, v32

    move-wide/from16 v38, v35

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v31, 0x0

    :goto_3c
    if-ge v9, v4, :cond_56

    move-wide/from16 v39, v38

    move/from16 v38, v20

    const/16 v20, 0x1

    :goto_3d
    if-nez v38, :cond_4b

    .line 228
    invoke-virtual {v11}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->a()Z

    move-result v20

    if-eqz v20, :cond_4b

    move/from16 v41, v7

    move/from16 v42, v8

    .line 229
    iget-wide v7, v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->d:J

    move/from16 v43, v4

    .line 230
    iget v4, v11, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->c:I

    move/from16 v38, v4

    move-wide/from16 v39, v7

    move/from16 v7, v41

    move/from16 v8, v42

    move/from16 v4, v43

    goto :goto_3d

    :cond_4b
    move/from16 v43, v4

    move/from16 v41, v7

    move/from16 v42, v8

    if-nez v20, :cond_4d

    .line 231
    const-string v4, "Unexpected end of chunk data"

    move-object/from16 v7, v26

    invoke-static {v7, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_4c

    .line 232
    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 233
    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 234
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 235
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    move-object v8, v4

    move-object v11, v5

    move-object v12, v6

    move v4, v9

    :goto_3e
    move/from16 v5, v38

    goto/16 :goto_42

    :cond_4c
    move-object v11, v5

    move-object v12, v6

    move v4, v9

    move-object v8, v15

    goto :goto_3e

    :cond_4d
    move-object/from16 v7, v26

    if-eqz v22, :cond_4f

    :goto_3f
    if-nez v31, :cond_4e

    if-lez v30, :cond_4e

    .line 236
    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v31

    .line 237
    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    add-int/lit8 v30, v30, -0x1

    goto :goto_3f

    :cond_4e
    add-int/lit8 v31, v31, -0x1

    .line 238
    :cond_4f
    invoke-interface/range {v27 .. v27}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->c()I

    move-result v4

    move-object v8, v5

    move-object/from16 v26, v6

    int-to-long v5, v4

    add-long v35, v35, v5

    if-le v4, v13, :cond_50

    move v13, v4

    :cond_50
    if-nez p8, :cond_52

    .line 239
    aput-wide v39, v15, v9

    .line 240
    aput v4, v2, v9

    move-wide/from16 v44, v5

    int-to-long v4, v10

    add-long v4, v32, v4

    .line 241
    aput-wide v4, v8, v9

    if-nez v29, :cond_51

    const/4 v4, 0x1

    goto :goto_40

    :cond_51
    const/4 v4, 0x0

    .line 242
    :goto_40
    aput v4, v26, v9

    if-ne v9, v14, :cond_53

    const/16 v17, 0x1

    .line 243
    aput v17, v26, v9

    .line 244
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_52
    move-wide/from16 v44, v5

    :cond_53
    :goto_41
    if-eqz v29, :cond_54

    if-ne v9, v14, :cond_54

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_54

    .line 245
    invoke-virtual/range {v29 .. v29}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    move v14, v4

    :cond_54
    int-to-long v4, v12

    add-long v32, v32, v4

    add-int/lit8 v4, v42, -0x1

    if-nez v4, :cond_55

    if-lez v41, :cond_55

    .line 246
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v4

    .line 247
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    add-int/lit8 v6, v41, -0x1

    move v12, v5

    move/from16 v41, v6

    :cond_55
    add-long v5, v39, v44

    add-int/lit8 v20, v38, -0x1

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v38, v5

    move-object v5, v8

    move-object/from16 v6, v26

    move v8, v4

    move-object/from16 v26, v7

    move/from16 v7, v41

    move/from16 v4, v43

    goto/16 :goto_3c

    :cond_56
    move/from16 v43, v4

    move/from16 v41, v7

    move/from16 v42, v8

    move-object/from16 v7, v26

    move-object v8, v5

    move-object/from16 v26, v6

    move-object v11, v8

    move-object v8, v15

    move/from16 v5, v20

    move-object/from16 v12, v26

    :goto_42
    int-to-long v9, v10

    add-long v9, v32, v9

    if-eqz v22, :cond_58

    :goto_43
    if-lez v30, :cond_58

    .line 248
    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v6

    if-eqz v6, :cond_57

    const/4 v6, 0x0

    goto :goto_44

    .line 249
    :cond_57
    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    add-int/lit8 v30, v30, -0x1

    goto :goto_43

    :cond_58
    const/4 v6, 0x1

    :goto_44
    if-nez v0, :cond_59

    if-nez v42, :cond_59

    if-nez v5, :cond_59

    if-nez v41, :cond_59

    if-nez v31, :cond_59

    if-nez v6, :cond_5b

    .line 250
    :cond_59
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Inconsistent stbl box for track "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v3, Landroidx/media3/extractor/mp4/Track;->a:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v6, :cond_5a

    .line 251
    const-string v0, ", ctts invalid"

    goto :goto_45

    :cond_5a
    const-string v0, ""

    :goto_45
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    move-object/from16 v41, v2

    move/from16 v49, v4

    move-wide/from16 v26, v9

    move/from16 v42, v13

    move-wide/from16 v13, v35

    goto/16 :goto_37

    .line 253
    :goto_46
    iget-wide v8, v3, Landroidx/media3/extractor/mp4/Track;->f:J

    cmp-long v0, v8, v23

    const-wide/32 v35, 0x7fffffff

    if-lez v0, :cond_5c

    const-wide/16 v4, 0x8

    mul-long/2addr v4, v13

    const-wide/32 v6, 0xf4240

    .line 254
    sget-object v10, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 255
    invoke-static/range {v4 .. v10}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    cmp-long v0, v4, v23

    if-lez v0, :cond_5c

    cmp-long v0, v4, v35

    if-gez v0, :cond_5c

    .line 256
    invoke-virtual/range {v16 .. v16}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    long-to-int v2, v4

    .line 257
    iput v2, v0, Landroidx/media3/common/Format$Builder;->i:I

    .line 258
    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 259
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/Track;->a()Landroidx/media3/extractor/mp4/Track$Builder;

    move-result-object v0

    .line 260
    iput-object v2, v0, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 261
    new-instance v3, Landroidx/media3/extractor/mp4/Track;

    invoke-direct {v3, v0}, Landroidx/media3/extractor/mp4/Track;-><init>(Landroidx/media3/extractor/mp4/Track$Builder;)V

    .line 262
    :cond_5c
    iget v0, v3, Landroidx/media3/extractor/mp4/Track;->b:I

    iget-wide v4, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    iget-object v2, v3, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    iget-object v6, v3, Landroidx/media3/extractor/mp4/Track;->j:Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v7, v3, Landroidx/media3/extractor/mp4/Track;->i:Lcom/google/common/primitives/ImmutableLongArray;

    .line 263
    sget-object v56, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v4

    move-object/from16 v32, v56

    invoke-static/range {v26 .. v32}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    .line 264
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->e(Ljava/util/AbstractCollection;)[I

    move-result-object v45

    if-nez v7, :cond_5e

    if-nez p8, :cond_5d

    .line 265
    invoke-static {v11, v4, v5}, Landroidx/media3/common/util/Util;->I([JJ)V

    .line 266
    :cond_5d
    new-instance v38, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v39, v3

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v49}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    :goto_47
    move-object/from16 v0, v19

    move-object/from16 v2, v38

    goto/16 :goto_28

    :cond_5e
    move-object/from16 v43, v11

    .line 267
    iget v8, v7, Lcom/google/common/primitives/ImmutableLongArray;->k:I

    const-wide/16 v9, -0x1

    if-eqz p8, :cond_62

    .line 268
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    if-ne v8, v11, :cond_5f

    const/4 v12, 0x0

    .line 269
    invoke-virtual {v7, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v0

    cmp-long v0, v0, v23

    if-nez v0, :cond_5f

    .line 270
    invoke-virtual {v6, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v0

    sub-long v50, v26, v0

    const-wide/32 v52, 0xf4240

    .line 271
    iget-wide v0, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v54, v0

    .line 272
    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    :goto_48
    move-wide/from16 v47, v0

    goto :goto_4a

    :cond_5f
    move-wide/from16 v4, v23

    const/4 v0, 0x0

    :goto_49
    if-ge v0, v8, :cond_61

    .line 273
    invoke-virtual {v6, v0}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-eqz v1, :cond_60

    .line 274
    invoke-virtual {v7, v0}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v1

    add-long/2addr v1, v4

    move-wide v4, v1

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 275
    :cond_61
    iget-wide v8, v3, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 276
    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v10}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    goto :goto_48

    .line 277
    :goto_4a
    new-instance v38, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v39, v3

    invoke-direct/range {v38 .. v49}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    goto :goto_47

    :cond_62
    move-object/from16 v11, v43

    const/4 v12, 0x1

    if-ne v8, v12, :cond_66

    if-ne v0, v12, :cond_66

    .line 278
    array-length v13, v11

    const/4 v14, 0x2

    if-lt v13, v14, :cond_66

    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    .line 280
    invoke-virtual {v6, v13}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v14

    .line 281
    invoke-virtual {v7, v13}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v50

    move-wide/from16 v28, v9

    iget-wide v9, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    move/from16 v17, v12

    iget-wide v12, v3, Landroidx/media3/extractor/mp4/Track;->d:J

    move-wide/from16 v52, v9

    move-wide/from16 v54, v12

    .line 282
    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long/2addr v9, v14

    .line 283
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/4 v13, 0x4

    .line 284
    invoke-static {v13, v1, v12}, Landroidx/media3/common/util/Util;->g(III)I

    move-result v20

    move/from16 v25, v13

    .line 285
    array-length v13, v11

    add-int/lit8 v13, v13, -0x4

    .line 286
    invoke-static {v13, v1, v12}, Landroidx/media3/common/util/Util;->g(III)I

    move-result v12

    .line 287
    aget-wide v30, v11, v1

    cmp-long v1, v30, v14

    if-gtz v1, :cond_63

    aget-wide v30, v11, v20

    cmp-long v1, v14, v30

    if-gez v1, :cond_63

    aget-wide v12, v11, v12

    cmp-long v1, v12, v9

    if-gez v1, :cond_63

    const-wide/16 v12, 0x2

    add-long v12, v26, v12

    cmp-long v1, v9, v12

    if-gtz v1, :cond_63

    const/4 v1, 0x1

    goto :goto_4b

    :cond_63
    const/4 v1, 0x0

    :goto_4b
    if-eqz v1, :cond_64

    sub-long v9, v26, v9

    move-wide/from16 v12, v23

    .line 288
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const/16 v18, 0x0

    .line 289
    aget-wide v22, v11, v18

    sub-long v50, v14, v22

    iget v1, v2, Landroidx/media3/common/Format;->L:I

    int-to-long v14, v1

    move-wide/from16 v23, v12

    iget-wide v12, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v54, v12

    move-wide/from16 v52, v14

    .line 290
    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    .line 291
    iget v1, v2, Landroidx/media3/common/Format;->L:I

    int-to-long v14, v1

    move-wide/from16 v50, v9

    iget-wide v9, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v54, v9

    move-wide/from16 v52, v14

    .line 292
    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    cmp-long v1, v12, v23

    if-nez v1, :cond_65

    cmp-long v1, v9, v23

    if-eqz v1, :cond_64

    goto :goto_4c

    :cond_64
    move-object/from16 v1, p1

    const/4 v12, 0x1

    goto :goto_4d

    :cond_65
    :goto_4c
    cmp-long v1, v12, v35

    if-gtz v1, :cond_64

    cmp-long v1, v9, v35

    if-gtz v1, :cond_64

    long-to-int v0, v12

    move-object/from16 v1, p1

    .line 293
    iput v0, v1, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    long-to-int v0, v9

    .line 294
    iput v0, v1, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 295
    invoke-static {v11, v4, v5}, Landroidx/media3/common/util/Util;->I([JJ)V

    const/4 v12, 0x0

    .line 296
    invoke-virtual {v7, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v50

    const-wide/32 v52, 0xf4240

    iget-wide v4, v3, Landroidx/media3/extractor/mp4/Track;->d:J

    move-wide/from16 v54, v4

    .line 297
    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    .line 298
    new-instance v38, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v39, v3

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v49}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    goto/16 :goto_47

    :cond_66
    move-object/from16 v16, v1

    move-wide/from16 v28, v9

    move-object/from16 v1, p1

    :goto_4d
    if-ne v8, v12, :cond_68

    const/4 v12, 0x0

    .line 299
    invoke-virtual {v7, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v4

    const-wide/16 v23, 0x0

    cmp-long v4, v4, v23

    if-nez v4, :cond_68

    .line 300
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    invoke-virtual {v6, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v4

    const/4 v12, 0x0

    .line 302
    :goto_4e
    array-length v0, v11

    if-ge v12, v0, :cond_67

    .line 303
    aget-wide v6, v11, v12

    sub-long v50, v6, v4

    iget-wide v6, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 304
    sget-object v56, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v52, 0xf4240

    move-wide/from16 v54, v6

    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 305
    aput-wide v6, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    :cond_67
    sub-long v50, v26, v4

    .line 306
    iget-wide v4, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 307
    sget-object v56, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v52, 0xf4240

    move-wide/from16 v54, v4

    invoke-static/range {v50 .. v56}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    .line 308
    new-instance v38, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v39, v3

    move-object/from16 v43, v11

    invoke-direct/range {v38 .. v49}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    goto/16 :goto_47

    :cond_68
    move-object/from16 v4, v40

    move-object/from16 v10, v41

    move-object/from16 v12, v44

    move/from16 v9, v49

    const/4 v5, 0x1

    if-ne v0, v5, :cond_69

    const/4 v0, 0x1

    goto :goto_4f

    :cond_69
    const/4 v0, 0x0

    .line 309
    :goto_4f
    new-array v5, v8, [I

    .line 310
    new-array v13, v8, [I

    .line 311
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v5

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_50
    if-ge v14, v8, :cond_72

    move-object/from16 v44, v12

    move-object/from16 v22, v13

    .line 312
    invoke-virtual {v6, v14}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v12

    cmp-long v25, v12, v28

    if-eqz v25, :cond_71

    .line 313
    invoke-virtual {v7, v14}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v35

    move/from16 v25, v14

    move/from16 v26, v15

    iget-wide v14, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v37, v14

    iget-wide v14, v3, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 314
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v39, v14

    invoke-static/range {v35 .. v41}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v14

    add-long/2addr v14, v12

    move-object/from16 v27, v7

    const/4 v7, 0x1

    .line 315
    invoke-static {v11, v12, v13, v7}, Landroidx/media3/common/util/Util;->d([JJZ)I

    move-result v12

    aput v12, v20, v25

    .line 316
    invoke-static {v11, v14, v15, v0}, Landroidx/media3/common/util/Util;->a([JJZ)I

    move-result v7

    add-int/lit8 v12, v7, -0x1

    move/from16 v30, v0

    move v13, v12

    const/4 v12, 0x0

    .line 317
    :goto_51
    array-length v0, v11

    if-ge v7, v0, :cond_6c

    .line 318
    aget-wide v31, v11, v7

    cmp-long v0, v31, v14

    if-gez v0, :cond_6a

    move v13, v7

    goto :goto_52

    :cond_6a
    add-int/lit8 v12, v12, 0x1

    .line 319
    iget v0, v2, Landroidx/media3/common/Format;->r:I

    if-le v12, v0, :cond_6b

    goto :goto_53

    :cond_6b
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_6c
    :goto_53
    add-int/lit8 v13, v13, 0x1

    .line 320
    aput v13, v22, v25

    .line 321
    aget v0, v20, v25

    .line 322
    :goto_54
    aget v7, v20, v25

    if-lez v7, :cond_6d

    aget v12, v44, v7

    const/16 v17, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_6e

    add-int/lit8 v7, v7, -0x1

    .line 323
    aput v7, v20, v25

    goto :goto_54

    :cond_6d
    const/16 v17, 0x1

    :cond_6e
    const/16 v18, 0x0

    if-nez v7, :cond_6f

    .line 324
    aget v7, v44, v18

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_6f

    .line 325
    aput v0, v20, v25

    .line 326
    :goto_55
    aget v0, v20, v25

    aget v7, v22, v25

    if-ge v0, v7, :cond_6f

    aget v7, v44, v0

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_6f

    add-int/lit8 v0, v0, 0x1

    .line 327
    aput v0, v20, v25

    const/16 v17, 0x1

    goto :goto_55

    .line 328
    :cond_6f
    aget v0, v22, v25

    aget v7, v20, v25

    sub-int v12, v0, v7

    add-int/2addr v12, v1

    if-eq v5, v7, :cond_70

    const/4 v1, 0x1

    goto :goto_56

    :cond_70
    move/from16 v1, v18

    :goto_56
    or-int v1, v26, v1

    move v5, v0

    move v15, v1

    move v1, v12

    goto :goto_57

    :cond_71
    move/from16 v30, v0

    move-object/from16 v27, v7

    move/from16 v25, v14

    move/from16 v26, v15

    const/16 v18, 0x0

    :goto_57
    add-int/lit8 v14, v25, 0x1

    move-object/from16 v13, v22

    move-object/from16 v7, v27

    move/from16 v0, v30

    move-object/from16 v12, v44

    goto/16 :goto_50

    :cond_72
    move-object/from16 v27, v7

    move-object/from16 v44, v12

    move-object/from16 v22, v13

    move/from16 v26, v15

    const/16 v18, 0x0

    if-eq v1, v9, :cond_73

    const/4 v0, 0x1

    goto :goto_58

    :cond_73
    move/from16 v0, v18

    :goto_58
    or-int v0, v26, v0

    if-eqz v0, :cond_74

    .line 329
    new-array v5, v1, [J

    goto :goto_59

    :cond_74
    move-object v5, v4

    :goto_59
    if-eqz v0, :cond_75

    .line 330
    new-array v7, v1, [I

    goto :goto_5a

    :cond_75
    move-object v7, v10

    :goto_5a
    if-eqz v0, :cond_76

    move/from16 v12, v18

    goto :goto_5b

    :cond_76
    move/from16 v12, v42

    :goto_5b
    if-eqz v0, :cond_77

    .line 331
    new-array v9, v1, [I

    goto :goto_5c

    :cond_77
    move-object/from16 v9, v44

    :goto_5c
    if-eqz v0, :cond_78

    .line 332
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5d

    :cond_78
    move-object/from16 v13, v16

    .line 333
    :goto_5d
    new-array v1, v1, [J

    move/from16 v42, v12

    move/from16 v12, v18

    move v14, v12

    move v15, v14

    const-wide/16 v35, 0x0

    :goto_5e
    if-ge v12, v8, :cond_7e

    .line 334
    invoke-virtual {v6, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v25

    move/from16 v16, v0

    .line 335
    aget v0, v20, v12

    move-object/from16 v43, v1

    .line 336
    aget v1, v22, v12

    move-object/from16 v28, v2

    if-eqz v16, :cond_79

    sub-int v2, v1, v0

    .line 337
    invoke-static {v4, v0, v5, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    invoke-static {v10, v0, v7, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v29, v4

    move-object/from16 v4, v44

    .line 339
    invoke-static {v4, v0, v9, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5f

    :cond_79
    move-object/from16 v29, v4

    move-object/from16 v4, v44

    :goto_5f
    move/from16 v2, v42

    :goto_60
    if-ge v0, v1, :cond_7d

    move/from16 v31, v0

    move/from16 v30, v1

    .line 340
    iget-wide v0, v3, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 341
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v37, 0xf4240

    move-wide/from16 v39, v0

    invoke-static/range {v35 .. v41}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 342
    aget-wide v32, v11, v31

    sub-long v47, v32, v25

    const-wide/32 v49, 0xf4240

    move-wide/from16 v32, v0

    iget-wide v0, v3, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v51, v0

    move-object/from16 v53, v41

    .line 343
    invoke-static/range {v47 .. v53}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    const-wide/16 v23, 0x0

    cmp-long v37, v0, v23

    if-gez v37, :cond_7a

    const/4 v14, 0x1

    :cond_7a
    add-long v0, v32, v0

    .line 344
    aput-wide v0, v43, v15

    if-eqz v16, :cond_7b

    .line 345
    aget v0, v7, v15

    if-le v0, v2, :cond_7b

    .line 346
    aget v2, v10, v31

    :cond_7b
    if-eqz v16, :cond_7c

    if-nez v46, :cond_7c

    .line 347
    aget v0, v9, v15

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7c

    .line 348
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v31, 0x1

    move/from16 v1, v30

    goto :goto_60

    :cond_7d
    move-object/from16 v0, v27

    const-wide/16 v23, 0x0

    .line 349
    invoke-virtual {v0, v12}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    move-result-wide v25

    add-long v35, v25, v35

    add-int/lit8 v12, v12, 0x1

    move/from16 v42, v2

    move-object/from16 v44, v4

    move/from16 v0, v16

    move-object/from16 v2, v28

    move-object/from16 v4, v29

    move-object/from16 v1, v43

    goto/16 :goto_5e

    :cond_7e
    move-object/from16 v43, v1

    move-object/from16 v28, v2

    .line 350
    iget-wide v0, v3, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 351
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v37, 0xf4240

    move-wide/from16 v39, v0

    invoke-static/range {v35 .. v41}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    move-result-wide v47

    if-eqz v14, :cond_7f

    .line 352
    invoke-virtual/range {v28 .. v28}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v11, 0x1

    .line 353
    iput-boolean v11, v0, Landroidx/media3/common/Format$Builder;->u:Z

    .line 354
    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 355
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/Track;->a()Landroidx/media3/extractor/mp4/Track$Builder;

    move-result-object v0

    .line 356
    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track$Builder;->g:Landroidx/media3/common/Format;

    .line 357
    new-instance v3, Landroidx/media3/extractor/mp4/Track;

    invoke-direct {v3, v0}, Landroidx/media3/extractor/mp4/Track;-><init>(Landroidx/media3/extractor/mp4/Track$Builder;)V

    :cond_7f
    move-object/from16 v39, v3

    .line 358
    new-instance v38, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 359
    invoke-static {v13}, Lcom/google/common/primitives/Ints;->e(Ljava/util/AbstractCollection;)[I

    move-result-object v45

    array-length v0, v5

    move/from16 v49, v0

    move-object/from16 v40, v5

    move-object/from16 v41, v7

    move-object/from16 v44, v9

    invoke-direct/range {v38 .. v49}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    move-object/from16 v0, v19

    move-object/from16 v2, v38

    .line 360
    :goto_61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_62
    add-int/lit8 v5, v21, 0x1

    move-object v3, v0

    move-object/from16 v2, v34

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 361
    :cond_80
    const-string v0, "Track has no sample table size information"

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_81
    move-object v0, v3

    return-object v0
.end method

.method public static j(Landroidx/media3/container/Mp4Box$LeafBox;Z)Landroidx/media3/common/Metadata;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/media3/common/Metadata;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    new-array v4, v3, [Landroidx/media3/common/Metadata$Entry;

    .line 14
    .line 15
    invoke-direct {v2, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-lt v4, v0, :cond_45

    .line 23
    .line 24
    iget v4, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const v7, 0x6d657461

    .line 35
    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    const/4 v12, 0x0

    .line 39
    if-ne v6, v7, :cond_31

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 42
    .line 43
    .line 44
    add-int v6, v4, v5

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 53
    .line 54
    if-ge v7, v6, :cond_2e

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    const v15, 0x696c7374

    .line 65
    .line 66
    .line 67
    if-ne v14, v15, :cond_30

    .line 68
    .line 69
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 70
    .line 71
    .line 72
    add-int/2addr v7, v13

    .line 73
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    :goto_2
    iget v13, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 82
    .line 83
    if-ge v13, v7, :cond_2d

    .line 84
    .line 85
    const-string v14, "Skipped unknown metadata entry: "

    .line 86
    .line 87
    const-string v15, "Skipped empty metadata entry: "

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    const-string v9, "MetadataUtil"

    .line 94
    .line 95
    if-ge v10, v0, :cond_0

    .line 96
    .line 97
    const-string v10, "Skipped empty metadata entry"

    .line 98
    .line 99
    invoke-static {v9, v10}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_3
    move-object v8, v12

    .line 103
    :goto_4
    const/4 v11, -0x1

    .line 104
    goto/16 :goto_f

    .line 105
    .line 106
    :cond_0
    add-int/2addr v13, v10

    .line 107
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    shr-int/lit8 v8, v10, 0x18

    .line 112
    .line 113
    and-int/lit16 v8, v8, 0xff

    .line 114
    .line 115
    :try_start_0
    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 116
    .line 117
    sub-int v3, v13, v3

    .line 118
    .line 119
    if-ge v3, v0, :cond_1

    .line 120
    .line 121
    invoke-static {v10}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v15, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v9, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto/16 :goto_10

    .line 138
    .line 139
    :cond_1
    const/16 v3, 0xa9

    .line 140
    .line 141
    const v15, 0x64617461

    .line 142
    .line 143
    .line 144
    const-string v0, "TCON"

    .line 145
    .line 146
    if-eq v8, v3, :cond_2

    .line 147
    .line 148
    const/16 v3, 0xfd

    .line 149
    .line 150
    if-ne v8, v3, :cond_3

    .line 151
    .line 152
    :cond_2
    const/4 v11, -0x1

    .line 153
    goto/16 :goto_b

    .line 154
    .line 155
    :cond_3
    const v3, 0x676e7265

    .line 156
    .line 157
    .line 158
    if-ne v10, v3, :cond_5

    .line 159
    .line 160
    :try_start_1
    invoke-static {v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-int/2addr v3, v11

    .line 165
    invoke-static {v3}, Landroidx/media3/extractor/metadata/id3/Id3Util;->a(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v3, :cond_4

    .line 170
    .line 171
    new-instance v8, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 172
    .line 173
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-direct {v8, v0, v12, v3}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_4
    const-string v0, "Failed to parse standard genre code"

    .line 182
    .line 183
    invoke-static {v9, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    .line 186
    :goto_5
    move-object v8, v12

    .line 187
    :goto_6
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_5
    const v0, 0x6469736b

    .line 192
    .line 193
    .line 194
    if-ne v10, v0, :cond_6

    .line 195
    .line 196
    :try_start_2
    const-string v0, "TPOS"

    .line 197
    .line 198
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->b(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    goto :goto_6

    .line 203
    :cond_6
    const v0, 0x74726b6e

    .line 204
    .line 205
    .line 206
    if-ne v10, v0, :cond_7

    .line 207
    .line 208
    const-string v0, "TRCK"

    .line 209
    .line 210
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->b(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    goto :goto_6

    .line 215
    :cond_7
    const v0, 0x746d706f

    .line 216
    .line 217
    .line 218
    if-ne v10, v0, :cond_8

    .line 219
    .line 220
    const-string v0, "TBPM"

    .line 221
    .line 222
    const/4 v3, 0x0

    .line 223
    invoke-static {v10, v0, v1, v11, v3}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    goto :goto_6

    .line 228
    :cond_8
    const v0, 0x6370696c

    .line 229
    .line 230
    .line 231
    if-ne v10, v0, :cond_9

    .line 232
    .line 233
    const-string v0, "TCMP"

    .line 234
    .line 235
    invoke-static {v10, v0, v1, v11, v11}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    goto :goto_6

    .line 240
    :cond_9
    const v0, 0x636f7672

    .line 241
    .line 242
    .line 243
    if-ne v10, v0, :cond_b

    .line 244
    .line 245
    if-eqz p1, :cond_a

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_a
    invoke-static {v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    move-object v8, v0

    .line 253
    goto :goto_6

    .line 254
    :cond_b
    const v0, 0x61415254

    .line 255
    .line 256
    .line 257
    if-ne v10, v0, :cond_c

    .line 258
    .line 259
    const-string v0, "TPE2"

    .line 260
    .line 261
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    goto :goto_6

    .line 266
    :cond_c
    const v0, 0x736f6e6d

    .line 267
    .line 268
    .line 269
    if-ne v10, v0, :cond_d

    .line 270
    .line 271
    const-string v0, "TSOT"

    .line 272
    .line 273
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    goto :goto_6

    .line 278
    :cond_d
    const v0, 0x736f616c

    .line 279
    .line 280
    .line 281
    if-ne v10, v0, :cond_e

    .line 282
    .line 283
    const-string v0, "TSOA"

    .line 284
    .line 285
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    goto :goto_6

    .line 290
    :cond_e
    const v0, 0x736f6172

    .line 291
    .line 292
    .line 293
    if-ne v10, v0, :cond_f

    .line 294
    .line 295
    const-string v0, "TSOP"

    .line 296
    .line 297
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    goto :goto_6

    .line 302
    :cond_f
    const v0, 0x736f6161

    .line 303
    .line 304
    .line 305
    if-ne v10, v0, :cond_10

    .line 306
    .line 307
    const-string v0, "TSO2"

    .line 308
    .line 309
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    goto :goto_6

    .line 314
    :cond_10
    const v0, 0x736f636f

    .line 315
    .line 316
    .line 317
    if-ne v10, v0, :cond_11

    .line 318
    .line 319
    const-string v0, "TSOC"

    .line 320
    .line 321
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    goto/16 :goto_6

    .line 326
    .line 327
    :cond_11
    const v0, 0x72746e67

    .line 328
    .line 329
    .line 330
    if-ne v10, v0, :cond_12

    .line 331
    .line 332
    const-string v0, "ITUNESADVISORY"

    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    invoke-static {v10, v0, v1, v3, v3}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    goto/16 :goto_6

    .line 340
    .line 341
    :cond_12
    const v0, 0x70676170

    .line 342
    .line 343
    .line 344
    if-ne v10, v0, :cond_13

    .line 345
    .line 346
    const-string v0, "ITUNESGAPLESS"

    .line 347
    .line 348
    const/4 v3, 0x0

    .line 349
    invoke-static {v10, v0, v1, v3, v11}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    goto/16 :goto_6

    .line 354
    .line 355
    :cond_13
    const v0, 0x736f736e

    .line 356
    .line 357
    .line 358
    if-ne v10, v0, :cond_14

    .line 359
    .line 360
    const-string v0, "TVSHOWSORT"

    .line 361
    .line 362
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    goto/16 :goto_6

    .line 367
    .line 368
    :cond_14
    const v0, 0x74767368

    .line 369
    .line 370
    .line 371
    if-ne v10, v0, :cond_15

    .line 372
    .line 373
    const-string v0, "TVSHOW"

    .line 374
    .line 375
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    goto/16 :goto_6

    .line 380
    .line 381
    :cond_15
    const v0, 0x2d2d2d2d

    .line 382
    .line 383
    .line 384
    if-ne v10, v0, :cond_1c

    .line 385
    .line 386
    move-object v0, v12

    .line 387
    move-object v3, v0

    .line 388
    const/4 v8, -0x1

    .line 389
    const/4 v9, -0x1

    .line 390
    :goto_7
    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 391
    .line 392
    if-ge v10, v13, :cond_19

    .line 393
    .line 394
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 395
    .line 396
    .line 397
    move-result v14

    .line 398
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 399
    .line 400
    .line 401
    move-result v12

    .line 402
    const/4 v11, 0x4

    .line 403
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 404
    .line 405
    .line 406
    const v11, 0x6d65616e

    .line 407
    .line 408
    .line 409
    if-ne v12, v11, :cond_16

    .line 410
    .line 411
    add-int/lit8 v14, v14, -0xc

    .line 412
    .line 413
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->v(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    goto :goto_8

    .line 418
    :cond_16
    const v11, 0x6e616d65

    .line 419
    .line 420
    .line 421
    if-ne v12, v11, :cond_17

    .line 422
    .line 423
    add-int/lit8 v14, v14, -0xc

    .line 424
    .line 425
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->v(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    goto :goto_8

    .line 430
    :cond_17
    if-ne v12, v15, :cond_18

    .line 431
    .line 432
    move v8, v10

    .line 433
    move v9, v14

    .line 434
    :cond_18
    add-int/lit8 v14, v14, -0xc

    .line 435
    .line 436
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 437
    .line 438
    .line 439
    :goto_8
    const/4 v11, 0x1

    .line 440
    const/4 v12, 0x0

    .line 441
    goto :goto_7

    .line 442
    :cond_19
    if-eqz v0, :cond_1b

    .line 443
    .line 444
    if-eqz v3, :cond_1b

    .line 445
    .line 446
    const/4 v11, -0x1

    .line 447
    if-ne v8, v11, :cond_1a

    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_1a
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 451
    .line 452
    .line 453
    const/16 v8, 0x10

    .line 454
    .line 455
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 456
    .line 457
    .line 458
    add-int/lit8 v9, v9, -0x10

    .line 459
    .line 460
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->v(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    new-instance v9, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    .line 465
    .line 466
    invoke-direct {v9, v0, v3, v8}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    .line 468
    .line 469
    move-object v8, v9

    .line 470
    goto :goto_a

    .line 471
    :cond_1b
    const/4 v11, -0x1

    .line 472
    :goto_9
    const/4 v8, 0x0

    .line 473
    :goto_a
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_f

    .line 477
    .line 478
    :cond_1c
    const/4 v11, -0x1

    .line 479
    goto/16 :goto_c

    .line 480
    .line 481
    :goto_b
    const v3, 0xffffff

    .line 482
    .line 483
    .line 484
    and-int/2addr v3, v10

    .line 485
    const v8, 0x636d74

    .line 486
    .line 487
    .line 488
    if-ne v3, v8, :cond_1e

    .line 489
    .line 490
    :try_start_3
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-ne v3, v15, :cond_1d

    .line 499
    .line 500
    const/16 v3, 0x8

    .line 501
    .line 502
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 503
    .line 504
    .line 505
    const/16 v8, 0x10

    .line 506
    .line 507
    sub-int/2addr v0, v8

    .line 508
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->v(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    new-instance v3, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    .line 513
    .line 514
    const-string v8, "und"

    .line 515
    .line 516
    invoke-direct {v3, v8, v0, v0}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    move-object v8, v3

    .line 520
    goto :goto_a

    .line 521
    :cond_1d
    invoke-static {v10}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    const-string v3, "Failed to parse comment attribute: "

    .line 526
    .line 527
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-static {v9, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_1e
    const v8, 0x6e616d

    .line 536
    .line 537
    .line 538
    if-eq v3, v8, :cond_2b

    .line 539
    .line 540
    const v8, 0x74726b

    .line 541
    .line 542
    .line 543
    if-ne v3, v8, :cond_1f

    .line 544
    .line 545
    goto/16 :goto_e

    .line 546
    .line 547
    :cond_1f
    const v8, 0x636f6d

    .line 548
    .line 549
    .line 550
    if-eq v3, v8, :cond_2a

    .line 551
    .line 552
    const v8, 0x777274

    .line 553
    .line 554
    .line 555
    if-ne v3, v8, :cond_20

    .line 556
    .line 557
    goto/16 :goto_d

    .line 558
    .line 559
    :cond_20
    const v8, 0x646179

    .line 560
    .line 561
    .line 562
    if-ne v3, v8, :cond_21

    .line 563
    .line 564
    const-string v0, "TDRC"

    .line 565
    .line 566
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 567
    .line 568
    .line 569
    move-result-object v8

    .line 570
    goto :goto_a

    .line 571
    :cond_21
    const v8, 0x415254

    .line 572
    .line 573
    .line 574
    if-ne v3, v8, :cond_22

    .line 575
    .line 576
    const-string v0, "TPE1"

    .line 577
    .line 578
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    goto :goto_a

    .line 583
    :cond_22
    const v8, 0x746f6f

    .line 584
    .line 585
    .line 586
    if-ne v3, v8, :cond_23

    .line 587
    .line 588
    const-string v0, "TSSE"

    .line 589
    .line 590
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    goto :goto_a

    .line 595
    :cond_23
    const v8, 0x616c62

    .line 596
    .line 597
    .line 598
    if-ne v3, v8, :cond_24

    .line 599
    .line 600
    const-string v0, "TALB"

    .line 601
    .line 602
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    goto/16 :goto_a

    .line 607
    .line 608
    :cond_24
    const v8, 0x6c7972

    .line 609
    .line 610
    .line 611
    if-ne v3, v8, :cond_25

    .line 612
    .line 613
    const-string v0, "USLT"

    .line 614
    .line 615
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    goto/16 :goto_a

    .line 620
    .line 621
    :cond_25
    const v8, 0x67656e

    .line 622
    .line 623
    .line 624
    if-ne v3, v8, :cond_26

    .line 625
    .line 626
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    goto/16 :goto_a

    .line 631
    .line 632
    :cond_26
    const v0, 0x677270

    .line 633
    .line 634
    .line 635
    if-ne v3, v0, :cond_27

    .line 636
    .line 637
    const-string v0, "TIT1"

    .line 638
    .line 639
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    goto/16 :goto_a

    .line 644
    .line 645
    :cond_27
    const v0, 0x6d766e

    .line 646
    .line 647
    .line 648
    if-ne v3, v0, :cond_28

    .line 649
    .line 650
    const-string v0, "MVNM"

    .line 651
    .line 652
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    goto/16 :goto_a

    .line 657
    .line 658
    :cond_28
    const v0, 0x6d7669

    .line 659
    .line 660
    .line 661
    if-ne v3, v0, :cond_29

    .line 662
    .line 663
    const-string v0, "MVIN"

    .line 664
    .line 665
    const/4 v3, 0x1

    .line 666
    const/4 v8, 0x0

    .line 667
    invoke-static {v10, v0, v1, v3, v8}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 668
    .line 669
    .line 670
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 672
    .line 673
    .line 674
    move-object v8, v0

    .line 675
    goto :goto_f

    .line 676
    :cond_29
    :goto_c
    :try_start_4
    invoke-static {v10}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-static {v9, v0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 688
    .line 689
    .line 690
    const/4 v8, 0x0

    .line 691
    goto :goto_f

    .line 692
    :cond_2a
    :goto_d
    :try_start_5
    const-string v0, "TCOM"

    .line 693
    .line 694
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 695
    .line 696
    .line 697
    move-result-object v8

    .line 698
    goto/16 :goto_a

    .line 699
    .line 700
    :cond_2b
    :goto_e
    const-string v0, "TIT2"

    .line 701
    .line 702
    invoke-static {v10, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 703
    .line 704
    .line 705
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 706
    goto/16 :goto_a

    .line 707
    .line 708
    :goto_f
    if-eqz v8, :cond_2c

    .line 709
    .line 710
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    :cond_2c
    const/16 v0, 0x8

    .line 714
    .line 715
    const/4 v3, 0x0

    .line 716
    const/4 v11, 0x1

    .line 717
    const/4 v12, 0x0

    .line 718
    goto/16 :goto_2

    .line 719
    .line 720
    :goto_10
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 721
    .line 722
    .line 723
    throw v0

    .line 724
    :cond_2d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    if-eqz v0, :cond_2f

    .line 729
    .line 730
    :cond_2e
    const/4 v12, 0x0

    .line 731
    goto :goto_11

    .line 732
    :cond_2f
    new-instance v12, Landroidx/media3/common/Metadata;

    .line 733
    .line 734
    invoke-direct {v12, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 735
    .line 736
    .line 737
    goto :goto_11

    .line 738
    :cond_30
    const/4 v11, -0x1

    .line 739
    add-int/2addr v7, v13

    .line 740
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 741
    .line 742
    .line 743
    const/16 v0, 0x8

    .line 744
    .line 745
    const/4 v3, 0x0

    .line 746
    const/4 v11, 0x1

    .line 747
    const/4 v12, 0x0

    .line 748
    goto/16 :goto_1

    .line 749
    .line 750
    :goto_11
    invoke-virtual {v2, v12}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    move-object v2, v0

    .line 755
    const/16 v12, 0x8

    .line 756
    .line 757
    :goto_12
    const/16 v16, 0x0

    .line 758
    .line 759
    goto/16 :goto_20

    .line 760
    .line 761
    :cond_31
    const/4 v11, -0x1

    .line 762
    const v0, 0x736d7461

    .line 763
    .line 764
    .line 765
    const/4 v3, 0x2

    .line 766
    if-ne v6, v0, :cond_3f

    .line 767
    .line 768
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 769
    .line 770
    .line 771
    add-int v0, v4, v5

    .line 772
    .line 773
    const/16 v6, 0xc

    .line 774
    .line 775
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 776
    .line 777
    .line 778
    :goto_13
    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 779
    .line 780
    if-ge v7, v0, :cond_3e

    .line 781
    .line 782
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 783
    .line 784
    .line 785
    move-result v8

    .line 786
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    const v10, 0x73617574

    .line 791
    .line 792
    .line 793
    if-ne v9, v10, :cond_3d

    .line 794
    .line 795
    const/16 v9, 0x10

    .line 796
    .line 797
    if-ge v8, v9, :cond_32

    .line 798
    .line 799
    const/4 v3, 0x0

    .line 800
    const/16 v12, 0x8

    .line 801
    .line 802
    goto/16 :goto_1a

    .line 803
    .line 804
    :cond_32
    const/4 v10, 0x4

    .line 805
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 806
    .line 807
    .line 808
    move v9, v11

    .line 809
    const/4 v7, 0x0

    .line 810
    const/4 v8, 0x0

    .line 811
    :goto_14
    if-ge v7, v3, :cond_35

    .line 812
    .line 813
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 814
    .line 815
    .line 816
    move-result v10

    .line 817
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 818
    .line 819
    .line 820
    move-result v11

    .line 821
    if-nez v10, :cond_33

    .line 822
    .line 823
    move v9, v11

    .line 824
    goto :goto_15

    .line 825
    :cond_33
    const/4 v12, 0x1

    .line 826
    if-ne v10, v12, :cond_34

    .line 827
    .line 828
    move v8, v11

    .line 829
    :cond_34
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 830
    .line 831
    goto :goto_14

    .line 832
    :cond_35
    const v3, -0x7fffffff

    .line 833
    .line 834
    .line 835
    if-ne v9, v6, :cond_36

    .line 836
    .line 837
    const/16 v0, 0xf0

    .line 838
    .line 839
    :goto_16
    const/16 v12, 0x8

    .line 840
    .line 841
    goto :goto_18

    .line 842
    :cond_36
    const/16 v7, 0xd

    .line 843
    .line 844
    if-ne v9, v7, :cond_37

    .line 845
    .line 846
    const/16 v0, 0x78

    .line 847
    .line 848
    goto :goto_16

    .line 849
    :cond_37
    const/16 v7, 0x15

    .line 850
    .line 851
    if-eq v9, v7, :cond_38

    .line 852
    .line 853
    move v0, v3

    .line 854
    goto :goto_16

    .line 855
    :cond_38
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 856
    .line 857
    .line 858
    move-result v7

    .line 859
    const/16 v12, 0x8

    .line 860
    .line 861
    if-lt v7, v12, :cond_3b

    .line 862
    .line 863
    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 864
    .line 865
    add-int/2addr v7, v12

    .line 866
    if-le v7, v0, :cond_39

    .line 867
    .line 868
    goto :goto_17

    .line 869
    :cond_39
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 874
    .line 875
    .line 876
    move-result v7

    .line 877
    if-lt v0, v6, :cond_3b

    .line 878
    .line 879
    const v0, 0x73726672

    .line 880
    .line 881
    .line 882
    if-eq v7, v0, :cond_3a

    .line 883
    .line 884
    goto :goto_17

    .line 885
    :cond_3a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    goto :goto_18

    .line 890
    :cond_3b
    :goto_17
    move v0, v3

    .line 891
    :goto_18
    if-ne v0, v3, :cond_3c

    .line 892
    .line 893
    :goto_19
    const/4 v3, 0x0

    .line 894
    goto :goto_1a

    .line 895
    :cond_3c
    new-instance v3, Landroidx/media3/common/Metadata;

    .line 896
    .line 897
    new-instance v6, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    .line 898
    .line 899
    int-to-float v0, v0

    .line 900
    invoke-direct {v6, v8, v0}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(IF)V

    .line 901
    .line 902
    .line 903
    const/4 v0, 0x1

    .line 904
    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 905
    .line 906
    const/16 v16, 0x0

    .line 907
    .line 908
    aput-object v6, v0, v16

    .line 909
    .line 910
    invoke-direct {v3, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 911
    .line 912
    .line 913
    goto :goto_1a

    .line 914
    :cond_3d
    const/16 v9, 0x10

    .line 915
    .line 916
    const/4 v10, 0x4

    .line 917
    const/16 v12, 0x8

    .line 918
    .line 919
    add-int/2addr v7, v8

    .line 920
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 921
    .line 922
    .line 923
    goto/16 :goto_13

    .line 924
    .line 925
    :cond_3e
    const/16 v12, 0x8

    .line 926
    .line 927
    goto :goto_19

    .line 928
    :goto_1a
    invoke-virtual {v2, v3}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    move-object v2, v0

    .line 933
    goto/16 :goto_12

    .line 934
    .line 935
    :cond_3f
    const/16 v12, 0x8

    .line 936
    .line 937
    const v0, -0x56878686

    .line 938
    .line 939
    .line 940
    if-ne v6, v0, :cond_40

    .line 941
    .line 942
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 943
    .line 944
    .line 945
    move-result v0

    .line 946
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 947
    .line 948
    .line 949
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 950
    .line 951
    invoke-virtual {v1, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    const/16 v3, 0x2b

    .line 956
    .line 957
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 958
    .line 959
    .line 960
    move-result v3

    .line 961
    const/16 v6, 0x2d

    .line 962
    .line 963
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 964
    .line 965
    .line 966
    move-result v6

    .line 967
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 968
    .line 969
    .line 970
    move-result v3

    .line 971
    const/4 v8, 0x0

    .line 972
    :try_start_6
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v6
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    .line 976
    :try_start_7
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 977
    .line 978
    .line 979
    move-result v6

    .line 980
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 981
    .line 982
    .line 983
    move-result v7

    .line 984
    const/4 v8, 0x1

    .line 985
    sub-int/2addr v7, v8

    .line 986
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    new-instance v3, Landroidx/media3/common/Metadata;

    .line 995
    .line 996
    new-instance v7, Landroidx/media3/container/Mp4LocationData;

    .line 997
    .line 998
    invoke-direct {v7, v6, v0}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    .line 999
    .line 1000
    .line 1001
    new-array v0, v8, [Landroidx/media3/common/Metadata$Entry;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1002
    .line 1003
    const/16 v16, 0x0

    .line 1004
    .line 1005
    :try_start_8
    aput-object v7, v0, v16

    .line 1006
    .line 1007
    invoke-direct {v3, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1008
    .line 1009
    .line 1010
    goto :goto_1c

    .line 1011
    :catch_0
    const/16 v16, 0x0

    .line 1012
    .line 1013
    goto :goto_1b

    .line 1014
    :catch_1
    move/from16 v16, v8

    .line 1015
    .line 1016
    :catch_2
    :goto_1b
    const/4 v3, 0x0

    .line 1017
    :goto_1c
    invoke-virtual {v2, v3}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    :goto_1d
    move-object v2, v0

    .line 1022
    goto :goto_20

    .line 1023
    :cond_40
    const/16 v16, 0x0

    .line 1024
    .line 1025
    const v0, 0x6368706c

    .line 1026
    .line 1027
    .line 1028
    if-ne v6, v0, :cond_44

    .line 1029
    .line 1030
    const/4 v0, 0x5

    .line 1031
    :try_start_9
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1035
    .line 1036
    .line 1037
    move-result v0

    .line 1038
    new-instance v3, Ljava/util/ArrayList;

    .line 1039
    .line 1040
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .line 1042
    .line 1043
    move/from16 v6, v16

    .line 1044
    .line 1045
    :goto_1e
    if-ge v6, v0, :cond_42

    .line 1046
    .line 1047
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v7

    .line 1051
    const-wide/16 v9, 0x2710

    .line 1052
    .line 1053
    div-long/2addr v7, v9

    .line 1054
    const-wide/16 v9, 0x0

    .line 1055
    .line 1056
    cmp-long v9, v7, v9

    .line 1057
    .line 1058
    if-gez v9, :cond_41

    .line 1059
    .line 1060
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    :cond_41
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1066
    .line 1067
    .line 1068
    move-result v9

    .line 1069
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1070
    .line 1071
    invoke-virtual {v1, v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v9

    .line 1075
    new-instance v10, Landroidx/media3/extractor/metadata/Chapter$Builder;

    .line 1076
    .line 1077
    invoke-direct {v10}, Landroidx/media3/extractor/metadata/Chapter$Builder;-><init>()V

    .line 1078
    .line 1079
    .line 1080
    iput-wide v7, v10, Landroidx/media3/extractor/metadata/Chapter$Builder;->a:J

    .line 1081
    .line 1082
    new-instance v7, Landroidx/media3/common/Label;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1083
    .line 1084
    const/4 v8, 0x0

    .line 1085
    :try_start_a
    invoke-direct {v7, v8, v9}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    iput-object v7, v10, Landroidx/media3/extractor/metadata/Chapter$Builder;->d:Landroidx/media3/common/Label;

    .line 1089
    .line 1090
    invoke-virtual {v10}, Landroidx/media3/extractor/metadata/Chapter$Builder;->a()Landroidx/media3/extractor/metadata/Chapter;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v7

    .line 1094
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    .line 1096
    .line 1097
    add-int/lit8 v6, v6, 0x1

    .line 1098
    .line 1099
    goto :goto_1e

    .line 1100
    :catch_3
    const/4 v8, 0x0

    .line 1101
    goto :goto_1f

    .line 1102
    :cond_42
    const/4 v8, 0x0

    .line 1103
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v0

    .line 1107
    if-eqz v0, :cond_43

    .line 1108
    .line 1109
    goto :goto_1f

    .line 1110
    :cond_43
    new-instance v0, Landroidx/media3/common/Metadata;

    .line 1111
    .line 1112
    invoke-direct {v0, v3}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_4

    .line 1113
    .line 1114
    .line 1115
    move-object v8, v0

    .line 1116
    :catch_4
    :goto_1f
    invoke-virtual {v2, v8}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    goto :goto_1d

    .line 1121
    :cond_44
    :goto_20
    add-int/2addr v4, v5

    .line 1122
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1123
    .line 1124
    .line 1125
    move v0, v12

    .line 1126
    move/from16 v3, v16

    .line 1127
    .line 1128
    goto/16 :goto_0

    .line 1129
    .line 1130
    :cond_45
    return-object v2
.end method

.method public static k(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/BoxParser$TkhdData;Ljava/lang/String;Landroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    move-object/from16 v5, p7

    .line 10
    .line 11
    add-int/lit8 v6, v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 14
    .line 15
    .line 16
    const/16 v6, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/16 v9, 0x32

    .line 30
    .line 31
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 32
    .line 33
    .line 34
    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 35
    .line 36
    const v10, 0x656e6376

    .line 37
    .line 38
    .line 39
    move/from16 v12, p1

    .line 40
    .line 41
    if-ne v12, v10, :cond_2

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->g(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    if-eqz v10, :cond_1

    .line 48
    .line 49
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v12, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-nez v4, :cond_0

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 64
    .line 65
    iget-object v13, v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v4, v13}, Landroidx/media3/common/DrmInitData;->a(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :goto_0
    iget-object v13, v5, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 72
    .line 73
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v10, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 76
    .line 77
    aput-object v10, v13, p8

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const v10, 0x6d317620

    .line 83
    .line 84
    .line 85
    const-string v13, "video/3gpp"

    .line 86
    .line 87
    if-ne v12, v10, :cond_3

    .line 88
    .line 89
    const-string v10, "video/mpeg"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const v10, 0x48323633

    .line 93
    .line 94
    .line 95
    if-ne v12, v10, :cond_4

    .line 96
    .line 97
    move-object v10, v13

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v10, 0x0

    .line 100
    :goto_1
    const/high16 v16, 0x3f800000    # 1.0f

    .line 101
    .line 102
    move/from16 v17, v16

    .line 103
    .line 104
    const/16 p1, 0x8

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    const/16 v19, 0x0

    .line 112
    .line 113
    const/16 v20, -0x1

    .line 114
    .line 115
    const/16 v21, -0x1

    .line 116
    .line 117
    const/16 v22, -0x1

    .line 118
    .line 119
    const/16 v23, -0x1

    .line 120
    .line 121
    const/16 v24, -0x1

    .line 122
    .line 123
    const/16 v25, -0x1

    .line 124
    .line 125
    const/16 v26, -0x1

    .line 126
    .line 127
    const/16 v27, -0x1

    .line 128
    .line 129
    const/16 v28, 0x0

    .line 130
    .line 131
    const/16 v29, 0x8

    .line 132
    .line 133
    const/16 v30, 0x8

    .line 134
    .line 135
    const/16 v31, 0x0

    .line 136
    .line 137
    const/16 v32, 0x0

    .line 138
    .line 139
    const/16 v33, 0x0

    .line 140
    .line 141
    const/16 v34, 0x0

    .line 142
    .line 143
    :goto_2
    sub-int v14, v9, v1

    .line 144
    .line 145
    if-ge v14, v2, :cond_63

    .line 146
    .line 147
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 148
    .line 149
    .line 150
    iget v14, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-nez v15, :cond_5

    .line 157
    .line 158
    iget v11, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 159
    .line 160
    sub-int/2addr v11, v1

    .line 161
    if-ne v11, v2, :cond_5

    .line 162
    .line 163
    move/from16 v45, v7

    .line 164
    .line 165
    move/from16 v44, v8

    .line 166
    .line 167
    move-object/from16 v42, v10

    .line 168
    .line 169
    move-object/from16 v11, v18

    .line 170
    .line 171
    move/from16 v3, v20

    .line 172
    .line 173
    move/from16 v9, v25

    .line 174
    .line 175
    move/from16 v38, v26

    .line 176
    .line 177
    move/from16 v14, v27

    .line 178
    .line 179
    move/from16 v40, v29

    .line 180
    .line 181
    move/from16 v41, v30

    .line 182
    .line 183
    move-object/from16 v26, v4

    .line 184
    .line 185
    goto/16 :goto_4a

    .line 186
    .line 187
    :cond_5
    if-lez v15, :cond_6

    .line 188
    .line 189
    const/4 v11, 0x1

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    const/4 v11, 0x0

    .line 192
    :goto_3
    const-string v1, "childAtomSize must be positive"

    .line 193
    .line 194
    invoke-static {v1, v11}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    const v2, 0x61766343

    .line 202
    .line 203
    .line 204
    if-ne v11, v2, :cond_9

    .line 205
    .line 206
    if-nez v10, :cond_7

    .line 207
    .line 208
    const/4 v1, 0x1

    .line 209
    :goto_4
    const/4 v2, 0x0

    .line 210
    goto :goto_5

    .line 211
    :cond_7
    const/4 v1, 0x0

    .line 212
    goto :goto_4

    .line 213
    :goto_5
    invoke-static {v2, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v14, v14, 0x8

    .line 217
    .line 218
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iget-object v6, v1, Landroidx/media3/extractor/AvcConfig;->a:Ljava/util/ArrayList;

    .line 226
    .line 227
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->b:I

    .line 228
    .line 229
    iput v2, v5, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    .line 230
    .line 231
    if-nez v34, :cond_8

    .line 232
    .line 233
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->k:F

    .line 234
    .line 235
    move/from16 v17, v2

    .line 236
    .line 237
    :cond_8
    iget-object v2, v1, Landroidx/media3/extractor/AvcConfig;->l:Ljava/lang/String;

    .line 238
    .line 239
    iget v10, v1, Landroidx/media3/extractor/AvcConfig;->j:I

    .line 240
    .line 241
    iget v11, v1, Landroidx/media3/extractor/AvcConfig;->g:I

    .line 242
    .line 243
    iget v14, v1, Landroidx/media3/extractor/AvcConfig;->h:I

    .line 244
    .line 245
    move-object/from16 v16, v2

    .line 246
    .line 247
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->i:I

    .line 248
    .line 249
    move/from16 v21, v2

    .line 250
    .line 251
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->e:I

    .line 252
    .line 253
    iget v1, v1, Landroidx/media3/extractor/AvcConfig;->f:I

    .line 254
    .line 255
    const-string v25, "video/avc"

    .line 256
    .line 257
    move/from16 v30, v1

    .line 258
    .line 259
    move/from16 v29, v2

    .line 260
    .line 261
    move-object/from16 v26, v4

    .line 262
    .line 263
    move/from16 v45, v7

    .line 264
    .line 265
    move/from16 v44, v8

    .line 266
    .line 267
    move/from16 v36, v9

    .line 268
    .line 269
    move/from16 v46, v12

    .line 270
    .line 271
    move-object/from16 v37, v13

    .line 272
    .line 273
    move/from16 v38, v14

    .line 274
    .line 275
    move/from16 v27, v21

    .line 276
    .line 277
    move-object/from16 v42, v25

    .line 278
    .line 279
    const/4 v1, -0x1

    .line 280
    move/from16 v8, p1

    .line 281
    .line 282
    move/from16 v21, v10

    .line 283
    .line 284
    move/from16 v25, v11

    .line 285
    .line 286
    :goto_6
    const/4 v10, 0x0

    .line 287
    goto/16 :goto_49

    .line 288
    .line 289
    :cond_9
    const v2, 0x68766343

    .line 290
    .line 291
    .line 292
    move/from16 v36, v9

    .line 293
    .line 294
    const-string v9, "video/hevc"

    .line 295
    .line 296
    if-ne v11, v2, :cond_d

    .line 297
    .line 298
    if-nez v10, :cond_a

    .line 299
    .line 300
    const/4 v1, 0x1

    .line 301
    :goto_7
    const/4 v2, 0x0

    .line 302
    goto :goto_8

    .line 303
    :cond_a
    const/4 v1, 0x0

    .line 304
    goto :goto_7

    .line 305
    :goto_8
    invoke-static {v2, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 306
    .line 307
    .line 308
    add-int/lit8 v14, v14, 0x8

    .line 309
    .line 310
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 311
    .line 312
    .line 313
    const/4 v1, 0x0

    .line 314
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    iget-object v1, v6, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    .line 319
    .line 320
    iget v2, v6, Landroidx/media3/extractor/HevcConfig;->b:I

    .line 321
    .line 322
    iput v2, v5, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    .line 323
    .line 324
    if-nez v34, :cond_b

    .line 325
    .line 326
    iget v2, v6, Landroidx/media3/extractor/HevcConfig;->l:F

    .line 327
    .line 328
    move/from16 v17, v2

    .line 329
    .line 330
    :cond_b
    iget v2, v6, Landroidx/media3/extractor/HevcConfig;->m:I

    .line 331
    .line 332
    iget v10, v6, Landroidx/media3/extractor/HevcConfig;->c:I

    .line 333
    .line 334
    iget-object v11, v6, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    .line 335
    .line 336
    iget v14, v6, Landroidx/media3/extractor/HevcConfig;->k:I

    .line 337
    .line 338
    move-object/from16 v16, v1

    .line 339
    .line 340
    const/4 v1, -0x1

    .line 341
    if-eq v14, v1, :cond_c

    .line 342
    .line 343
    move/from16 v20, v14

    .line 344
    .line 345
    :cond_c
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->d:I

    .line 346
    .line 347
    iget v14, v6, Landroidx/media3/extractor/HevcConfig;->e:I

    .line 348
    .line 349
    move/from16 v21, v1

    .line 350
    .line 351
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->h:I

    .line 352
    .line 353
    move/from16 v22, v1

    .line 354
    .line 355
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->i:I

    .line 356
    .line 357
    move/from16 v23, v1

    .line 358
    .line 359
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->j:I

    .line 360
    .line 361
    move/from16 v24, v1

    .line 362
    .line 363
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->f:I

    .line 364
    .line 365
    move/from16 v25, v1

    .line 366
    .line 367
    iget v1, v6, Landroidx/media3/extractor/HevcConfig;->g:I

    .line 368
    .line 369
    iget-object v6, v6, Landroidx/media3/extractor/HevcConfig;->o:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 370
    .line 371
    move/from16 v30, v1

    .line 372
    .line 373
    move-object/from16 v26, v4

    .line 374
    .line 375
    move-object/from16 v33, v6

    .line 376
    .line 377
    move/from16 v45, v7

    .line 378
    .line 379
    move/from16 v44, v8

    .line 380
    .line 381
    move-object/from16 v42, v9

    .line 382
    .line 383
    move/from16 v46, v12

    .line 384
    .line 385
    move-object/from16 v37, v13

    .line 386
    .line 387
    move-object/from16 v6, v16

    .line 388
    .line 389
    move/from16 v38, v23

    .line 390
    .line 391
    move/from16 v27, v24

    .line 392
    .line 393
    move/from16 v29, v25

    .line 394
    .line 395
    const/4 v1, -0x1

    .line 396
    move/from16 v8, p1

    .line 397
    .line 398
    move-object/from16 v16, v11

    .line 399
    .line 400
    move/from16 v24, v14

    .line 401
    .line 402
    move/from16 v23, v21

    .line 403
    .line 404
    move/from16 v25, v22

    .line 405
    .line 406
    move/from16 v21, v2

    .line 407
    .line 408
    move/from16 v22, v10

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_d
    const v2, 0x6c687643

    .line 412
    .line 413
    .line 414
    move-object/from16 v37, v13

    .line 415
    .line 416
    const/4 v13, 0x2

    .line 417
    if-ne v11, v2, :cond_19

    .line 418
    .line 419
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    const-string v2, "lhvC must follow hvcC atom"

    .line 424
    .line 425
    invoke-static {v2, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v2, v33

    .line 429
    .line 430
    if-eqz v2, :cond_e

    .line 431
    .line 432
    iget-object v1, v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;->a:Lcom/google/common/collect/ImmutableList;

    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-lt v1, v13, :cond_e

    .line 439
    .line 440
    const/4 v1, 0x1

    .line 441
    goto :goto_9

    .line 442
    :cond_e
    const/4 v1, 0x0

    .line 443
    :goto_9
    const-string v9, "must have at least two layers"

    .line 444
    .line 445
    invoke-static {v9, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 446
    .line 447
    .line 448
    add-int/lit8 v14, v14, 0x8

    .line 449
    .line 450
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    const/4 v1, 0x1

    .line 457
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    iget v1, v5, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    .line 462
    .line 463
    iget v10, v9, Landroidx/media3/extractor/HevcConfig;->b:I

    .line 464
    .line 465
    if-ne v1, v10, :cond_f

    .line 466
    .line 467
    const/4 v1, 0x1

    .line 468
    goto :goto_a

    .line 469
    :cond_f
    const/4 v1, 0x0

    .line 470
    :goto_a
    const-string v10, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 471
    .line 472
    invoke-static {v10, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 473
    .line 474
    .line 475
    iget v1, v9, Landroidx/media3/extractor/HevcConfig;->h:I

    .line 476
    .line 477
    const/4 v10, -0x1

    .line 478
    move/from16 v11, v25

    .line 479
    .line 480
    if-eq v1, v10, :cond_11

    .line 481
    .line 482
    if-ne v11, v1, :cond_10

    .line 483
    .line 484
    const/4 v1, 0x1

    .line 485
    goto :goto_b

    .line 486
    :cond_10
    const/4 v1, 0x0

    .line 487
    :goto_b
    const-string v13, "colorSpace must be the same for both views"

    .line 488
    .line 489
    invoke-static {v13, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 490
    .line 491
    .line 492
    :cond_11
    iget v1, v9, Landroidx/media3/extractor/HevcConfig;->i:I

    .line 493
    .line 494
    move/from16 v13, v26

    .line 495
    .line 496
    if-eq v1, v10, :cond_13

    .line 497
    .line 498
    if-ne v13, v1, :cond_12

    .line 499
    .line 500
    const/4 v1, 0x1

    .line 501
    goto :goto_c

    .line 502
    :cond_12
    const/4 v1, 0x0

    .line 503
    :goto_c
    const-string v14, "colorRange must be the same for both views"

    .line 504
    .line 505
    invoke-static {v14, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 506
    .line 507
    .line 508
    :cond_13
    iget v1, v9, Landroidx/media3/extractor/HevcConfig;->j:I

    .line 509
    .line 510
    if-eq v1, v10, :cond_15

    .line 511
    .line 512
    move/from16 v10, v27

    .line 513
    .line 514
    if-ne v10, v1, :cond_14

    .line 515
    .line 516
    const/4 v1, 0x1

    .line 517
    goto :goto_d

    .line 518
    :cond_14
    const/4 v1, 0x0

    .line 519
    :goto_d
    const-string v14, "colorTransfer must be the same for both views"

    .line 520
    .line 521
    invoke-static {v14, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 522
    .line 523
    .line 524
    goto :goto_e

    .line 525
    :cond_15
    move/from16 v10, v27

    .line 526
    .line 527
    :goto_e
    iget v1, v9, Landroidx/media3/extractor/HevcConfig;->f:I

    .line 528
    .line 529
    move/from16 v14, v29

    .line 530
    .line 531
    if-ne v14, v1, :cond_16

    .line 532
    .line 533
    const/4 v1, 0x1

    .line 534
    :goto_f
    move/from16 v16, v10

    .line 535
    .line 536
    goto :goto_10

    .line 537
    :cond_16
    const/4 v1, 0x0

    .line 538
    goto :goto_f

    .line 539
    :goto_10
    const-string v10, "bitdepthLuma must be the same for both views"

    .line 540
    .line 541
    invoke-static {v10, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 542
    .line 543
    .line 544
    iget v1, v9, Landroidx/media3/extractor/HevcConfig;->g:I

    .line 545
    .line 546
    move/from16 v10, v30

    .line 547
    .line 548
    if-ne v10, v1, :cond_17

    .line 549
    .line 550
    const/4 v1, 0x1

    .line 551
    :goto_11
    move/from16 v25, v10

    .line 552
    .line 553
    goto :goto_12

    .line 554
    :cond_17
    const/4 v1, 0x0

    .line 555
    goto :goto_11

    .line 556
    :goto_12
    const-string v10, "bitdepthChroma must be the same for both views"

    .line 557
    .line 558
    invoke-static {v10, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 559
    .line 560
    .line 561
    if-eqz v6, :cond_18

    .line 562
    .line 563
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->f(Ljava/util/List;)V

    .line 568
    .line 569
    .line 570
    iget-object v6, v9, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    .line 571
    .line 572
    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->f(Ljava/util/List;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    goto :goto_13

    .line 580
    :cond_18
    const-string v1, "initializationData must be already set from hvcC atom"

    .line 581
    .line 582
    const/4 v10, 0x0

    .line 583
    invoke-static {v1, v10}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 584
    .line 585
    .line 586
    :goto_13
    iget-object v1, v9, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    .line 587
    .line 588
    const-string v9, "video/mv-hevc"

    .line 589
    .line 590
    move-object/from16 v33, v2

    .line 591
    .line 592
    move-object/from16 v26, v4

    .line 593
    .line 594
    move/from16 v45, v7

    .line 595
    .line 596
    move/from16 v44, v8

    .line 597
    .line 598
    move-object/from16 v42, v9

    .line 599
    .line 600
    move/from16 v46, v12

    .line 601
    .line 602
    move/from16 v38, v13

    .line 603
    .line 604
    move/from16 v29, v14

    .line 605
    .line 606
    move/from16 v27, v16

    .line 607
    .line 608
    move/from16 v30, v25

    .line 609
    .line 610
    const/4 v10, 0x0

    .line 611
    move/from16 v8, p1

    .line 612
    .line 613
    move-object/from16 v16, v1

    .line 614
    .line 615
    move/from16 v25, v11

    .line 616
    .line 617
    const/4 v1, -0x1

    .line 618
    goto/16 :goto_49

    .line 619
    .line 620
    :cond_19
    move/from16 v9, v25

    .line 621
    .line 622
    move/from16 v38, v26

    .line 623
    .line 624
    move/from16 v39, v27

    .line 625
    .line 626
    move/from16 v40, v29

    .line 627
    .line 628
    move/from16 v41, v30

    .line 629
    .line 630
    move-object/from16 v2, v33

    .line 631
    .line 632
    const/16 v27, 0x5

    .line 633
    .line 634
    const/16 v29, 0x7

    .line 635
    .line 636
    const/16 v33, 0x3

    .line 637
    .line 638
    const v13, 0x76766343

    .line 639
    .line 640
    .line 641
    const/16 v43, 0x4

    .line 642
    .line 643
    if-ne v11, v13, :cond_27

    .line 644
    .line 645
    if-nez v10, :cond_1a

    .line 646
    .line 647
    const/4 v1, 0x1

    .line 648
    :goto_14
    const/4 v6, 0x0

    .line 649
    goto :goto_15

    .line 650
    :cond_1a
    const/4 v1, 0x0

    .line 651
    goto :goto_14

    .line 652
    :goto_15
    invoke-static {v6, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 653
    .line 654
    .line 655
    add-int/lit8 v14, v14, 0x8

    .line 656
    .line 657
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 658
    .line 659
    .line 660
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    if-nez v1, :cond_26

    .line 665
    .line 666
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 667
    .line 668
    .line 669
    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    shr-int/lit8 v6, v1, 0x1

    .line 671
    .line 672
    and-int/lit8 v6, v6, 0x3

    .line 673
    .line 674
    const/4 v10, 0x1

    .line 675
    and-int/2addr v1, v10

    .line 676
    if-eqz v1, :cond_1b

    .line 677
    .line 678
    move v1, v10

    .line 679
    goto :goto_16

    .line 680
    :cond_1b
    const/4 v1, 0x0

    .line 681
    :goto_16
    add-int/2addr v6, v10

    .line 682
    const-string v11, "L"

    .line 683
    .line 684
    if-eqz v1, :cond_1f

    .line 685
    .line 686
    :try_start_1
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    shr-int/lit8 v1, v1, 0x4

    .line 694
    .line 695
    and-int/lit8 v1, v1, 0x7

    .line 696
    .line 697
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 698
    .line 699
    .line 700
    move-result v10

    .line 701
    shr-int/lit8 v10, v10, 0x5

    .line 702
    .line 703
    and-int/lit8 v10, v10, 0x7

    .line 704
    .line 705
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 706
    .line 707
    .line 708
    move-result v13

    .line 709
    and-int/lit8 v13, v13, 0x3f

    .line 710
    .line 711
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 712
    .line 713
    .line 714
    move-result v14

    .line 715
    shr-int/lit8 v16, v14, 0x1

    .line 716
    .line 717
    and-int/lit8 v16, v16, 0x7f

    .line 718
    .line 719
    const/16 v35, 0x1

    .line 720
    .line 721
    and-int/lit8 v14, v14, 0x1

    .line 722
    .line 723
    if-eqz v14, :cond_1c

    .line 724
    .line 725
    const-string v11, "H"

    .line 726
    .line 727
    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 728
    .line 729
    .line 730
    move-result v14

    .line 731
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 732
    .line 733
    .line 734
    const/4 v13, 0x1

    .line 735
    if-le v1, v13, :cond_1e

    .line 736
    .line 737
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 738
    .line 739
    .line 740
    move-result v21

    .line 741
    move/from16 v35, v13

    .line 742
    .line 743
    const/4 v13, 0x0

    .line 744
    :goto_17
    move/from16 v25, v1

    .line 745
    .line 746
    add-int/lit8 v1, v25, -0x1

    .line 747
    .line 748
    if-ge v13, v1, :cond_1e

    .line 749
    .line 750
    rsub-int/lit8 v1, v13, 0x7

    .line 751
    .line 752
    shr-int v1, v21, v1

    .line 753
    .line 754
    and-int/lit8 v1, v1, 0x1

    .line 755
    .line 756
    if-eqz v1, :cond_1d

    .line 757
    .line 758
    move/from16 v1, v35

    .line 759
    .line 760
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 761
    .line 762
    .line 763
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    .line 764
    .line 765
    move/from16 v1, v25

    .line 766
    .line 767
    const/16 v35, 0x1

    .line 768
    .line 769
    goto :goto_17

    .line 770
    :cond_1e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    mul-int/lit8 v1, v1, 0x4

    .line 775
    .line 776
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 777
    .line 778
    .line 779
    const/4 v1, 0x6

    .line 780
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 781
    .line 782
    .line 783
    move/from16 v1, v16

    .line 784
    .line 785
    goto :goto_18

    .line 786
    :cond_1f
    const/4 v1, 0x0

    .line 787
    const/4 v10, 0x0

    .line 788
    const/4 v14, 0x0

    .line 789
    :goto_18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 790
    .line 791
    .line 792
    move-result v13

    .line 793
    move/from16 v16, v10

    .line 794
    .line 795
    iget v10, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 796
    .line 797
    move-object/from16 v26, v4

    .line 798
    .line 799
    move/from16 v45, v7

    .line 800
    .line 801
    move/from16 v44, v8

    .line 802
    .line 803
    const/4 v4, 0x0

    .line 804
    const/4 v8, 0x0

    .line 805
    :goto_19
    const/16 v7, 0xd

    .line 806
    .line 807
    if-ge v4, v13, :cond_22

    .line 808
    .line 809
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 810
    .line 811
    .line 812
    move-result v21

    .line 813
    move/from16 v25, v4

    .line 814
    .line 815
    and-int/lit8 v4, v21, 0x1f

    .line 816
    .line 817
    if-eq v4, v7, :cond_20

    .line 818
    .line 819
    const/16 v7, 0xc

    .line 820
    .line 821
    if-eq v4, v7, :cond_20

    .line 822
    .line 823
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 824
    .line 825
    .line 826
    move-result v4

    .line 827
    goto :goto_1a

    .line 828
    :cond_20
    const/4 v4, 0x1

    .line 829
    :goto_1a
    const/4 v7, 0x0

    .line 830
    :goto_1b
    if-ge v7, v4, :cond_21

    .line 831
    .line 832
    move/from16 v21, v4

    .line 833
    .line 834
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 835
    .line 836
    .line 837
    move-result v4

    .line 838
    add-int/lit8 v27, v4, 0x4

    .line 839
    .line 840
    add-int v8, v27, v8

    .line 841
    .line 842
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 843
    .line 844
    .line 845
    add-int/lit8 v7, v7, 0x1

    .line 846
    .line 847
    move/from16 v4, v21

    .line 848
    .line 849
    goto :goto_1b

    .line 850
    :cond_21
    add-int/lit8 v4, v25, 0x1

    .line 851
    .line 852
    goto :goto_19

    .line 853
    :cond_22
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 854
    .line 855
    .line 856
    new-array v4, v8, [B

    .line 857
    .line 858
    const/4 v8, 0x0

    .line 859
    const/4 v10, 0x0

    .line 860
    :goto_1c
    if-ge v8, v13, :cond_25

    .line 861
    .line 862
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 863
    .line 864
    .line 865
    move-result v21

    .line 866
    move/from16 v25, v8

    .line 867
    .line 868
    and-int/lit8 v8, v21, 0x1f

    .line 869
    .line 870
    if-eq v8, v7, :cond_23

    .line 871
    .line 872
    const/16 v7, 0xc

    .line 873
    .line 874
    if-eq v8, v7, :cond_23

    .line 875
    .line 876
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 877
    .line 878
    .line 879
    move-result v7

    .line 880
    goto :goto_1d

    .line 881
    :cond_23
    const/4 v7, 0x1

    .line 882
    :goto_1d
    const/4 v8, 0x0

    .line 883
    :goto_1e
    if-ge v8, v7, :cond_24

    .line 884
    .line 885
    move/from16 v27, v7

    .line 886
    .line 887
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 888
    .line 889
    .line 890
    move-result v7

    .line 891
    move/from16 v29, v8

    .line 892
    .line 893
    sget-object v8, Landroidx/media3/container/NalUnitUtil;->a:[B

    .line 894
    .line 895
    move/from16 v30, v13

    .line 896
    .line 897
    move/from16 v13, v43

    .line 898
    .line 899
    const/4 v3, 0x0

    .line 900
    invoke-static {v8, v3, v4, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    .line 902
    .line 903
    add-int/lit8 v10, v10, 0x4

    .line 904
    .line 905
    invoke-virtual {v0, v4, v10, v7}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 906
    .line 907
    .line 908
    add-int/2addr v10, v7

    .line 909
    add-int/lit8 v8, v29, 0x1

    .line 910
    .line 911
    move/from16 v7, v27

    .line 912
    .line 913
    move/from16 v13, v30

    .line 914
    .line 915
    const/16 v43, 0x4

    .line 916
    .line 917
    goto :goto_1e

    .line 918
    :cond_24
    move/from16 v30, v13

    .line 919
    .line 920
    add-int/lit8 v8, v25, 0x1

    .line 921
    .line 922
    const/16 v7, 0xd

    .line 923
    .line 924
    const/16 v43, 0x4

    .line 925
    .line 926
    goto :goto_1c

    .line 927
    :cond_25
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 928
    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    .line 930
    .line 931
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .line 933
    .line 934
    const-string v7, "vvc1."

    .line 935
    .line 936
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    const-string v1, "."

    .line 943
    .line 944
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 958
    .line 959
    .line 960
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 961
    add-int/lit8 v29, v16, 0x8

    .line 962
    .line 963
    iput v6, v5, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    .line 964
    .line 965
    const-string v4, "video/vvc"

    .line 966
    .line 967
    move/from16 v8, p1

    .line 968
    .line 969
    move-object/from16 v16, v1

    .line 970
    .line 971
    move-object/from16 v33, v2

    .line 972
    .line 973
    move-object v6, v3

    .line 974
    move-object/from16 v42, v4

    .line 975
    .line 976
    move/from16 v25, v9

    .line 977
    .line 978
    move/from16 v46, v12

    .line 979
    .line 980
    move/from16 v30, v29

    .line 981
    .line 982
    move/from16 v27, v39

    .line 983
    .line 984
    const/4 v1, -0x1

    .line 985
    const/4 v10, 0x0

    .line 986
    const/16 v21, 0x10

    .line 987
    .line 988
    goto/16 :goto_49

    .line 989
    .line 990
    :cond_26
    :try_start_2
    const-string v0, "Unsupported VVC version"

    .line 991
    .line 992
    const/4 v2, 0x0

    .line 993
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 998
    :catch_0
    move-exception v0

    .line 999
    const-string v1, "Error parsing VVC configuration"

    .line 1000
    .line 1001
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    throw v0

    .line 1006
    :cond_27
    move-object/from16 v26, v4

    .line 1007
    .line 1008
    move/from16 v45, v7

    .line 1009
    .line 1010
    move/from16 v44, v8

    .line 1011
    .line 1012
    const v3, 0x76657875

    .line 1013
    .line 1014
    .line 1015
    if-ne v11, v3, :cond_37

    .line 1016
    .line 1017
    add-int/lit8 v3, v14, 0x8

    .line 1018
    .line 1019
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1020
    .line 1021
    .line 1022
    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 1023
    .line 1024
    const/4 v4, 0x0

    .line 1025
    :goto_1f
    sub-int v7, v3, v14

    .line 1026
    .line 1027
    if-ge v7, v15, :cond_30

    .line 1028
    .line 1029
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1033
    .line 1034
    .line 1035
    move-result v7

    .line 1036
    if-lez v7, :cond_28

    .line 1037
    .line 1038
    const/4 v8, 0x1

    .line 1039
    goto :goto_20

    .line 1040
    :cond_28
    const/4 v8, 0x0

    .line 1041
    :goto_20
    invoke-static {v1, v8}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1045
    .line 1046
    .line 1047
    move-result v8

    .line 1048
    const v11, 0x65796573

    .line 1049
    .line 1050
    .line 1051
    if-ne v8, v11, :cond_2f

    .line 1052
    .line 1053
    add-int/lit8 v4, v3, 0x8

    .line 1054
    .line 1055
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1056
    .line 1057
    .line 1058
    iget v4, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 1059
    .line 1060
    :goto_21
    sub-int v8, v4, v3

    .line 1061
    .line 1062
    if-ge v8, v7, :cond_2e

    .line 1063
    .line 1064
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1068
    .line 1069
    .line 1070
    move-result v8

    .line 1071
    if-lez v8, :cond_29

    .line 1072
    .line 1073
    const/4 v11, 0x1

    .line 1074
    goto :goto_22

    .line 1075
    :cond_29
    const/4 v11, 0x0

    .line 1076
    :goto_22
    invoke-static {v1, v11}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1080
    .line 1081
    .line 1082
    move-result v11

    .line 1083
    const v13, 0x73747269

    .line 1084
    .line 1085
    .line 1086
    if-ne v11, v13, :cond_2d

    .line 1087
    .line 1088
    const/4 v13, 0x4

    .line 1089
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1093
    .line 1094
    .line 1095
    move-result v4

    .line 1096
    new-instance v8, Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 1097
    .line 1098
    new-instance v11, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 1099
    .line 1100
    and-int/lit8 v13, v4, 0x1

    .line 1101
    .line 1102
    move-object/from16 v46, v1

    .line 1103
    .line 1104
    const/4 v1, 0x1

    .line 1105
    if-ne v13, v1, :cond_2a

    .line 1106
    .line 1107
    const/4 v1, 0x1

    .line 1108
    goto :goto_23

    .line 1109
    :cond_2a
    const/4 v1, 0x0

    .line 1110
    :goto_23
    and-int/lit8 v13, v4, 0x2

    .line 1111
    .line 1112
    move/from16 v29, v3

    .line 1113
    .line 1114
    const/4 v3, 0x2

    .line 1115
    if-ne v13, v3, :cond_2b

    .line 1116
    .line 1117
    const/4 v3, 0x1

    .line 1118
    goto :goto_24

    .line 1119
    :cond_2b
    const/4 v3, 0x0

    .line 1120
    :goto_24
    and-int/lit8 v4, v4, 0x8

    .line 1121
    .line 1122
    move/from16 v13, p1

    .line 1123
    .line 1124
    if-ne v4, v13, :cond_2c

    .line 1125
    .line 1126
    const/4 v4, 0x1

    .line 1127
    goto :goto_25

    .line 1128
    :cond_2c
    const/4 v4, 0x0

    .line 1129
    :goto_25
    invoke-direct {v11, v1, v3, v4}, Landroidx/media3/extractor/mp4/BoxParser$StriData;-><init>(ZZZ)V

    .line 1130
    .line 1131
    .line 1132
    invoke-direct {v8, v11}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V

    .line 1133
    .line 1134
    .line 1135
    goto :goto_26

    .line 1136
    :cond_2d
    move-object/from16 v46, v1

    .line 1137
    .line 1138
    move/from16 v29, v3

    .line 1139
    .line 1140
    add-int/2addr v4, v8

    .line 1141
    const/16 p1, 0x8

    .line 1142
    .line 1143
    goto :goto_21

    .line 1144
    :cond_2e
    move-object/from16 v46, v1

    .line 1145
    .line 1146
    move/from16 v29, v3

    .line 1147
    .line 1148
    const/4 v8, 0x0

    .line 1149
    :goto_26
    move-object v4, v8

    .line 1150
    goto :goto_27

    .line 1151
    :cond_2f
    move-object/from16 v46, v1

    .line 1152
    .line 1153
    move/from16 v29, v3

    .line 1154
    .line 1155
    :goto_27
    add-int v3, v29, v7

    .line 1156
    .line 1157
    move-object/from16 v1, v46

    .line 1158
    .line 1159
    const/16 p1, 0x8

    .line 1160
    .line 1161
    goto/16 :goto_1f

    .line 1162
    .line 1163
    :cond_30
    if-nez v4, :cond_31

    .line 1164
    .line 1165
    const/4 v1, 0x0

    .line 1166
    goto :goto_28

    .line 1167
    :cond_31
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    .line 1168
    .line 1169
    invoke-direct {v1, v4}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)V

    .line 1170
    .line 1171
    .line 1172
    :goto_28
    if-eqz v1, :cond_33

    .line 1173
    .line 1174
    iget-object v1, v1, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->a:Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    .line 1175
    .line 1176
    iget-object v1, v1, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->a:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    .line 1177
    .line 1178
    if-eqz v2, :cond_34

    .line 1179
    .line 1180
    iget-object v3, v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;->a:Lcom/google/common/collect/ImmutableList;

    .line 1181
    .line 1182
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 1183
    .line 1184
    .line 1185
    move-result v3

    .line 1186
    const/4 v4, 0x2

    .line 1187
    if-lt v3, v4, :cond_34

    .line 1188
    .line 1189
    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->a:Z

    .line 1190
    .line 1191
    if-eqz v3, :cond_32

    .line 1192
    .line 1193
    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->b:Z

    .line 1194
    .line 1195
    if-eqz v3, :cond_32

    .line 1196
    .line 1197
    const/4 v3, 0x1

    .line 1198
    goto :goto_29

    .line 1199
    :cond_32
    const/4 v3, 0x0

    .line 1200
    :goto_29
    const-string v4, "both eye views must be marked as available"

    .line 1201
    .line 1202
    invoke-static {v4, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1203
    .line 1204
    .line 1205
    iget-boolean v1, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->c:Z

    .line 1206
    .line 1207
    const/16 v35, 0x1

    .line 1208
    .line 1209
    xor-int/lit8 v1, v1, 0x1

    .line 1210
    .line 1211
    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 1212
    .line 1213
    invoke-static {v3, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1214
    .line 1215
    .line 1216
    :cond_33
    move/from16 v3, v20

    .line 1217
    .line 1218
    goto :goto_2a

    .line 1219
    :cond_34
    move/from16 v3, v20

    .line 1220
    .line 1221
    const/4 v4, -0x1

    .line 1222
    if-ne v3, v4, :cond_36

    .line 1223
    .line 1224
    iget-boolean v1, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->c:Z

    .line 1225
    .line 1226
    if-eqz v1, :cond_35

    .line 1227
    .line 1228
    move/from16 v20, v27

    .line 1229
    .line 1230
    goto :goto_2b

    .line 1231
    :cond_35
    const/16 v20, 0x4

    .line 1232
    .line 1233
    goto :goto_2b

    .line 1234
    :cond_36
    :goto_2a
    move/from16 v20, v3

    .line 1235
    .line 1236
    :goto_2b
    move-object/from16 v33, v2

    .line 1237
    .line 1238
    :goto_2c
    move/from16 v25, v9

    .line 1239
    .line 1240
    move-object/from16 v42, v10

    .line 1241
    .line 1242
    move/from16 v46, v12

    .line 1243
    .line 1244
    move/from16 v27, v39

    .line 1245
    .line 1246
    move/from16 v29, v40

    .line 1247
    .line 1248
    move/from16 v30, v41

    .line 1249
    .line 1250
    :goto_2d
    const/4 v1, -0x1

    .line 1251
    const/16 v8, 0x8

    .line 1252
    .line 1253
    goto/16 :goto_6

    .line 1254
    .line 1255
    :cond_37
    move/from16 v3, v20

    .line 1256
    .line 1257
    const v1, 0x64766343

    .line 1258
    .line 1259
    .line 1260
    if-eq v11, v1, :cond_38

    .line 1261
    .line 1262
    const v1, 0x64767643

    .line 1263
    .line 1264
    .line 1265
    if-eq v11, v1, :cond_38

    .line 1266
    .line 1267
    const v1, 0x64767743

    .line 1268
    .line 1269
    .line 1270
    if-ne v11, v1, :cond_39

    .line 1271
    .line 1272
    :cond_38
    move-object/from16 v20, v2

    .line 1273
    .line 1274
    move-object/from16 v42, v10

    .line 1275
    .line 1276
    move/from16 v46, v12

    .line 1277
    .line 1278
    move/from16 v14, v39

    .line 1279
    .line 1280
    const/4 v1, -0x1

    .line 1281
    const/16 v8, 0x8

    .line 1282
    .line 1283
    const/4 v10, 0x0

    .line 1284
    goto/16 :goto_48

    .line 1285
    .line 1286
    :cond_39
    const v1, 0x76706343

    .line 1287
    .line 1288
    .line 1289
    const/16 v4, 0xb

    .line 1290
    .line 1291
    if-ne v11, v1, :cond_3f

    .line 1292
    .line 1293
    if-nez v10, :cond_3a

    .line 1294
    .line 1295
    const/4 v1, 0x1

    .line 1296
    :goto_2e
    const/4 v7, 0x0

    .line 1297
    goto :goto_2f

    .line 1298
    :cond_3a
    const/4 v1, 0x0

    .line 1299
    goto :goto_2e

    .line 1300
    :goto_2f
    invoke-static {v7, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1301
    .line 1302
    .line 1303
    const v1, 0x76703038

    .line 1304
    .line 1305
    .line 1306
    const-string v7, "video/x-vnd.on2.vp9"

    .line 1307
    .line 1308
    if-ne v12, v1, :cond_3b

    .line 1309
    .line 1310
    const-string v1, "video/x-vnd.on2.vp8"

    .line 1311
    .line 1312
    goto :goto_30

    .line 1313
    :cond_3b
    move-object v1, v7

    .line 1314
    :goto_30
    add-int/lit8 v14, v14, 0xc

    .line 1315
    .line 1316
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1320
    .line 1321
    .line 1322
    move-result v8

    .line 1323
    int-to-byte v8, v8

    .line 1324
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1325
    .line 1326
    .line 1327
    move-result v9

    .line 1328
    int-to-byte v9, v9

    .line 1329
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1330
    .line 1331
    .line 1332
    move-result v10

    .line 1333
    shr-int/lit8 v11, v10, 0x4

    .line 1334
    .line 1335
    shr-int/lit8 v13, v10, 0x1

    .line 1336
    .line 1337
    and-int/lit8 v13, v13, 0x7

    .line 1338
    .line 1339
    int-to-byte v13, v13

    .line 1340
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v7

    .line 1344
    if-eqz v7, :cond_3c

    .line 1345
    .line 1346
    int-to-byte v6, v11

    .line 1347
    sget-object v7, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 1348
    .line 1349
    const/16 v7, 0xc

    .line 1350
    .line 1351
    new-array v7, v7, [B

    .line 1352
    .line 1353
    const/4 v14, 0x0

    .line 1354
    const/16 v35, 0x1

    .line 1355
    .line 1356
    aput-byte v35, v7, v14

    .line 1357
    .line 1358
    aput-byte v35, v7, v35

    .line 1359
    .line 1360
    const/16 v25, 0x2

    .line 1361
    .line 1362
    aput-byte v8, v7, v25

    .line 1363
    .line 1364
    aput-byte v25, v7, v33

    .line 1365
    .line 1366
    const/16 v43, 0x4

    .line 1367
    .line 1368
    aput-byte v35, v7, v43

    .line 1369
    .line 1370
    aput-byte v9, v7, v27

    .line 1371
    .line 1372
    const/16 v30, 0x6

    .line 1373
    .line 1374
    aput-byte v33, v7, v30

    .line 1375
    .line 1376
    aput-byte v35, v7, v29

    .line 1377
    .line 1378
    const/16 v8, 0x8

    .line 1379
    .line 1380
    aput-byte v6, v7, v8

    .line 1381
    .line 1382
    const/16 v6, 0x9

    .line 1383
    .line 1384
    aput-byte v43, v7, v6

    .line 1385
    .line 1386
    const/16 v6, 0xa

    .line 1387
    .line 1388
    aput-byte v35, v7, v6

    .line 1389
    .line 1390
    aput-byte v13, v7, v4

    .line 1391
    .line 1392
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v6

    .line 1396
    :cond_3c
    and-int/lit8 v4, v10, 0x1

    .line 1397
    .line 1398
    if-eqz v4, :cond_3d

    .line 1399
    .line 1400
    const/4 v4, 0x1

    .line 1401
    goto :goto_31

    .line 1402
    :cond_3d
    const/4 v4, 0x0

    .line 1403
    :goto_31
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1404
    .line 1405
    .line 1406
    move-result v7

    .line 1407
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1408
    .line 1409
    .line 1410
    move-result v8

    .line 1411
    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->f(I)I

    .line 1412
    .line 1413
    .line 1414
    move-result v7

    .line 1415
    if-eqz v4, :cond_3e

    .line 1416
    .line 1417
    const/16 v25, 0x1

    .line 1418
    .line 1419
    goto :goto_32

    .line 1420
    :cond_3e
    const/16 v25, 0x2

    .line 1421
    .line 1422
    :goto_32
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->g(I)I

    .line 1423
    .line 1424
    .line 1425
    move-result v27

    .line 1426
    move-object/from16 v42, v1

    .line 1427
    .line 1428
    move-object/from16 v33, v2

    .line 1429
    .line 1430
    move/from16 v20, v3

    .line 1431
    .line 1432
    move/from16 v29, v11

    .line 1433
    .line 1434
    move/from16 v30, v29

    .line 1435
    .line 1436
    move/from16 v46, v12

    .line 1437
    .line 1438
    move/from16 v38, v25

    .line 1439
    .line 1440
    const/4 v1, -0x1

    .line 1441
    const/16 v8, 0x8

    .line 1442
    .line 1443
    const/4 v10, 0x0

    .line 1444
    move/from16 v25, v7

    .line 1445
    .line 1446
    goto/16 :goto_49

    .line 1447
    .line 1448
    :cond_3f
    const v1, 0x61763143

    .line 1449
    .line 1450
    .line 1451
    if-ne v11, v1, :cond_41

    .line 1452
    .line 1453
    add-int/lit8 v1, v15, -0x8

    .line 1454
    .line 1455
    new-array v4, v1, [B

    .line 1456
    .line 1457
    const/4 v10, 0x0

    .line 1458
    invoke-virtual {v0, v4, v10, v1}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1459
    .line 1460
    .line 1461
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v6

    .line 1465
    invoke-static {v4}, Landroidx/media3/extractor/Av1Config;->b([B)Landroidx/media3/extractor/Av1Config;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v1

    .line 1469
    if-eqz v1, :cond_40

    .line 1470
    .line 1471
    iget v4, v1, Landroidx/media3/extractor/Av1Config;->a:I

    .line 1472
    .line 1473
    iget v7, v1, Landroidx/media3/extractor/Av1Config;->b:I

    .line 1474
    .line 1475
    iget v8, v1, Landroidx/media3/extractor/Av1Config;->c:I

    .line 1476
    .line 1477
    iget v9, v1, Landroidx/media3/extractor/Av1Config;->d:I

    .line 1478
    .line 1479
    iget-object v1, v1, Landroidx/media3/extractor/Av1Config;->e:Ljava/lang/String;

    .line 1480
    .line 1481
    move-object/from16 v16, v1

    .line 1482
    .line 1483
    move/from16 v29, v4

    .line 1484
    .line 1485
    move/from16 v30, v29

    .line 1486
    .line 1487
    move/from16 v25, v7

    .line 1488
    .line 1489
    move/from16 v27, v9

    .line 1490
    .line 1491
    goto :goto_33

    .line 1492
    :cond_40
    move/from16 v25, v9

    .line 1493
    .line 1494
    move/from16 v8, v38

    .line 1495
    .line 1496
    move/from16 v27, v39

    .line 1497
    .line 1498
    move/from16 v29, v40

    .line 1499
    .line 1500
    move/from16 v30, v41

    .line 1501
    .line 1502
    :goto_33
    const-string v1, "video/av01"

    .line 1503
    .line 1504
    move-object/from16 v42, v1

    .line 1505
    .line 1506
    move-object/from16 v33, v2

    .line 1507
    .line 1508
    move/from16 v20, v3

    .line 1509
    .line 1510
    move/from16 v38, v8

    .line 1511
    .line 1512
    move/from16 v46, v12

    .line 1513
    .line 1514
    goto/16 :goto_2d

    .line 1515
    .line 1516
    :cond_41
    const v1, 0x636c6c69

    .line 1517
    .line 1518
    .line 1519
    const/16 v7, 0x19

    .line 1520
    .line 1521
    if-ne v11, v1, :cond_43

    .line 1522
    .line 1523
    if-nez v28, :cond_42

    .line 1524
    .line 1525
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v1

    .line 1529
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1530
    .line 1531
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v1

    .line 1535
    goto :goto_34

    .line 1536
    :cond_42
    move-object/from16 v1, v28

    .line 1537
    .line 1538
    :goto_34
    const/16 v4, 0x15

    .line 1539
    .line 1540
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1544
    .line 1545
    .line 1546
    move-result v4

    .line 1547
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1551
    .line 1552
    .line 1553
    move-result v4

    .line 1554
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1555
    .line 1556
    .line 1557
    move-object/from16 v28, v1

    .line 1558
    .line 1559
    move-object/from16 v33, v2

    .line 1560
    .line 1561
    move/from16 v20, v3

    .line 1562
    .line 1563
    goto/16 :goto_2c

    .line 1564
    .line 1565
    :cond_43
    const v1, 0x6d646376

    .line 1566
    .line 1567
    .line 1568
    if-ne v11, v1, :cond_45

    .line 1569
    .line 1570
    if-nez v28, :cond_44

    .line 1571
    .line 1572
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v1

    .line 1576
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1577
    .line 1578
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v1

    .line 1582
    goto :goto_35

    .line 1583
    :cond_44
    move-object/from16 v1, v28

    .line 1584
    .line 1585
    :goto_35
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1586
    .line 1587
    .line 1588
    move-result v4

    .line 1589
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1590
    .line 1591
    .line 1592
    move-result v7

    .line 1593
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1594
    .line 1595
    .line 1596
    move-result v8

    .line 1597
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1598
    .line 1599
    .line 1600
    move-result v11

    .line 1601
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1602
    .line 1603
    .line 1604
    move-result v13

    .line 1605
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1606
    .line 1607
    .line 1608
    move-result v14

    .line 1609
    move-object/from16 v20, v2

    .line 1610
    .line 1611
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1612
    .line 1613
    .line 1614
    move-result v2

    .line 1615
    move-object/from16 v42, v10

    .line 1616
    .line 1617
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->w()S

    .line 1618
    .line 1619
    .line 1620
    move-result v10

    .line 1621
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1622
    .line 1623
    .line 1624
    move-result-wide v27

    .line 1625
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v29

    .line 1629
    move/from16 v46, v12

    .line 1630
    .line 1631
    const/4 v12, 0x1

    .line 1632
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1633
    .line 1634
    .line 1635
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1636
    .line 1637
    .line 1638
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1657
    .line 1658
    .line 1659
    const-wide/16 v7, 0x2710

    .line 1660
    .line 1661
    div-long v10, v27, v7

    .line 1662
    .line 1663
    long-to-int v2, v10

    .line 1664
    int-to-short v2, v2

    .line 1665
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1666
    .line 1667
    .line 1668
    div-long v7, v29, v7

    .line 1669
    .line 1670
    long-to-int v2, v7

    .line 1671
    int-to-short v2, v2

    .line 1672
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1673
    .line 1674
    .line 1675
    move-object/from16 v28, v1

    .line 1676
    .line 1677
    :goto_36
    move/from16 v25, v9

    .line 1678
    .line 1679
    move-object/from16 v33, v20

    .line 1680
    .line 1681
    :goto_37
    move/from16 v27, v39

    .line 1682
    .line 1683
    move/from16 v29, v40

    .line 1684
    .line 1685
    move/from16 v30, v41

    .line 1686
    .line 1687
    const/4 v1, -0x1

    .line 1688
    const/16 v8, 0x8

    .line 1689
    .line 1690
    const/4 v10, 0x0

    .line 1691
    :goto_38
    move/from16 v20, v3

    .line 1692
    .line 1693
    goto/16 :goto_49

    .line 1694
    .line 1695
    :cond_45
    move-object/from16 v20, v2

    .line 1696
    .line 1697
    move-object/from16 v42, v10

    .line 1698
    .line 1699
    move/from16 v46, v12

    .line 1700
    .line 1701
    const v1, 0x64323633

    .line 1702
    .line 1703
    .line 1704
    if-ne v11, v1, :cond_47

    .line 1705
    .line 1706
    if-nez v42, :cond_46

    .line 1707
    .line 1708
    const/4 v11, 0x1

    .line 1709
    :goto_39
    const/4 v2, 0x0

    .line 1710
    goto :goto_3a

    .line 1711
    :cond_46
    const/4 v11, 0x0

    .line 1712
    goto :goto_39

    .line 1713
    :goto_3a
    invoke-static {v2, v11}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1714
    .line 1715
    .line 1716
    move/from16 v25, v9

    .line 1717
    .line 1718
    move-object/from16 v33, v20

    .line 1719
    .line 1720
    move-object/from16 v42, v37

    .line 1721
    .line 1722
    goto :goto_37

    .line 1723
    :cond_47
    const/4 v2, 0x0

    .line 1724
    const v1, 0x65736473

    .line 1725
    .line 1726
    .line 1727
    if-ne v11, v1, :cond_4a

    .line 1728
    .line 1729
    if-nez v42, :cond_48

    .line 1730
    .line 1731
    const/4 v11, 0x1

    .line 1732
    goto :goto_3b

    .line 1733
    :cond_48
    const/4 v11, 0x0

    .line 1734
    :goto_3b
    invoke-static {v2, v11}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    .line 1735
    .line 1736
    .line 1737
    invoke-static {v14, v0}, Landroidx/media3/extractor/mp4/BoxParser;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v1

    .line 1741
    iget-object v4, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->a:Ljava/lang/String;

    .line 1742
    .line 1743
    iget-object v7, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    .line 1744
    .line 1745
    if-eqz v7, :cond_49

    .line 1746
    .line 1747
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v6

    .line 1751
    :cond_49
    move-object/from16 v32, v1

    .line 1752
    .line 1753
    move-object/from16 v42, v4

    .line 1754
    .line 1755
    goto :goto_36

    .line 1756
    :cond_4a
    const v1, 0x62747274

    .line 1757
    .line 1758
    .line 1759
    if-ne v11, v1, :cond_4b

    .line 1760
    .line 1761
    add-int/lit8 v14, v14, 0x8

    .line 1762
    .line 1763
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1764
    .line 1765
    .line 1766
    const/4 v13, 0x4

    .line 1767
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1771
    .line 1772
    .line 1773
    move-result-wide v7

    .line 1774
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1775
    .line 1776
    .line 1777
    move-result-wide v10

    .line 1778
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    .line 1779
    .line 1780
    invoke-direct {v1, v10, v11, v7, v8}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    .line 1781
    .line 1782
    .line 1783
    move-object/from16 v31, v1

    .line 1784
    .line 1785
    goto :goto_36

    .line 1786
    :cond_4b
    const v1, 0x70617370

    .line 1787
    .line 1788
    .line 1789
    if-ne v11, v1, :cond_4c

    .line 1790
    .line 1791
    add-int/lit8 v14, v14, 0x8

    .line 1792
    .line 1793
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 1797
    .line 1798
    .line 1799
    move-result v1

    .line 1800
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 1801
    .line 1802
    .line 1803
    move-result v4

    .line 1804
    int-to-float v1, v1

    .line 1805
    int-to-float v4, v4

    .line 1806
    div-float/2addr v1, v4

    .line 1807
    move/from16 v17, v1

    .line 1808
    .line 1809
    move/from16 v25, v9

    .line 1810
    .line 1811
    move-object/from16 v33, v20

    .line 1812
    .line 1813
    move/from16 v27, v39

    .line 1814
    .line 1815
    move/from16 v29, v40

    .line 1816
    .line 1817
    move/from16 v30, v41

    .line 1818
    .line 1819
    const/4 v1, -0x1

    .line 1820
    const/16 v8, 0x8

    .line 1821
    .line 1822
    const/4 v10, 0x0

    .line 1823
    const/16 v34, 0x1

    .line 1824
    .line 1825
    goto/16 :goto_38

    .line 1826
    .line 1827
    :cond_4c
    const v1, 0x73763364

    .line 1828
    .line 1829
    .line 1830
    if-ne v11, v1, :cond_4f

    .line 1831
    .line 1832
    add-int/lit8 v1, v14, 0x8

    .line 1833
    .line 1834
    :goto_3c
    sub-int v4, v1, v14

    .line 1835
    .line 1836
    if-ge v4, v15, :cond_4e

    .line 1837
    .line 1838
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1842
    .line 1843
    .line 1844
    move-result v4

    .line 1845
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1846
    .line 1847
    .line 1848
    move-result v7

    .line 1849
    const v8, 0x70726f6a

    .line 1850
    .line 1851
    .line 1852
    if-ne v7, v8, :cond_4d

    .line 1853
    .line 1854
    iget-object v7, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1855
    .line 1856
    add-int/2addr v4, v1

    .line 1857
    invoke-static {v7, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 1858
    .line 1859
    .line 1860
    move-result-object v1

    .line 1861
    move-object/from16 v19, v1

    .line 1862
    .line 1863
    goto/16 :goto_36

    .line 1864
    .line 1865
    :cond_4d
    add-int/2addr v1, v4

    .line 1866
    goto :goto_3c

    .line 1867
    :cond_4e
    move-object/from16 v19, v2

    .line 1868
    .line 1869
    goto/16 :goto_36

    .line 1870
    .line 1871
    :cond_4f
    const v1, 0x73743364

    .line 1872
    .line 1873
    .line 1874
    if-ne v11, v1, :cond_55

    .line 1875
    .line 1876
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1877
    .line 1878
    .line 1879
    move-result v1

    .line 1880
    move/from16 v4, v33

    .line 1881
    .line 1882
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1883
    .line 1884
    .line 1885
    if-nez v1, :cond_54

    .line 1886
    .line 1887
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1888
    .line 1889
    .line 1890
    move-result v1

    .line 1891
    if-eqz v1, :cond_53

    .line 1892
    .line 1893
    const/4 v10, 0x1

    .line 1894
    if-eq v1, v10, :cond_52

    .line 1895
    .line 1896
    const/4 v7, 0x2

    .line 1897
    if-eq v1, v7, :cond_51

    .line 1898
    .line 1899
    if-eq v1, v4, :cond_50

    .line 1900
    .line 1901
    goto :goto_3d

    .line 1902
    :cond_50
    move/from16 v25, v4

    .line 1903
    .line 1904
    goto :goto_3e

    .line 1905
    :cond_51
    const/16 v25, 0x2

    .line 1906
    .line 1907
    goto :goto_3e

    .line 1908
    :cond_52
    const/16 v25, 0x1

    .line 1909
    .line 1910
    goto :goto_3e

    .line 1911
    :cond_53
    const/16 v25, 0x0

    .line 1912
    .line 1913
    goto :goto_3e

    .line 1914
    :cond_54
    :goto_3d
    move/from16 v25, v3

    .line 1915
    .line 1916
    :goto_3e
    move-object/from16 v33, v20

    .line 1917
    .line 1918
    move/from16 v20, v25

    .line 1919
    .line 1920
    move/from16 v27, v39

    .line 1921
    .line 1922
    move/from16 v29, v40

    .line 1923
    .line 1924
    move/from16 v30, v41

    .line 1925
    .line 1926
    const/4 v1, -0x1

    .line 1927
    const/16 v8, 0x8

    .line 1928
    .line 1929
    const/4 v10, 0x0

    .line 1930
    move/from16 v25, v9

    .line 1931
    .line 1932
    goto/16 :goto_49

    .line 1933
    .line 1934
    :cond_55
    const v1, 0x61707643

    .line 1935
    .line 1936
    .line 1937
    if-ne v11, v1, :cond_5c

    .line 1938
    .line 1939
    add-int/lit8 v1, v15, -0xc

    .line 1940
    .line 1941
    new-array v6, v1, [B

    .line 1942
    .line 1943
    add-int/lit8 v14, v14, 0xc

    .line 1944
    .line 1945
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1946
    .line 1947
    .line 1948
    const/4 v10, 0x0

    .line 1949
    invoke-virtual {v0, v6, v10, v1}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1950
    .line 1951
    .line 1952
    sget-object v7, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 1953
    .line 1954
    const/16 v7, 0x11

    .line 1955
    .line 1956
    if-lt v1, v7, :cond_56

    .line 1957
    .line 1958
    const/4 v7, 0x1

    .line 1959
    goto :goto_3f

    .line 1960
    :cond_56
    move v7, v10

    .line 1961
    :goto_3f
    const-string v8, "Invalid APV CSD length: %s"

    .line 1962
    .line 1963
    invoke-static {v1, v8, v7}, Lcom/google/common/base/Preconditions;->c(ILjava/lang/String;Z)V

    .line 1964
    .line 1965
    .line 1966
    aget-byte v7, v6, v10

    .line 1967
    .line 1968
    const/4 v12, 0x1

    .line 1969
    if-ne v7, v12, :cond_57

    .line 1970
    .line 1971
    const/4 v8, 0x1

    .line 1972
    goto :goto_40

    .line 1973
    :cond_57
    move v8, v10

    .line 1974
    :goto_40
    const-string v9, "Invalid APV CSD version: %s"

    .line 1975
    .line 1976
    invoke-static {v7, v9, v8}, Lcom/google/common/base/Preconditions;->c(ILjava/lang/String;Z)V

    .line 1977
    .line 1978
    .line 1979
    aget-byte v7, v6, v27

    .line 1980
    .line 1981
    and-int/lit16 v7, v7, 0xff

    .line 1982
    .line 1983
    const/16 v30, 0x6

    .line 1984
    .line 1985
    aget-byte v8, v6, v30

    .line 1986
    .line 1987
    and-int/lit16 v8, v8, 0xff

    .line 1988
    .line 1989
    aget-byte v9, v6, v29

    .line 1990
    .line 1991
    and-int/lit16 v9, v9, 0xff

    .line 1992
    .line 1993
    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 1994
    .line 1995
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1996
    .line 1997
    const-string v11, ".apvl"

    .line 1998
    .line 1999
    const-string v12, ".apvb"

    .line 2000
    .line 2001
    const-string v13, "apv1.apvf"

    .line 2002
    .line 2003
    invoke-static {v13, v7, v11, v8, v12}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v7

    .line 2007
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2008
    .line 2009
    .line 2010
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v16

    .line 2014
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v7

    .line 2018
    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    .line 2019
    .line 2020
    invoke-direct {v8, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 2021
    .line 2022
    .line 2023
    new-instance v9, Landroidx/media3/common/ColorInfo$Builder;

    .line 2024
    .line 2025
    invoke-direct {v9}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 2026
    .line 2027
    .line 2028
    new-instance v11, Landroidx/media3/common/util/ParsableBitArray;

    .line 2029
    .line 2030
    invoke-direct {v11, v1, v6}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 2031
    .line 2032
    .line 2033
    iget v1, v8, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2034
    .line 2035
    const/16 v8, 0x8

    .line 2036
    .line 2037
    mul-int/2addr v1, v8

    .line 2038
    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 2039
    .line 2040
    .line 2041
    const/4 v1, 0x1

    .line 2042
    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 2043
    .line 2044
    .line 2045
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2046
    .line 2047
    .line 2048
    move-result v6

    .line 2049
    move v12, v10

    .line 2050
    :goto_41
    if-ge v12, v6, :cond_5b

    .line 2051
    .line 2052
    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 2053
    .line 2054
    .line 2055
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2056
    .line 2057
    .line 2058
    move-result v1

    .line 2059
    move v13, v10

    .line 2060
    :goto_42
    if-ge v13, v1, :cond_5a

    .line 2061
    .line 2062
    const/4 v14, 0x6

    .line 2063
    invoke-virtual {v11, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 2067
    .line 2068
    .line 2069
    move-result v27

    .line 2070
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 2074
    .line 2075
    .line 2076
    const/4 v2, 0x4

    .line 2077
    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2081
    .line 2082
    .line 2083
    move-result v29

    .line 2084
    add-int/lit8 v2, v29, 0x8

    .line 2085
    .line 2086
    iput v2, v9, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 2087
    .line 2088
    iput v2, v9, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 2089
    .line 2090
    const/4 v2, 0x1

    .line 2091
    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 2092
    .line 2093
    .line 2094
    if-eqz v27, :cond_59

    .line 2095
    .line 2096
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2097
    .line 2098
    .line 2099
    move-result v27

    .line 2100
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 2101
    .line 2102
    .line 2103
    move-result v29

    .line 2104
    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 2105
    .line 2106
    .line 2107
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 2108
    .line 2109
    .line 2110
    move-result v30

    .line 2111
    invoke-static/range {v27 .. v27}, Landroidx/media3/common/ColorInfo;->f(I)I

    .line 2112
    .line 2113
    .line 2114
    move-result v2

    .line 2115
    iput v2, v9, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 2116
    .line 2117
    if-eqz v30, :cond_58

    .line 2118
    .line 2119
    const/4 v2, 0x1

    .line 2120
    goto :goto_43

    .line 2121
    :cond_58
    const/4 v2, 0x2

    .line 2122
    :goto_43
    iput v2, v9, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 2123
    .line 2124
    invoke-static/range {v29 .. v29}, Landroidx/media3/common/ColorInfo;->g(I)I

    .line 2125
    .line 2126
    .line 2127
    move-result v2

    .line 2128
    iput v2, v9, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 2129
    .line 2130
    :cond_59
    add-int/lit8 v13, v13, 0x1

    .line 2131
    .line 2132
    const/4 v2, 0x0

    .line 2133
    goto :goto_42

    .line 2134
    :cond_5a
    const/4 v14, 0x6

    .line 2135
    add-int/lit8 v12, v12, 0x1

    .line 2136
    .line 2137
    const/4 v1, 0x1

    .line 2138
    const/4 v2, 0x0

    .line 2139
    goto :goto_41

    .line 2140
    :cond_5b
    invoke-virtual {v9}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v1

    .line 2144
    iget v2, v1, Landroidx/media3/common/ColorInfo;->e:I

    .line 2145
    .line 2146
    iget v4, v1, Landroidx/media3/common/ColorInfo;->f:I

    .line 2147
    .line 2148
    iget v6, v1, Landroidx/media3/common/ColorInfo;->a:I

    .line 2149
    .line 2150
    iget v9, v1, Landroidx/media3/common/ColorInfo;->b:I

    .line 2151
    .line 2152
    iget v1, v1, Landroidx/media3/common/ColorInfo;->c:I

    .line 2153
    .line 2154
    const-string v11, "video/apv"

    .line 2155
    .line 2156
    move/from16 v27, v1

    .line 2157
    .line 2158
    move/from16 v29, v2

    .line 2159
    .line 2160
    move/from16 v30, v4

    .line 2161
    .line 2162
    move/from16 v25, v6

    .line 2163
    .line 2164
    move-object v6, v7

    .line 2165
    move/from16 v38, v9

    .line 2166
    .line 2167
    move-object/from16 v42, v11

    .line 2168
    .line 2169
    move-object/from16 v33, v20

    .line 2170
    .line 2171
    const/4 v1, -0x1

    .line 2172
    goto/16 :goto_38

    .line 2173
    .line 2174
    :cond_5c
    const/16 v8, 0x8

    .line 2175
    .line 2176
    const/4 v10, 0x0

    .line 2177
    const v1, 0x636f6c72

    .line 2178
    .line 2179
    .line 2180
    if-ne v11, v1, :cond_61

    .line 2181
    .line 2182
    const/4 v1, -0x1

    .line 2183
    move/from16 v14, v39

    .line 2184
    .line 2185
    if-ne v9, v1, :cond_62

    .line 2186
    .line 2187
    if-ne v14, v1, :cond_62

    .line 2188
    .line 2189
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 2190
    .line 2191
    .line 2192
    move-result v2

    .line 2193
    const v4, 0x6e636c78

    .line 2194
    .line 2195
    .line 2196
    if-eq v2, v4, :cond_5e

    .line 2197
    .line 2198
    const v4, 0x6e636c63

    .line 2199
    .line 2200
    .line 2201
    if-ne v2, v4, :cond_5d

    .line 2202
    .line 2203
    goto :goto_44

    .line 2204
    :cond_5d
    invoke-static {v2}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v2

    .line 2208
    const-string v4, "Unsupported color type: "

    .line 2209
    .line 2210
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v2

    .line 2214
    const-string v4, "BoxParsers"

    .line 2215
    .line 2216
    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    .line 2218
    .line 2219
    goto :goto_47

    .line 2220
    :cond_5e
    :goto_44
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 2221
    .line 2222
    .line 2223
    move-result v2

    .line 2224
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 2225
    .line 2226
    .line 2227
    move-result v4

    .line 2228
    const/4 v7, 0x2

    .line 2229
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 2230
    .line 2231
    .line 2232
    const/16 v9, 0x13

    .line 2233
    .line 2234
    if-ne v15, v9, :cond_5f

    .line 2235
    .line 2236
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 2237
    .line 2238
    .line 2239
    move-result v9

    .line 2240
    and-int/lit16 v9, v9, 0x80

    .line 2241
    .line 2242
    if-eqz v9, :cond_5f

    .line 2243
    .line 2244
    const/4 v9, 0x1

    .line 2245
    goto :goto_45

    .line 2246
    :cond_5f
    move v9, v10

    .line 2247
    :goto_45
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->f(I)I

    .line 2248
    .line 2249
    .line 2250
    move-result v25

    .line 2251
    if-eqz v9, :cond_60

    .line 2252
    .line 2253
    const/4 v7, 0x1

    .line 2254
    :cond_60
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->g(I)I

    .line 2255
    .line 2256
    .line 2257
    move-result v27

    .line 2258
    move/from16 v38, v7

    .line 2259
    .line 2260
    :goto_46
    move-object/from16 v33, v20

    .line 2261
    .line 2262
    move/from16 v29, v40

    .line 2263
    .line 2264
    move/from16 v30, v41

    .line 2265
    .line 2266
    goto/16 :goto_38

    .line 2267
    .line 2268
    :cond_61
    move/from16 v14, v39

    .line 2269
    .line 2270
    const/4 v1, -0x1

    .line 2271
    :cond_62
    :goto_47
    move/from16 v25, v9

    .line 2272
    .line 2273
    move/from16 v27, v14

    .line 2274
    .line 2275
    goto :goto_46

    .line 2276
    :goto_48
    invoke-static {v0}, Landroidx/media3/container/DolbyVisionConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v18

    .line 2280
    goto :goto_47

    .line 2281
    :goto_49
    add-int v9, v36, v15

    .line 2282
    .line 2283
    move/from16 v1, p2

    .line 2284
    .line 2285
    move/from16 v2, p3

    .line 2286
    .line 2287
    move/from16 p1, v8

    .line 2288
    .line 2289
    move-object/from16 v4, v26

    .line 2290
    .line 2291
    move-object/from16 v13, v37

    .line 2292
    .line 2293
    move/from16 v26, v38

    .line 2294
    .line 2295
    move-object/from16 v10, v42

    .line 2296
    .line 2297
    move/from16 v8, v44

    .line 2298
    .line 2299
    move/from16 v7, v45

    .line 2300
    .line 2301
    move/from16 v12, v46

    .line 2302
    .line 2303
    goto/16 :goto_2

    .line 2304
    .line 2305
    :cond_63
    move/from16 v45, v7

    .line 2306
    .line 2307
    move/from16 v44, v8

    .line 2308
    .line 2309
    move-object/from16 v42, v10

    .line 2310
    .line 2311
    move/from16 v3, v20

    .line 2312
    .line 2313
    move/from16 v9, v25

    .line 2314
    .line 2315
    move/from16 v38, v26

    .line 2316
    .line 2317
    move/from16 v14, v27

    .line 2318
    .line 2319
    move/from16 v40, v29

    .line 2320
    .line 2321
    move/from16 v41, v30

    .line 2322
    .line 2323
    move-object/from16 v26, v4

    .line 2324
    .line 2325
    move-object/from16 v11, v18

    .line 2326
    .line 2327
    :goto_4a
    if-eqz v11, :cond_64

    .line 2328
    .line 2329
    iget-object v0, v11, Landroidx/media3/container/DolbyVisionConfig;->a:Ljava/lang/String;

    .line 2330
    .line 2331
    const-string v10, "video/dolby-vision"

    .line 2332
    .line 2333
    goto :goto_4b

    .line 2334
    :cond_64
    move-object/from16 v0, v16

    .line 2335
    .line 2336
    move-object/from16 v10, v42

    .line 2337
    .line 2338
    :goto_4b
    if-nez v10, :cond_65

    .line 2339
    .line 2340
    return-void

    .line 2341
    :cond_65
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 2342
    .line 2343
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2344
    .line 2345
    .line 2346
    move-object/from16 v2, p4

    .line 2347
    .line 2348
    iget v4, v2, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->a:I

    .line 2349
    .line 2350
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v4

    .line 2354
    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 2355
    .line 2356
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 2357
    .line 2358
    .line 2359
    move-result-object v4

    .line 2360
    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 2361
    .line 2362
    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 2363
    .line 2364
    move/from16 v0, v45

    .line 2365
    .line 2366
    iput v0, v1, Landroidx/media3/common/Format$Builder;->v:I

    .line 2367
    .line 2368
    move/from16 v0, v44

    .line 2369
    .line 2370
    iput v0, v1, Landroidx/media3/common/Format$Builder;->w:I

    .line 2371
    .line 2372
    move/from16 v0, v23

    .line 2373
    .line 2374
    iput v0, v1, Landroidx/media3/common/Format$Builder;->y:I

    .line 2375
    .line 2376
    move/from16 v0, v24

    .line 2377
    .line 2378
    iput v0, v1, Landroidx/media3/common/Format$Builder;->z:I

    .line 2379
    .line 2380
    move/from16 v0, v17

    .line 2381
    .line 2382
    iput v0, v1, Landroidx/media3/common/Format$Builder;->D:F

    .line 2383
    .line 2384
    iget v0, v2, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->c:I

    .line 2385
    .line 2386
    iput v0, v1, Landroidx/media3/common/Format$Builder;->B:I

    .line 2387
    .line 2388
    iget-boolean v0, v2, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->d:Z

    .line 2389
    .line 2390
    iput-boolean v0, v1, Landroidx/media3/common/Format$Builder;->C:Z

    .line 2391
    .line 2392
    move-object/from16 v11, v19

    .line 2393
    .line 2394
    iput-object v11, v1, Landroidx/media3/common/Format$Builder;->E:[B

    .line 2395
    .line 2396
    iput v3, v1, Landroidx/media3/common/Format$Builder;->F:I

    .line 2397
    .line 2398
    iput-object v6, v1, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 2399
    .line 2400
    move/from16 v0, v21

    .line 2401
    .line 2402
    iput v0, v1, Landroidx/media3/common/Format$Builder;->q:I

    .line 2403
    .line 2404
    move/from16 v0, v22

    .line 2405
    .line 2406
    iput v0, v1, Landroidx/media3/common/Format$Builder;->H:I

    .line 2407
    .line 2408
    move-object/from16 v4, v26

    .line 2409
    .line 2410
    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 2411
    .line 2412
    move-object/from16 v0, p5

    .line 2413
    .line 2414
    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 2415
    .line 2416
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    .line 2417
    .line 2418
    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 2419
    .line 2420
    .line 2421
    iput v9, v0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 2422
    .line 2423
    move/from16 v13, v38

    .line 2424
    .line 2425
    iput v13, v0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 2426
    .line 2427
    iput v14, v0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 2428
    .line 2429
    if-eqz v28, :cond_66

    .line 2430
    .line 2431
    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->array()[B

    .line 2432
    .line 2433
    .line 2434
    move-result-object v11

    .line 2435
    goto :goto_4c

    .line 2436
    :cond_66
    const/4 v11, 0x0

    .line 2437
    :goto_4c
    iput-object v11, v0, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    .line 2438
    .line 2439
    move/from16 v14, v40

    .line 2440
    .line 2441
    iput v14, v0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 2442
    .line 2443
    move/from16 v10, v41

    .line 2444
    .line 2445
    iput v10, v0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 2446
    .line 2447
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v0

    .line 2451
    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->G:Landroidx/media3/common/ColorInfo;

    .line 2452
    .line 2453
    move-object/from16 v11, v31

    .line 2454
    .line 2455
    if-eqz v11, :cond_67

    .line 2456
    .line 2457
    iget-wide v2, v11, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->a:J

    .line 2458
    .line 2459
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2460
    .line 2461
    .line 2462
    move-result v0

    .line 2463
    iput v0, v1, Landroidx/media3/common/Format$Builder;->i:I

    .line 2464
    .line 2465
    iget-wide v2, v11, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->b:J

    .line 2466
    .line 2467
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2468
    .line 2469
    .line 2470
    move-result v0

    .line 2471
    iput v0, v1, Landroidx/media3/common/Format$Builder;->j:I

    .line 2472
    .line 2473
    goto :goto_4d

    .line 2474
    :cond_67
    move-object/from16 v11, v32

    .line 2475
    .line 2476
    if-eqz v11, :cond_68

    .line 2477
    .line 2478
    iget-wide v2, v11, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->c:J

    .line 2479
    .line 2480
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2481
    .line 2482
    .line 2483
    move-result v0

    .line 2484
    iput v0, v1, Landroidx/media3/common/Format$Builder;->i:I

    .line 2485
    .line 2486
    iget-wide v2, v11, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->d:J

    .line 2487
    .line 2488
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 2489
    .line 2490
    .line 2491
    move-result v0

    .line 2492
    iput v0, v1, Landroidx/media3/common/Format$Builder;->j:I

    .line 2493
    .line 2494
    :cond_68
    :goto_4d
    new-instance v0, Landroidx/media3/common/Format;

    .line 2495
    .line 2496
    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 2497
    .line 2498
    .line 2499
    iput-object v0, v5, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    .line 2500
    .line 2501
    return-void
.end method
