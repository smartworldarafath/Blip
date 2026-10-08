.class public final Landroidx/media3/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final a:Landroidx/media3/extractor/FlacStreamMetadata;

.field public final b:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->a:[J

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->b:[J

    .line 13
    .line 14
    iget v3, v0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 15
    .line 16
    int-to-long v3, v3

    .line 17
    mul-long/2addr v3, p1

    .line 18
    const-wide/32 v5, 0xf4240

    .line 19
    .line 20
    .line 21
    div-long v7, v3, v5

    .line 22
    .line 23
    iget-wide v3, v0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 24
    .line 25
    const-wide/16 v9, 0x1

    .line 26
    .line 27
    sub-long v11, v3, v9

    .line 28
    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static {v2, v3, v4, v7}, Landroidx/media3/common/util/Util;->d([JJZ)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    move-wide v9, v7

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    aget-wide v9, v2, v3

    .line 48
    .line 49
    :goto_0
    if-ne v3, v4, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    aget-wide v7, v1, v3

    .line 53
    .line 54
    :goto_1
    mul-long/2addr v9, v5

    .line 55
    iget v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 56
    .line 57
    int-to-long v11, v0

    .line 58
    div-long/2addr v9, v11

    .line 59
    iget-wide v11, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->b:J

    .line 60
    .line 61
    add-long/2addr v7, v11

    .line 62
    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    .line 63
    .line 64
    invoke-direct {p0, v9, v10, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 65
    .line 66
    .line 67
    cmp-long p1, v9, p1

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    array-length p1, v2

    .line 72
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    if-ne v3, p1, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    aget-wide p1, v2, v3

    .line 80
    .line 81
    aget-wide v1, v1, v3

    .line 82
    .line 83
    mul-long/2addr p1, v5

    .line 84
    int-to-long v3, v0

    .line 85
    div-long/2addr p1, v3

    .line 86
    add-long/2addr v11, v1

    .line 87
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    .line 88
    .line 89
    invoke-direct {v0, p1, p2, v11, v12}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 93
    .line 94
    invoke-direct {p1, p0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_3
    :goto_2
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 99
    .line 100
    invoke-direct {p1, p0, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 101
    .line 102
    .line 103
    return-object p1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
