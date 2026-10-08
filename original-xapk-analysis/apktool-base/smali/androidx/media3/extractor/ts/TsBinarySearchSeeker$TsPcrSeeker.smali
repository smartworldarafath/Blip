.class final Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->c:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 7
    .line 8
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sub-long/2addr v1, v4

    .line 12
    const-wide/32 v6, 0x1b8a0

    .line 13
    .line 14
    .line 15
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    long-to-int v1, v1

    .line 20
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    move-object/from16 v7, p1

    .line 29
    .line 30
    invoke-interface {v7, v3, v6, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 31
    .line 32
    .line 33
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 34
    .line 35
    const-wide/16 v6, -0x1

    .line 36
    .line 37
    move-wide v10, v6

    .line 38
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/16 v12, 0xbc

    .line 48
    .line 49
    if-lt v3, v12, :cond_7

    .line 50
    .line 51
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 52
    .line 53
    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 54
    .line 55
    :goto_1
    if-ge v12, v1, :cond_0

    .line 56
    .line 57
    aget-byte v13, v3, v12

    .line 58
    .line 59
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const/16 v8, 0x47

    .line 65
    .line 66
    if-eq v13, v8, :cond_1

    .line 67
    .line 68
    add-int/lit8 v12, v12, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :cond_1
    add-int/lit16 v3, v12, 0xbc

    .line 77
    .line 78
    if-le v3, v1, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget v6, v0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->c:I

    .line 82
    .line 83
    invoke-static {v2, v12, v6}, Landroidx/media3/extractor/ts/TsUtil;->a(Landroidx/media3/common/util/ParsableByteArray;II)J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    cmp-long v8, v6, v16

    .line 88
    .line 89
    if-eqz v8, :cond_6

    .line 90
    .line 91
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 92
    .line 93
    invoke-virtual {v8, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    cmp-long v8, v6, p2

    .line 98
    .line 99
    if-lez v8, :cond_4

    .line 100
    .line 101
    cmp-long v0, v14, v16

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 106
    .line 107
    const/4 v1, -0x1

    .line 108
    move-wide v2, v6

    .line 109
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_3
    add-long v16, v4, v10

    .line 114
    .line 115
    new-instance v12, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 116
    .line 117
    const/4 v13, 0x0

    .line 118
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-direct/range {v12 .. v17}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 124
    .line 125
    .line 126
    return-object v12

    .line 127
    :cond_4
    move-wide v14, v6

    .line 128
    const-wide/32 v6, 0x186a0

    .line 129
    .line 130
    .line 131
    add-long/2addr v6, v14

    .line 132
    cmp-long v6, v6, p2

    .line 133
    .line 134
    if-lez v6, :cond_5

    .line 135
    .line 136
    int-to-long v0, v12

    .line 137
    add-long v10, v4, v0

    .line 138
    .line 139
    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 148
    .line 149
    .line 150
    return-object v6

    .line 151
    :cond_5
    int-to-long v6, v12

    .line 152
    move-wide v10, v6

    .line 153
    :cond_6
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 154
    .line 155
    .line 156
    int-to-long v6, v3

    .line 157
    goto :goto_0

    .line 158
    :cond_7
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :goto_2
    cmp-long v0, v14, v16

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    add-long v16, v4, v6

    .line 168
    .line 169
    new-instance v12, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 170
    .line 171
    const/4 v13, -0x2

    .line 172
    invoke-direct/range {v12 .. v17}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 173
    .line 174
    .line 175
    return-object v12

    .line 176
    :cond_8
    sget-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->d:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 177
    .line 178
    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
