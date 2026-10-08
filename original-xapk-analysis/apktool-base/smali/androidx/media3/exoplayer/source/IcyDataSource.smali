.class final Landroidx/media3/exoplayer/source/IcyDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/DataSource;

.field public final b:I

.field public final c:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/source/IcyDataSource$Listener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 14
    .line 15
    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->b:I

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->c:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    .line 18
    .line 19
    new-array p1, v0, [B

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->d:[B

    .line 22
    .line 23
    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->b(Landroidx/media3/datasource/TransferListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final i()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->i()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final l(Landroidx/media3/datasource/DataSpec;)J
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final m()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->m()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final read([BII)I
    .locals 14

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->a:Landroidx/media3/datasource/DataSource;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->d:[B

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-interface {v1, v0, v3, v4}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-ne v5, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    aget-byte v0, v0, v3

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    shl-int/lit8 v0, v0, 0x4

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_5

    .line 28
    :cond_1
    new-array v5, v0, [B

    .line 29
    .line 30
    move v6, v0

    .line 31
    :goto_0
    if-lez v6, :cond_3

    .line 32
    .line 33
    invoke-interface {v1, v5, v3, v6}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-ne v7, v2, :cond_2

    .line 38
    .line 39
    :goto_1
    return v2

    .line 40
    :cond_2
    add-int/2addr v3, v7

    .line 41
    sub-int/2addr v6, v7

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_2
    if-lez v0, :cond_4

    .line 44
    .line 45
    add-int/lit8 v3, v0, -0x1

    .line 46
    .line 47
    aget-byte v3, v5, v3

    .line 48
    .line 49
    if-nez v3, :cond_4

    .line 50
    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    if-lez v0, :cond_6

    .line 55
    .line 56
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    .line 58
    invoke-direct {v3, v0, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->c:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    .line 62
    .line 63
    check-cast v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 64
    .line 65
    iget-boolean v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->m:Z

    .line 66
    .line 67
    if-nez v5, :cond_5

    .line 68
    .line 69
    iget-wide v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 70
    .line 71
    :goto_3
    move-wide v8, v5

    .line 72
    goto :goto_4

    .line 73
    :cond_5
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->n:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 74
    .line 75
    sget-object v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->b0:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y(Z)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    iget-wide v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 82
    .line 83
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    goto :goto_3

    .line 88
    :goto_4
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    iget-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->l:Landroidx/media3/extractor/TrackOutput;

    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-interface {v7, v11, v3}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 98
    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v13, 0x0

    .line 102
    const/4 v10, 0x1

    .line 103
    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 104
    .line 105
    .line 106
    iput-boolean v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->m:Z

    .line 107
    .line 108
    :cond_6
    :goto_5
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->b:I

    .line 109
    .line 110
    iput v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    .line 111
    .line 112
    :cond_7
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    .line 113
    .line 114
    move/from16 v3, p3

    .line 115
    .line 116
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    move/from16 v3, p2

    .line 121
    .line 122
    invoke-interface {v1, p1, v3, v0}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eq p1, v2, :cond_8

    .line 127
    .line 128
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    .line 129
    .line 130
    sub-int/2addr v0, p1

    .line 131
    iput v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->e:I

    .line 132
    .line 133
    :cond_8
    return p1
.end method
