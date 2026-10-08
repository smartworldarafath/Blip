.class final Landroidx/media3/extractor/ogg/FlacReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# instance fields
.field public n:Landroidx/media3/extractor/FlacStreamMetadata;

.field public o:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 3

    .line 1
    iget-object p0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte v1, p0, v0

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    aget-byte p0, p0, v1

    .line 11
    .line 12
    and-int/lit16 p0, p0, 0xff

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    shr-int/2addr p0, v1

    .line 16
    const/4 v2, 0x6

    .line 17
    if-eq p0, v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    if-ne p0, v2, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()J

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/extractor/FlacFrameReader;->c(ILandroidx/media3/common/util/ParsableByteArray;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 33
    .line 34
    .line 35
    int-to-long p0, p0

    .line 36
    return-wide p0

    .line 37
    :cond_2
    const-wide/16 p0, -0x1

    .line 38
    .line 39
    return-wide p0
.end method

.method public final c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/media3/extractor/ogg/FlacReader;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 15
    .line 16
    const/16 v6, 0x11

    .line 17
    .line 18
    invoke-direct {v4, v6, v3}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(I[B)V

    .line 19
    .line 20
    .line 21
    iput-object v4, v0, Landroidx/media3/extractor/ogg/FlacReader;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 26
    .line 27
    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v4, v0, v1}, Landroidx/media3/extractor/FlacStreamMetadata;->c([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "audio/ogg"

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Landroidx/media3/common/Format;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 54
    .line 55
    return v5

    .line 56
    :cond_0
    const/4 v6, 0x0

    .line 57
    aget-byte v3, v3, v6

    .line 58
    .line 59
    and-int/lit8 v7, v3, 0x7f

    .line 60
    .line 61
    const/4 v8, 0x3

    .line 62
    if-ne v7, v8, :cond_1

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/media3/extractor/FlacMetadataReader;->b(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 65
    .line 66
    .line 67
    move-result-object v19

    .line 68
    new-instance v9, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 69
    .line 70
    iget v10, v4, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 71
    .line 72
    iget v11, v4, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 73
    .line 74
    iget v12, v4, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 75
    .line 76
    iget v13, v4, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    .line 77
    .line 78
    iget v14, v4, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 79
    .line 80
    iget v15, v4, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 81
    .line 82
    iget v1, v4, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    .line 83
    .line 84
    iget-wide v2, v4, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 85
    .line 86
    iget-object v4, v4, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    .line 87
    .line 88
    move/from16 v16, v1

    .line 89
    .line 90
    move-wide/from16 v17, v2

    .line 91
    .line 92
    move-object/from16 v20, v4

    .line 93
    .line 94
    invoke-direct/range {v9 .. v20}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v1, v19

    .line 98
    .line 99
    iput-object v9, v0, Landroidx/media3/extractor/ogg/FlacReader;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 100
    .line 101
    new-instance v2, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v9, v2, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 107
    .line 108
    iput-object v1, v2, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->b:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 109
    .line 110
    const-wide/16 v3, -0x1

    .line 111
    .line 112
    iput-wide v3, v2, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->c:J

    .line 113
    .line 114
    iput-wide v3, v2, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->d:J

    .line 115
    .line 116
    iput-object v2, v0, Landroidx/media3/extractor/ogg/FlacReader;->o:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 117
    .line 118
    return v5

    .line 119
    :cond_1
    const/4 v1, -0x1

    .line 120
    if-ne v3, v1, :cond_3

    .line 121
    .line 122
    iget-object v0, v0, Landroidx/media3/extractor/ogg/FlacReader;->o:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 123
    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    move-wide/from16 v3, p2

    .line 127
    .line 128
    iput-wide v3, v0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->c:J

    .line 129
    .line 130
    iput-object v0, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->b:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 131
    .line 132
    :cond_2
    iget-object v0, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    return v6

    .line 138
    :cond_3
    return v5
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader;->o:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
