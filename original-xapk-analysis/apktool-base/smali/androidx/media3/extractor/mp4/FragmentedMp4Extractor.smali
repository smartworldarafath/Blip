.class public Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MfraSeekMap;
    }
.end annotation


# static fields
.field public static final N:[B

.field public static final O:Landroidx/media3/common/Format;


# instance fields
.field public A:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Landroidx/media3/extractor/ExtractorOutput;

.field public H:[Landroidx/media3/extractor/TrackOutput;

.field public I:[Landroidx/media3/extractor/TrackOutput;

.field public J:Z

.field public K:Z

.field public L:J

.field public M:J

.field public final a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public final h:[B

.field public final i:Landroidx/media3/common/util/ParsableByteArray;

.field public final j:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

.field public final k:Landroidx/media3/common/util/ParsableByteArray;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Landroidx/media3/container/ReorderingBufferQueue;

.field public final o:Landroidx/media3/extractor/ChunkIndexMerger;

.field public p:Lcom/google/common/collect/ImmutableList;

.field public q:I

.field public r:I

.field public s:J

.field public t:I

.field public u:Landroidx/media3/common/util/ParsableByteArray;

.field public v:J

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->N:[B

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Landroidx/media3/common/Format;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:Landroidx/media3/common/Format;

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 9
    .line 10
    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->c:Ljava/util/List;

    .line 17
    .line 18
    new-instance p1, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 24
    .line 25
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 26
    .line 27
    const/16 p2, 0x10

    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 33
    .line 34
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 35
    .line 36
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->a:[B

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 42
    .line 43
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 50
    .line 51
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    .line 58
    new-array p1, p2, [B

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h:[B

    .line 61
    .line 62
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayDeque;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l:Ljava/util/ArrayDeque;

    .line 75
    .line 76
    new-instance p1, Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->m:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    new-instance p1, Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->d:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->p:Lcom/google/common/collect/ImmutableList;

    .line 95
    .line 96
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 102
    .line 103
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:J

    .line 104
    .line 105
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:J

    .line 106
    .line 107
    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 108
    .line 109
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    new-array p2, p1, [Landroidx/media3/extractor/TrackOutput;

    .line 113
    .line 114
    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 115
    .line 116
    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    .line 117
    .line 118
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:[Landroidx/media3/extractor/TrackOutput;

    .line 119
    .line 120
    new-instance p1, Landroidx/media3/container/ReorderingBufferQueue;

    .line 121
    .line 122
    new-instance p2, Lp;

    .line 123
    .line 124
    const/16 v0, 0xb

    .line 125
    .line 126
    invoke-direct {p2, v0, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Landroidx/media3/container/ReorderingBufferQueue;-><init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Landroidx/media3/container/ReorderingBufferQueue;

    .line 133
    .line 134
    new-instance p1, Landroidx/media3/extractor/ChunkIndexMerger;

    .line 135
    .line 136
    invoke-direct {p1}, Landroidx/media3/extractor/ChunkIndexMerger;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->o:Landroidx/media3/extractor/ChunkIndexMerger;

    .line 140
    .line 141
    const-wide/16 p1, -0x1

    .line 142
    .line 143
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:J

    .line 144
    .line 145
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 146
    .line 147
    return-void
.end method

.method public static h(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 18

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_b

    .line 9
    .line 10
    move-object/from16 v5, p0

    .line 11
    .line 12
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 17
    .line 18
    iget v7, v6, Landroidx/media3/container/Mp4Box;->a:I

    .line 19
    .line 20
    const v8, 0x70737368    # 3.013775E29f

    .line 21
    .line 22
    .line 23
    if-ne v7, v8, :cond_a

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v6, v6, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 33
    .line 34
    iget-object v6, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 35
    .line 36
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    .line 37
    .line 38
    invoke-direct {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 39
    .line 40
    .line 41
    iget v9, v7, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 42
    .line 43
    const/16 v10, 0x20

    .line 44
    .line 45
    if-ge v9, v10, :cond_1

    .line 46
    .line 47
    :goto_1
    const/4 v1, 0x0

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    const-string v11, "PsshAtomUtil"

    .line 62
    .line 63
    if-eq v10, v9, :cond_2

    .line 64
    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v8, "Advertised atom size ("

    .line 68
    .line 69
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v8, ") does not match buffer size: "

    .line 76
    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v11, v7}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eq v9, v8, :cond_3

    .line 96
    .line 97
    const-string v7, "Atom type is not pssh: "

    .line 98
    .line 99
    invoke-static {v7, v9, v11}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    invoke-static {v8}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    const/4 v9, 0x1

    .line 112
    if-le v8, v9, :cond_4

    .line 113
    .line 114
    const-string v7, "Unsupported pssh version: "

    .line 115
    .line 116
    invoke-static {v7, v8, v11}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 121
    .line 122
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 123
    .line 124
    .line 125
    move-result-wide v12

    .line 126
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 127
    .line 128
    .line 129
    move-result-wide v14

    .line 130
    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 131
    .line 132
    .line 133
    if-ne v8, v9, :cond_6

    .line 134
    .line 135
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    new-array v12, v9, [Ljava/util/UUID;

    .line 140
    .line 141
    move v13, v2

    .line 142
    :goto_2
    if-ge v13, v9, :cond_5

    .line 143
    .line 144
    new-instance v14, Ljava/util/UUID;

    .line 145
    .line 146
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    move-object/from16 v16, v12

    .line 151
    .line 152
    move/from16 v17, v13

    .line 153
    .line 154
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 155
    .line 156
    .line 157
    move-result-wide v12

    .line 158
    invoke-direct {v14, v1, v2, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 159
    .line 160
    .line 161
    aput-object v14, v16, v17

    .line 162
    .line 163
    add-int/lit8 v13, v17, 0x1

    .line 164
    .line 165
    move-object/from16 v12, v16

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    move-object/from16 v16, v12

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    const/4 v12, 0x0

    .line 173
    :goto_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v1, v2, :cond_7

    .line 182
    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v8, "Atom data size ("

    .line 186
    .line 187
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ") does not match the bytes left: "

    .line 194
    .line 195
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v11, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_7
    new-array v2, v1, [B

    .line 211
    .line 212
    const/4 v9, 0x0

    .line 213
    invoke-virtual {v7, v2, v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 217
    .line 218
    invoke-direct {v1, v10, v8, v2, v12}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    .line 219
    .line 220
    .line 221
    :goto_4
    if-nez v1, :cond_8

    .line 222
    .line 223
    const/4 v1, 0x0

    .line 224
    goto :goto_5

    .line 225
    :cond_8
    iget-object v1, v1, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->a:Ljava/util/UUID;

    .line 226
    .line 227
    :goto_5
    if-nez v1, :cond_9

    .line 228
    .line 229
    const-string v1, "FragmentedMp4Extractor"

    .line 230
    .line 231
    const-string v2, "Skipped pssh atom (failed to extract uuid)"

    .line 232
    .line 233
    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_9
    new-instance v2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 238
    .line 239
    const-string v7, "video/mp4"

    .line 240
    .line 241
    const/4 v15, 0x0

    .line 242
    invoke-direct {v2, v1, v15, v7, v6}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_a
    :goto_6
    const/4 v15, 0x0

    .line 250
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_b
    const/4 v15, 0x0

    .line 256
    if-nez v4, :cond_c

    .line 257
    .line 258
    return-object v15

    .line 259
    :cond_c
    new-instance v0, Landroidx/media3/common/DrmInitData;

    .line 260
    .line 261
    const/4 v9, 0x0

    .line 262
    new-array v1, v9, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 263
    .line 264
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 269
    .line 270
    invoke-direct {v0, v15, v9, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 271
    .line 272
    .line 273
    return-object v0
.end method

.method public static j(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget-object v0, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    and-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v0

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 32
    .line 33
    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 34
    .line 35
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 40
    .line 41
    iget-object v4, p2, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget-object v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 46
    .line 47
    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v4, p1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    .line 58
    .line 59
    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    .line 60
    .line 61
    iget-object p1, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 62
    .line 63
    iget v1, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 69
    .line 70
    .line 71
    iput-boolean v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    const-string p0, "Senc sample count "

    .line 75
    .line 76
    const-string p1, " is different from fragment sample count"

    .line 77
    .line 78
    invoke-static {p0, v2, p1}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 p1, 0x0

    .line 92
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    throw p0

    .line 97
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 98
    .line 99
    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    throw p0
.end method

.method public static k(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    :goto_0
    add-long v5, v5, p0

    .line 35
    .line 36
    move-wide v10, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 50
    .line 51
    const-wide/32 v5, 0xf4240

    .line 52
    .line 53
    .line 54
    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v12

    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    new-array v14, v1, [I

    .line 67
    .line 68
    new-array v15, v1, [J

    .line 69
    .line 70
    new-array v5, v1, [J

    .line 71
    .line 72
    new-array v6, v1, [J

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    move-wide/from16 v16, v10

    .line 76
    .line 77
    move-wide/from16 v18, v12

    .line 78
    .line 79
    move v10, v9

    .line 80
    :goto_2
    if-ge v10, v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/high16 v11, -0x80000000

    .line 87
    .line 88
    and-int/2addr v11, v9

    .line 89
    if-nez v11, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 92
    .line 93
    .line 94
    move-result-wide v20

    .line 95
    const v11, 0x7fffffff

    .line 96
    .line 97
    .line 98
    and-int/2addr v9, v11

    .line 99
    aput v9, v14, v10

    .line 100
    .line 101
    aput-wide v16, v15, v10

    .line 102
    .line 103
    aput-wide v18, v6, v10

    .line 104
    .line 105
    add-long v3, v3, v20

    .line 106
    .line 107
    move-object v9, v5

    .line 108
    move-object v11, v6

    .line 109
    const-wide/32 v5, 0xf4240

    .line 110
    .line 111
    .line 112
    move-object/from16 v18, v9

    .line 113
    .line 114
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 115
    .line 116
    move-object v2, v11

    .line 117
    move-object/from16 v11, v18

    .line 118
    .line 119
    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    aget-wide v19, v2, v10

    .line 124
    .line 125
    sub-long v19, v5, v19

    .line 126
    .line 127
    aput-wide v19, v11, v10

    .line 128
    .line 129
    const/4 v9, 0x4

    .line 130
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 131
    .line 132
    .line 133
    aget v9, v14, v10

    .line 134
    .line 135
    move/from16 p0, v1

    .line 136
    .line 137
    int-to-long v0, v9

    .line 138
    add-long v16, v16, v0

    .line 139
    .line 140
    add-int/lit8 v10, v10, 0x1

    .line 141
    .line 142
    move/from16 v1, p0

    .line 143
    .line 144
    move-object/from16 v0, p2

    .line 145
    .line 146
    move-wide/from16 v18, v5

    .line 147
    .line 148
    move-object v5, v11

    .line 149
    move-object v6, v2

    .line 150
    const/4 v2, 0x4

    .line 151
    goto :goto_2

    .line 152
    :cond_1
    const-string v0, "Unhandled indirect reference"

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    throw v0

    .line 160
    :cond_2
    move-object v11, v5

    .line 161
    move-object v2, v6

    .line 162
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Landroidx/media3/extractor/ChunkIndex;

    .line 167
    .line 168
    invoke-direct {v1, v14, v15, v11, v2}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/Sniffer;->a(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->p:Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final c(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->m:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Landroidx/media3/container/ReorderingBufferQueue;

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/media3/container/ReorderingBufferQueue;->d:Ljava/util/PriorityQueue;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    .line 35
    .line 36
    .line 37
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:J

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 42
    .line 43
    .line 44
    const-wide/16 p1, -0x1

    .line 45
    .line 46
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->F(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, [Landroidx/media3/extractor/TrackOutput;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 33
    .line 34
    array-length v1, p1

    .line 35
    move v2, v0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_1

    .line 37
    .line 38
    aget-object v3, p1, v2

    .line 39
    .line 40
    sget-object v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:Landroidx/media3/common/Format;

    .line 41
    .line 42
    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->c:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    new-array v1, v1, [Landroidx/media3/extractor/TrackOutput;

    .line 55
    .line 56
    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:[Landroidx/media3/extractor/TrackOutput;

    .line 57
    .line 58
    const/16 v1, 0x64

    .line 59
    .line 60
    :goto_1
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:[Landroidx/media3/extractor/TrackOutput;

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    if-ge v0, v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 66
    .line 67
    add-int/lit8 v3, v1, 0x1

    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    invoke-interface {v2, v1, v4}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroidx/media3/common/Format;

    .line 79
    .line 80
    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:[Landroidx/media3/extractor/TrackOutput;

    .line 84
    .line 85
    aput-object v1, v2, v0

    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    move v1, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->p:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :goto_0
    move-object/from16 v2, p2

    .line 6
    .line 7
    :cond_0
    :goto_1
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    iget-object v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Landroidx/media3/container/ReorderingBufferQueue;

    .line 12
    .line 13
    const-wide/32 v16, 0x7fffffff

    .line 14
    .line 15
    .line 16
    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->o:Landroidx/media3/extractor/ChunkIndexMerger;

    .line 17
    .line 18
    const-wide/16 v18, 0x0

    .line 19
    .line 20
    const-wide/16 v20, 0x8

    .line 21
    .line 22
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    .line 23
    .line 24
    const-wide/16 v22, 0x10

    .line 25
    .line 26
    iget-object v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->d:Landroid/util/SparseArray;

    .line 27
    .line 28
    const-wide/16 v24, 0x1

    .line 29
    .line 30
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    const/4 v14, 0x5

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v8, 0x1

    .line 35
    if-eqz v3, :cond_61

    .line 36
    .line 37
    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/16 v31, 0x0

    .line 43
    .line 44
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->m:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    const/16 v32, 0x8

    .line 47
    .line 48
    const-string v12, "FragmentedMp4Extractor"

    .line 49
    .line 50
    if-eq v3, v8, :cond_54

    .line 51
    .line 52
    if-eq v3, v4, :cond_4f

    .line 53
    .line 54
    move/from16 v33, v4

    .line 55
    .line 56
    const/4 v4, 0x6

    .line 57
    if-eq v3, v14, :cond_49

    .line 58
    .line 59
    if-eq v3, v4, :cond_2e

    .line 60
    .line 61
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 62
    .line 63
    if-nez v3, :cond_a

    .line 64
    .line 65
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    move/from16 v35, v4

    .line 70
    .line 71
    move/from16 v34, v14

    .line 72
    .line 73
    move/from16 v4, v31

    .line 74
    .line 75
    const/4 v14, 0x0

    .line 76
    const-wide v26, 0x7fffffffffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :goto_2
    if-ge v4, v3, :cond_5

    .line 82
    .line 83
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    move-object/from16 v7, v16

    .line 88
    .line 89
    check-cast v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 90
    .line 91
    move/from16 v37, v8

    .line 92
    .line 93
    iget-boolean v8, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->n:Z

    .line 94
    .line 95
    iget-object v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 96
    .line 97
    if-nez v8, :cond_1

    .line 98
    .line 99
    iget v10, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 100
    .line 101
    move/from16 v16, v3

    .line 102
    .line 103
    iget-object v3, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 104
    .line 105
    iget v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 106
    .line 107
    if-eq v10, v3, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_1
    move/from16 v16, v3

    .line 111
    .line 112
    :goto_3
    if-eqz v8, :cond_2

    .line 113
    .line 114
    iget v3, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    .line 115
    .line 116
    iget v10, v6, Landroidx/media3/extractor/mp4/TrackFragment;->d:I

    .line 117
    .line 118
    if-ne v3, v10, :cond_2

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_2
    if-nez v8, :cond_3

    .line 122
    .line 123
    iget-object v3, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 124
    .line 125
    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 126
    .line 127
    iget v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 128
    .line 129
    aget-wide v17, v3, v6

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_3
    iget-object v3, v6, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    .line 133
    .line 134
    iget v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    .line 135
    .line 136
    aget-wide v17, v3, v6

    .line 137
    .line 138
    :goto_4
    cmp-long v3, v17, v26

    .line 139
    .line 140
    if-gez v3, :cond_4

    .line 141
    .line 142
    move-object v14, v7

    .line 143
    move-wide/from16 v26, v17

    .line 144
    .line 145
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 146
    .line 147
    move/from16 v3, v16

    .line 148
    .line 149
    move/from16 v8, v37

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    move/from16 v37, v8

    .line 153
    .line 154
    if-nez v14, :cond_7

    .line 155
    .line 156
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    .line 157
    .line 158
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 159
    .line 160
    .line 161
    move-result-wide v5

    .line 162
    sub-long/2addr v3, v5

    .line 163
    long-to-int v3, v3

    .line 164
    if-ltz v3, :cond_6

    .line 165
    .line 166
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_6
    const-string v0, "Offset to end of mdat was negative."

    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    throw v0

    .line 182
    :cond_7
    iget-boolean v2, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->n:Z

    .line 183
    .line 184
    if-nez v2, :cond_8

    .line 185
    .line 186
    iget-object v2, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 187
    .line 188
    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 189
    .line 190
    iget v3, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 191
    .line 192
    aget-wide v2, v2, v3

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_8
    iget-object v2, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 196
    .line 197
    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    .line 198
    .line 199
    iget v3, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    .line 200
    .line 201
    aget-wide v2, v2, v3

    .line 202
    .line 203
    :goto_6
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 204
    .line 205
    .line 206
    move-result-wide v6

    .line 207
    sub-long/2addr v2, v6

    .line 208
    long-to-int v2, v2

    .line 209
    if-gez v2, :cond_9

    .line 210
    .line 211
    const-string v2, "Ignoring negative offset to sample data."

    .line 212
    .line 213
    invoke-static {v12, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    move/from16 v2, v31

    .line 217
    .line 218
    :cond_9
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 219
    .line 220
    .line 221
    iput-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 222
    .line 223
    move-object v3, v14

    .line 224
    goto :goto_7

    .line 225
    :cond_a
    move/from16 v35, v4

    .line 226
    .line 227
    move/from16 v37, v8

    .line 228
    .line 229
    move/from16 v34, v14

    .line 230
    .line 231
    :goto_7
    iget-object v2, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    .line 232
    .line 233
    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 234
    .line 235
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 236
    .line 237
    const-string v7, "video/hevc"

    .line 238
    .line 239
    const-string v8, "video/avc"

    .line 240
    .line 241
    const/4 v10, 0x3

    .line 242
    if-ne v6, v10, :cond_15

    .line 243
    .line 244
    iget-boolean v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->n:Z

    .line 245
    .line 246
    if-nez v6, :cond_b

    .line 247
    .line 248
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 249
    .line 250
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    .line 251
    .line 252
    iget v10, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 253
    .line 254
    aget v6, v6, v10

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_b
    iget-object v6, v4, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    .line 258
    .line 259
    iget v10, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 260
    .line 261
    aget v6, v6, v10

    .line 262
    .line 263
    :goto_8
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 264
    .line 265
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 266
    .line 267
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 268
    .line 269
    iget-object v6, v6, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 270
    .line 271
    iget-object v10, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    if-eqz v10, :cond_d

    .line 278
    .line 279
    and-int/lit8 v6, v9, 0x40

    .line 280
    .line 281
    if-eqz v6, :cond_c

    .line 282
    .line 283
    :goto_9
    move/from16 v6, v37

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_c
    move/from16 v6, v31

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :cond_d
    iget-object v6, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_c

    .line 296
    .line 297
    and-int/lit16 v6, v9, 0x80

    .line 298
    .line 299
    if-eqz v6, :cond_c

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :goto_a
    xor-int/lit8 v6, v6, 0x1

    .line 303
    .line 304
    iput-boolean v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:Z

    .line 305
    .line 306
    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 307
    .line 308
    iget v9, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:I

    .line 309
    .line 310
    if-ge v6, v9, :cond_12

    .line 311
    .line 312
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 313
    .line 314
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    if-nez v1, :cond_e

    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_e
    iget-object v2, v4, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 325
    .line 326
    iget v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->d:I

    .line 327
    .line 328
    if-eqz v1, :cond_f

    .line 329
    .line 330
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 331
    .line 332
    .line 333
    :cond_f
    iget v1, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 334
    .line 335
    iget-boolean v5, v4, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    .line 336
    .line 337
    if-eqz v5, :cond_10

    .line 338
    .line 339
    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 340
    .line 341
    aget-boolean v1, v4, v1

    .line 342
    .line 343
    if-eqz v1, :cond_10

    .line 344
    .line 345
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    mul-int/lit8 v1, v1, 0x6

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 352
    .line 353
    .line 354
    :cond_10
    :goto_b
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_11

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 362
    .line 363
    :cond_11
    const/4 v10, 0x3

    .line 364
    iput v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 365
    .line 366
    return v31

    .line 367
    :cond_12
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 368
    .line 369
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 370
    .line 371
    iget v6, v6, Landroidx/media3/extractor/mp4/Track;->h:I

    .line 372
    .line 373
    move/from16 v9, v37

    .line 374
    .line 375
    if-ne v6, v9, :cond_13

    .line 376
    .line 377
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 378
    .line 379
    add-int/lit8 v6, v6, -0x8

    .line 380
    .line 381
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 382
    .line 383
    move/from16 v6, v32

    .line 384
    .line 385
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 386
    .line 387
    .line 388
    :cond_13
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 389
    .line 390
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 391
    .line 392
    iget-object v6, v6, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 393
    .line 394
    iget-object v6, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 395
    .line 396
    const-string v9, "audio/ac4"

    .line 397
    .line 398
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 403
    .line 404
    if-eqz v6, :cond_14

    .line 405
    .line 406
    const/4 v6, 0x7

    .line 407
    invoke-virtual {v3, v9, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d(II)I

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 412
    .line 413
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 414
    .line 415
    invoke-static {v9, v13}, Landroidx/media3/extractor/Ac4Util;->a(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v2, v6, v13}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 419
    .line 420
    .line 421
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 422
    .line 423
    add-int/2addr v9, v6

    .line 424
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 425
    .line 426
    move/from16 v6, v31

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_14
    move/from16 v6, v31

    .line 430
    .line 431
    invoke-virtual {v3, v9, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d(II)I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 436
    .line 437
    :goto_c
    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 438
    .line 439
    iget v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 440
    .line 441
    add-int/2addr v9, v10

    .line 442
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 443
    .line 444
    const/4 v9, 0x4

    .line 445
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 446
    .line 447
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 448
    .line 449
    :cond_15
    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 450
    .line 451
    iget-object v9, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 452
    .line 453
    iget-boolean v10, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->n:Z

    .line 454
    .line 455
    if-nez v10, :cond_16

    .line 456
    .line 457
    iget-object v4, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 458
    .line 459
    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 460
    .line 461
    aget-wide v10, v4, v6

    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_16
    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 465
    .line 466
    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    .line 467
    .line 468
    aget-wide v10, v4, v6

    .line 469
    .line 470
    :goto_d
    iget v4, v9, Landroidx/media3/extractor/mp4/Track;->k:I

    .line 471
    .line 472
    iget-object v6, v9, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 473
    .line 474
    if-eqz v4, :cond_25

    .line 475
    .line 476
    iget-object v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 477
    .line 478
    iget-object v12, v9, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 479
    .line 480
    const/16 v31, 0x0

    .line 481
    .line 482
    aput-byte v31, v12, v31

    .line 483
    .line 484
    const/16 v37, 0x1

    .line 485
    .line 486
    aput-byte v31, v12, v37

    .line 487
    .line 488
    aput-byte v31, v12, v33

    .line 489
    .line 490
    rsub-int/lit8 v13, v4, 0x4

    .line 491
    .line 492
    :goto_e
    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 493
    .line 494
    move/from16 v16, v4

    .line 495
    .line 496
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 497
    .line 498
    if-ge v14, v4, :cond_27

    .line 499
    .line 500
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 501
    .line 502
    if-nez v4, :cond_20

    .line 503
    .line 504
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:[Landroidx/media3/extractor/TrackOutput;

    .line 505
    .line 506
    array-length v4, v4

    .line 507
    if-gtz v4, :cond_17

    .line 508
    .line 509
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:Z

    .line 510
    .line 511
    if-nez v4, :cond_18

    .line 512
    .line 513
    :cond_17
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->e(Landroidx/media3/common/Format;)I

    .line 514
    .line 515
    .line 516
    move-result v4

    .line 517
    add-int v14, v16, v4

    .line 518
    .line 519
    move/from16 p2, v4

    .line 520
    .line 521
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 522
    .line 523
    move/from16 v17, v4

    .line 524
    .line 525
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 526
    .line 527
    sub-int v4, v17, v4

    .line 528
    .line 529
    if-gt v14, v4, :cond_18

    .line 530
    .line 531
    move/from16 v4, p2

    .line 532
    .line 533
    goto :goto_f

    .line 534
    :cond_18
    const/4 v4, 0x0

    .line 535
    :goto_f
    add-int v14, v16, v4

    .line 536
    .line 537
    invoke-interface {v1, v12, v13, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 538
    .line 539
    .line 540
    const/4 v14, 0x0

    .line 541
    invoke-virtual {v9, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 545
    .line 546
    .line 547
    move-result v17

    .line 548
    if-ltz v17, :cond_1f

    .line 549
    .line 550
    sub-int v14, v17, v4

    .line 551
    .line 552
    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 553
    .line 554
    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 555
    .line 556
    move/from16 p2, v13

    .line 557
    .line 558
    const/4 v13, 0x0

    .line 559
    invoke-virtual {v14, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 560
    .line 561
    .line 562
    const/4 v13, 0x4

    .line 563
    invoke-interface {v2, v13, v14}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 564
    .line 565
    .line 566
    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 567
    .line 568
    add-int/2addr v14, v13

    .line 569
    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 570
    .line 571
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 572
    .line 573
    add-int v13, v13, p2

    .line 574
    .line 575
    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 576
    .line 577
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:[Landroidx/media3/extractor/TrackOutput;

    .line 578
    .line 579
    array-length v13, v13

    .line 580
    if-lez v13, :cond_1d

    .line 581
    .line 582
    if-lez v4, :cond_1d

    .line 583
    .line 584
    invoke-static {v6}, Landroidx/media3/container/NalUnitUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v13

    .line 588
    if-nez v13, :cond_19

    .line 589
    .line 590
    goto :goto_13

    .line 591
    :cond_19
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 592
    .line 593
    .line 594
    move-result v14

    .line 595
    sparse-switch v14, :sswitch_data_0

    .line 596
    .line 597
    .line 598
    :goto_10
    const/4 v13, -0x1

    .line 599
    goto :goto_11

    .line 600
    :sswitch_0
    const-string v14, "video/vvc"

    .line 601
    .line 602
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v13

    .line 606
    if-nez v13, :cond_1a

    .line 607
    .line 608
    goto :goto_10

    .line 609
    :cond_1a
    move/from16 v13, v33

    .line 610
    .line 611
    goto :goto_11

    .line 612
    :sswitch_1
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v13

    .line 616
    if-nez v13, :cond_1b

    .line 617
    .line 618
    goto :goto_10

    .line 619
    :cond_1b
    const/4 v13, 0x1

    .line 620
    goto :goto_11

    .line 621
    :sswitch_2
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v13

    .line 625
    if-nez v13, :cond_1c

    .line 626
    .line 627
    goto :goto_10

    .line 628
    :cond_1c
    const/4 v13, 0x0

    .line 629
    :goto_11
    packed-switch v13, :pswitch_data_0

    .line 630
    .line 631
    .line 632
    goto :goto_13

    .line 633
    :pswitch_0
    aget-byte v13, v12, v34

    .line 634
    .line 635
    and-int/lit16 v13, v13, 0xf8

    .line 636
    .line 637
    const/16 v38, 0x3

    .line 638
    .line 639
    shr-int/lit8 v13, v13, 0x3

    .line 640
    .line 641
    const/16 v14, 0x17

    .line 642
    .line 643
    if-ne v13, v14, :cond_1d

    .line 644
    .line 645
    goto :goto_12

    .line 646
    :pswitch_1
    const/16 v36, 0x4

    .line 647
    .line 648
    aget-byte v13, v12, v36

    .line 649
    .line 650
    and-int/lit8 v13, v13, 0x1f

    .line 651
    .line 652
    move/from16 v14, v35

    .line 653
    .line 654
    if-ne v13, v14, :cond_1d

    .line 655
    .line 656
    goto :goto_12

    .line 657
    :pswitch_2
    const/16 v36, 0x4

    .line 658
    .line 659
    aget-byte v13, v12, v36

    .line 660
    .line 661
    and-int/lit8 v13, v13, 0x7e

    .line 662
    .line 663
    const/16 v37, 0x1

    .line 664
    .line 665
    shr-int/lit8 v13, v13, 0x1

    .line 666
    .line 667
    const/16 v14, 0x27

    .line 668
    .line 669
    if-ne v13, v14, :cond_1d

    .line 670
    .line 671
    :goto_12
    const/4 v13, 0x1

    .line 672
    goto :goto_14

    .line 673
    :cond_1d
    :goto_13
    const/4 v13, 0x0

    .line 674
    :goto_14
    iput-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:Z

    .line 675
    .line 676
    invoke-interface {v2, v4, v9}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 677
    .line 678
    .line 679
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 680
    .line 681
    add-int/2addr v13, v4

    .line 682
    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 683
    .line 684
    if-lez v4, :cond_1e

    .line 685
    .line 686
    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:Z

    .line 687
    .line 688
    if-nez v13, :cond_1e

    .line 689
    .line 690
    invoke-static {v12, v4, v6}, Landroidx/media3/container/NalUnitUtil;->d([BILandroidx/media3/common/Format;)Z

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    if-eqz v4, :cond_1e

    .line 695
    .line 696
    const/4 v4, 0x1

    .line 697
    iput-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:Z

    .line 698
    .line 699
    :cond_1e
    move/from16 v13, p2

    .line 700
    .line 701
    move/from16 v4, v16

    .line 702
    .line 703
    :goto_15
    const/16 v35, 0x6

    .line 704
    .line 705
    goto/16 :goto_e

    .line 706
    .line 707
    :cond_1f
    const-string v0, "Invalid NAL length"

    .line 708
    .line 709
    const/4 v1, 0x0

    .line 710
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    throw v0

    .line 715
    :cond_20
    move/from16 p2, v13

    .line 716
    .line 717
    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:Z

    .line 718
    .line 719
    if-eqz v13, :cond_24

    .line 720
    .line 721
    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 722
    .line 723
    invoke-virtual {v13, v4}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 724
    .line 725
    .line 726
    iget-object v4, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 727
    .line 728
    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 729
    .line 730
    move-object/from16 v17, v7

    .line 731
    .line 732
    const/4 v7, 0x0

    .line 733
    invoke-interface {v1, v4, v7, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 734
    .line 735
    .line 736
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 737
    .line 738
    invoke-interface {v2, v4, v13}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 739
    .line 740
    .line 741
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 742
    .line 743
    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 744
    .line 745
    move/from16 v18, v4

    .line 746
    .line 747
    iget v4, v13, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 748
    .line 749
    invoke-static {v4, v14}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v13, v4}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 757
    .line 758
    .line 759
    iget v4, v6, Landroidx/media3/common/Format;->r:I

    .line 760
    .line 761
    const/4 v14, -0x1

    .line 762
    if-ne v4, v14, :cond_21

    .line 763
    .line 764
    iget v4, v15, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 765
    .line 766
    if-eqz v4, :cond_22

    .line 767
    .line 768
    invoke-virtual {v15, v7}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    .line 769
    .line 770
    .line 771
    goto :goto_16

    .line 772
    :cond_21
    iget v7, v15, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 773
    .line 774
    if-eq v7, v4, :cond_22

    .line 775
    .line 776
    invoke-virtual {v15, v4}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    .line 777
    .line 778
    .line 779
    :cond_22
    :goto_16
    invoke-virtual {v15, v10, v11, v13}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()I

    .line 783
    .line 784
    .line 785
    move-result v4

    .line 786
    const/16 v36, 0x4

    .line 787
    .line 788
    and-int/lit8 v4, v4, 0x4

    .line 789
    .line 790
    const/4 v13, 0x0

    .line 791
    if-eqz v4, :cond_23

    .line 792
    .line 793
    invoke-virtual {v15, v13}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    .line 794
    .line 795
    .line 796
    :cond_23
    move/from16 v4, v18

    .line 797
    .line 798
    goto :goto_17

    .line 799
    :cond_24
    move-object/from16 v17, v7

    .line 800
    .line 801
    const/4 v13, 0x0

    .line 802
    invoke-interface {v2, v1, v4, v13}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    :goto_17
    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 807
    .line 808
    add-int/2addr v7, v4

    .line 809
    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 810
    .line 811
    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 812
    .line 813
    sub-int/2addr v7, v4

    .line 814
    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 815
    .line 816
    move/from16 v13, p2

    .line 817
    .line 818
    move/from16 v4, v16

    .line 819
    .line 820
    move-object/from16 v7, v17

    .line 821
    .line 822
    goto :goto_15

    .line 823
    :cond_25
    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->l:Landroidx/media3/common/Format;

    .line 824
    .line 825
    if-eqz v4, :cond_26

    .line 826
    .line 827
    iget-object v6, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 828
    .line 829
    invoke-static {v6}, Landroidx/media3/extractor/DtsUtil;->e(Ljava/lang/String;)Z

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    if-eqz v6, :cond_26

    .line 834
    .line 835
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 836
    .line 837
    iget-object v7, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Landroidx/media3/common/Format;

    .line 838
    .line 839
    invoke-static {v1, v6, v7}, Landroidx/media3/extractor/DtsUtil;->h(Landroidx/media3/extractor/ExtractorInput;ILandroidx/media3/common/Format;)Landroidx/media3/common/Format;

    .line 840
    .line 841
    .line 842
    move-result-object v6

    .line 843
    iput-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Landroidx/media3/common/Format;

    .line 844
    .line 845
    invoke-virtual {v6}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 846
    .line 847
    .line 848
    move-result-object v6

    .line 849
    iget-object v4, v4, Landroidx/media3/common/Format;->t:Landroidx/media3/common/DrmInitData;

    .line 850
    .line 851
    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 852
    .line 853
    new-instance v4, Landroidx/media3/common/Format;

    .line 854
    .line 855
    invoke-direct {v4, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 856
    .line 857
    .line 858
    invoke-interface {v2, v4}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 859
    .line 860
    .line 861
    const/4 v4, 0x0

    .line 862
    iput-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->l:Landroidx/media3/common/Format;

    .line 863
    .line 864
    :cond_26
    :goto_18
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 865
    .line 866
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 867
    .line 868
    if-ge v4, v6, :cond_27

    .line 869
    .line 870
    sub-int/2addr v6, v4

    .line 871
    const/4 v13, 0x0

    .line 872
    invoke-interface {v2, v1, v6, v13}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 873
    .line 874
    .line 875
    move-result v4

    .line 876
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 877
    .line 878
    add-int/2addr v6, v4

    .line 879
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:I

    .line 880
    .line 881
    goto :goto_18

    .line 882
    :cond_27
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()I

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:Z

    .line 887
    .line 888
    if-nez v4, :cond_28

    .line 889
    .line 890
    const/high16 v4, 0x4000000

    .line 891
    .line 892
    or-int/2addr v1, v4

    .line 893
    :cond_28
    move/from16 v19, v1

    .line 894
    .line 895
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    if-eqz v1, :cond_29

    .line 900
    .line 901
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->c:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 902
    .line 903
    move-object/from16 v22, v1

    .line 904
    .line 905
    goto :goto_19

    .line 906
    :cond_29
    const/16 v22, 0x0

    .line 907
    .line 908
    :goto_19
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:I

    .line 909
    .line 910
    const/16 v21, 0x0

    .line 911
    .line 912
    move/from16 v20, v1

    .line 913
    .line 914
    move-object/from16 v16, v2

    .line 915
    .line 916
    move-wide/from16 v17, v10

    .line 917
    .line 918
    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 919
    .line 920
    .line 921
    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 922
    .line 923
    .line 924
    move-result v1

    .line 925
    if-nez v1, :cond_2c

    .line 926
    .line 927
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    check-cast v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 932
    .line 933
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 934
    .line 935
    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->c:I

    .line 936
    .line 937
    sub-int/2addr v2, v4

    .line 938
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 939
    .line 940
    iget-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->a:J

    .line 941
    .line 942
    iget-boolean v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->b:Z

    .line 943
    .line 944
    if-eqz v2, :cond_2b

    .line 945
    .line 946
    add-long v6, v6, v17

    .line 947
    .line 948
    :cond_2b
    move-wide v9, v6

    .line 949
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 950
    .line 951
    array-length v4, v2

    .line 952
    const/4 v6, 0x0

    .line 953
    :goto_1a
    if-ge v6, v4, :cond_2a

    .line 954
    .line 955
    aget-object v8, v2, v6

    .line 956
    .line 957
    iget v12, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->c:I

    .line 958
    .line 959
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 960
    .line 961
    const/4 v14, 0x0

    .line 962
    const/4 v11, 0x1

    .line 963
    invoke-interface/range {v8 .. v14}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 964
    .line 965
    .line 966
    add-int/lit8 v6, v6, 0x1

    .line 967
    .line 968
    goto :goto_1a

    .line 969
    :cond_2c
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c()Z

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-nez v1, :cond_2d

    .line 974
    .line 975
    const/4 v1, 0x0

    .line 976
    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 977
    .line 978
    :cond_2d
    const/4 v10, 0x3

    .line 979
    iput v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 980
    .line 981
    const/4 v14, 0x0

    .line 982
    return v14

    .line 983
    :cond_2e
    move/from16 v14, v31

    .line 984
    .line 985
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 986
    .line 987
    .line 988
    move-result-wide v3

    .line 989
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 990
    .line 991
    .line 992
    move-result-wide v5

    .line 993
    sub-long/2addr v3, v5

    .line 994
    const/16 v6, 0x8

    .line 995
    .line 996
    invoke-virtual {v13, v6}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 997
    .line 998
    .line 999
    iget-object v5, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1000
    .line 1001
    const/4 v9, 0x1

    .line 1002
    invoke-interface {v1, v5, v14, v6, v9}, Landroidx/media3/extractor/ExtractorInput;->d([BIIZ)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v5

    .line 1006
    if-nez v5, :cond_2f

    .line 1007
    .line 1008
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 1009
    .line 1010
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1011
    .line 1012
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1013
    .line 1014
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1018
    .line 1019
    .line 1020
    goto/16 :goto_2b

    .line 1021
    .line 1022
    :cond_2f
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1026
    .line 1027
    .line 1028
    move-result v5

    .line 1029
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1030
    .line 1031
    .line 1032
    move-result v6

    .line 1033
    const v7, 0x6d667261

    .line 1034
    .line 1035
    .line 1036
    if-eq v6, v7, :cond_30

    .line 1037
    .line 1038
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 1039
    .line 1040
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1041
    .line 1042
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1043
    .line 1044
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1048
    .line 1049
    .line 1050
    goto/16 :goto_2b

    .line 1051
    .line 1052
    :cond_30
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    .line 1053
    .line 1054
    long-to-int v3, v3

    .line 1055
    invoke-direct {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 1056
    .line 1057
    .line 1058
    iget-object v4, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1059
    .line 1060
    const/4 v13, 0x0

    .line 1061
    invoke-interface {v1, v4, v13, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1062
    .line 1063
    .line 1064
    const/4 v9, 0x1

    .line 1065
    if-ne v5, v9, :cond_31

    .line 1066
    .line 1067
    const/16 v3, 0x10

    .line 1068
    .line 1069
    goto :goto_1b

    .line 1070
    :cond_31
    const/16 v3, 0x8

    .line 1071
    .line 1072
    :goto_1b
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1073
    .line 1074
    .line 1075
    new-instance v3, Landroid/util/SparseArray;

    .line 1076
    .line 1077
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1078
    .line 1079
    .line 1080
    new-instance v4, Landroid/util/SparseArray;

    .line 1081
    .line 1082
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    :goto_1c
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1086
    .line 1087
    .line 1088
    move-result v5

    .line 1089
    const/16 v7, 0x8

    .line 1090
    .line 1091
    if-lt v5, v7, :cond_40

    .line 1092
    .line 1093
    iget v5, v6, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 1094
    .line 1095
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1096
    .line 1097
    .line 1098
    move-result-wide v8

    .line 1099
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1100
    .line 1101
    .line 1102
    move-result v10

    .line 1103
    cmp-long v12, v8, v24

    .line 1104
    .line 1105
    if-nez v12, :cond_33

    .line 1106
    .line 1107
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1108
    .line 1109
    .line 1110
    move-result v8

    .line 1111
    if-ge v8, v7, :cond_32

    .line 1112
    .line 1113
    goto/16 :goto_26

    .line 1114
    .line 1115
    :cond_32
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 1116
    .line 1117
    .line 1118
    move-result-wide v8

    .line 1119
    goto :goto_1d

    .line 1120
    :cond_33
    cmp-long v7, v8, v18

    .line 1121
    .line 1122
    if-nez v7, :cond_34

    .line 1123
    .line 1124
    iget v7, v6, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 1125
    .line 1126
    int-to-long v7, v7

    .line 1127
    int-to-long v13, v5

    .line 1128
    sub-long v8, v7, v13

    .line 1129
    .line 1130
    :cond_34
    :goto_1d
    if-nez v12, :cond_35

    .line 1131
    .line 1132
    const/16 v7, 0x10

    .line 1133
    .line 1134
    goto :goto_1e

    .line 1135
    :cond_35
    const/16 v7, 0x8

    .line 1136
    .line 1137
    :goto_1e
    int-to-long v12, v7

    .line 1138
    cmp-long v12, v8, v12

    .line 1139
    .line 1140
    if-ltz v12, :cond_40

    .line 1141
    .line 1142
    iget v12, v6, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 1143
    .line 1144
    int-to-long v12, v12

    .line 1145
    int-to-long v14, v5

    .line 1146
    sub-long/2addr v12, v14

    .line 1147
    cmp-long v5, v8, v12

    .line 1148
    .line 1149
    if-lez v5, :cond_36

    .line 1150
    .line 1151
    goto/16 :goto_26

    .line 1152
    .line 1153
    :cond_36
    const v5, 0x74667261

    .line 1154
    .line 1155
    .line 1156
    if-ne v10, v5, :cond_3f

    .line 1157
    .line 1158
    add-int/lit8 v7, v7, 0x10

    .line 1159
    .line 1160
    int-to-long v12, v7

    .line 1161
    cmp-long v5, v8, v12

    .line 1162
    .line 1163
    if-gez v5, :cond_37

    .line 1164
    .line 1165
    add-long/2addr v14, v8

    .line 1166
    long-to-int v5, v14

    .line 1167
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_1c

    .line 1171
    :cond_37
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1172
    .line 1173
    .line 1174
    move-result v5

    .line 1175
    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 1176
    .line 1177
    .line 1178
    move-result v5

    .line 1179
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1180
    .line 1181
    .line 1182
    move-result v7

    .line 1183
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v10

    .line 1187
    check-cast v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1188
    .line 1189
    if-nez v10, :cond_38

    .line 1190
    .line 1191
    add-long/2addr v14, v8

    .line 1192
    long-to-int v5, v14

    .line 1193
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1194
    .line 1195
    .line 1196
    goto :goto_1c

    .line 1197
    :cond_38
    iget-object v10, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1198
    .line 1199
    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 1200
    .line 1201
    iget-wide v12, v10, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 1202
    .line 1203
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1204
    .line 1205
    .line 1206
    move-result v10

    .line 1207
    shr-int/lit8 v16, v10, 0x4

    .line 1208
    .line 1209
    const/16 v38, 0x3

    .line 1210
    .line 1211
    and-int/lit8 v16, v16, 0x3

    .line 1212
    .line 1213
    shr-int/lit8 v17, v10, 0x2

    .line 1214
    .line 1215
    and-int/lit8 v17, v17, 0x3

    .line 1216
    .line 1217
    and-int/lit8 v10, v10, 0x3

    .line 1218
    .line 1219
    move-wide/from16 v26, v8

    .line 1220
    .line 1221
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v8

    .line 1225
    move/from16 v34, v10

    .line 1226
    .line 1227
    const/4 v10, 0x1

    .line 1228
    if-ne v5, v10, :cond_39

    .line 1229
    .line 1230
    move-wide/from16 v35, v22

    .line 1231
    .line 1232
    :goto_1f
    move/from16 v37, v10

    .line 1233
    .line 1234
    goto :goto_20

    .line 1235
    :cond_39
    move-wide/from16 v35, v20

    .line 1236
    .line 1237
    goto :goto_1f

    .line 1238
    :goto_20
    add-int/lit8 v10, v16, 0x1

    .line 1239
    .line 1240
    move-wide/from16 v43, v12

    .line 1241
    .line 1242
    int-to-long v12, v10

    .line 1243
    add-long v35, v35, v12

    .line 1244
    .line 1245
    add-int/lit8 v12, v17, 0x1

    .line 1246
    .line 1247
    move-wide/from16 v16, v14

    .line 1248
    .line 1249
    int-to-long v13, v12

    .line 1250
    add-long v35, v35, v13

    .line 1251
    .line 1252
    add-int/lit8 v13, v34, 0x1

    .line 1253
    .line 1254
    int-to-long v14, v13

    .line 1255
    add-long v35, v35, v14

    .line 1256
    .line 1257
    mul-long v35, v35, v8

    .line 1258
    .line 1259
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1260
    .line 1261
    .line 1262
    move-result v14

    .line 1263
    int-to-long v14, v14

    .line 1264
    cmp-long v14, v35, v14

    .line 1265
    .line 1266
    if-lez v14, :cond_3a

    .line 1267
    .line 1268
    add-long v14, v16, v26

    .line 1269
    .line 1270
    long-to-int v5, v14

    .line 1271
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1272
    .line 1273
    .line 1274
    goto/16 :goto_1c

    .line 1275
    .line 1276
    :cond_3a
    long-to-int v8, v8

    .line 1277
    new-array v9, v8, [J

    .line 1278
    .line 1279
    new-array v14, v8, [J

    .line 1280
    .line 1281
    const/4 v15, 0x0

    .line 1282
    :goto_21
    if-ge v15, v8, :cond_3e

    .line 1283
    .line 1284
    move/from16 v34, v8

    .line 1285
    .line 1286
    const/4 v8, 0x1

    .line 1287
    if-ne v5, v8, :cond_3b

    .line 1288
    .line 1289
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 1290
    .line 1291
    .line 1292
    move-result-wide v35

    .line 1293
    :goto_22
    move-wide/from16 v39, v35

    .line 1294
    .line 1295
    goto :goto_23

    .line 1296
    :cond_3b
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1297
    .line 1298
    .line 1299
    move-result-wide v35

    .line 1300
    goto :goto_22

    .line 1301
    :goto_23
    if-ne v5, v8, :cond_3c

    .line 1302
    .line 1303
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v35

    .line 1307
    goto :goto_24

    .line 1308
    :cond_3c
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1309
    .line 1310
    .line 1311
    move-result-wide v35

    .line 1312
    :goto_24
    add-int v8, v10, v12

    .line 1313
    .line 1314
    add-int/2addr v8, v13

    .line 1315
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1316
    .line 1317
    .line 1318
    cmp-long v8, v43, v29

    .line 1319
    .line 1320
    if-eqz v8, :cond_3d

    .line 1321
    .line 1322
    const-wide/32 v41, 0xf4240

    .line 1323
    .line 1324
    .line 1325
    sget-object v45, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1326
    .line 1327
    invoke-static/range {v39 .. v45}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1328
    .line 1329
    .line 1330
    move-result-wide v39

    .line 1331
    :cond_3d
    aput-wide v39, v9, v15

    .line 1332
    .line 1333
    aput-wide v35, v14, v15

    .line 1334
    .line 1335
    add-int/lit8 v15, v15, 0x1

    .line 1336
    .line 1337
    move/from16 v8, v34

    .line 1338
    .line 1339
    goto :goto_21

    .line 1340
    :cond_3e
    invoke-virtual {v3, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v4, v7, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1344
    .line 1345
    .line 1346
    goto :goto_25

    .line 1347
    :cond_3f
    move-wide/from16 v26, v8

    .line 1348
    .line 1349
    move-wide/from16 v16, v14

    .line 1350
    .line 1351
    :goto_25
    add-long v14, v16, v26

    .line 1352
    .line 1353
    long-to-int v5, v14

    .line 1354
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_1c

    .line 1358
    .line 1359
    :cond_40
    :goto_26
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 1360
    .line 1361
    .line 1362
    move-result v5

    .line 1363
    if-nez v5, :cond_41

    .line 1364
    .line 1365
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 1366
    .line 1367
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1368
    .line 1369
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1370
    .line 1371
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1375
    .line 1376
    .line 1377
    goto :goto_2b

    .line 1378
    :cond_41
    const/4 v5, -0x1

    .line 1379
    const/4 v6, -0x1

    .line 1380
    const/4 v7, 0x0

    .line 1381
    :goto_27
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 1382
    .line 1383
    .line 1384
    move-result v8

    .line 1385
    if-ge v7, v8, :cond_45

    .line 1386
    .line 1387
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1388
    .line 1389
    .line 1390
    move-result v8

    .line 1391
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v9

    .line 1395
    check-cast v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1396
    .line 1397
    if-nez v9, :cond_42

    .line 1398
    .line 1399
    const/4 v14, -0x1

    .line 1400
    goto :goto_28

    .line 1401
    :cond_42
    iget-object v9, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1402
    .line 1403
    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 1404
    .line 1405
    iget v9, v9, Landroidx/media3/extractor/mp4/Track;->b:I

    .line 1406
    .line 1407
    const/4 v14, -0x1

    .line 1408
    if-ne v5, v14, :cond_43

    .line 1409
    .line 1410
    move/from16 v10, v33

    .line 1411
    .line 1412
    if-ne v9, v10, :cond_43

    .line 1413
    .line 1414
    move v5, v8

    .line 1415
    goto :goto_28

    .line 1416
    :cond_43
    if-ne v6, v14, :cond_44

    .line 1417
    .line 1418
    const/4 v10, 0x1

    .line 1419
    if-ne v9, v10, :cond_44

    .line 1420
    .line 1421
    move v6, v8

    .line 1422
    :cond_44
    :goto_28
    add-int/lit8 v7, v7, 0x1

    .line 1423
    .line 1424
    const/16 v33, 0x2

    .line 1425
    .line 1426
    goto :goto_27

    .line 1427
    :cond_45
    const/4 v14, -0x1

    .line 1428
    if-eq v5, v14, :cond_46

    .line 1429
    .line 1430
    :goto_29
    move/from16 v46, v5

    .line 1431
    .line 1432
    goto :goto_2a

    .line 1433
    :cond_46
    if-eq v6, v14, :cond_47

    .line 1434
    .line 1435
    move/from16 v46, v6

    .line 1436
    .line 1437
    goto :goto_2a

    .line 1438
    :cond_47
    const/4 v13, 0x0

    .line 1439
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1440
    .line 1441
    .line 1442
    move-result v5

    .line 1443
    goto :goto_29

    .line 1444
    :goto_2a
    new-instance v39, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MfraSeekMap;

    .line 1445
    .line 1446
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1447
    .line 1448
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1449
    .line 1450
    move-object/from16 v40, v3

    .line 1451
    .line 1452
    move-object/from16 v41, v4

    .line 1453
    .line 1454
    move-wide/from16 v42, v5

    .line 1455
    .line 1456
    move-wide/from16 v44, v7

    .line 1457
    .line 1458
    invoke-direct/range {v39 .. v46}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MfraSeekMap;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;JJI)V

    .line 1459
    .line 1460
    .line 1461
    move-object/from16 v3, v39

    .line 1462
    .line 1463
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1464
    .line 1465
    .line 1466
    :goto_2b
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 1467
    .line 1468
    if-nez v3, :cond_0

    .line 1469
    .line 1470
    :cond_48
    :goto_2c
    const/16 v37, 0x1

    .line 1471
    .line 1472
    goto/16 :goto_40

    .line 1473
    .line 1474
    :cond_49
    const/16 v3, 0x10

    .line 1475
    .line 1476
    invoke-virtual {v13, v3}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 1477
    .line 1478
    .line 1479
    iget-object v4, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1480
    .line 1481
    const/4 v9, 0x1

    .line 1482
    const/4 v14, 0x0

    .line 1483
    invoke-interface {v1, v4, v14, v3, v9}, Landroidx/media3/extractor/ExtractorInput;->a([BIIZ)Z

    .line 1484
    .line 1485
    .line 1486
    move-result v4

    .line 1487
    if-nez v4, :cond_4a

    .line 1488
    .line 1489
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 1490
    .line 1491
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1492
    .line 1493
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1494
    .line 1495
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1499
    .line 1500
    .line 1501
    goto :goto_2f

    .line 1502
    :cond_4a
    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1506
    .line 1507
    .line 1508
    move-result v4

    .line 1509
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    if-ne v4, v3, :cond_4e

    .line 1514
    .line 1515
    const v3, 0x6d66726f

    .line 1516
    .line 1517
    .line 1518
    if-eq v5, v3, :cond_4b

    .line 1519
    .line 1520
    goto :goto_2e

    .line 1521
    :cond_4b
    const/4 v9, 0x4

    .line 1522
    invoke-virtual {v13, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1526
    .line 1527
    .line 1528
    move-result-wide v3

    .line 1529
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 1530
    .line 1531
    .line 1532
    move-result-wide v5

    .line 1533
    sub-long/2addr v5, v3

    .line 1534
    cmp-long v7, v3, v18

    .line 1535
    .line 1536
    if-lez v7, :cond_4d

    .line 1537
    .line 1538
    cmp-long v3, v3, v16

    .line 1539
    .line 1540
    if-gtz v3, :cond_4d

    .line 1541
    .line 1542
    cmp-long v3, v5, v18

    .line 1543
    .line 1544
    if-ltz v3, :cond_4d

    .line 1545
    .line 1546
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1547
    .line 1548
    cmp-long v3, v5, v3

    .line 1549
    .line 1550
    if-gez v3, :cond_4c

    .line 1551
    .line 1552
    goto :goto_2d

    .line 1553
    :cond_4c
    iput-wide v5, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 1554
    .line 1555
    const/4 v14, 0x6

    .line 1556
    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 1557
    .line 1558
    goto :goto_2f

    .line 1559
    :cond_4d
    :goto_2d
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 1560
    .line 1561
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1562
    .line 1563
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1564
    .line 1565
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1569
    .line 1570
    .line 1571
    goto :goto_2f

    .line 1572
    :cond_4e
    :goto_2e
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 1573
    .line 1574
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 1575
    .line 1576
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 1577
    .line 1578
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v0, v3, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V

    .line 1582
    .line 1583
    .line 1584
    :goto_2f
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 1585
    .line 1586
    const/4 v14, 0x6

    .line 1587
    if-eq v3, v14, :cond_48

    .line 1588
    .line 1589
    if-nez v3, :cond_0

    .line 1590
    .line 1591
    goto :goto_2c

    .line 1592
    :cond_4f
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 1593
    .line 1594
    .line 1595
    move-result v3

    .line 1596
    const/4 v4, 0x0

    .line 1597
    const/4 v5, 0x0

    .line 1598
    const-wide v6, 0x7fffffffffffffffL

    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    :goto_30
    if-ge v4, v3, :cond_51

    .line 1604
    .line 1605
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v8

    .line 1609
    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1610
    .line 1611
    iget-object v8, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1612
    .line 1613
    iget-boolean v9, v8, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    .line 1614
    .line 1615
    if-eqz v9, :cond_50

    .line 1616
    .line 1617
    iget-wide v8, v8, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    .line 1618
    .line 1619
    cmp-long v10, v8, v6

    .line 1620
    .line 1621
    if-gez v10, :cond_50

    .line 1622
    .line 1623
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v5

    .line 1627
    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1628
    .line 1629
    move-wide v6, v8

    .line 1630
    :cond_50
    add-int/lit8 v4, v4, 0x1

    .line 1631
    .line 1632
    goto :goto_30

    .line 1633
    :cond_51
    if-nez v5, :cond_52

    .line 1634
    .line 1635
    const/4 v10, 0x3

    .line 1636
    iput v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 1637
    .line 1638
    goto/16 :goto_1

    .line 1639
    .line 1640
    :cond_52
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1641
    .line 1642
    .line 1643
    move-result-wide v3

    .line 1644
    sub-long/2addr v6, v3

    .line 1645
    long-to-int v3, v6

    .line 1646
    if-ltz v3, :cond_53

    .line 1647
    .line 1648
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1649
    .line 1650
    .line 1651
    iget-object v3, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1652
    .line 1653
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 1654
    .line 1655
    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1656
    .line 1657
    iget v6, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 1658
    .line 1659
    const/4 v13, 0x0

    .line 1660
    invoke-interface {v1, v5, v13, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1664
    .line 1665
    .line 1666
    iput-boolean v13, v3, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    .line 1667
    .line 1668
    goto/16 :goto_1

    .line 1669
    .line 1670
    :cond_53
    const-string v0, "Offset to encryption data was negative."

    .line 1671
    .line 1672
    const/4 v1, 0x0

    .line 1673
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v0

    .line 1677
    throw v0

    .line 1678
    :cond_54
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 1679
    .line 1680
    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 1681
    .line 1682
    int-to-long v8, v8

    .line 1683
    sub-long/2addr v3, v8

    .line 1684
    long-to-int v3, v3

    .line 1685
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:Landroidx/media3/common/util/ParsableByteArray;

    .line 1686
    .line 1687
    if-eqz v4, :cond_60

    .line 1688
    .line 1689
    iget-object v8, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1690
    .line 1691
    const/16 v9, 0x8

    .line 1692
    .line 1693
    invoke-interface {v1, v8, v9, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1694
    .line 1695
    .line 1696
    new-instance v3, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1697
    .line 1698
    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 1699
    .line 1700
    invoke-direct {v3, v8, v4}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1704
    .line 1705
    .line 1706
    move-result v9

    .line 1707
    if-nez v9, :cond_55

    .line 1708
    .line 1709
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v4

    .line 1713
    check-cast v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 1714
    .line 1715
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    .line 1716
    .line 1717
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    .line 1719
    .line 1720
    goto/16 :goto_36

    .line 1721
    .line 1722
    :cond_55
    const v3, 0x73696478

    .line 1723
    .line 1724
    .line 1725
    if-ne v8, v3, :cond_57

    .line 1726
    .line 1727
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1728
    .line 1729
    .line 1730
    move-result-wide v5

    .line 1731
    invoke-static {v5, v6, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v3

    .line 1735
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1736
    .line 1737
    check-cast v4, Landroidx/media3/extractor/ChunkIndex;

    .line 1738
    .line 1739
    invoke-virtual {v7, v4}, Landroidx/media3/extractor/ChunkIndexMerger;->a(Landroidx/media3/extractor/ChunkIndex;)V

    .line 1740
    .line 1741
    .line 1742
    iget-object v4, v7, Landroidx/media3/extractor/ChunkIndexMerger;->a:Ljava/util/LinkedHashMap;

    .line 1743
    .line 1744
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1745
    .line 1746
    check-cast v5, Ljava/lang/Long;

    .line 1747
    .line 1748
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1749
    .line 1750
    .line 1751
    move-result-wide v5

    .line 1752
    iput-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:J

    .line 1753
    .line 1754
    iget-boolean v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:Z

    .line 1755
    .line 1756
    if-nez v5, :cond_5f

    .line 1757
    .line 1758
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 1759
    .line 1760
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 1761
    .line 1762
    .line 1763
    move-result v4

    .line 1764
    const/4 v9, 0x1

    .line 1765
    if-ne v4, v9, :cond_56

    .line 1766
    .line 1767
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1768
    .line 1769
    check-cast v3, Landroidx/media3/extractor/SeekMap;

    .line 1770
    .line 1771
    goto :goto_31

    .line 1772
    :cond_56
    invoke-virtual {v7}, Landroidx/media3/extractor/ChunkIndexMerger;->b()Landroidx/media3/extractor/ChunkIndex;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v3

    .line 1776
    :goto_31
    invoke-interface {v5, v3}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 1777
    .line 1778
    .line 1779
    iput-boolean v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Z

    .line 1780
    .line 1781
    goto/16 :goto_36

    .line 1782
    .line 1783
    :cond_57
    const v3, 0x656d7367

    .line 1784
    .line 1785
    .line 1786
    if-ne v8, v3, :cond_5f

    .line 1787
    .line 1788
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 1789
    .line 1790
    array-length v3, v3

    .line 1791
    if-nez v3, :cond_58

    .line 1792
    .line 1793
    goto/16 :goto_36

    .line 1794
    .line 1795
    :cond_58
    const/16 v6, 0x8

    .line 1796
    .line 1797
    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1801
    .line 1802
    .line 1803
    move-result v3

    .line 1804
    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 1805
    .line 1806
    .line 1807
    move-result v3

    .line 1808
    if-eqz v3, :cond_5a

    .line 1809
    .line 1810
    const/4 v9, 0x1

    .line 1811
    if-eq v3, v9, :cond_59

    .line 1812
    .line 1813
    const-string v4, "Skipping unsupported emsg version: "

    .line 1814
    .line 1815
    invoke-static {v4, v3, v12}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    goto/16 :goto_36

    .line 1819
    .line 1820
    :cond_59
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1821
    .line 1822
    .line 1823
    move-result-wide v17

    .line 1824
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 1825
    .line 1826
    .line 1827
    move-result-wide v13

    .line 1828
    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1829
    .line 1830
    const-wide/32 v15, 0xf4240

    .line 1831
    .line 1832
    .line 1833
    invoke-static/range {v13 .. v19}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1834
    .line 1835
    .line 1836
    move-result-wide v6

    .line 1837
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1838
    .line 1839
    .line 1840
    move-result-wide v13

    .line 1841
    const-wide/16 v15, 0x3e8

    .line 1842
    .line 1843
    invoke-static/range {v13 .. v19}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1844
    .line 1845
    .line 1846
    move-result-wide v8

    .line 1847
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1848
    .line 1849
    .line 1850
    move-result-wide v10

    .line 1851
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v3

    .line 1855
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1856
    .line 1857
    .line 1858
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v12

    .line 1862
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1863
    .line 1864
    .line 1865
    move-wide v13, v10

    .line 1866
    move-wide/from16 v47, v6

    .line 1867
    .line 1868
    move-object v6, v12

    .line 1869
    move-wide v11, v8

    .line 1870
    move-wide/from16 v9, v29

    .line 1871
    .line 1872
    move-wide/from16 v7, v47

    .line 1873
    .line 1874
    goto :goto_33

    .line 1875
    :cond_5a
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v3

    .line 1879
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v12

    .line 1886
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1887
    .line 1888
    .line 1889
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1890
    .line 1891
    .line 1892
    move-result-wide v17

    .line 1893
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1894
    .line 1895
    .line 1896
    move-result-wide v13

    .line 1897
    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1898
    .line 1899
    const-wide/32 v15, 0xf4240

    .line 1900
    .line 1901
    .line 1902
    invoke-static/range {v13 .. v19}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1903
    .line 1904
    .line 1905
    move-result-wide v6

    .line 1906
    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:J

    .line 1907
    .line 1908
    cmp-long v10, v8, v29

    .line 1909
    .line 1910
    if-eqz v10, :cond_5b

    .line 1911
    .line 1912
    add-long/2addr v8, v6

    .line 1913
    goto :goto_32

    .line 1914
    :cond_5b
    move-wide/from16 v8, v29

    .line 1915
    .line 1916
    :goto_32
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1917
    .line 1918
    .line 1919
    move-result-wide v13

    .line 1920
    const-wide/16 v15, 0x3e8

    .line 1921
    .line 1922
    invoke-static/range {v13 .. v19}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1923
    .line 1924
    .line 1925
    move-result-wide v10

    .line 1926
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1927
    .line 1928
    .line 1929
    move-result-wide v13

    .line 1930
    move-wide/from16 v47, v6

    .line 1931
    .line 1932
    move-object v6, v12

    .line 1933
    move-wide v7, v8

    .line 1934
    move-wide v11, v10

    .line 1935
    move-wide/from16 v9, v47

    .line 1936
    .line 1937
    :goto_33
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1938
    .line 1939
    .line 1940
    move-result v15

    .line 1941
    new-array v15, v15, [B

    .line 1942
    .line 1943
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1944
    .line 1945
    .line 1946
    move-result v2

    .line 1947
    const/4 v1, 0x0

    .line 1948
    invoke-virtual {v4, v15, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1949
    .line 1950
    .line 1951
    new-instance v2, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 1952
    .line 1953
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 1954
    .line 1955
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 1956
    .line 1957
    iget-object v1, v4, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->b:Ljava/io/DataOutputStream;

    .line 1958
    .line 1959
    iget-object v4, v4, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->a:Ljava/io/ByteArrayOutputStream;

    .line 1960
    .line 1961
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1962
    .line 1963
    .line 1964
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1965
    .line 1966
    .line 1967
    const/4 v3, 0x0

    .line 1968
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1975
    .line 1976
    .line 1977
    invoke-virtual {v1, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1978
    .line 1979
    .line 1980
    invoke-virtual {v1, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1981
    .line 1982
    .line 1983
    invoke-virtual {v1, v15}, Ljava/io/OutputStream;->write([B)V

    .line 1984
    .line 1985
    .line 1986
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1987
    .line 1988
    .line 1989
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1990
    .line 1991
    .line 1992
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    invoke-direct {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1997
    .line 1998
    .line 1999
    move-result v1

    .line 2000
    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 2001
    .line 2002
    array-length v4, v3

    .line 2003
    const/4 v6, 0x0

    .line 2004
    :goto_34
    if-ge v6, v4, :cond_5c

    .line 2005
    .line 2006
    aget-object v11, v3, v6

    .line 2007
    .line 2008
    const/4 v13, 0x0

    .line 2009
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2010
    .line 2011
    .line 2012
    invoke-interface {v11, v1, v2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 2013
    .line 2014
    .line 2015
    add-int/lit8 v6, v6, 0x1

    .line 2016
    .line 2017
    goto :goto_34

    .line 2018
    :cond_5c
    cmp-long v2, v7, v29

    .line 2019
    .line 2020
    if-nez v2, :cond_5d

    .line 2021
    .line 2022
    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 2023
    .line 2024
    const/4 v4, 0x1

    .line 2025
    invoke-direct {v2, v1, v9, v10, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(IJZ)V

    .line 2026
    .line 2027
    .line 2028
    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2029
    .line 2030
    .line 2031
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 2032
    .line 2033
    add-int/2addr v2, v1

    .line 2034
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 2035
    .line 2036
    goto :goto_36

    .line 2037
    :cond_5d
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2038
    .line 2039
    .line 2040
    move-result v2

    .line 2041
    if-nez v2, :cond_5e

    .line 2042
    .line 2043
    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 2044
    .line 2045
    const/4 v13, 0x0

    .line 2046
    invoke-direct {v2, v1, v7, v8, v13}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(IJZ)V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2050
    .line 2051
    .line 2052
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 2053
    .line 2054
    add-int/2addr v2, v1

    .line 2055
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    .line 2056
    .line 2057
    goto :goto_36

    .line 2058
    :cond_5e
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:[Landroidx/media3/extractor/TrackOutput;

    .line 2059
    .line 2060
    array-length v3, v2

    .line 2061
    const/4 v5, 0x0

    .line 2062
    :goto_35
    if-ge v5, v3, :cond_5f

    .line 2063
    .line 2064
    aget-object v6, v2, v5

    .line 2065
    .line 2066
    const/4 v11, 0x0

    .line 2067
    const/4 v12, 0x0

    .line 2068
    const/4 v9, 0x1

    .line 2069
    move v10, v1

    .line 2070
    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 2071
    .line 2072
    .line 2073
    add-int/lit8 v5, v5, 0x1

    .line 2074
    .line 2075
    goto :goto_35

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
    new-instance v1, Ljava/lang/RuntimeException;

    .line 2078
    .line 2079
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2080
    .line 2081
    .line 2082
    throw v1

    .line 2083
    :cond_5f
    :goto_36
    move-object/from16 v1, p1

    .line 2084
    .line 2085
    goto :goto_37

    .line 2086
    :cond_60
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 2087
    .line 2088
    .line 2089
    :goto_37
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 2090
    .line 2091
    .line 2092
    move-result-wide v2

    .line 2093
    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l(J)V

    .line 2094
    .line 2095
    .line 2096
    goto/16 :goto_0

    .line 2097
    .line 2098
    :cond_61
    move/from16 v34, v14

    .line 2099
    .line 2100
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2101
    .line 2102
    const-wide/16 v3, -0x1

    .line 2103
    .line 2104
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 2105
    .line 2106
    if-nez v2, :cond_64

    .line 2107
    .line 2108
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2109
    .line 2110
    const/16 v8, 0x8

    .line 2111
    .line 2112
    const/4 v10, 0x1

    .line 2113
    const/4 v14, 0x0

    .line 2114
    invoke-interface {v1, v2, v14, v8, v10}, Landroidx/media3/extractor/ExtractorInput;->a([BIIZ)Z

    .line 2115
    .line 2116
    .line 2117
    move-result v2

    .line 2118
    if-nez v2, :cond_63

    .line 2119
    .line 2120
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:J

    .line 2121
    .line 2122
    cmp-long v5, v1, v3

    .line 2123
    .line 2124
    if-eqz v5, :cond_62

    .line 2125
    .line 2126
    move-object/from16 v8, p2

    .line 2127
    .line 2128
    iput-wide v1, v8, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 2129
    .line 2130
    iput-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:J

    .line 2131
    .line 2132
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 2133
    .line 2134
    invoke-virtual {v7}, Landroidx/media3/extractor/ChunkIndexMerger;->b()Landroidx/media3/extractor/ChunkIndex;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v2

    .line 2138
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 2139
    .line 2140
    .line 2141
    iput-boolean v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:Z

    .line 2142
    .line 2143
    return v10

    .line 2144
    :cond_62
    const/4 v14, 0x0

    .line 2145
    invoke-virtual {v15, v14}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    .line 2146
    .line 2147
    .line 2148
    const/16 v28, -0x1

    .line 2149
    .line 2150
    return v28

    .line 2151
    :cond_63
    move-object/from16 v8, p2

    .line 2152
    .line 2153
    const/16 v2, 0x8

    .line 2154
    .line 2155
    const/4 v14, 0x0

    .line 2156
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2157
    .line 2158
    invoke-virtual {v5, v14}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 2159
    .line 2160
    .line 2161
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 2162
    .line 2163
    .line 2164
    move-result-wide v14

    .line 2165
    iput-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2166
    .line 2167
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 2168
    .line 2169
    .line 2170
    move-result v2

    .line 2171
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2172
    .line 2173
    goto :goto_38

    .line 2174
    :cond_64
    move-object/from16 v8, p2

    .line 2175
    .line 2176
    :goto_38
    iget-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2177
    .line 2178
    cmp-long v2, v14, v24

    .line 2179
    .line 2180
    if-nez v2, :cond_66

    .line 2181
    .line 2182
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2183
    .line 2184
    const/16 v10, 0x8

    .line 2185
    .line 2186
    invoke-interface {v1, v2, v10, v10}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 2187
    .line 2188
    .line 2189
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2190
    .line 2191
    add-int/2addr v2, v10

    .line 2192
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2193
    .line 2194
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 2195
    .line 2196
    .line 2197
    move-result-wide v14

    .line 2198
    iput-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2199
    .line 2200
    :cond_65
    move-wide/from16 v18, v3

    .line 2201
    .line 2202
    goto :goto_39

    .line 2203
    :cond_66
    cmp-long v2, v14, v18

    .line 2204
    .line 2205
    if-nez v2, :cond_65

    .line 2206
    .line 2207
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 2208
    .line 2209
    .line 2210
    move-result-wide v14

    .line 2211
    cmp-long v2, v14, v3

    .line 2212
    .line 2213
    if-nez v2, :cond_67

    .line 2214
    .line 2215
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2216
    .line 2217
    .line 2218
    move-result v2

    .line 2219
    if-nez v2, :cond_67

    .line 2220
    .line 2221
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v2

    .line 2225
    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 2226
    .line 2227
    iget-wide v14, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    .line 2228
    .line 2229
    :cond_67
    cmp-long v2, v14, v3

    .line 2230
    .line 2231
    if-eqz v2, :cond_65

    .line 2232
    .line 2233
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 2234
    .line 2235
    .line 2236
    move-result-wide v18

    .line 2237
    sub-long v14, v14, v18

    .line 2238
    .line 2239
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2240
    .line 2241
    move-wide/from16 v18, v3

    .line 2242
    .line 2243
    int-to-long v3, v2

    .line 2244
    add-long/2addr v14, v3

    .line 2245
    iput-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2246
    .line 2247
    :goto_39
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2248
    .line 2249
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2250
    .line 2251
    int-to-long v14, v4

    .line 2252
    cmp-long v2, v2, v14

    .line 2253
    .line 2254
    if-gez v2, :cond_69

    .line 2255
    .line 2256
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2257
    .line 2258
    const v3, 0x66726565

    .line 2259
    .line 2260
    .line 2261
    if-ne v2, v3, :cond_68

    .line 2262
    .line 2263
    const/16 v2, 0x8

    .line 2264
    .line 2265
    if-ne v4, v2, :cond_68

    .line 2266
    .line 2267
    iput-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2268
    .line 2269
    goto :goto_3a

    .line 2270
    :cond_68
    const-string v0, "Atom size less than header length (unsupported)."

    .line 2271
    .line 2272
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v0

    .line 2276
    throw v0

    .line 2277
    :cond_69
    :goto_3a
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:J

    .line 2278
    .line 2279
    cmp-long v2, v2, v18

    .line 2280
    .line 2281
    if-eqz v2, :cond_6b

    .line 2282
    .line 2283
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2284
    .line 2285
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2286
    .line 2287
    const v6, 0x73696478

    .line 2288
    .line 2289
    .line 2290
    if-ne v2, v6, :cond_6a

    .line 2291
    .line 2292
    long-to-int v2, v3

    .line 2293
    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 2294
    .line 2295
    .line 2296
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2297
    .line 2298
    iget-object v3, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2299
    .line 2300
    const/16 v6, 0x8

    .line 2301
    .line 2302
    const/4 v14, 0x0

    .line 2303
    invoke-static {v2, v14, v3, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2304
    .line 2305
    .line 2306
    iget-object v2, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2307
    .line 2308
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2309
    .line 2310
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2311
    .line 2312
    int-to-long v9, v5

    .line 2313
    sub-long/2addr v3, v9

    .line 2314
    long-to-int v3, v3

    .line 2315
    invoke-interface {v1, v2, v6, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 2316
    .line 2317
    .line 2318
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 2319
    .line 2320
    .line 2321
    move-result-wide v2

    .line 2322
    invoke-static {v2, v3, v13}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v2

    .line 2326
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2327
    .line 2328
    check-cast v2, Landroidx/media3/extractor/ChunkIndex;

    .line 2329
    .line 2330
    invoke-virtual {v7, v2}, Landroidx/media3/extractor/ChunkIndexMerger;->a(Landroidx/media3/extractor/ChunkIndex;)V

    .line 2331
    .line 2332
    .line 2333
    goto :goto_3b

    .line 2334
    :cond_6a
    sub-long/2addr v3, v14

    .line 2335
    long-to-int v2, v3

    .line 2336
    const/4 v9, 0x1

    .line 2337
    invoke-interface {v1, v2, v9}, Landroidx/media3/extractor/ExtractorInput;->c(IZ)Z

    .line 2338
    .line 2339
    .line 2340
    :goto_3b
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 2341
    .line 2342
    .line 2343
    goto/16 :goto_3f

    .line 2344
    .line 2345
    :cond_6b
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 2346
    .line 2347
    .line 2348
    move-result-wide v2

    .line 2349
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2350
    .line 2351
    int-to-long v14, v4

    .line 2352
    sub-long/2addr v2, v14

    .line 2353
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2354
    .line 2355
    const v7, 0x6d646174

    .line 2356
    .line 2357
    .line 2358
    const v10, 0x6d6f6f66

    .line 2359
    .line 2360
    .line 2361
    if-eq v4, v10, :cond_6c

    .line 2362
    .line 2363
    if-ne v4, v7, :cond_6e

    .line 2364
    .line 2365
    :cond_6c
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Z

    .line 2366
    .line 2367
    if-nez v4, :cond_6e

    .line 2368
    .line 2369
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 2370
    .line 2371
    .line 2372
    move-result-wide v14

    .line 2373
    cmp-long v4, v14, v18

    .line 2374
    .line 2375
    if-eqz v4, :cond_6d

    .line 2376
    .line 2377
    iget-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 2378
    .line 2379
    cmp-long v4, v14, v18

    .line 2380
    .line 2381
    if-nez v4, :cond_6d

    .line 2382
    .line 2383
    and-int/lit16 v4, v9, 0x200

    .line 2384
    .line 2385
    if-eqz v4, :cond_6d

    .line 2386
    .line 2387
    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 2388
    .line 2389
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 2390
    .line 2391
    .line 2392
    move-result-wide v2

    .line 2393
    sub-long v2, v2, v22

    .line 2394
    .line 2395
    iput-wide v2, v8, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 2396
    .line 2397
    move/from16 v2, v34

    .line 2398
    .line 2399
    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 2400
    .line 2401
    goto/16 :goto_3f

    .line 2402
    .line 2403
    :cond_6d
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 2404
    .line 2405
    new-instance v9, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 2406
    .line 2407
    iget-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 2408
    .line 2409
    invoke-direct {v9, v14, v15, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 2410
    .line 2411
    .line 2412
    invoke-interface {v4, v9}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 2413
    .line 2414
    .line 2415
    const/4 v9, 0x1

    .line 2416
    iput-boolean v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Z

    .line 2417
    .line 2418
    :cond_6e
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2419
    .line 2420
    if-ne v4, v10, :cond_6f

    .line 2421
    .line 2422
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 2423
    .line 2424
    .line 2425
    move-result v4

    .line 2426
    const/4 v9, 0x0

    .line 2427
    :goto_3c
    if-ge v9, v4, :cond_6f

    .line 2428
    .line 2429
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v12

    .line 2433
    check-cast v12, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 2434
    .line 2435
    iget-object v12, v12, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 2436
    .line 2437
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2438
    .line 2439
    .line 2440
    iput-wide v2, v12, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    .line 2441
    .line 2442
    iput-wide v2, v12, Landroidx/media3/extractor/mp4/TrackFragment;->b:J

    .line 2443
    .line 2444
    add-int/lit8 v9, v9, 0x1

    .line 2445
    .line 2446
    goto :goto_3c

    .line 2447
    :cond_6f
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2448
    .line 2449
    if-ne v4, v7, :cond_70

    .line 2450
    .line 2451
    const/4 v7, 0x0

    .line 2452
    iput-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 2453
    .line 2454
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2455
    .line 2456
    add-long/2addr v2, v4

    .line 2457
    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    .line 2458
    .line 2459
    const/4 v10, 0x2

    .line 2460
    iput v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 2461
    .line 2462
    goto/16 :goto_3f

    .line 2463
    .line 2464
    :cond_70
    const v2, 0x6d6f6f76

    .line 2465
    .line 2466
    .line 2467
    const v3, 0x6d657461

    .line 2468
    .line 2469
    .line 2470
    if-eq v4, v2, :cond_77

    .line 2471
    .line 2472
    const v2, 0x7472616b

    .line 2473
    .line 2474
    .line 2475
    if-eq v4, v2, :cond_77

    .line 2476
    .line 2477
    const v2, 0x6d646961

    .line 2478
    .line 2479
    .line 2480
    if-eq v4, v2, :cond_77

    .line 2481
    .line 2482
    const v2, 0x6d696e66

    .line 2483
    .line 2484
    .line 2485
    if-eq v4, v2, :cond_77

    .line 2486
    .line 2487
    const v2, 0x7374626c

    .line 2488
    .line 2489
    .line 2490
    if-eq v4, v2, :cond_77

    .line 2491
    .line 2492
    if-eq v4, v10, :cond_77

    .line 2493
    .line 2494
    const v2, 0x74726166

    .line 2495
    .line 2496
    .line 2497
    if-eq v4, v2, :cond_77

    .line 2498
    .line 2499
    const v2, 0x6d766578

    .line 2500
    .line 2501
    .line 2502
    if-eq v4, v2, :cond_77

    .line 2503
    .line 2504
    const v2, 0x65647473

    .line 2505
    .line 2506
    .line 2507
    if-eq v4, v2, :cond_77

    .line 2508
    .line 2509
    if-ne v4, v3, :cond_71

    .line 2510
    .line 2511
    goto/16 :goto_3e

    .line 2512
    .line 2513
    :cond_71
    const v2, 0x68646c72    # 4.3148E24f

    .line 2514
    .line 2515
    .line 2516
    if-eq v4, v2, :cond_74

    .line 2517
    .line 2518
    const v2, 0x6d646864

    .line 2519
    .line 2520
    .line 2521
    if-eq v4, v2, :cond_74

    .line 2522
    .line 2523
    const v2, 0x6d766864

    .line 2524
    .line 2525
    .line 2526
    if-eq v4, v2, :cond_74

    .line 2527
    .line 2528
    const v3, 0x73696478

    .line 2529
    .line 2530
    .line 2531
    if-eq v4, v3, :cond_74

    .line 2532
    .line 2533
    const v2, 0x73747364

    .line 2534
    .line 2535
    .line 2536
    if-eq v4, v2, :cond_74

    .line 2537
    .line 2538
    const v2, 0x73747473

    .line 2539
    .line 2540
    .line 2541
    if-eq v4, v2, :cond_74

    .line 2542
    .line 2543
    const v2, 0x63747473

    .line 2544
    .line 2545
    .line 2546
    if-eq v4, v2, :cond_74

    .line 2547
    .line 2548
    const v2, 0x73747363

    .line 2549
    .line 2550
    .line 2551
    if-eq v4, v2, :cond_74

    .line 2552
    .line 2553
    const v2, 0x7374737a

    .line 2554
    .line 2555
    .line 2556
    if-eq v4, v2, :cond_74

    .line 2557
    .line 2558
    const v2, 0x73747a32

    .line 2559
    .line 2560
    .line 2561
    if-eq v4, v2, :cond_74

    .line 2562
    .line 2563
    const v2, 0x7374636f

    .line 2564
    .line 2565
    .line 2566
    if-eq v4, v2, :cond_74

    .line 2567
    .line 2568
    const v2, 0x636f3634

    .line 2569
    .line 2570
    .line 2571
    if-eq v4, v2, :cond_74

    .line 2572
    .line 2573
    const v2, 0x73747373

    .line 2574
    .line 2575
    .line 2576
    if-eq v4, v2, :cond_74

    .line 2577
    .line 2578
    const v2, 0x74666474

    .line 2579
    .line 2580
    .line 2581
    if-eq v4, v2, :cond_74

    .line 2582
    .line 2583
    const v2, 0x74666864

    .line 2584
    .line 2585
    .line 2586
    if-eq v4, v2, :cond_74

    .line 2587
    .line 2588
    const v2, 0x746b6864

    .line 2589
    .line 2590
    .line 2591
    if-eq v4, v2, :cond_74

    .line 2592
    .line 2593
    const v2, 0x74726578

    .line 2594
    .line 2595
    .line 2596
    if-eq v4, v2, :cond_74

    .line 2597
    .line 2598
    const v2, 0x7472756e

    .line 2599
    .line 2600
    .line 2601
    if-eq v4, v2, :cond_74

    .line 2602
    .line 2603
    const v2, 0x70737368    # 3.013775E29f

    .line 2604
    .line 2605
    .line 2606
    if-eq v4, v2, :cond_74

    .line 2607
    .line 2608
    const v2, 0x7361697a

    .line 2609
    .line 2610
    .line 2611
    if-eq v4, v2, :cond_74

    .line 2612
    .line 2613
    const v2, 0x7361696f

    .line 2614
    .line 2615
    .line 2616
    if-eq v4, v2, :cond_74

    .line 2617
    .line 2618
    const v2, 0x73656e63

    .line 2619
    .line 2620
    .line 2621
    if-eq v4, v2, :cond_74

    .line 2622
    .line 2623
    const v2, 0x75756964

    .line 2624
    .line 2625
    .line 2626
    if-eq v4, v2, :cond_74

    .line 2627
    .line 2628
    const v2, 0x73626770

    .line 2629
    .line 2630
    .line 2631
    if-eq v4, v2, :cond_74

    .line 2632
    .line 2633
    const v2, 0x73677064

    .line 2634
    .line 2635
    .line 2636
    if-eq v4, v2, :cond_74

    .line 2637
    .line 2638
    const v2, 0x656c7374

    .line 2639
    .line 2640
    .line 2641
    if-eq v4, v2, :cond_74

    .line 2642
    .line 2643
    const v2, 0x6d656864

    .line 2644
    .line 2645
    .line 2646
    if-eq v4, v2, :cond_74

    .line 2647
    .line 2648
    const v3, 0x656d7367

    .line 2649
    .line 2650
    .line 2651
    if-eq v4, v3, :cond_74

    .line 2652
    .line 2653
    const v2, 0x75647461

    .line 2654
    .line 2655
    .line 2656
    if-eq v4, v2, :cond_74

    .line 2657
    .line 2658
    const v2, 0x6b657973

    .line 2659
    .line 2660
    .line 2661
    if-eq v4, v2, :cond_74

    .line 2662
    .line 2663
    const v2, 0x696c7374

    .line 2664
    .line 2665
    .line 2666
    if-ne v4, v2, :cond_72

    .line 2667
    .line 2668
    goto :goto_3d

    .line 2669
    :cond_72
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2670
    .line 2671
    cmp-long v2, v2, v16

    .line 2672
    .line 2673
    if-gtz v2, :cond_73

    .line 2674
    .line 2675
    const/4 v4, 0x0

    .line 2676
    iput-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:Landroidx/media3/common/util/ParsableByteArray;

    .line 2677
    .line 2678
    const/4 v9, 0x1

    .line 2679
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 2680
    .line 2681
    goto/16 :goto_3f

    .line 2682
    .line 2683
    :cond_73
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    .line 2684
    .line 2685
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v0

    .line 2689
    throw v0

    .line 2690
    :cond_74
    :goto_3d
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2691
    .line 2692
    const/16 v6, 0x8

    .line 2693
    .line 2694
    if-ne v2, v6, :cond_76

    .line 2695
    .line 2696
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2697
    .line 2698
    cmp-long v2, v2, v16

    .line 2699
    .line 2700
    if-gtz v2, :cond_75

    .line 2701
    .line 2702
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 2703
    .line 2704
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2705
    .line 2706
    long-to-int v3, v3

    .line 2707
    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 2708
    .line 2709
    .line 2710
    iget-object v3, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2711
    .line 2712
    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2713
    .line 2714
    const/4 v13, 0x0

    .line 2715
    invoke-static {v3, v13, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2716
    .line 2717
    .line 2718
    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:Landroidx/media3/common/util/ParsableByteArray;

    .line 2719
    .line 2720
    const/4 v9, 0x1

    .line 2721
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 2722
    .line 2723
    goto :goto_3f

    .line 2724
    :cond_75
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    .line 2725
    .line 2726
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v0

    .line 2730
    throw v0

    .line 2731
    :cond_76
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    .line 2732
    .line 2733
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v0

    .line 2737
    throw v0

    .line 2738
    :cond_77
    :goto_3e
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 2739
    .line 2740
    .line 2741
    move-result-wide v4

    .line 2742
    iget-wide v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2743
    .line 2744
    add-long/2addr v4, v9

    .line 2745
    sub-long v4, v4, v20

    .line 2746
    .line 2747
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2748
    .line 2749
    int-to-long v11, v2

    .line 2750
    cmp-long v2, v9, v11

    .line 2751
    .line 2752
    if-eqz v2, :cond_78

    .line 2753
    .line 2754
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2755
    .line 2756
    if-ne v2, v3, :cond_78

    .line 2757
    .line 2758
    const/16 v2, 0x8

    .line 2759
    .line 2760
    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 2761
    .line 2762
    .line 2763
    iget-object v3, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2764
    .line 2765
    const/4 v14, 0x0

    .line 2766
    invoke-interface {v1, v3, v14, v2}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 2767
    .line 2768
    .line 2769
    invoke-static {v13}, Landroidx/media3/extractor/mp4/BoxParser;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 2770
    .line 2771
    .line 2772
    iget v2, v13, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2773
    .line 2774
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 2775
    .line 2776
    .line 2777
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 2778
    .line 2779
    .line 2780
    :cond_78
    new-instance v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 2781
    .line 2782
    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 2783
    .line 2784
    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    .line 2785
    .line 2786
    .line 2787
    invoke-virtual {v6, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 2788
    .line 2789
    .line 2790
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:J

    .line 2791
    .line 2792
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 2793
    .line 2794
    int-to-long v6, v6

    .line 2795
    cmp-long v2, v2, v6

    .line 2796
    .line 2797
    if-nez v2, :cond_79

    .line 2798
    .line 2799
    invoke-virtual {v0, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l(J)V

    .line 2800
    .line 2801
    .line 2802
    goto :goto_3f

    .line 2803
    :cond_79
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 2804
    .line 2805
    .line 2806
    :goto_3f
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 2807
    .line 2808
    const/4 v3, 0x5

    .line 2809
    if-ne v2, v3, :cond_7a

    .line 2810
    .line 2811
    goto/16 :goto_2c

    .line 2812
    .line 2813
    :goto_40
    return v37

    .line 2814
    :cond_7a
    move-object v2, v8

    .line 2815
    goto/16 :goto_1

    .line 2816
    .line 2817
    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x4f62860f -> :sswitch_0
    .end sparse-switch

    .line 2818
    .line 2819
    .line 2820
    .line 2821
    .line 2822
    .line 2823
    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    .line 2829
    .line 2830
    .line 2831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/PositionHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Z

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:J

    .line 10
    .line 11
    iput-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final l(J)V
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_62

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 16
    .line 17
    iget-wide v2, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    .line 18
    .line 19
    cmp-long v2, v2, p1

    .line 20
    .line 21
    if-nez v2, :cond_62

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 29
    .line 30
    iget v2, v3, Landroidx/media3/container/Mp4Box;->a:I

    .line 31
    .line 32
    iget-object v4, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v5, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    const v6, 0x6d6f6f76

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/16 v9, 0xc

    .line 41
    .line 42
    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->d:Landroid/util/SparseArray;

    .line 43
    .line 44
    if-ne v2, v6, :cond_13

    .line 45
    .line 46
    move-object v6, v7

    .line 47
    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const v1, 0x6d766578

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v2, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x0

    .line 73
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    :goto_1
    if-ge v5, v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    check-cast v15, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 85
    .line 86
    iget v6, v15, Landroidx/media3/container/Mp4Box;->a:I

    .line 87
    .line 88
    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 89
    .line 90
    const/16 v17, 0x1

    .line 91
    .line 92
    const v13, 0x74726578

    .line 93
    .line 94
    .line 95
    if-ne v6, v13, :cond_1

    .line 96
    .line 97
    invoke-virtual {v15, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    add-int/lit8 v13, v13, -0x1

    .line 109
    .line 110
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    new-instance v8, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 127
    .line 128
    invoke-direct {v8, v13, v9, v12, v15}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 129
    .line 130
    .line 131
    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v8, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 146
    .line 147
    invoke-virtual {v2, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_1
    const v8, 0x6d656864

    .line 152
    .line 153
    .line 154
    if-ne v6, v8, :cond_3

    .line 155
    .line 156
    const/16 v6, 0x8

    .line 157
    .line 158
    invoke-virtual {v15, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-static {v6}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_2

    .line 170
    .line 171
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 172
    .line 173
    .line 174
    move-result-wide v8

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    :goto_2
    move-wide v10, v8

    .line 181
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const/16 v9, 0xc

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_4
    const/16 v17, 0x1

    .line 188
    .line 189
    const v1, 0x6d657461

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->e(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    goto :goto_4

    .line 203
    :cond_5
    const/4 v1, 0x0

    .line 204
    :goto_4
    new-instance v4, Landroidx/media3/extractor/GaplessInfoHolder;

    .line 205
    .line 206
    invoke-direct {v4}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    .line 207
    .line 208
    .line 209
    const v5, 0x75647461

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const/4 v6, 0x0

    .line 217
    if-eqz v5, :cond_6

    .line 218
    .line 219
    invoke-static {v5, v6}, Landroidx/media3/extractor/mp4/BoxParser;->j(Landroidx/media3/container/Mp4Box$LeafBox;Z)Landroidx/media3/common/Metadata;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v4, v5}, Landroidx/media3/extractor/GaplessInfoHolder;->b(Landroidx/media3/common/Metadata;)V

    .line 224
    .line 225
    .line 226
    move-object v12, v5

    .line 227
    goto :goto_5

    .line 228
    :cond_6
    const/4 v12, 0x0

    .line 229
    :goto_5
    new-instance v13, Landroidx/media3/common/Metadata;

    .line 230
    .line 231
    const v5, 0x6d766864

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    iget-object v5, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 242
    .line 243
    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    move/from16 v8, v17

    .line 248
    .line 249
    new-array v9, v8, [Landroidx/media3/common/Metadata$Entry;

    .line 250
    .line 251
    aput-object v5, v9, v6

    .line 252
    .line 253
    invoke-direct {v13, v9}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 254
    .line 255
    .line 256
    move-wide v5, v10

    .line 257
    new-instance v10, Lk8;

    .line 258
    .line 259
    invoke-direct {v10, v0}, Lk8;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    .line 260
    .line 261
    .line 262
    const/4 v11, 0x0

    .line 263
    const/4 v8, 0x0

    .line 264
    const/4 v9, 0x0

    .line 265
    invoke-static/range {v3 .. v11}, Landroidx/media3/extractor/mp4/BoxParser;->i(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_c

    .line 278
    .line 279
    invoke-static {v3}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    const/4 v7, 0x0

    .line 284
    :goto_6
    if-ge v7, v5, :cond_b

    .line 285
    .line 286
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    check-cast v8, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 291
    .line 292
    iget-object v9, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 293
    .line 294
    iget-boolean v10, v9, Landroidx/media3/extractor/mp4/Track;->m:Z

    .line 295
    .line 296
    iget v11, v9, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 297
    .line 298
    iget-object v15, v9, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 299
    .line 300
    move/from16 v16, v5

    .line 301
    .line 302
    move-object/from16 v18, v6

    .line 303
    .line 304
    iget-wide v5, v9, Landroidx/media3/extractor/mp4/Track;->e:J

    .line 305
    .line 306
    iget v9, v9, Landroidx/media3/extractor/mp4/Track;->b:I

    .line 307
    .line 308
    if-nez v10, :cond_7

    .line 309
    .line 310
    move-object/from16 v20, v3

    .line 311
    .line 312
    move/from16 v19, v7

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_7
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 316
    .line 317
    invoke-interface {v10, v7, v9}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-interface {v10, v5, v6}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 322
    .line 323
    .line 324
    move/from16 v19, v7

    .line 325
    .line 326
    invoke-virtual {v15}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    move-object/from16 v20, v3

    .line 331
    .line 332
    invoke-static/range {v18 .. v18}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    iput-object v3, v7, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 337
    .line 338
    const/4 v3, 0x1

    .line 339
    if-ne v9, v3, :cond_8

    .line 340
    .line 341
    iget v3, v4, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    .line 342
    .line 343
    move-wide/from16 v21, v5

    .line 344
    .line 345
    const/4 v5, -0x1

    .line 346
    if-eq v3, v5, :cond_9

    .line 347
    .line 348
    iget v6, v4, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 349
    .line 350
    if-eq v6, v5, :cond_9

    .line 351
    .line 352
    iput v3, v7, Landroidx/media3/common/Format$Builder;->M:I

    .line 353
    .line 354
    iput v6, v7, Landroidx/media3/common/Format$Builder;->N:I

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_8
    move-wide/from16 v21, v5

    .line 358
    .line 359
    :cond_9
    :goto_7
    iget-object v3, v15, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 360
    .line 361
    filled-new-array {v12, v13}, [Landroidx/media3/common/Metadata;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-static {v9, v1, v7, v3, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->f(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    .line 366
    .line 367
    .line 368
    new-instance v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 369
    .line 370
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    const/4 v6, 0x1

    .line 375
    if-ne v5, v6, :cond_a

    .line 376
    .line 377
    const/4 v6, 0x0

    .line 378
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    check-cast v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_a
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    check-cast v5, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    :goto_8
    new-instance v6, Landroidx/media3/common/Format;

    .line 395
    .line 396
    invoke-direct {v6, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 397
    .line 398
    .line 399
    invoke-direct {v3, v10, v8, v5, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Landroidx/media3/common/Format;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v14, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 406
    .line 407
    move-wide/from16 v7, v21

    .line 408
    .line 409
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 410
    .line 411
    .line 412
    move-result-wide v5

    .line 413
    iput-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    .line 414
    .line 415
    :goto_9
    add-int/lit8 v7, v19, 0x1

    .line 416
    .line 417
    move/from16 v5, v16

    .line 418
    .line 419
    move-object/from16 v6, v18

    .line 420
    .line 421
    move-object/from16 v3, v20

    .line 422
    .line 423
    goto/16 :goto_6

    .line 424
    .line 425
    :cond_b
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:Landroidx/media3/extractor/ExtractorOutput;

    .line 426
    .line 427
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :cond_c
    move-object/from16 v20, v3

    .line 433
    .line 434
    move v4, v5

    .line 435
    const/4 v1, 0x0

    .line 436
    const/4 v3, 0x0

    .line 437
    :goto_a
    if-ge v1, v4, :cond_e

    .line 438
    .line 439
    move-object/from16 v5, v20

    .line 440
    .line 441
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    check-cast v6, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 446
    .line 447
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 448
    .line 449
    iget-boolean v6, v6, Landroidx/media3/extractor/mp4/Track;->m:Z

    .line 450
    .line 451
    if-eqz v6, :cond_d

    .line 452
    .line 453
    add-int/lit8 v3, v3, 0x1

    .line 454
    .line 455
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 456
    .line 457
    move-object/from16 v20, v5

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_e
    move-object/from16 v5, v20

    .line 461
    .line 462
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-ne v1, v3, :cond_f

    .line 467
    .line 468
    const/4 v1, 0x1

    .line 469
    goto :goto_b

    .line 470
    :cond_f
    const/4 v1, 0x0

    .line 471
    :goto_b
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 472
    .line 473
    .line 474
    const/4 v1, 0x0

    .line 475
    :goto_c
    if-ge v1, v4, :cond_0

    .line 476
    .line 477
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 482
    .line 483
    iget-object v6, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 484
    .line 485
    iget-boolean v7, v6, Landroidx/media3/extractor/mp4/Track;->m:Z

    .line 486
    .line 487
    iget v6, v6, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 488
    .line 489
    if-nez v7, :cond_10

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_10
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    check-cast v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 497
    .line 498
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    const/4 v9, 0x1

    .line 503
    if-ne v8, v9, :cond_11

    .line 504
    .line 505
    const/4 v8, 0x0

    .line 506
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_11
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 518
    .line 519
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    :goto_d
    iput-object v3, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 523
    .line 524
    iput-object v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 525
    .line 526
    iget-object v3, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->l:Landroidx/media3/common/Format;

    .line 527
    .line 528
    if-nez v3, :cond_12

    .line 529
    .line 530
    iget-object v3, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    .line 531
    .line 532
    iget-object v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Landroidx/media3/common/Format;

    .line 533
    .line 534
    invoke-interface {v3, v6}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 535
    .line 536
    .line 537
    :cond_12
    invoke-virtual {v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()V

    .line 538
    .line 539
    .line 540
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_13
    const v6, 0x6d6f6f66

    .line 544
    .line 545
    .line 546
    if-ne v2, v6, :cond_61

    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    const/4 v6, 0x0

    .line 553
    :goto_f
    if-ge v6, v1, :cond_59

    .line 554
    .line 555
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 560
    .line 561
    iget v3, v2, Landroidx/media3/container/Mp4Box;->a:I

    .line 562
    .line 563
    const v7, 0x74726166

    .line 564
    .line 565
    .line 566
    if-ne v3, v7, :cond_58

    .line 567
    .line 568
    const v3, 0x74666864

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    iget-object v7, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 581
    .line 582
    const/16 v8, 0x8

    .line 583
    .line 584
    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 588
    .line 589
    .line 590
    move-result v8

    .line 591
    sget-object v9, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 592
    .line 593
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 594
    .line 595
    .line 596
    move-result v9

    .line 597
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v9

    .line 601
    check-cast v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 602
    .line 603
    if-nez v9, :cond_14

    .line 604
    .line 605
    const/4 v9, 0x0

    .line 606
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    goto :goto_14

    .line 612
    :cond_14
    iget-object v12, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 613
    .line 614
    and-int/lit8 v13, v8, 0x1

    .line 615
    .line 616
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    if-eqz v13, :cond_15

    .line 622
    .line 623
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 624
    .line 625
    .line 626
    move-result-wide v10

    .line 627
    iput-wide v10, v12, Landroidx/media3/extractor/mp4/TrackFragment;->b:J

    .line 628
    .line 629
    iput-wide v10, v12, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    .line 630
    .line 631
    :cond_15
    iget-object v10, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 632
    .line 633
    and-int/lit8 v11, v8, 0x2

    .line 634
    .line 635
    if-eqz v11, :cond_16

    .line 636
    .line 637
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 638
    .line 639
    .line 640
    move-result v11

    .line 641
    const/16 v17, 0x1

    .line 642
    .line 643
    add-int/lit8 v11, v11, -0x1

    .line 644
    .line 645
    goto :goto_10

    .line 646
    :cond_16
    iget v11, v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;->a:I

    .line 647
    .line 648
    :goto_10
    and-int/lit8 v13, v8, 0x8

    .line 649
    .line 650
    if-eqz v13, :cond_17

    .line 651
    .line 652
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 653
    .line 654
    .line 655
    move-result v13

    .line 656
    goto :goto_11

    .line 657
    :cond_17
    iget v13, v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;->b:I

    .line 658
    .line 659
    :goto_11
    and-int/lit8 v15, v8, 0x10

    .line 660
    .line 661
    if-eqz v15, :cond_18

    .line 662
    .line 663
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 664
    .line 665
    .line 666
    move-result v15

    .line 667
    goto :goto_12

    .line 668
    :cond_18
    iget v15, v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;->c:I

    .line 669
    .line 670
    :goto_12
    and-int/lit8 v8, v8, 0x20

    .line 671
    .line 672
    if-eqz v8, :cond_19

    .line 673
    .line 674
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    goto :goto_13

    .line 679
    :cond_19
    iget v3, v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;->d:I

    .line 680
    .line 681
    :goto_13
    new-instance v8, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 682
    .line 683
    invoke-direct {v8, v11, v13, v15, v3}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 684
    .line 685
    .line 686
    iput-object v8, v12, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 687
    .line 688
    :goto_14
    if-nez v9, :cond_1b

    .line 689
    .line 690
    move/from16 v22, v1

    .line 691
    .line 692
    move-object/from16 v27, v4

    .line 693
    .line 694
    move-object/from16 v28, v5

    .line 695
    .line 696
    move/from16 v29, v6

    .line 697
    .line 698
    const/4 v1, 0x0

    .line 699
    const/4 v8, 0x1

    .line 700
    const/16 v13, 0xc

    .line 701
    .line 702
    :cond_1a
    const/4 v9, 0x0

    .line 703
    const/16 v10, 0x8

    .line 704
    .line 705
    goto/16 :goto_3f

    .line 706
    .line 707
    :cond_1b
    iget-object v3, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 708
    .line 709
    iget-wide v10, v3, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    .line 710
    .line 711
    iget-boolean v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    .line 712
    .line 713
    invoke-virtual {v9}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()V

    .line 714
    .line 715
    .line 716
    const/4 v12, 0x1

    .line 717
    iput-boolean v12, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->n:Z

    .line 718
    .line 719
    const v13, 0x74666474

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2, v13}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 723
    .line 724
    .line 725
    move-result-object v13

    .line 726
    if-eqz v13, :cond_1d

    .line 727
    .line 728
    iget-object v8, v13, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 729
    .line 730
    const/16 v10, 0x8

    .line 731
    .line 732
    invoke-virtual {v8, v10}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 736
    .line 737
    .line 738
    move-result v10

    .line 739
    invoke-static {v10}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 740
    .line 741
    .line 742
    move-result v10

    .line 743
    if-ne v10, v12, :cond_1c

    .line 744
    .line 745
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 746
    .line 747
    .line 748
    move-result-wide v10

    .line 749
    goto :goto_15

    .line 750
    :cond_1c
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 751
    .line 752
    .line 753
    move-result-wide v10

    .line 754
    :goto_15
    iput-wide v10, v3, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    .line 755
    .line 756
    iput-boolean v12, v3, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    .line 757
    .line 758
    goto :goto_16

    .line 759
    :cond_1d
    iput-wide v10, v3, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    .line 760
    .line 761
    iput-boolean v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    .line 762
    .line 763
    :goto_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    const/4 v10, 0x0

    .line 768
    const/4 v11, 0x0

    .line 769
    const/4 v12, 0x0

    .line 770
    :goto_17
    const v13, 0x7472756e

    .line 771
    .line 772
    .line 773
    if-ge v10, v8, :cond_1f

    .line 774
    .line 775
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v15

    .line 779
    check-cast v15, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 780
    .line 781
    move/from16 v22, v1

    .line 782
    .line 783
    iget v1, v15, Landroidx/media3/container/Mp4Box;->a:I

    .line 784
    .line 785
    if-ne v1, v13, :cond_1e

    .line 786
    .line 787
    iget-object v1, v15, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 788
    .line 789
    const/16 v13, 0xc

    .line 790
    .line 791
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    if-lez v1, :cond_1e

    .line 799
    .line 800
    add-int/2addr v12, v1

    .line 801
    add-int/lit8 v11, v11, 0x1

    .line 802
    .line 803
    :cond_1e
    add-int/lit8 v10, v10, 0x1

    .line 804
    .line 805
    move/from16 v1, v22

    .line 806
    .line 807
    goto :goto_17

    .line 808
    :cond_1f
    move/from16 v22, v1

    .line 809
    .line 810
    const/4 v1, 0x0

    .line 811
    iput v1, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    .line 812
    .line 813
    iput v1, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    .line 814
    .line 815
    iput v1, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 816
    .line 817
    iput v11, v3, Landroidx/media3/extractor/mp4/TrackFragment;->d:I

    .line 818
    .line 819
    iput v12, v3, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 820
    .line 821
    iget-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    .line 822
    .line 823
    array-length v1, v1

    .line 824
    if-ge v1, v11, :cond_20

    .line 825
    .line 826
    new-array v1, v11, [J

    .line 827
    .line 828
    iput-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    .line 829
    .line 830
    new-array v1, v11, [I

    .line 831
    .line 832
    iput-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    .line 833
    .line 834
    :cond_20
    iget-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    .line 835
    .line 836
    array-length v1, v1

    .line 837
    if-ge v1, v12, :cond_21

    .line 838
    .line 839
    mul-int/lit8 v12, v12, 0x7d

    .line 840
    .line 841
    div-int/lit8 v12, v12, 0x64

    .line 842
    .line 843
    new-array v1, v12, [I

    .line 844
    .line 845
    iput-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    .line 846
    .line 847
    new-array v1, v12, [J

    .line 848
    .line 849
    iput-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    .line 850
    .line 851
    new-array v1, v12, [Z

    .line 852
    .line 853
    iput-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    .line 854
    .line 855
    new-array v1, v12, [Z

    .line 856
    .line 857
    iput-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 858
    .line 859
    :cond_21
    const/4 v1, 0x0

    .line 860
    const/4 v10, 0x0

    .line 861
    const/4 v11, 0x0

    .line 862
    :goto_18
    const-wide/16 v23, 0x0

    .line 863
    .line 864
    if-ge v1, v8, :cond_39

    .line 865
    .line 866
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v15

    .line 870
    check-cast v15, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 871
    .line 872
    const/16 v25, 0x10

    .line 873
    .line 874
    iget v12, v15, Landroidx/media3/container/Mp4Box;->a:I

    .line 875
    .line 876
    if-ne v12, v13, :cond_38

    .line 877
    .line 878
    add-int/lit8 v12, v10, 0x1

    .line 879
    .line 880
    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 881
    .line 882
    const/16 v13, 0x8

    .line 883
    .line 884
    invoke-virtual {v15, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 888
    .line 889
    .line 890
    move-result v13

    .line 891
    sget-object v26, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 892
    .line 893
    move/from16 v26, v1

    .line 894
    .line 895
    iget-object v1, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 896
    .line 897
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 898
    .line 899
    move-object/from16 v27, v4

    .line 900
    .line 901
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 902
    .line 903
    sget-object v28, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 904
    .line 905
    move-object/from16 v28, v5

    .line 906
    .line 907
    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    .line 908
    .line 909
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 910
    .line 911
    .line 912
    move-result v29

    .line 913
    aput v29, v5, v10

    .line 914
    .line 915
    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    .line 916
    .line 917
    move-object/from16 v30, v5

    .line 918
    .line 919
    move/from16 v29, v6

    .line 920
    .line 921
    iget-wide v5, v3, Landroidx/media3/extractor/mp4/TrackFragment;->b:J

    .line 922
    .line 923
    aput-wide v5, v30, v10

    .line 924
    .line 925
    and-int/lit8 v31, v13, 0x1

    .line 926
    .line 927
    if-eqz v31, :cond_22

    .line 928
    .line 929
    move-wide/from16 v31, v5

    .line 930
    .line 931
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 932
    .line 933
    .line 934
    move-result v5

    .line 935
    int-to-long v5, v5

    .line 936
    add-long v5, v31, v5

    .line 937
    .line 938
    aput-wide v5, v30, v10

    .line 939
    .line 940
    :cond_22
    and-int/lit8 v5, v13, 0x4

    .line 941
    .line 942
    if-eqz v5, :cond_23

    .line 943
    .line 944
    const/4 v5, 0x1

    .line 945
    goto :goto_19

    .line 946
    :cond_23
    const/4 v5, 0x0

    .line 947
    :goto_19
    iget v6, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->d:I

    .line 948
    .line 949
    if-eqz v5, :cond_24

    .line 950
    .line 951
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 952
    .line 953
    .line 954
    move-result v6

    .line 955
    :cond_24
    move/from16 v30, v5

    .line 956
    .line 957
    and-int/lit16 v5, v13, 0x100

    .line 958
    .line 959
    if-eqz v5, :cond_25

    .line 960
    .line 961
    const/4 v5, 0x1

    .line 962
    goto :goto_1a

    .line 963
    :cond_25
    const/4 v5, 0x0

    .line 964
    :goto_1a
    move/from16 v31, v5

    .line 965
    .line 966
    and-int/lit16 v5, v13, 0x200

    .line 967
    .line 968
    if-eqz v5, :cond_26

    .line 969
    .line 970
    const/4 v5, 0x1

    .line 971
    goto :goto_1b

    .line 972
    :cond_26
    const/4 v5, 0x0

    .line 973
    :goto_1b
    move/from16 v32, v5

    .line 974
    .line 975
    and-int/lit16 v5, v13, 0x400

    .line 976
    .line 977
    if-eqz v5, :cond_27

    .line 978
    .line 979
    const/4 v5, 0x1

    .line 980
    goto :goto_1c

    .line 981
    :cond_27
    const/4 v5, 0x0

    .line 982
    :goto_1c
    and-int/lit16 v13, v13, 0x800

    .line 983
    .line 984
    if-eqz v13, :cond_28

    .line 985
    .line 986
    const/4 v13, 0x1

    .line 987
    :goto_1d
    move/from16 v33, v5

    .line 988
    .line 989
    goto :goto_1e

    .line 990
    :cond_28
    const/4 v13, 0x0

    .line 991
    goto :goto_1d

    .line 992
    :goto_1e
    iget-object v5, v1, Landroidx/media3/extractor/mp4/Track;->i:Lcom/google/common/primitives/ImmutableLongArray;

    .line 993
    .line 994
    move/from16 v34, v6

    .line 995
    .line 996
    iget-object v6, v1, Landroidx/media3/extractor/mp4/Track;->j:Lcom/google/common/primitives/ImmutableLongArray;

    .line 997
    .line 998
    move/from16 v35, v8

    .line 999
    .line 1000
    if-eqz v5, :cond_2c

    .line 1001
    .line 1002
    iget v8, v5, Lcom/google/common/primitives/ImmutableLongArray;->k:I

    .line 1003
    .line 1004
    move/from16 v36, v10

    .line 1005
    .line 1006
    const/4 v10, 0x1

    .line 1007
    if-ne v8, v10, :cond_29

    .line 1008
    .line 1009
    if-nez v6, :cond_2a

    .line 1010
    .line 1011
    :cond_29
    move-object v5, v9

    .line 1012
    :goto_1f
    move/from16 v37, v11

    .line 1013
    .line 1014
    goto :goto_21

    .line 1015
    :cond_2a
    const/4 v8, 0x0

    .line 1016
    invoke-virtual {v5, v8}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    .line 1017
    .line 1018
    .line 1019
    move-result-wide v37

    .line 1020
    cmp-long v10, v37, v23

    .line 1021
    .line 1022
    if-nez v10, :cond_2b

    .line 1023
    .line 1024
    move-object v5, v9

    .line 1025
    move/from16 v37, v11

    .line 1026
    .line 1027
    goto :goto_20

    .line 1028
    :cond_2b
    invoke-virtual {v5, v8}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    .line 1029
    .line 1030
    .line 1031
    move-result-wide v37

    .line 1032
    move-object v5, v9

    .line 1033
    iget-wide v8, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    .line 1034
    .line 1035
    sget-object v43, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1036
    .line 1037
    const-wide/32 v39, 0xf4240

    .line 1038
    .line 1039
    .line 1040
    move-wide/from16 v41, v8

    .line 1041
    .line 1042
    invoke-static/range {v37 .. v43}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1043
    .line 1044
    .line 1045
    move-result-wide v8

    .line 1046
    const/4 v10, 0x0

    .line 1047
    invoke-virtual {v6, v10}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v39

    .line 1051
    const-wide/32 v41, 0xf4240

    .line 1052
    .line 1053
    .line 1054
    move/from16 v37, v11

    .line 1055
    .line 1056
    iget-wide v10, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 1057
    .line 1058
    move-object/from16 v45, v43

    .line 1059
    .line 1060
    move-wide/from16 v43, v10

    .line 1061
    .line 1062
    invoke-static/range {v39 .. v45}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v10

    .line 1066
    add-long/2addr v8, v10

    .line 1067
    iget-wide v10, v1, Landroidx/media3/extractor/mp4/Track;->e:J

    .line 1068
    .line 1069
    cmp-long v8, v8, v10

    .line 1070
    .line 1071
    if-ltz v8, :cond_2d

    .line 1072
    .line 1073
    const/4 v8, 0x0

    .line 1074
    :goto_20
    invoke-virtual {v6, v8}, Lcom/google/common/primitives/ImmutableLongArray;->a(I)J

    .line 1075
    .line 1076
    .line 1077
    move-result-wide v23

    .line 1078
    goto :goto_21

    .line 1079
    :cond_2c
    move-object v5, v9

    .line 1080
    move/from16 v36, v10

    .line 1081
    .line 1082
    goto :goto_1f

    .line 1083
    :cond_2d
    :goto_21
    iget-object v6, v3, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    .line 1084
    .line 1085
    iget-object v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    .line 1086
    .line 1087
    iget-object v9, v3, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    .line 1088
    .line 1089
    iget-object v10, v3, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    .line 1090
    .line 1091
    aget v10, v10, v36

    .line 1092
    .line 1093
    add-int v11, v37, v10

    .line 1094
    .line 1095
    move-object v10, v5

    .line 1096
    move-object/from16 v45, v6

    .line 1097
    .line 1098
    iget-wide v5, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    .line 1099
    .line 1100
    move-wide/from16 v42, v5

    .line 1101
    .line 1102
    iget-wide v5, v3, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    .line 1103
    .line 1104
    move/from16 v1, v37

    .line 1105
    .line 1106
    :goto_22
    if-ge v1, v11, :cond_37

    .line 1107
    .line 1108
    if-eqz v31, :cond_2e

    .line 1109
    .line 1110
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1111
    .line 1112
    .line 1113
    move-result v36

    .line 1114
    move/from16 v46, v36

    .line 1115
    .line 1116
    move/from16 v36, v1

    .line 1117
    .line 1118
    move/from16 v1, v46

    .line 1119
    .line 1120
    :goto_23
    move-object/from16 v46, v8

    .line 1121
    .line 1122
    goto :goto_24

    .line 1123
    :cond_2e
    move/from16 v36, v1

    .line 1124
    .line 1125
    iget v1, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->b:I

    .line 1126
    .line 1127
    goto :goto_23

    .line 1128
    :goto_24
    const-string v8, "Unexpected negative value: "

    .line 1129
    .line 1130
    if-ltz v1, :cond_36

    .line 1131
    .line 1132
    if-eqz v32, :cond_2f

    .line 1133
    .line 1134
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1135
    .line 1136
    .line 1137
    move-result v37

    .line 1138
    move-object/from16 v47, v9

    .line 1139
    .line 1140
    move/from16 v9, v37

    .line 1141
    .line 1142
    goto :goto_25

    .line 1143
    :cond_2f
    move-object/from16 v47, v9

    .line 1144
    .line 1145
    iget v9, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->c:I

    .line 1146
    .line 1147
    :goto_25
    if-ltz v9, :cond_35

    .line 1148
    .line 1149
    if-eqz v33, :cond_30

    .line 1150
    .line 1151
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1152
    .line 1153
    .line 1154
    move-result v8

    .line 1155
    goto :goto_26

    .line 1156
    :cond_30
    if-nez v36, :cond_31

    .line 1157
    .line 1158
    if-eqz v30, :cond_31

    .line 1159
    .line 1160
    move/from16 v8, v34

    .line 1161
    .line 1162
    goto :goto_26

    .line 1163
    :cond_31
    iget v8, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->d:I

    .line 1164
    .line 1165
    :goto_26
    if-eqz v13, :cond_32

    .line 1166
    .line 1167
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1168
    .line 1169
    .line 1170
    move-result v37

    .line 1171
    move-object/from16 v48, v4

    .line 1172
    .line 1173
    move/from16 v4, v37

    .line 1174
    .line 1175
    :goto_27
    move-object/from16 v50, v10

    .line 1176
    .line 1177
    move/from16 v49, v11

    .line 1178
    .line 1179
    goto :goto_28

    .line 1180
    :cond_32
    move-object/from16 v48, v4

    .line 1181
    .line 1182
    const/4 v4, 0x0

    .line 1183
    goto :goto_27

    .line 1184
    :goto_28
    int-to-long v10, v4

    .line 1185
    add-long/2addr v10, v5

    .line 1186
    sub-long v38, v10, v23

    .line 1187
    .line 1188
    const-wide/32 v40, 0xf4240

    .line 1189
    .line 1190
    .line 1191
    sget-object v44, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1192
    .line 1193
    invoke-static/range {v38 .. v44}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v10

    .line 1197
    aput-wide v10, v46, v36

    .line 1198
    .line 1199
    iget-boolean v4, v3, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    .line 1200
    .line 1201
    move/from16 v37, v8

    .line 1202
    .line 1203
    if-nez v4, :cond_33

    .line 1204
    .line 1205
    move-object/from16 v4, v50

    .line 1206
    .line 1207
    iget-object v8, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1208
    .line 1209
    move-wide/from16 v38, v10

    .line 1210
    .line 1211
    iget-wide v10, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->i:J

    .line 1212
    .line 1213
    add-long v10, v38, v10

    .line 1214
    .line 1215
    aput-wide v10, v46, v36

    .line 1216
    .line 1217
    goto :goto_29

    .line 1218
    :cond_33
    move-object/from16 v4, v50

    .line 1219
    .line 1220
    :goto_29
    aput v9, v45, v36

    .line 1221
    .line 1222
    shr-int/lit8 v8, v37, 0x10

    .line 1223
    .line 1224
    const/16 v17, 0x1

    .line 1225
    .line 1226
    and-int/lit8 v8, v8, 0x1

    .line 1227
    .line 1228
    if-nez v8, :cond_34

    .line 1229
    .line 1230
    const/4 v8, 0x1

    .line 1231
    goto :goto_2a

    .line 1232
    :cond_34
    const/4 v8, 0x0

    .line 1233
    :goto_2a
    aput-boolean v8, v47, v36

    .line 1234
    .line 1235
    int-to-long v8, v1

    .line 1236
    add-long/2addr v5, v8

    .line 1237
    add-int/lit8 v1, v36, 0x1

    .line 1238
    .line 1239
    move-object v10, v4

    .line 1240
    move-object/from16 v8, v46

    .line 1241
    .line 1242
    move-object/from16 v9, v47

    .line 1243
    .line 1244
    move-object/from16 v4, v48

    .line 1245
    .line 1246
    move/from16 v11, v49

    .line 1247
    .line 1248
    goto/16 :goto_22

    .line 1249
    .line 1250
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    const/4 v6, 0x0

    .line 1263
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v0

    .line 1267
    throw v0

    .line 1268
    :cond_36
    const/4 v6, 0x0

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    throw v0

    .line 1286
    :cond_37
    move-object v4, v10

    .line 1287
    move/from16 v49, v11

    .line 1288
    .line 1289
    iput-wide v5, v3, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    .line 1290
    .line 1291
    move v10, v12

    .line 1292
    goto :goto_2b

    .line 1293
    :cond_38
    move/from16 v26, v1

    .line 1294
    .line 1295
    move-object/from16 v27, v4

    .line 1296
    .line 1297
    move-object/from16 v28, v5

    .line 1298
    .line 1299
    move/from16 v29, v6

    .line 1300
    .line 1301
    move/from16 v35, v8

    .line 1302
    .line 1303
    move-object v4, v9

    .line 1304
    move/from16 v36, v10

    .line 1305
    .line 1306
    move/from16 v37, v11

    .line 1307
    .line 1308
    :goto_2b
    add-int/lit8 v1, v26, 0x1

    .line 1309
    .line 1310
    move-object v9, v4

    .line 1311
    move-object/from16 v4, v27

    .line 1312
    .line 1313
    move-object/from16 v5, v28

    .line 1314
    .line 1315
    move/from16 v6, v29

    .line 1316
    .line 1317
    move/from16 v8, v35

    .line 1318
    .line 1319
    const v13, 0x7472756e

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_18

    .line 1323
    .line 1324
    :cond_39
    move-object/from16 v27, v4

    .line 1325
    .line 1326
    move-object/from16 v28, v5

    .line 1327
    .line 1328
    move/from16 v29, v6

    .line 1329
    .line 1330
    move-object v4, v9

    .line 1331
    const/16 v25, 0x10

    .line 1332
    .line 1333
    iget-object v1, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1334
    .line 1335
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 1336
    .line 1337
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1338
    .line 1339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    iget v4, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->a:I

    .line 1343
    .line 1344
    iget-object v1, v1, Landroidx/media3/extractor/mp4/Track;->n:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1345
    .line 1346
    if-nez v1, :cond_3a

    .line 1347
    .line 1348
    const/4 v6, 0x0

    .line 1349
    goto :goto_2c

    .line 1350
    :cond_3a
    aget-object v1, v1, v4

    .line 1351
    .line 1352
    move-object v6, v1

    .line 1353
    :goto_2c
    const v1, 0x7361697a

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v2, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    if-eqz v1, :cond_41

    .line 1361
    .line 1362
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1363
    .line 1364
    .line 1365
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1366
    .line 1367
    iget v4, v6, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->d:I

    .line 1368
    .line 1369
    const/16 v13, 0x8

    .line 1370
    .line 1371
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1375
    .line 1376
    .line 1377
    move-result v5

    .line 1378
    sget-object v8, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 1379
    .line 1380
    const/4 v8, 0x1

    .line 1381
    and-int/2addr v5, v8

    .line 1382
    if-ne v5, v8, :cond_3b

    .line 1383
    .line 1384
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1385
    .line 1386
    .line 1387
    :cond_3b
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1388
    .line 1389
    .line 1390
    move-result v5

    .line 1391
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 1392
    .line 1393
    .line 1394
    move-result v8

    .line 1395
    iget v9, v3, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 1396
    .line 1397
    if-gt v8, v9, :cond_40

    .line 1398
    .line 1399
    if-nez v5, :cond_3e

    .line 1400
    .line 1401
    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 1402
    .line 1403
    const/4 v9, 0x0

    .line 1404
    const/4 v10, 0x0

    .line 1405
    :goto_2d
    if-ge v9, v8, :cond_3d

    .line 1406
    .line 1407
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1408
    .line 1409
    .line 1410
    move-result v11

    .line 1411
    add-int/2addr v10, v11

    .line 1412
    if-le v11, v4, :cond_3c

    .line 1413
    .line 1414
    const/4 v11, 0x1

    .line 1415
    goto :goto_2e

    .line 1416
    :cond_3c
    const/4 v11, 0x0

    .line 1417
    :goto_2e
    aput-boolean v11, v5, v9

    .line 1418
    .line 1419
    add-int/lit8 v9, v9, 0x1

    .line 1420
    .line 1421
    goto :goto_2d

    .line 1422
    :cond_3d
    const/4 v5, 0x0

    .line 1423
    goto :goto_30

    .line 1424
    :cond_3e
    if-le v5, v4, :cond_3f

    .line 1425
    .line 1426
    const/4 v1, 0x1

    .line 1427
    goto :goto_2f

    .line 1428
    :cond_3f
    const/4 v1, 0x0

    .line 1429
    :goto_2f
    mul-int v10, v5, v8

    .line 1430
    .line 1431
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 1432
    .line 1433
    const/4 v5, 0x0

    .line 1434
    invoke-static {v4, v5, v8, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1435
    .line 1436
    .line 1437
    :goto_30
    iget-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    .line 1438
    .line 1439
    iget v4, v3, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 1440
    .line 1441
    invoke-static {v1, v8, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1442
    .line 1443
    .line 1444
    if-lez v10, :cond_41

    .line 1445
    .line 1446
    iget-object v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 1447
    .line 1448
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 1449
    .line 1450
    .line 1451
    const/4 v8, 0x1

    .line 1452
    iput-boolean v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    .line 1453
    .line 1454
    iput-boolean v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    .line 1455
    .line 1456
    goto :goto_31

    .line 1457
    :cond_40
    const-string v0, "Saiz sample count "

    .line 1458
    .line 1459
    const-string v1, " is greater than fragment sample count"

    .line 1460
    .line 1461
    invoke-static {v0, v8, v1}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    iget v1, v3, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 1466
    .line 1467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v0

    .line 1474
    const/4 v6, 0x0

    .line 1475
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    throw v0

    .line 1480
    :cond_41
    :goto_31
    const v1, 0x7361696f

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v2, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v1

    .line 1487
    if-eqz v1, :cond_44

    .line 1488
    .line 1489
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1490
    .line 1491
    const/16 v13, 0x8

    .line 1492
    .line 1493
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1497
    .line 1498
    .line 1499
    move-result v4

    .line 1500
    sget-object v5, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    .line 1501
    .line 1502
    and-int/lit8 v5, v4, 0x1

    .line 1503
    .line 1504
    const/4 v8, 0x1

    .line 1505
    if-ne v5, v8, :cond_42

    .line 1506
    .line 1507
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1508
    .line 1509
    .line 1510
    :cond_42
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 1511
    .line 1512
    .line 1513
    move-result v5

    .line 1514
    if-ne v5, v8, :cond_45

    .line 1515
    .line 1516
    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 1517
    .line 1518
    .line 1519
    move-result v4

    .line 1520
    iget-wide v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    .line 1521
    .line 1522
    if-nez v4, :cond_43

    .line 1523
    .line 1524
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1525
    .line 1526
    .line 1527
    move-result-wide v4

    .line 1528
    goto :goto_32

    .line 1529
    :cond_43
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 1530
    .line 1531
    .line 1532
    move-result-wide v4

    .line 1533
    :goto_32
    add-long/2addr v8, v4

    .line 1534
    iput-wide v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    .line 1535
    .line 1536
    :cond_44
    const/4 v1, 0x0

    .line 1537
    goto :goto_33

    .line 1538
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1539
    .line 1540
    const-string v1, "Unexpected saio entry count: "

    .line 1541
    .line 1542
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    const/4 v1, 0x0

    .line 1553
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    throw v0

    .line 1558
    :goto_33
    const v4, 0x73656e63

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v2, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v2

    .line 1565
    if-eqz v2, :cond_46

    .line 1566
    .line 1567
    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1568
    .line 1569
    const/4 v8, 0x0

    .line 1570
    invoke-static {v2, v8, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1571
    .line 1572
    .line 1573
    :cond_46
    if-eqz v6, :cond_47

    .line 1574
    .line 1575
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    .line 1576
    .line 1577
    move-object/from16 v32, v6

    .line 1578
    .line 1579
    goto :goto_34

    .line 1580
    :cond_47
    move-object/from16 v32, v1

    .line 1581
    .line 1582
    :goto_34
    move-object v2, v1

    .line 1583
    move-object v6, v2

    .line 1584
    const/4 v4, 0x0

    .line 1585
    :goto_35
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1586
    .line 1587
    .line 1588
    move-result v5

    .line 1589
    if-ge v4, v5, :cond_4a

    .line 1590
    .line 1591
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v5

    .line 1595
    check-cast v5, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1596
    .line 1597
    iget-object v8, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1598
    .line 1599
    iget v5, v5, Landroidx/media3/container/Mp4Box;->a:I

    .line 1600
    .line 1601
    const v9, 0x73626770

    .line 1602
    .line 1603
    .line 1604
    const v10, 0x73656967

    .line 1605
    .line 1606
    .line 1607
    if-ne v5, v9, :cond_48

    .line 1608
    .line 1609
    const/16 v13, 0xc

    .line 1610
    .line 1611
    invoke-virtual {v8, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1615
    .line 1616
    .line 1617
    move-result v5

    .line 1618
    if-ne v5, v10, :cond_49

    .line 1619
    .line 1620
    move-object v6, v8

    .line 1621
    goto :goto_36

    .line 1622
    :cond_48
    const/16 v13, 0xc

    .line 1623
    .line 1624
    const v9, 0x73677064

    .line 1625
    .line 1626
    .line 1627
    if-ne v5, v9, :cond_49

    .line 1628
    .line 1629
    invoke-virtual {v8, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1633
    .line 1634
    .line 1635
    move-result v5

    .line 1636
    if-ne v5, v10, :cond_49

    .line 1637
    .line 1638
    move-object v2, v8

    .line 1639
    :cond_49
    :goto_36
    add-int/lit8 v4, v4, 0x1

    .line 1640
    .line 1641
    goto :goto_35

    .line 1642
    :cond_4a
    const/16 v13, 0xc

    .line 1643
    .line 1644
    if-eqz v6, :cond_4b

    .line 1645
    .line 1646
    if-nez v2, :cond_4c

    .line 1647
    .line 1648
    :cond_4b
    :goto_37
    const/4 v8, 0x1

    .line 1649
    goto/16 :goto_3c

    .line 1650
    .line 1651
    :cond_4c
    const/16 v8, 0x8

    .line 1652
    .line 1653
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1657
    .line 1658
    .line 1659
    move-result v4

    .line 1660
    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 1661
    .line 1662
    .line 1663
    move-result v4

    .line 1664
    const/4 v5, 0x4

    .line 1665
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1666
    .line 1667
    .line 1668
    const/4 v9, 0x1

    .line 1669
    if-ne v4, v9, :cond_4d

    .line 1670
    .line 1671
    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1672
    .line 1673
    .line 1674
    :cond_4d
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1675
    .line 1676
    .line 1677
    move-result v4

    .line 1678
    if-ne v4, v9, :cond_55

    .line 1679
    .line 1680
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1684
    .line 1685
    .line 1686
    move-result v4

    .line 1687
    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    .line 1688
    .line 1689
    .line 1690
    move-result v4

    .line 1691
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1692
    .line 1693
    .line 1694
    if-lt v4, v9, :cond_4e

    .line 1695
    .line 1696
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1697
    .line 1698
    .line 1699
    move-result-wide v8

    .line 1700
    goto :goto_38

    .line 1701
    :cond_4e
    move-wide/from16 v8, v23

    .line 1702
    .line 1703
    :goto_38
    const/4 v6, 0x2

    .line 1704
    if-lt v4, v6, :cond_4f

    .line 1705
    .line 1706
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1707
    .line 1708
    .line 1709
    :cond_4f
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1710
    .line 1711
    .line 1712
    move-result-wide v10

    .line 1713
    const-wide/16 v15, 0x1

    .line 1714
    .line 1715
    cmp-long v6, v10, v15

    .line 1716
    .line 1717
    if-nez v6, :cond_54

    .line 1718
    .line 1719
    const/4 v6, 0x1

    .line 1720
    if-lt v4, v6, :cond_50

    .line 1721
    .line 1722
    cmp-long v4, v8, v23

    .line 1723
    .line 1724
    if-nez v4, :cond_50

    .line 1725
    .line 1726
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1727
    .line 1728
    .line 1729
    :cond_50
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1733
    .line 1734
    .line 1735
    move-result v4

    .line 1736
    and-int/lit16 v8, v4, 0xf0

    .line 1737
    .line 1738
    shr-int/lit8 v35, v8, 0x4

    .line 1739
    .line 1740
    and-int/lit8 v36, v4, 0xf

    .line 1741
    .line 1742
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1743
    .line 1744
    .line 1745
    move-result v4

    .line 1746
    if-ne v4, v6, :cond_51

    .line 1747
    .line 1748
    const/16 v31, 0x1

    .line 1749
    .line 1750
    goto :goto_39

    .line 1751
    :cond_51
    const/16 v31, 0x0

    .line 1752
    .line 1753
    :goto_39
    if-nez v31, :cond_52

    .line 1754
    .line 1755
    goto :goto_37

    .line 1756
    :cond_52
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1757
    .line 1758
    .line 1759
    move-result v33

    .line 1760
    move/from16 v4, v25

    .line 1761
    .line 1762
    new-array v5, v4, [B

    .line 1763
    .line 1764
    const/4 v8, 0x0

    .line 1765
    invoke-virtual {v2, v5, v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1766
    .line 1767
    .line 1768
    if-nez v33, :cond_53

    .line 1769
    .line 1770
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1771
    .line 1772
    .line 1773
    move-result v4

    .line 1774
    new-array v6, v4, [B

    .line 1775
    .line 1776
    invoke-virtual {v2, v6, v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1777
    .line 1778
    .line 1779
    move-object/from16 v37, v6

    .line 1780
    .line 1781
    :goto_3a
    const/4 v8, 0x1

    .line 1782
    goto :goto_3b

    .line 1783
    :cond_53
    move-object/from16 v37, v1

    .line 1784
    .line 1785
    goto :goto_3a

    .line 1786
    :goto_3b
    iput-boolean v8, v3, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    .line 1787
    .line 1788
    new-instance v30, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1789
    .line 1790
    move-object/from16 v34, v5

    .line 1791
    .line 1792
    invoke-direct/range {v30 .. v37}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 1793
    .line 1794
    .line 1795
    move-object/from16 v2, v30

    .line 1796
    .line 1797
    iput-object v2, v3, Landroidx/media3/extractor/mp4/TrackFragment;->m:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1798
    .line 1799
    goto :goto_3c

    .line 1800
    :cond_54
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 1801
    .line 1802
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v0

    .line 1806
    throw v0

    .line 1807
    :cond_55
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 1808
    .line 1809
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v0

    .line 1813
    throw v0

    .line 1814
    :goto_3c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1815
    .line 1816
    .line 1817
    move-result v2

    .line 1818
    const/4 v6, 0x0

    .line 1819
    :goto_3d
    if-ge v6, v2, :cond_1a

    .line 1820
    .line 1821
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v4

    .line 1825
    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1826
    .line 1827
    iget v5, v4, Landroidx/media3/container/Mp4Box;->a:I

    .line 1828
    .line 1829
    const v9, 0x75756964

    .line 1830
    .line 1831
    .line 1832
    if-ne v5, v9, :cond_57

    .line 1833
    .line 1834
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1835
    .line 1836
    const/16 v10, 0x8

    .line 1837
    .line 1838
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1839
    .line 1840
    .line 1841
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h:[B

    .line 1842
    .line 1843
    const/4 v9, 0x0

    .line 1844
    const/16 v11, 0x10

    .line 1845
    .line 1846
    invoke-virtual {v4, v5, v9, v11}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 1847
    .line 1848
    .line 1849
    sget-object v12, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->N:[B

    .line 1850
    .line 1851
    invoke-static {v5, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 1852
    .line 1853
    .line 1854
    move-result v5

    .line 1855
    if-nez v5, :cond_56

    .line 1856
    .line 1857
    goto :goto_3e

    .line 1858
    :cond_56
    invoke-static {v4, v11, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    .line 1859
    .line 1860
    .line 1861
    goto :goto_3e

    .line 1862
    :cond_57
    const/4 v9, 0x0

    .line 1863
    const/16 v10, 0x8

    .line 1864
    .line 1865
    const/16 v11, 0x10

    .line 1866
    .line 1867
    :goto_3e
    add-int/lit8 v6, v6, 0x1

    .line 1868
    .line 1869
    goto :goto_3d

    .line 1870
    :cond_58
    move/from16 v22, v1

    .line 1871
    .line 1872
    move-object/from16 v27, v4

    .line 1873
    .line 1874
    move-object/from16 v28, v5

    .line 1875
    .line 1876
    move/from16 v29, v6

    .line 1877
    .line 1878
    const/4 v1, 0x0

    .line 1879
    const/4 v8, 0x1

    .line 1880
    const/4 v9, 0x0

    .line 1881
    const/16 v10, 0x8

    .line 1882
    .line 1883
    const/16 v13, 0xc

    .line 1884
    .line 1885
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    :goto_3f
    add-int/lit8 v6, v29, 0x1

    .line 1891
    .line 1892
    move/from16 v1, v22

    .line 1893
    .line 1894
    move-object/from16 v4, v27

    .line 1895
    .line 1896
    move-object/from16 v5, v28

    .line 1897
    .line 1898
    goto/16 :goto_f

    .line 1899
    .line 1900
    :cond_59
    move-object/from16 v28, v5

    .line 1901
    .line 1902
    const/4 v1, 0x0

    .line 1903
    const/4 v9, 0x0

    .line 1904
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    invoke-static/range {v28 .. v28}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v2

    .line 1913
    if-eqz v2, :cond_5d

    .line 1914
    .line 1915
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 1916
    .line 1917
    .line 1918
    move-result v3

    .line 1919
    move v6, v9

    .line 1920
    :goto_40
    if-ge v6, v3, :cond_5d

    .line 1921
    .line 1922
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v4

    .line 1926
    check-cast v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1927
    .line 1928
    iget-object v5, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1929
    .line 1930
    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 1931
    .line 1932
    iget-object v7, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1933
    .line 1934
    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1935
    .line 1936
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 1937
    .line 1938
    iget v7, v7, Landroidx/media3/extractor/mp4/DefaultSampleValues;->a:I

    .line 1939
    .line 1940
    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->n:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 1941
    .line 1942
    if-nez v5, :cond_5a

    .line 1943
    .line 1944
    move-object v5, v1

    .line 1945
    goto :goto_41

    .line 1946
    :cond_5a
    aget-object v5, v5, v7

    .line 1947
    .line 1948
    :goto_41
    if-eqz v5, :cond_5b

    .line 1949
    .line 1950
    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    .line 1951
    .line 1952
    goto :goto_42

    .line 1953
    :cond_5b
    move-object v5, v1

    .line 1954
    :goto_42
    invoke-virtual {v2, v5}, Landroidx/media3/common/DrmInitData;->a(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v5

    .line 1958
    iget-object v7, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Landroidx/media3/common/Format;

    .line 1959
    .line 1960
    invoke-virtual {v7}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v7

    .line 1964
    iput-object v5, v7, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 1965
    .line 1966
    new-instance v5, Landroidx/media3/common/Format;

    .line 1967
    .line 1968
    invoke-direct {v5, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 1969
    .line 1970
    .line 1971
    iget-object v7, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->l:Landroidx/media3/common/Format;

    .line 1972
    .line 1973
    if-eqz v7, :cond_5c

    .line 1974
    .line 1975
    iput-object v5, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->l:Landroidx/media3/common/Format;

    .line 1976
    .line 1977
    goto :goto_43

    .line 1978
    :cond_5c
    iget-object v4, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    .line 1979
    .line 1980
    invoke-interface {v4, v5}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 1981
    .line 1982
    .line 1983
    :goto_43
    add-int/lit8 v6, v6, 0x1

    .line 1984
    .line 1985
    goto :goto_40

    .line 1986
    :cond_5d
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:J

    .line 1987
    .line 1988
    cmp-long v1, v1, v20

    .line 1989
    .line 1990
    if-eqz v1, :cond_0

    .line 1991
    .line 1992
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 1993
    .line 1994
    .line 1995
    move-result v1

    .line 1996
    move v12, v9

    .line 1997
    :goto_44
    if-ge v12, v1, :cond_60

    .line 1998
    .line 1999
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v2

    .line 2003
    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 2004
    .line 2005
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:J

    .line 2006
    .line 2007
    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 2008
    .line 2009
    :goto_45
    iget-object v6, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 2010
    .line 2011
    iget v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    .line 2012
    .line 2013
    if-ge v5, v7, :cond_5f

    .line 2014
    .line 2015
    iget-object v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    .line 2016
    .line 2017
    aget-wide v7, v7, v5

    .line 2018
    .line 2019
    cmp-long v7, v7, v3

    .line 2020
    .line 2021
    if-gtz v7, :cond_5f

    .line 2022
    .line 2023
    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    .line 2024
    .line 2025
    aget-boolean v6, v6, v5

    .line 2026
    .line 2027
    if-eqz v6, :cond_5e

    .line 2028
    .line 2029
    iput v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:I

    .line 2030
    .line 2031
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    .line 2032
    .line 2033
    goto :goto_45

    .line 2034
    :cond_5f
    add-int/lit8 v12, v12, 0x1

    .line 2035
    .line 2036
    goto :goto_44

    .line 2037
    :cond_60
    move-wide/from16 v2, v20

    .line 2038
    .line 2039
    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:J

    .line 2040
    .line 2041
    goto/16 :goto_0

    .line 2042
    .line 2043
    :cond_61
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2044
    .line 2045
    .line 2046
    move-result v2

    .line 2047
    if-nez v2, :cond_0

    .line 2048
    .line 2049
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v1

    .line 2053
    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 2054
    .line 2055
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    .line 2056
    .line 2057
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    .line 2059
    .line 2060
    goto/16 :goto_0

    .line 2061
    .line 2062
    :cond_62
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    .line 2063
    .line 2064
    .line 2065
    return-void
.end method
