.class public Landroidx/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;
    }
.end annotation


# static fields
.field public static final q0:[B

.field public static final r0:[B

.field public static final s0:[B

.field public static final t0:[B

.field public static final u0:Ljava/util/UUID;

.field public static final v0:Ljava/util/Map;


# instance fields
.field public A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

.field public B:Z

.field public C:I

.field public D:J

.field public final E:Landroid/util/SparseArray;

.field public F:Z

.field public G:J

.field public H:I

.field public I:J

.field public J:J

.field public K:I

.field public L:Z

.field public M:J

.field public N:J

.field public O:J

.field public P:Z

.field public Q:J

.field public R:Z

.field public S:J

.field public T:Z

.field public U:I

.field public V:J

.field public W:J

.field public X:I

.field public Y:I

.field public Z:[I

.field public final a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

.field public a0:I

.field public final b:Landroidx/media3/extractor/mkv/VarintReader;

.field public b0:I

.field public final c:Landroid/util/SparseArray;

.field public c0:I

.field public final d:Landroid/util/LongSparseArray;

.field public d0:I

.field public final e:Z

.field public e0:Z

.field public final f:Z

.field public f0:J

.field public final g:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public g0:I

.field public final h:Landroidx/media3/common/util/ParsableByteArray;

.field public h0:I

.field public final i:Landroidx/media3/common/util/ParsableByteArray;

.field public i0:I

.field public final j:Landroidx/media3/common/util/ParsableByteArray;

.field public j0:Z

.field public final k:Landroidx/media3/common/util/ParsableByteArray;

.field public k0:Z

.field public final l:Landroidx/media3/common/util/ParsableByteArray;

.field public l0:Z

.field public final m:Landroidx/media3/common/util/ParsableByteArray;

.field public m0:I

.field public final n:Landroidx/media3/common/util/ParsableByteArray;

.field public n0:B

.field public final o:Landroidx/media3/common/util/ParsableByteArray;

.field public o0:Z

.field public final p:Landroidx/media3/common/util/ParsableByteArray;

.field public p0:Landroidx/media3/extractor/ExtractorOutput;

.field public final q:Landroidx/media3/common/util/ParsableByteArray;

.field public r:Ljava/nio/ByteBuffer;

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:Z

.field public y:Z

.field public z:Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q0:[B

    .line 9
    .line 10
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r0:[B

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s0:[B

    .line 28
    .line 29
    const/16 v0, 0x26

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    fill-array-data v0, :array_2

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t0:[B

    .line 37
    .line 38
    new-instance v0, Ljava/util/UUID;

    .line 39
    .line 40
    const-wide v1, 0x100000000001000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u0:Ljava/util/UUID;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "htc_video_rotA-090"

    .line 61
    .line 62
    const/16 v2, 0x5a

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    const-string v4, "htc_video_rotA-000"

    .line 66
    .line 67
    invoke-static {v3, v0, v4, v2, v1}, Lq;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "htc_video_rotA-270"

    .line 71
    .line 72
    const/16 v2, 0x10e

    .line 73
    .line 74
    const/16 v3, 0xb4

    .line 75
    .line 76
    const-string v4, "htc_video_rotA-180"

    .line 77
    .line 78
    invoke-static {v3, v0, v4, v2, v1}, Lq;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v0:Ljava/util/Map;

    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    .line 19
    .line 20
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    .line 21
    .line 22
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    .line 23
    .line 24
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:I

    .line 28
    .line 29
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    .line 30
    .line 31
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:J

    .line 32
    .line 33
    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    .line 34
    .line 35
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    .line 36
    .line 37
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:J

    .line 38
    .line 39
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:J

    .line 40
    .line 41
    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    .line 42
    .line 43
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:J

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    .line 46
    .line 47
    new-instance v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 55
    .line 56
    new-instance p1, Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:Landroid/util/SparseArray;

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e:Z

    .line 65
    .line 66
    and-int/lit8 p2, p2, 0x2

    .line 67
    .line 68
    if-nez p2, :cond_0

    .line 69
    .line 70
    move p2, p1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 p2, 0x0

    .line 73
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f:Z

    .line 74
    .line 75
    new-instance p2, Landroidx/media3/extractor/mkv/VarintReader;

    .line 76
    .line 77
    invoke-direct {p2}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b:Landroidx/media3/extractor/mkv/VarintReader;

    .line 81
    .line 82
    new-instance p2, Landroid/util/LongSparseArray;

    .line 83
    .line 84
    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d:Landroid/util/LongSparseArray;

    .line 88
    .line 89
    new-instance p2, Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    .line 95
    .line 96
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 97
    .line 98
    const/4 v0, 0x4

    .line 99
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 100
    .line 101
    .line 102
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 103
    .line 104
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 105
    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 119
    .line 120
    .line 121
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 122
    .line 123
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 124
    .line 125
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 126
    .line 127
    .line 128
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    .line 130
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 131
    .line 132
    sget-object v1, Landroidx/media3/container/NalUnitUtil;->a:[B

    .line 133
    .line 134
    invoke-direct {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 138
    .line 139
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 140
    .line 141
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 145
    .line 146
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 147
    .line 148
    invoke-direct {p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 152
    .line 153
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 154
    .line 155
    invoke-direct {p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 159
    .line 160
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 161
    .line 162
    const/16 v0, 0x8

    .line 163
    .line 164
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 165
    .line 166
    .line 167
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 168
    .line 169
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 170
    .line 171
    invoke-direct {p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 175
    .line 176
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 177
    .line 178
    invoke-direct {p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Landroidx/media3/common/util/ParsableByteArray;

    .line 182
    .line 183
    new-array p2, p1, [I

    .line 184
    .line 185
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 186
    .line 187
    iput-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Z

    .line 188
    .line 189
    return-void
.end method

.method public static j(JJLjava/lang/String;)[B
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p0, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 14
    .line 15
    .line 16
    const-wide v0, 0xd693a400L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    div-long v2, p0, v0

    .line 22
    .line 23
    long-to-int v2, v2

    .line 24
    int-to-long v3, v2

    .line 25
    mul-long/2addr v3, v0

    .line 26
    sub-long/2addr p0, v3

    .line 27
    const-wide/32 v0, 0x3938700

    .line 28
    .line 29
    .line 30
    div-long v3, p0, v0

    .line 31
    .line 32
    long-to-int v3, v3

    .line 33
    int-to-long v4, v3

    .line 34
    mul-long/2addr v4, v0

    .line 35
    sub-long/2addr p0, v4

    .line 36
    const-wide/32 v0, 0xf4240

    .line 37
    .line 38
    .line 39
    div-long v4, p0, v0

    .line 40
    .line 41
    long-to-int v4, v4

    .line 42
    int-to-long v5, v4

    .line 43
    mul-long/2addr v5, v0

    .line 44
    sub-long/2addr p0, v5

    .line 45
    div-long/2addr p0, p2

    .line 46
    long-to-int p0, p0

    .line 47
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    filled-new-array {p2, p3, v0, p0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 74
    .line 75
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 14

    .line 1
    new-instance p0, Landroidx/media3/extractor/mkv/Sniffer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 7
    .line 8
    iget-wide v0, p1, Landroidx/media3/extractor/DefaultExtractorInput;->c:J

    .line 9
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    const-wide/16 v3, 0x400

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    cmp-long v5, v0, v3

    .line 19
    .line 20
    if-lez v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide v3, v0

    .line 24
    :cond_1
    :goto_0
    long-to-int v3, v3

    .line 25
    iget-object v4, p0, Landroidx/media3/extractor/mkv/Sniffer;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 26
    .line 27
    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x4

    .line 31
    invoke-virtual {p1, v5, v6, v7, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    iput v7, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 39
    .line 40
    :goto_1
    const-wide/32 v10, 0x1a45dfa3

    .line 41
    .line 42
    .line 43
    cmp-long v5, v8, v10

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    iget v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 49
    .line 50
    add-int/2addr v5, v7

    .line 51
    iput v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 52
    .line 53
    if-ne v5, v3, :cond_2

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 57
    .line 58
    invoke-virtual {p1, v5, v6, v7, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 59
    .line 60
    .line 61
    const/16 v5, 0x8

    .line 62
    .line 63
    shl-long v7, v8, v5

    .line 64
    .line 65
    const-wide/16 v9, -0x100

    .line 66
    .line 67
    and-long/2addr v7, v9

    .line 68
    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 69
    .line 70
    aget-byte v5, v5, v6

    .line 71
    .line 72
    and-int/lit16 v5, v5, 0xff

    .line 73
    .line 74
    int-to-long v9, v5

    .line 75
    or-long v8, v7, v9

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    iget v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 83
    .line 84
    int-to-long v8, v5

    .line 85
    const-wide/high16 v10, -0x8000000000000000L

    .line 86
    .line 87
    cmp-long v5, v3, v10

    .line 88
    .line 89
    if-eqz v5, :cond_8

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    add-long v12, v8, v3

    .line 94
    .line 95
    cmp-long v0, v12, v0

    .line 96
    .line 97
    if-ltz v0, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :goto_2
    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 101
    .line 102
    int-to-long v0, v0

    .line 103
    add-long v12, v8, v3

    .line 104
    .line 105
    cmp-long v0, v0, v12

    .line 106
    .line 107
    if-gez v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    cmp-long v0, v0, v10

    .line 114
    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    const-wide/16 v12, 0x0

    .line 123
    .line 124
    cmp-long v2, v0, v12

    .line 125
    .line 126
    if-ltz v2, :cond_8

    .line 127
    .line 128
    const-wide/32 v12, 0x7fffffff

    .line 129
    .line 130
    .line 131
    cmp-long v5, v0, v12

    .line 132
    .line 133
    if-lez v5, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    if-eqz v2, :cond_4

    .line 137
    .line 138
    long-to-int v0, v0

    .line 139
    invoke-virtual {p1, v0, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->p(IZ)Z

    .line 140
    .line 141
    .line 142
    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 143
    .line 144
    add-int/2addr v1, v0

    .line 145
    iput v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    if-nez v0, :cond_8

    .line 149
    .line 150
    return v7

    .line 151
    :cond_8
    :goto_3
    return v6
.end method

.method public final c(JJ)V
    .locals 1

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:J

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    iput p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 10
    .line 11
    iget-object p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    .line 12
    .line 13
    iput p3, p4, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    .line 14
    .line 15
    iget-object v0, p4, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p4, p4, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->c:Landroidx/media3/extractor/mkv/VarintReader;

    .line 21
    .line 22
    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->b:I

    .line 23
    .line 24
    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->c:I

    .line 25
    .line 26
    iget-object p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b:Landroidx/media3/extractor/mkv/VarintReader;

    .line 27
    .line 28
    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->b:I

    .line 29
    .line 30
    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->c:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n()V

    .line 33
    .line 34
    .line 35
    iput-boolean p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:Z

    .line 36
    .line 37
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:I

    .line 41
    .line 42
    const-wide/16 p1, -0x1

    .line 43
    .line 44
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    .line 45
    .line 46
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:J

    .line 47
    .line 48
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 55
    .line 56
    .line 57
    :cond_0
    move p1, p3

    .line 58
    :goto_0
    iget-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    if-ge p1, p4, :cond_2

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 71
    .line 72
    iget-object p2, p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 73
    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    iput-boolean p3, p2, Landroidx/media3/extractor/TrueHdSampleRechunker;->b:Z

    .line 77
    .line 78
    iput p3, p2, Landroidx/media3/extractor/TrueHdSampleRechunker;->c:I

    .line 79
    .line 80
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    .line 14
    .line 15
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    move v2, v1

    .line 6
    :cond_0
    if-eqz v2, :cond_4

    .line 7
    .line 8
    iget-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:Z

    .line 9
    .line 10
    if-nez v3, :cond_4

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iget-boolean v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->P:Z

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    .line 29
    .line 30
    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:J

    .line 31
    .line 32
    iput-wide v2, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->P:Z

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    iget-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:Z

    .line 38
    .line 39
    const-wide/16 v4, -0x1

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-wide v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    .line 44
    .line 45
    cmp-long v3, v6, v4

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iput-wide v6, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 50
    .line 51
    iput-wide v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    iget-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:Z

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iput-wide v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:J

    .line 63
    .line 64
    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    .line 65
    .line 66
    iput-wide v2, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 67
    .line 68
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:Z

    .line 69
    .line 70
    return v1

    .line 71
    :cond_3
    iget-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    iget-wide v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:J

    .line 76
    .line 77
    cmp-long v3, v6, v4

    .line 78
    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    iput-wide v6, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 82
    .line 83
    iput-wide v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:J

    .line 84
    .line 85
    return v1

    .line 86
    :cond_4
    if-nez v2, :cond_7

    .line 87
    .line 88
    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-ge v0, p2, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 101
    .line 102
    iget-object p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 108
    .line 109
    if-eqz p2, :cond_5

    .line 110
    .line 111
    iget-object v1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 112
    .line 113
    iget-object p1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 114
    .line 115
    invoke-virtual {p2, v1, p1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->a(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    const/4 p0, -0x1

    .line 122
    return p0

    .line 123
    :cond_7
    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Element "

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a Cues"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method

.method public final h(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Element "

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in a TrackEntry"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method

.method public final i(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move-object v3, v2

    .line 11
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 12
    .line 13
    iget-object v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 14
    .line 15
    move/from16 v5, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move/from16 v7, p6

    .line 20
    .line 21
    move-object v1, v3

    .line 22
    move-wide/from16 v3, p2

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/extractor/TrueHdSampleRechunker;->b(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :cond_0
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "S_TEXT/UTF8"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x2

    .line 38
    const-string v5, "S_TEXT/WEBVTT"

    .line 39
    .line 40
    const-string v6, "S_TEXT/SSA"

    .line 41
    .line 42
    const-string v7, "S_TEXT/ASS"

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    :cond_1
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 72
    .line 73
    const-string v10, "MatroskaExtractor"

    .line 74
    .line 75
    if-le v2, v9, :cond_2

    .line 76
    .line 77
    const-string v2, "Skipping subtitle sample in laced block."

    .line 78
    .line 79
    invoke-static {v10, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-wide v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:J

    .line 84
    .line 85
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmp-long v2, v11, v13

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    const-string v2, "Skipping subtitle sample with no duration."

    .line 95
    .line 96
    invoke-static {v10, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    move/from16 v2, p5

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 106
    .line 107
    iget-object v13, v10, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    const/4 v15, -0x1

    .line 117
    sparse-switch v14, :sswitch_data_0

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    const/4 v15, 0x3

    .line 129
    goto :goto_1

    .line 130
    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    move v15, v4

    .line 138
    goto :goto_1

    .line 139
    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_7

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    move v15, v9

    .line 147
    goto :goto_1

    .line 148
    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    move v15, v8

    .line 156
    :goto_1
    const-wide/16 v2, 0x3e8

    .line 157
    .line 158
    packed-switch v15, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lfe;->h()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_0
    const-string v5, "%02d:%02d:%02d,%03d"

    .line 166
    .line 167
    invoke-static {v11, v12, v2, v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j(JJLjava/lang/String;)[B

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const/16 v3, 0x13

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_1
    const-string v5, "%02d:%02d:%02d.%03d"

    .line 175
    .line 176
    invoke-static {v11, v12, v2, v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j(JJLjava/lang/String;)[B

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const/16 v3, 0x19

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :pswitch_2
    const-string v2, "%01d:%02d:%02d:%02d"

    .line 184
    .line 185
    const-wide/16 v5, 0x2710

    .line 186
    .line 187
    invoke-static {v11, v12, v5, v6, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j(JJLjava/lang/String;)[B

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const/16 v3, 0x15

    .line 192
    .line 193
    :goto_2
    array-length v5, v2

    .line 194
    invoke-static {v2, v8, v13, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    .line 196
    .line 197
    iget v2, v10, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 198
    .line 199
    :goto_3
    iget v3, v10, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 200
    .line 201
    if-ge v2, v3, :cond_a

    .line 202
    .line 203
    iget-object v3, v10, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 204
    .line 205
    aget-byte v3, v3, v2

    .line 206
    .line 207
    if-nez v3, :cond_9

    .line 208
    .line 209
    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_a
    :goto_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 217
    .line 218
    iget v3, v10, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 219
    .line 220
    invoke-interface {v2, v3, v10}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 221
    .line 222
    .line 223
    iget v2, v10, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 224
    .line 225
    add-int v2, p5, v2

    .line 226
    .line 227
    :goto_5
    const/high16 v3, 0x10000000

    .line 228
    .line 229
    and-int v3, p4, v3

    .line 230
    .line 231
    if-eqz v3, :cond_c

    .line 232
    .line 233
    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 234
    .line 235
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Landroidx/media3/common/util/ParsableByteArray;

    .line 236
    .line 237
    if-le v3, v9, :cond_b

    .line 238
    .line 239
    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_b
    iget v3, v5, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 244
    .line 245
    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 246
    .line 247
    invoke-interface {v6, v5, v3, v4}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 248
    .line 249
    .line 250
    add-int/2addr v2, v3

    .line 251
    :cond_c
    :goto_6
    move v14, v2

    .line 252
    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 253
    .line 254
    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 255
    .line 256
    move-wide/from16 v11, p2

    .line 257
    .line 258
    move/from16 v13, p4

    .line 259
    .line 260
    move/from16 v15, p6

    .line 261
    .line 262
    move-object/from16 v16, v1

    .line 263
    .line 264
    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 265
    .line 266
    .line 267
    :goto_7
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:Z

    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Element "

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " must be in an EditionEntry"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:J

    .line 7
    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v1, v3, :cond_3

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 34
    .line 35
    iget-boolean v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 49
    .line 50
    .line 51
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Z

    .line 52
    .line 53
    return-void
.end method

.method public final m(Landroidx/media3/extractor/ExtractorInput;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 4
    .line 5
    if-lt v0, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    if-ge v1, p2, :cond_1

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->c(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 24
    .line 25
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 26
    .line 27
    sub-int v2, p2, v1

    .line 28
    .line 29
    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:I

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k0:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l0:Z

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:I

    .line 15
    .line 16
    iput-byte v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n0:B

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o0:Z

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o(J)J
    .locals 7

    .line 1
    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long p0, v2, v0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 15
    .line 16
    const-wide/16 v4, 0x3e8

    .line 17
    .line 18
    move-wide v0, p1

    .line 19
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_0
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    throw p0
.end method

.method public final p(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    .line 6
    .line 7
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    if-nez v2, :cond_a

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d:Landroid/util/LongSparseArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    if-nez v9, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    move v10, v8

    .line 38
    :goto_0
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-ge v10, v11, :cond_8

    .line 43
    .line 44
    invoke-virtual {v2, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    check-cast v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 49
    .line 50
    iget-wide v12, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->e:J

    .line 51
    .line 52
    cmp-long v14, v12, v5

    .line 53
    .line 54
    if-eqz v14, :cond_1

    .line 55
    .line 56
    iget-wide v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:J

    .line 57
    .line 58
    cmp-long v12, v12, v14

    .line 59
    .line 60
    if-nez v12, :cond_7

    .line 61
    .line 62
    :cond_1
    new-instance v12, Landroidx/media3/extractor/metadata/Chapter$Builder;

    .line 63
    .line 64
    invoke-direct {v12}, Landroidx/media3/extractor/metadata/Chapter$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-wide v13, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->b:J

    .line 68
    .line 69
    sget-object v15, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 70
    .line 71
    cmp-long v15, v13, v3

    .line 72
    .line 73
    const-wide/32 v16, 0xf4240

    .line 74
    .line 75
    .line 76
    const-wide/high16 v18, -0x8000000000000000L

    .line 77
    .line 78
    if-eqz v15, :cond_3

    .line 79
    .line 80
    cmp-long v15, v13, v18

    .line 81
    .line 82
    if-nez v15, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    div-long v13, v13, v16

    .line 86
    .line 87
    :cond_3
    :goto_1
    iput-wide v13, v12, Landroidx/media3/extractor/metadata/Chapter$Builder;->a:J

    .line 88
    .line 89
    iget-wide v13, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->c:J

    .line 90
    .line 91
    cmp-long v15, v13, v3

    .line 92
    .line 93
    if-eqz v15, :cond_5

    .line 94
    .line 95
    cmp-long v15, v13, v18

    .line 96
    .line 97
    if-nez v15, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    div-long v13, v13, v16

    .line 101
    .line 102
    :cond_5
    :goto_2
    iput-wide v13, v12, Landroidx/media3/extractor/metadata/Chapter$Builder;->b:J

    .line 103
    .line 104
    iget-boolean v13, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->d:Z

    .line 105
    .line 106
    iput-boolean v13, v12, Landroidx/media3/extractor/metadata/Chapter$Builder;->c:Z

    .line 107
    .line 108
    iget-object v13, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->f:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v13, :cond_6

    .line 111
    .line 112
    new-instance v13, Landroidx/media3/common/Label;

    .line 113
    .line 114
    iget-object v14, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->g:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v11, v11, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->f:Ljava/lang/String;

    .line 117
    .line 118
    invoke-direct {v13, v14, v11}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v13, v12, Landroidx/media3/extractor/metadata/Chapter$Builder;->d:Landroidx/media3/common/Label;

    .line 122
    .line 123
    :cond_6
    invoke-virtual {v12}, Landroidx/media3/extractor/metadata/Chapter$Builder;->a()Landroidx/media3/extractor/metadata/Chapter;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_a

    .line 138
    .line 139
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 149
    .line 150
    iget-object v10, v10, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 151
    .line 152
    if-eqz v10, :cond_9

    .line 153
    .line 154
    new-array v11, v8, [Landroidx/media3/extractor/metadata/Chapter;

    .line 155
    .line 156
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    check-cast v9, [Landroidx/media3/common/Metadata$Entry;

    .line 161
    .line 162
    invoke-virtual {v10, v9}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    goto :goto_3

    .line 167
    :cond_9
    new-instance v10, Landroidx/media3/common/Metadata;

    .line 168
    .line 169
    invoke-direct {v10, v9}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    move-object v9, v10

    .line 173
    :goto_3
    iput-object v9, v2, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 174
    .line 175
    new-instance v9, Landroidx/media3/common/Format;

    .line 176
    .line 177
    invoke-direct {v9, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 178
    .line 179
    .line 180
    iput-object v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 181
    .line 182
    iput-boolean v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    .line 183
    .line 184
    :cond_a
    :goto_4
    iget-wide v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    .line 185
    .line 186
    iget-wide v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    .line 187
    .line 188
    iget-wide v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    .line 189
    .line 190
    iget v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 191
    .line 192
    const/4 v15, 0x2

    .line 193
    if-eq v2, v15, :cond_b

    .line 194
    .line 195
    goto/16 :goto_c

    .line 196
    .line 197
    :cond_b
    iget v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    .line 198
    .line 199
    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:Landroid/util/SparseArray;

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/util/List;

    .line 206
    .line 207
    iget-boolean v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Z:Z

    .line 208
    .line 209
    if-nez v2, :cond_14

    .line 210
    .line 211
    if-eqz v0, :cond_14

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_c

    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_d

    .line 226
    .line 227
    move-wide/from16 v18, v3

    .line 228
    .line 229
    move/from16 p0, v8

    .line 230
    .line 231
    :goto_5
    move-wide/from16 v2, v18

    .line 232
    .line 233
    goto/16 :goto_a

    .line 234
    .line 235
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    const/16 v15, 0x14

    .line 240
    .line 241
    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    const-wide/16 v16, 0x0

    .line 246
    .line 247
    move-wide/from16 v18, v3

    .line 248
    .line 249
    move v3, v8

    .line 250
    const/4 v4, -0x1

    .line 251
    :goto_6
    if-ge v3, v2, :cond_11

    .line 252
    .line 253
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v20

    .line 257
    move-wide/from16 v21, v5

    .line 258
    .line 259
    move-object/from16 v5, v20

    .line 260
    .line 261
    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 262
    .line 263
    move v6, v8

    .line 264
    move-wide/from16 v23, v9

    .line 265
    .line 266
    iget-wide v8, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 267
    .line 268
    move/from16 p0, v6

    .line 269
    .line 270
    move v10, v7

    .line 271
    iget-wide v6, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->l:J

    .line 272
    .line 273
    move-wide/from16 v25, v11

    .line 274
    .line 275
    move v12, v10

    .line 276
    iget-wide v10, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->k:J

    .line 277
    .line 278
    const-wide/32 v27, 0x989680

    .line 279
    .line 280
    .line 281
    cmp-long v5, v8, v27

    .line 282
    .line 283
    if-lez v5, :cond_e

    .line 284
    .line 285
    :goto_7
    const/4 v2, -0x1

    .line 286
    goto :goto_9

    .line 287
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    sub-int/2addr v5, v12

    .line 292
    if-ge v3, v5, :cond_f

    .line 293
    .line 294
    add-int/lit8 v5, v3, 0x1

    .line 295
    .line 296
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 301
    .line 302
    move-wide/from16 v27, v13

    .line 303
    .line 304
    iget-wide v12, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->k:J

    .line 305
    .line 306
    iget-wide v14, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->l:J

    .line 307
    .line 308
    add-long/2addr v12, v14

    .line 309
    add-long/2addr v10, v6

    .line 310
    sub-long/2addr v12, v10

    .line 311
    iget-wide v5, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 312
    .line 313
    sub-long/2addr v5, v8

    .line 314
    goto :goto_8

    .line 315
    :cond_f
    move-wide/from16 v27, v13

    .line 316
    .line 317
    add-long v12, v25, v27

    .line 318
    .line 319
    add-long/2addr v10, v6

    .line 320
    sub-long/2addr v12, v10

    .line 321
    sub-long v5, v23, v8

    .line 322
    .line 323
    :goto_8
    cmp-long v7, v5, v21

    .line 324
    .line 325
    if-lez v7, :cond_10

    .line 326
    .line 327
    long-to-double v7, v12

    .line 328
    long-to-double v5, v5

    .line 329
    div-double/2addr v7, v5

    .line 330
    cmpl-double v5, v7, v16

    .line 331
    .line 332
    if-lez v5, :cond_10

    .line 333
    .line 334
    move v4, v3

    .line 335
    move-wide/from16 v16, v7

    .line 336
    .line 337
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 338
    .line 339
    move/from16 v8, p0

    .line 340
    .line 341
    move-wide/from16 v5, v21

    .line 342
    .line 343
    move-wide/from16 v9, v23

    .line 344
    .line 345
    move-wide/from16 v11, v25

    .line 346
    .line 347
    move-wide/from16 v13, v27

    .line 348
    .line 349
    const/4 v7, 0x1

    .line 350
    goto :goto_6

    .line 351
    :cond_11
    move/from16 p0, v8

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :goto_9
    if-ne v4, v2, :cond_12

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_12
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 362
    .line 363
    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->j:J

    .line 364
    .line 365
    :goto_a
    cmp-long v0, v2, v18

    .line 366
    .line 367
    if-eqz v0, :cond_14

    .line 368
    .line 369
    iget-object v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    iget-object v0, v0, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 375
    .line 376
    new-instance v4, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    .line 377
    .line 378
    invoke-direct {v4, v2, v3}, Landroidx/media3/extractor/metadata/ThumbnailMetadata;-><init>(J)V

    .line 379
    .line 380
    .line 381
    if-nez v0, :cond_13

    .line 382
    .line 383
    new-instance v0, Landroidx/media3/common/Metadata;

    .line 384
    .line 385
    const/4 v14, 0x1

    .line 386
    new-array v2, v14, [Landroidx/media3/common/Metadata$Entry;

    .line 387
    .line 388
    aput-object v4, v2, p0

    .line 389
    .line 390
    invoke-direct {v0, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 391
    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_13
    const/4 v14, 0x1

    .line 395
    new-array v2, v14, [Landroidx/media3/common/Metadata$Entry;

    .line 396
    .line 397
    aput-object v4, v2, p0

    .line 398
    .line 399
    invoke-virtual {v0, v2}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    :goto_b
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 404
    .line 405
    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    iput-object v0, v2, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 410
    .line 411
    new-instance v0, Landroidx/media3/common/Format;

    .line 412
    .line 413
    invoke-direct {v0, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 414
    .line 415
    .line 416
    iput-object v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 417
    .line 418
    iput-boolean v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Z:Z

    .line 419
    .line 420
    :cond_14
    :goto_c
    return-void
.end method

.method public final q(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .locals 17

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
    move/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "S_TEXT/UTF8"

    .line 10
    .line 11
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q0:[B

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r(Landroidx/media3/extractor/ExtractorInput;[BI)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    const-string v4, "S_TEXT/ASS"

    .line 31
    .line 32
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_20

    .line 39
    .line 40
    const-string v4, "S_TEXT/SSA"

    .line 41
    .line 42
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto/16 :goto_e

    .line 51
    .line 52
    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    .line 53
    .line 54
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t0:[B

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r(Landroidx/media3/extractor/ExtractorInput;[BI)V

    .line 65
    .line 66
    .line 67
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n()V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget-boolean v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 84
    .line 85
    invoke-static {v1, v3, v4}, Landroidx/media3/extractor/DtsUtil;->h(Landroidx/media3/extractor/ExtractorInput;ILandroidx/media3/common/Format;)Landroidx/media3/common/Format;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iput-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 90
    .line 91
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 92
    .line 93
    invoke-interface {v6, v4}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 94
    .line 95
    .line 96
    iput-boolean v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l()V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 102
    .line 103
    iget-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Z

    .line 104
    .line 105
    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 106
    .line 107
    const/4 v8, 0x4

    .line 108
    const/4 v9, 0x2

    .line 109
    const/4 v10, 0x1

    .line 110
    if-nez v6, :cond_15

    .line 111
    .line 112
    iget-boolean v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:Z

    .line 113
    .line 114
    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 115
    .line 116
    if-eqz v6, :cond_10

    .line 117
    .line 118
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 119
    .line 120
    const v12, -0x40000001    # -1.9999999f

    .line 121
    .line 122
    .line 123
    and-int/2addr v6, v12

    .line 124
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 125
    .line 126
    iget-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k0:Z

    .line 127
    .line 128
    const/16 v12, 0x80

    .line 129
    .line 130
    if-nez v6, :cond_5

    .line 131
    .line 132
    iget-object v6, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 133
    .line 134
    invoke-interface {v1, v6, v5, v10}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 135
    .line 136
    .line 137
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 138
    .line 139
    add-int/2addr v6, v10

    .line 140
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 141
    .line 142
    iget-object v6, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 143
    .line 144
    aget-byte v6, v6, v5

    .line 145
    .line 146
    and-int/lit16 v13, v6, 0x80

    .line 147
    .line 148
    if-eq v13, v12, :cond_4

    .line 149
    .line 150
    iput-byte v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n0:B

    .line 151
    .line 152
    iput-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k0:Z

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    const-string v0, "Extension bit is set in signal byte"

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    throw v0

    .line 163
    :cond_5
    :goto_0
    iget-byte v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n0:B

    .line 164
    .line 165
    and-int/lit8 v13, v6, 0x1

    .line 166
    .line 167
    if-ne v13, v10, :cond_f

    .line 168
    .line 169
    and-int/2addr v6, v9

    .line 170
    if-ne v6, v9, :cond_6

    .line 171
    .line 172
    move v6, v10

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    move v6, v5

    .line 175
    :goto_1
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 176
    .line 177
    const/high16 v14, 0x40000000    # 2.0f

    .line 178
    .line 179
    or-int/2addr v13, v14

    .line 180
    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 181
    .line 182
    iget-boolean v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o0:Z

    .line 183
    .line 184
    if-nez v13, :cond_8

    .line 185
    .line 186
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 187
    .line 188
    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 189
    .line 190
    const/16 v15, 0x8

    .line 191
    .line 192
    invoke-interface {v1, v14, v5, v15}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 193
    .line 194
    .line 195
    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 196
    .line 197
    add-int/2addr v14, v15

    .line 198
    iput v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 199
    .line 200
    iput-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o0:Z

    .line 201
    .line 202
    iget-object v14, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 203
    .line 204
    if-eqz v6, :cond_7

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    move v12, v5

    .line 208
    :goto_2
    or-int/2addr v12, v15

    .line 209
    int-to-byte v12, v12

    .line 210
    aput-byte v12, v14, v5

    .line 211
    .line 212
    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v4, v11, v10, v10}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 216
    .line 217
    .line 218
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 219
    .line 220
    add-int/2addr v12, v10

    .line 221
    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 222
    .line 223
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v4, v13, v15, v10}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 227
    .line 228
    .line 229
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 230
    .line 231
    add-int/2addr v12, v15

    .line 232
    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 233
    .line 234
    :cond_8
    if-eqz v6, :cond_f

    .line 235
    .line 236
    iget-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l0:Z

    .line 237
    .line 238
    if-nez v6, :cond_9

    .line 239
    .line 240
    iget-object v6, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 241
    .line 242
    invoke-interface {v1, v6, v5, v10}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 243
    .line 244
    .line 245
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 246
    .line 247
    add-int/2addr v6, v10

    .line 248
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 249
    .line 250
    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:I

    .line 258
    .line 259
    iput-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l0:Z

    .line 260
    .line 261
    :cond_9
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:I

    .line 262
    .line 263
    mul-int/2addr v6, v8

    .line 264
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 265
    .line 266
    .line 267
    iget-object v12, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 268
    .line 269
    invoke-interface {v1, v12, v5, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 270
    .line 271
    .line 272
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 273
    .line 274
    add-int/2addr v12, v6

    .line 275
    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 276
    .line 277
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:I

    .line 278
    .line 279
    div-int/2addr v6, v9

    .line 280
    add-int/2addr v6, v10

    .line 281
    int-to-short v6, v6

    .line 282
    mul-int/lit8 v12, v6, 0x6

    .line 283
    .line 284
    add-int/2addr v12, v9

    .line 285
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 286
    .line 287
    if-eqz v13, :cond_a

    .line 288
    .line 289
    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    if-ge v13, v12, :cond_b

    .line 294
    .line 295
    :cond_a
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    iput-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 300
    .line 301
    :cond_b
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 302
    .line 303
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    .line 305
    .line 306
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    .line 311
    move v6, v5

    .line 312
    move v13, v6

    .line 313
    :goto_3
    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:I

    .line 314
    .line 315
    if-ge v6, v14, :cond_d

    .line 316
    .line 317
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    rem-int/lit8 v15, v6, 0x2

    .line 322
    .line 323
    move/from16 v16, v9

    .line 324
    .line 325
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 326
    .line 327
    if-nez v15, :cond_c

    .line 328
    .line 329
    sub-int v13, v14, v13

    .line 330
    .line 331
    int-to-short v13, v13

    .line 332
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_c
    sub-int v13, v14, v13

    .line 337
    .line 338
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    .line 341
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 342
    .line 343
    move v13, v14

    .line 344
    move/from16 v9, v16

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_d
    move/from16 v16, v9

    .line 348
    .line 349
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 350
    .line 351
    sub-int v6, v3, v6

    .line 352
    .line 353
    sub-int/2addr v6, v13

    .line 354
    rem-int/lit8 v14, v14, 0x2

    .line 355
    .line 356
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 357
    .line 358
    if-ne v14, v10, :cond_e

    .line 359
    .line 360
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_e
    int-to-short v6, v6

    .line 365
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 366
    .line 367
    .line 368
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 369
    .line 370
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 371
    .line 372
    .line 373
    :goto_5
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:Ljava/nio/ByteBuffer;

    .line 374
    .line 375
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 380
    .line 381
    invoke-virtual {v9, v12, v6}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v4, v9, v12, v10}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 385
    .line 386
    .line 387
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 388
    .line 389
    add-int/2addr v6, v12

    .line 390
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_f
    move/from16 v16, v9

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_10
    move/from16 v16, v9

    .line 397
    .line 398
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:[B

    .line 399
    .line 400
    if-eqz v6, :cond_11

    .line 401
    .line 402
    array-length v9, v6

    .line 403
    invoke-virtual {v7, v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 404
    .line 405
    .line 406
    :cond_11
    :goto_6
    const-string v6, "A_OPUS"

    .line 407
    .line 408
    iget-object v9, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    if-eqz v6, :cond_12

    .line 415
    .line 416
    move/from16 v6, p4

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_12
    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->h:I

    .line 420
    .line 421
    if-lez v6, :cond_13

    .line 422
    .line 423
    move v6, v10

    .line 424
    goto :goto_7

    .line 425
    :cond_13
    move v6, v5

    .line 426
    :goto_7
    if-eqz v6, :cond_14

    .line 427
    .line 428
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 429
    .line 430
    const/high16 v9, 0x10000000

    .line 431
    .line 432
    or-int/2addr v6, v9

    .line 433
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 434
    .line 435
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Landroidx/media3/common/util/ParsableByteArray;

    .line 436
    .line 437
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 438
    .line 439
    .line 440
    iget v6, v7, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 441
    .line 442
    add-int/2addr v6, v3

    .line 443
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 444
    .line 445
    sub-int/2addr v6, v9

    .line 446
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 447
    .line 448
    .line 449
    iget-object v9, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 450
    .line 451
    shr-int/lit8 v12, v6, 0x18

    .line 452
    .line 453
    and-int/lit16 v12, v12, 0xff

    .line 454
    .line 455
    int-to-byte v12, v12

    .line 456
    aput-byte v12, v9, v5

    .line 457
    .line 458
    shr-int/lit8 v12, v6, 0x10

    .line 459
    .line 460
    and-int/lit16 v12, v12, 0xff

    .line 461
    .line 462
    int-to-byte v12, v12

    .line 463
    aput-byte v12, v9, v10

    .line 464
    .line 465
    shr-int/lit8 v12, v6, 0x8

    .line 466
    .line 467
    and-int/lit16 v12, v12, 0xff

    .line 468
    .line 469
    int-to-byte v12, v12

    .line 470
    aput-byte v12, v9, v16

    .line 471
    .line 472
    and-int/lit16 v6, v6, 0xff

    .line 473
    .line 474
    int-to-byte v6, v6

    .line 475
    const/4 v12, 0x3

    .line 476
    aput-byte v6, v9, v12

    .line 477
    .line 478
    move/from16 v6, v16

    .line 479
    .line 480
    invoke-interface {v4, v11, v8, v6}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 481
    .line 482
    .line 483
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 484
    .line 485
    add-int/2addr v6, v8

    .line 486
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 487
    .line 488
    :cond_14
    iput-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Z

    .line 489
    .line 490
    :cond_15
    iget v6, v7, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 491
    .line 492
    add-int/2addr v3, v6

    .line 493
    const-string v6, "V_MPEG4/ISO/AVC"

    .line 494
    .line 495
    iget-object v9, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 496
    .line 497
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    if-nez v6, :cond_1a

    .line 502
    .line 503
    const-string v6, "V_MPEGH/ISO/HEVC"

    .line 504
    .line 505
    iget-object v9, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    if-eqz v6, :cond_16

    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_16
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 515
    .line 516
    if-eqz v6, :cond_18

    .line 517
    .line 518
    iget v6, v7, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 519
    .line 520
    if-nez v6, :cond_17

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_17
    move v10, v5

    .line 524
    :goto_8
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 525
    .line 526
    .line 527
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 528
    .line 529
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->c(Landroidx/media3/extractor/ExtractorInput;)V

    .line 530
    .line 531
    .line 532
    :cond_18
    :goto_9
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 533
    .line 534
    if-ge v6, v3, :cond_1e

    .line 535
    .line 536
    sub-int v6, v3, v6

    .line 537
    .line 538
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 539
    .line 540
    .line 541
    move-result v9

    .line 542
    if-lez v9, :cond_19

    .line 543
    .line 544
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    invoke-interface {v4, v6, v7}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_19
    invoke-interface {v4, v1, v6, v5}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 553
    .line 554
    .line 555
    move-result v6

    .line 556
    :goto_a
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 557
    .line 558
    add-int/2addr v9, v6

    .line 559
    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 560
    .line 561
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 562
    .line 563
    add-int/2addr v9, v6

    .line 564
    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_1a
    :goto_b
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 568
    .line 569
    iget-object v9, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 570
    .line 571
    aput-byte v5, v9, v5

    .line 572
    .line 573
    aput-byte v5, v9, v10

    .line 574
    .line 575
    const/16 v16, 0x2

    .line 576
    .line 577
    aput-byte v5, v9, v16

    .line 578
    .line 579
    iget v10, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f0:I

    .line 580
    .line 581
    rsub-int/lit8 v11, v10, 0x4

    .line 582
    .line 583
    :goto_c
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 584
    .line 585
    if-ge v12, v3, :cond_1e

    .line 586
    .line 587
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:I

    .line 588
    .line 589
    if-nez v12, :cond_1c

    .line 590
    .line 591
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 592
    .line 593
    .line 594
    move-result v12

    .line 595
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    .line 596
    .line 597
    .line 598
    move-result v12

    .line 599
    add-int v13, v11, v12

    .line 600
    .line 601
    sub-int v14, v10, v12

    .line 602
    .line 603
    invoke-interface {v1, v9, v13, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 604
    .line 605
    .line 606
    if-lez v12, :cond_1b

    .line 607
    .line 608
    invoke-virtual {v7, v9, v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 609
    .line 610
    .line 611
    :cond_1b
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 612
    .line 613
    add-int/2addr v12, v10

    .line 614
    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 615
    .line 616
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:I

    .line 624
    .line 625
    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 626
    .line 627
    invoke-virtual {v12, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v4, v8, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 631
    .line 632
    .line 633
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 634
    .line 635
    add-int/2addr v12, v8

    .line 636
    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 637
    .line 638
    goto :goto_c

    .line 639
    :cond_1c
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 640
    .line 641
    .line 642
    move-result v13

    .line 643
    if-lez v13, :cond_1d

    .line 644
    .line 645
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 646
    .line 647
    .line 648
    move-result v12

    .line 649
    invoke-interface {v4, v12, v7}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 650
    .line 651
    .line 652
    goto :goto_d

    .line 653
    :cond_1d
    invoke-interface {v4, v1, v12, v5}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 654
    .line 655
    .line 656
    move-result v12

    .line 657
    :goto_d
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 658
    .line 659
    add-int/2addr v13, v12

    .line 660
    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    .line 661
    .line 662
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 663
    .line 664
    add-int/2addr v13, v12

    .line 665
    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 666
    .line 667
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:I

    .line 668
    .line 669
    sub-int/2addr v13, v12

    .line 670
    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:I

    .line 671
    .line 672
    goto :goto_c

    .line 673
    :cond_1e
    const-string v1, "A_VORBIS"

    .line 674
    .line 675
    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 676
    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-eqz v1, :cond_1f

    .line 682
    .line 683
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 684
    .line 685
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 686
    .line 687
    .line 688
    invoke-interface {v4, v8, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 689
    .line 690
    .line 691
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 692
    .line 693
    add-int/2addr v1, v8

    .line 694
    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 695
    .line 696
    :cond_1f
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 697
    .line 698
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n()V

    .line 699
    .line 700
    .line 701
    return v1

    .line 702
    :cond_20
    :goto_e
    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s0:[B

    .line 703
    .line 704
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r(Landroidx/media3/extractor/ExtractorInput;[BI)V

    .line 705
    .line 706
    .line 707
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:I

    .line 708
    .line 709
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n()V

    .line 710
    .line 711
    .line 712
    return v1
.end method

.method public final r(Landroidx/media3/extractor/ExtractorInput;[BI)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    add-int/2addr v0, p3

    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    add-int v1, v0, p3

    .line 12
    .line 13
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    array-length v2, v1

    .line 21
    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v2, p2

    .line 26
    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 30
    .line 31
    array-length p2, p2

    .line 32
    invoke-interface {p1, v1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
