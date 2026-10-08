.class final Landroidx/media3/extractor/ogg/OpusReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroidx/media3/extractor/ogg/OpusReader;->o:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/media3/extractor/ogg/OpusReader;->p:[B

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public static e(Landroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    array-length v3, p1

    .line 16
    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 4

    .line 1
    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte v1, p1, v0

    .line 5
    .line 6
    array-length v2, p1

    .line 7
    const/4 v3, 0x1

    .line 8
    if-le v2, v3, :cond_0

    .line 9
    .line 10
    aget-byte v0, p1, v3

    .line 11
    .line 12
    :cond_0
    invoke-static {v1, v0}, Landroidx/media3/container/OpusUtil;->b(BB)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget p0, p0, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    .line 17
    .line 18
    int-to-long p0, p0

    .line 19
    mul-long/2addr p0, v0

    .line 20
    const-wide/32 v0, 0xf4240

    .line 21
    .line 22
    .line 23
    div-long/2addr p0, v0

    .line 24
    return-wide p0
.end method

.method public final c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 1

    .line 1
    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->o:[B

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->e(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object p0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 11
    .line 12
    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 13
    .line 14
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/16 p1, 0x9

    .line 19
    .line 20
    aget-byte p1, p0, p1

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/media3/container/OpusUtil;->a([B)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Landroidx/media3/common/Format$Builder;

    .line 34
    .line 35
    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "audio/ogg"

    .line 39
    .line 40
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "audio/opus"

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p2, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 53
    .line 54
    iput p1, p2, Landroidx/media3/common/Format$Builder;->I:I

    .line 55
    .line 56
    const p1, 0xbb80

    .line 57
    .line 58
    .line 59
    iput p1, p2, Landroidx/media3/common/Format$Builder;->K:I

    .line 60
    .line 61
    iput-object p0, p2, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 62
    .line 63
    new-instance p0, Landroidx/media3/common/Format;

    .line 64
    .line 65
    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 66
    .line 67
    .line 68
    iput-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 69
    .line 70
    return p3

    .line 71
    :cond_1
    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->p:[B

    .line 72
    .line 73
    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->e(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-boolean p2, p0, Landroidx/media3/extractor/ogg/OpusReader;->n:Z

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iput-boolean p3, p0, Landroidx/media3/extractor/ogg/OpusReader;->n:Z

    .line 91
    .line 92
    const/16 p0, 0x8

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v0, v0}, Landroidx/media3/container/VorbisUtil;->b(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iget-object p0, p0, Landroidx/media3/container/VorbisUtil$CommentHeader;->a:[Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->o([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    :goto_0
    return p3

    .line 114
    :cond_3
    iget-object p1, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 121
    .line 122
    iget-object p2, p2, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 123
    .line 124
    invoke-virtual {p0, p2}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    iput-object p0, p1, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 129
    .line 130
    new-instance p0, Landroidx/media3/common/Format;

    .line 131
    .line 132
    invoke-direct {p0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 133
    .line 134
    .line 135
    iput-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 136
    .line 137
    return p3

    .line 138
    :cond_4
    iget-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    return v0
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
    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/OpusReader;->n:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method
