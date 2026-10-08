.class final Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:Landroidx/media3/extractor/ExtractorOutput;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

.field public h:Landroidx/media3/extractor/ExtractorInput;

.field public i:Landroidx/media3/extractor/StartOffsetExtractorInput;

.field public j:Landroidx/media3/extractor/mp4/Mp4Extractor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {p1, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v4, 0xffd8

    .line 18
    .line 19
    .line 20
    if-eq v2, v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 27
    .line 28
    invoke-interface {p1, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    .line 36
    .line 37
    const v4, 0xffda

    .line 38
    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 47
    .line 48
    invoke-interface {p1, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    sub-int/2addr v2, v1

    .line 56
    if-gez v2, :cond_2

    .line 57
    .line 58
    :goto_1
    return v3

    .line 59
    :cond_2
    iget v4, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    .line 60
    .line 61
    const v5, 0xffe1

    .line 62
    .line 63
    .line 64
    if-eq v4, v5, :cond_3

    .line 65
    .line 66
    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 71
    .line 72
    .line 73
    iget-object v4, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 74
    .line 75
    invoke-interface {p1, v4, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 83
    .line 84
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    move v4, v3

    .line 99
    :goto_2
    const/4 v5, 0x4

    .line 100
    if-ge v4, v5, :cond_0

    .line 101
    .line 102
    sget-object v5, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->a:[Ljava/lang/String;

    .line 103
    .line 104
    aget-object v5, v5, v4

    .line 105
    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v5, "=\"1\""

    .line 115
    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_6

    .line 128
    .line 129
    const/4 p0, 0x1

    .line 130
    return p0

    .line 131
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_2
.end method

.method public final c(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->c(JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    iget-object v6, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-eqz v3, :cond_19

    .line 18
    .line 19
    if-eq v3, v9, :cond_18

    .line 20
    .line 21
    if-eq v3, v8, :cond_a

    .line 22
    .line 23
    const/4 v4, 0x5

    .line 24
    if-eq v3, v7, :cond_5

    .line 25
    .line 26
    if-eq v3, v4, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    if-ne v3, v0, :cond_0

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    return v0

    .line 33
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 34
    .line 35
    .line 36
    return v10

    .line 37
    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->h:Landroidx/media3/extractor/ExtractorInput;

    .line 42
    .line 43
    if-eq v1, v3, :cond_3

    .line 44
    .line 45
    :cond_2
    iput-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->h:Landroidx/media3/extractor/ExtractorInput;

    .line 46
    .line 47
    new-instance v3, Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 48
    .line 49
    iget-wide v4, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 50
    .line 51
    invoke-direct {v3, v1, v4, v5}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 55
    .line 56
    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v1, v9, :cond_4

    .line 68
    .line 69
    iget-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 70
    .line 71
    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 72
    .line 73
    add-long/2addr v3, v5

    .line 74
    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 75
    .line 76
    :cond_4
    return v1

    .line 77
    :cond_5
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 78
    .line 79
    .line 80
    move-result-wide v11

    .line 81
    iget-wide v13, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 82
    .line 83
    cmp-long v3, v11, v13

    .line 84
    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 88
    .line 89
    return v9

    .line 90
    :cond_6
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 91
    .line 92
    invoke-interface {v1, v2, v10, v9, v9}, Landroidx/media3/extractor/ExtractorInput;->d([BIIZ)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g()V

    .line 99
    .line 100
    .line 101
    return v10

    .line 102
    :cond_7
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 110
    .line 111
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 112
    .line 113
    const/16 v5, 0x8

    .line 114
    .line 115
    invoke-direct {v2, v3, v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 116
    .line 117
    .line 118
    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 119
    .line 120
    :cond_8
    new-instance v2, Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 121
    .line 122
    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 123
    .line 124
    invoke-direct {v2, v1, v5, v6}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    .line 125
    .line 126
    .line 127
    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    .line 128
    .line 129
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 138
    .line 139
    new-instance v2, Landroidx/media3/extractor/StartOffsetExtractorOutput;

    .line 140
    .line 141
    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 142
    .line 143
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-direct {v2, v5, v6, v3}, Landroidx/media3/extractor/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->d(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    const/16 v3, 0x400

    .line 165
    .line 166
    invoke-interface {v2, v3, v7}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 171
    .line 172
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v5, "image/jpeg"

    .line 176
    .line 177
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v5, Landroidx/media3/common/Metadata;

    .line 184
    .line 185
    new-array v6, v9, [Landroidx/media3/common/Metadata$Entry;

    .line 186
    .line 187
    aput-object v1, v6, v10

    .line 188
    .line 189
    invoke-direct {v5, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 190
    .line 191
    .line 192
    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 193
    .line 194
    new-instance v1, Landroidx/media3/common/Format;

    .line 195
    .line 196
    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 200
    .line 201
    .line 202
    iput v4, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 203
    .line 204
    return v10

    .line 205
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g()V

    .line 206
    .line 207
    .line 208
    return v10

    .line 209
    :cond_a
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    .line 210
    .line 211
    const v3, 0xffe1

    .line 212
    .line 213
    .line 214
    if-ne v2, v3, :cond_16

    .line 215
    .line 216
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 217
    .line 218
    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    .line 219
    .line 220
    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 224
    .line 225
    iget v6, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    .line 226
    .line 227
    invoke-interface {v1, v3, v10, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 228
    .line 229
    .line 230
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    .line 231
    .line 232
    if-nez v3, :cond_17

    .line 233
    .line 234
    const-string v3, "http://ns.adobe.com/xap/1.0/"

    .line 235
    .line 236
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_17

    .line 245
    .line 246
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_17

    .line 251
    .line 252
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 253
    .line 254
    .line 255
    move-result-wide v6

    .line 256
    cmp-long v1, v6, v4

    .line 257
    .line 258
    if-nez v1, :cond_c

    .line 259
    .line 260
    :cond_b
    :goto_0
    const/4 v3, 0x0

    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_c
    :try_start_0
    invoke-static {v2}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->a(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    .line 264
    .line 265
    .line 266
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_1

    .line 268
    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    .line 269
    .line 270
    const-string v2, "Ignoring unexpected XMP metadata"

    .line 271
    .line 272
    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const/4 v1, 0x0

    .line 276
    :goto_1
    if-nez v1, :cond_d

    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_d
    iget-object v2, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->b:Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-ge v11, v8, :cond_e

    .line 286
    .line 287
    goto :goto_0

    .line 288
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    sub-int/2addr v8, v9

    .line 293
    move-wide v12, v4

    .line 294
    move-wide v14, v12

    .line 295
    move-wide/from16 v18, v14

    .line 296
    .line 297
    move-wide/from16 v20, v18

    .line 298
    .line 299
    :goto_2
    if-ltz v8, :cond_14

    .line 300
    .line 301
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    check-cast v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 306
    .line 307
    iget-object v3, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->a:Ljava/lang/String;

    .line 308
    .line 309
    move-wide/from16 v16, v4

    .line 310
    .line 311
    const-string v4, "video/mp4"

    .line 312
    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_10

    .line 318
    .line 319
    iget-object v3, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->a:Ljava/lang/String;

    .line 320
    .line 321
    const-string v4, "video/quicktime"

    .line 322
    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_f

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_f
    move v3, v10

    .line 331
    goto :goto_4

    .line 332
    :cond_10
    :goto_3
    move v3, v9

    .line 333
    :goto_4
    if-nez v8, :cond_11

    .line 334
    .line 335
    iget-wide v4, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->c:J

    .line 336
    .line 337
    sub-long/2addr v6, v4

    .line 338
    const-wide/16 v4, 0x0

    .line 339
    .line 340
    :goto_5
    move-wide/from16 v22, v6

    .line 341
    .line 342
    move-wide v6, v4

    .line 343
    move-wide/from16 v4, v22

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_11
    iget-wide v4, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->b:J

    .line 347
    .line 348
    sub-long v4, v6, v4

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :goto_6
    if-eqz v3, :cond_12

    .line 352
    .line 353
    cmp-long v3, v6, v4

    .line 354
    .line 355
    if-eqz v3, :cond_12

    .line 356
    .line 357
    sub-long v20, v4, v6

    .line 358
    .line 359
    move-wide/from16 v18, v6

    .line 360
    .line 361
    :cond_12
    if-nez v8, :cond_13

    .line 362
    .line 363
    move-wide v14, v4

    .line 364
    move-wide v12, v6

    .line 365
    :cond_13
    add-int/lit8 v8, v8, -0x1

    .line 366
    .line 367
    move-wide/from16 v4, v16

    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_14
    move-wide/from16 v16, v4

    .line 371
    .line 372
    cmp-long v2, v18, v16

    .line 373
    .line 374
    if-eqz v2, :cond_b

    .line 375
    .line 376
    cmp-long v2, v20, v16

    .line 377
    .line 378
    if-eqz v2, :cond_b

    .line 379
    .line 380
    cmp-long v2, v12, v16

    .line 381
    .line 382
    if-eqz v2, :cond_b

    .line 383
    .line 384
    cmp-long v2, v14, v16

    .line 385
    .line 386
    if-nez v2, :cond_15

    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :cond_15
    new-instance v11, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    .line 391
    .line 392
    iget-wide v1, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->a:J

    .line 393
    .line 394
    move-wide/from16 v16, v1

    .line 395
    .line 396
    invoke-direct/range {v11 .. v21}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    .line 397
    .line 398
    .line 399
    move-object v3, v11

    .line 400
    :goto_7
    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    .line 401
    .line 402
    if-eqz v3, :cond_17

    .line 403
    .line 404
    iget-wide v1, v3, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;->d:J

    .line 405
    .line 406
    iput-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_16
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    .line 410
    .line 411
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 412
    .line 413
    .line 414
    :cond_17
    :goto_8
    iput v10, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 415
    .line 416
    return v10

    .line 417
    :cond_18
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 418
    .line 419
    .line 420
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 421
    .line 422
    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    sub-int/2addr v2, v8

    .line 430
    iput v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    .line 431
    .line 432
    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 433
    .line 434
    .line 435
    iput v8, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 436
    .line 437
    return v10

    .line 438
    :cond_19
    move-wide/from16 v16, v4

    .line 439
    .line 440
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 441
    .line 442
    .line 443
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 444
    .line 445
    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    iput v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    .line 453
    .line 454
    const v2, 0xffda

    .line 455
    .line 456
    .line 457
    if-ne v1, v2, :cond_1b

    .line 458
    .line 459
    iget-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    .line 460
    .line 461
    cmp-long v1, v1, v16

    .line 462
    .line 463
    if-eqz v1, :cond_1a

    .line 464
    .line 465
    iput v7, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 466
    .line 467
    return v10

    .line 468
    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g()V

    .line 469
    .line 470
    .line 471
    return v10

    .line 472
    :cond_1b
    const v2, 0xffd0

    .line 473
    .line 474
    .line 475
    if-lt v1, v2, :cond_1c

    .line 476
    .line 477
    const v2, 0xffd9

    .line 478
    .line 479
    .line 480
    if-le v1, v2, :cond_1d

    .line 481
    .line 482
    :cond_1c
    const v2, 0xff01

    .line 483
    .line 484
    .line 485
    if-eq v1, v2, :cond_1d

    .line 486
    .line 487
    iput v9, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 488
    .line 489
    :cond_1d
    return v10
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    .line 10
    .line 11
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    .line 26
    .line 27
    return-void
.end method
