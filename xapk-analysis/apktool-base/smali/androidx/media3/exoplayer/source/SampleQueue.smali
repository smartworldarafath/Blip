.class public Landroidx/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;,
        Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;,
        Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Landroidx/media3/common/Format;

.field public D:Z

.field public E:Z

.field public final a:Landroidx/media3/exoplayer/source/SampleDataQueue;

.field public final b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

.field public final c:Landroidx/media3/exoplayer/source/SpannedData;

.field public final d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

.field public g:Landroidx/media3/common/Format;

.field public h:Landroidx/media3/exoplayer/drm/DrmSession;

.field public i:I

.field public j:[J

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 7
    .line 8
    new-instance p2, Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 14
    .line 15
    new-instance p1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 21
    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 25
    .line 26
    new-array p2, p1, [J

    .line 27
    .line 28
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    .line 29
    .line 30
    new-array p2, p1, [J

    .line 31
    .line 32
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 33
    .line 34
    new-array p2, p1, [J

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 37
    .line 38
    new-array p2, p1, [I

    .line 39
    .line 40
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 41
    .line 42
    new-array p2, p1, [I

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 45
    .line 46
    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 49
    .line 50
    new-instance p1, Landroidx/media3/exoplayer/source/SpannedData;

    .line 51
    .line 52
    new-instance p2, Landroidx/media3/exoplayer/source/d;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/SpannedData;-><init>(Landroidx/media3/exoplayer/source/d;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 61
    .line 62
    const-wide/high16 p1, -0x8000000000000000L

    .line 63
    .line 64
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    .line 65
    .line 66
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    .line 67
    .line 68
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    .line 69
    .line 70
    const/4 p3, 0x1

    .line 71
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    .line 72
    .line 73
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    .line 74
    .line 75
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Z

    .line 76
    .line 77
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->u:J

    .line 78
    .line 79
    const/4 p1, -0x1

    .line 80
    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    .line 81
    .line 82
    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/DataReader;IZ)I
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Allocation;->a:[B

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 14
    .line 15
    iget-wide v5, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 16
    .line 17
    sub-long/2addr v3, v5

    .line 18
    long-to-int v0, v3

    .line 19
    iget v1, v1, Landroidx/media3/exoplayer/upstream/Allocation;->b:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    invoke-interface {p1, v2, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x1

    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    return p2

    .line 32
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 39
    .line 40
    int-to-long v0, p1

    .line 41
    add-long/2addr p2, v0

    .line 42
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 45
    .line 46
    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 47
    .line 48
    cmp-long p2, p2, v1

    .line 49
    .line 50
    if-nez p2, :cond_2

    .line 51
    .line 52
    iget-object p2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 53
    .line 54
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 55
    .line 56
    :cond_2
    return p1
.end method

.method public final b(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 2
    .line 3
    if-lez p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p3, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/Allocation;->a:[B

    .line 14
    .line 15
    iget-wide v4, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 16
    .line 17
    iget-wide v6, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 18
    .line 19
    sub-long/2addr v4, v6

    .line 20
    long-to-int v1, v4

    .line 21
    iget v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->b:I

    .line 22
    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {p1, v3, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 25
    .line 26
    .line 27
    sub-int/2addr p2, v0

    .line 28
    iget-wide v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 29
    .line 30
    int-to-long v3, v0

    .line 31
    add-long/2addr v1, v3

    .line 32
    iput-wide v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 33
    .line 34
    iget-object v0, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 35
    .line 36
    iget-wide v3, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 37
    .line 38
    cmp-long v1, v1, v3

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 43
    .line 44
    iput-object v0, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final e(Landroidx/media3/common/Format;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v0

    .line 29
    :goto_0
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sub-int/2addr v3, v2

    .line 40
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 45
    .line 46
    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v1, v2

    .line 63
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    .line 70
    .line 71
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_4

    .line 76
    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 77
    .line 78
    :goto_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Z

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 81
    .line 82
    iget-object v3, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v1, v1, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v2, :cond_3

    .line 91
    .line 92
    invoke-static {v3, v1}, Landroidx/media3/common/MimeTypes;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    move v1, v2

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v1, v0

    .line 101
    :goto_2
    and-int/2addr p1, v1

    .line 102
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Z

    .line 103
    .line 104
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    monitor-exit p0

    .line 107
    move v0, v2

    .line 108
    :goto_3
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    .line 109
    .line 110
    if-eqz p0, :cond_4

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 115
    .line 116
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:Landroidx/media3/exoplayer/source/b;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void

    .line 124
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    throw p1
.end method

.method public final g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p4

    .line 6
    .line 7
    and-int/lit8 v4, p3, 0x1

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move v7, v6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v7, v5

    .line 16
    :goto_0
    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    .line 17
    .line 18
    if-eqz v8, :cond_2

    .line 19
    .line 20
    if-nez v7, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iput-boolean v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    .line 24
    .line 25
    :cond_2
    iget-boolean v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->D:Z

    .line 26
    .line 27
    if-eqz v7, :cond_5

    .line 28
    .line 29
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    .line 30
    .line 31
    cmp-long v7, v2, v7

    .line 32
    .line 33
    if-gez v7, :cond_3

    .line 34
    .line 35
    :goto_1
    return-void

    .line 36
    :cond_3
    if-nez v4, :cond_5

    .line 37
    .line 38
    iget-boolean v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->E:Z

    .line 39
    .line 40
    if-nez v4, :cond_4

    .line 41
    .line 42
    const-string v4, "SampleQueue"

    .line 43
    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v8, "Overriding unexpected non-sync sample for format: "

    .line 47
    .line 48
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-static {v4, v7}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->E:Z

    .line 64
    .line 65
    :cond_4
    or-int/lit8 v4, p3, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    move/from16 v4, p3

    .line 69
    .line 70
    :goto_2
    iget-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 71
    .line 72
    iget-wide v7, v7, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 73
    .line 74
    int-to-long v9, v0

    .line 75
    sub-long/2addr v7, v9

    .line 76
    move/from16 v9, p5

    .line 77
    .line 78
    int-to-long v9, v9

    .line 79
    sub-long/2addr v7, v9

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 82
    .line 83
    if-lez v9, :cond_7

    .line 84
    .line 85
    sub-int/2addr v9, v6

    .line 86
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 91
    .line 92
    aget-wide v10, v10, v9

    .line 93
    .line 94
    iget-object v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 95
    .line 96
    aget v9, v12, v9

    .line 97
    .line 98
    int-to-long v12, v9

    .line 99
    add-long/2addr v10, v12

    .line 100
    cmp-long v9, v10, v7

    .line 101
    .line 102
    if-gtz v9, :cond_6

    .line 103
    .line 104
    move v9, v6

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    move v9, v5

    .line 107
    :goto_3
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto/16 :goto_e

    .line 113
    .line 114
    :cond_7
    :goto_4
    const/high16 v9, 0x20000000

    .line 115
    .line 116
    and-int/2addr v9, v4

    .line 117
    if-eqz v9, :cond_8

    .line 118
    .line 119
    move v10, v6

    .line 120
    goto :goto_5

    .line 121
    :cond_8
    move v10, v5

    .line 122
    :goto_5
    iput-boolean v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    .line 123
    .line 124
    iget-wide v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    .line 125
    .line 126
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide v10

    .line 130
    iput-wide v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    .line 131
    .line 132
    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 133
    .line 134
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 135
    .line 136
    add-int/2addr v10, v11

    .line 137
    iget-wide v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->u:J

    .line 138
    .line 139
    const-wide/high16 v14, -0x8000000000000000L

    .line 140
    .line 141
    cmp-long v14, v12, v14

    .line 142
    .line 143
    const/4 v15, -0x1

    .line 144
    if-nez v14, :cond_9

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_9
    iget v14, v1, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    .line 148
    .line 149
    if-eq v14, v15, :cond_a

    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_a
    cmp-long v12, v2, v12

    .line 153
    .line 154
    if-gez v12, :cond_b

    .line 155
    .line 156
    iput v15, v1, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_b
    iget v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 160
    .line 161
    if-ne v12, v15, :cond_c

    .line 162
    .line 163
    iput v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 164
    .line 165
    :cond_c
    iget v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 166
    .line 167
    sub-int/2addr v10, v12

    .line 168
    add-int/2addr v10, v6

    .line 169
    and-int/lit8 v13, v4, 0x1

    .line 170
    .line 171
    if-eqz v13, :cond_d

    .line 172
    .line 173
    move v13, v6

    .line 174
    goto :goto_6

    .line 175
    :cond_d
    move v13, v5

    .line 176
    :goto_6
    if-eqz v9, :cond_e

    .line 177
    .line 178
    move v9, v6

    .line 179
    goto :goto_7

    .line 180
    :cond_e
    move v9, v5

    .line 181
    :goto_7
    iget-object v14, v1, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 182
    .line 183
    if-eqz v14, :cond_f

    .line 184
    .line 185
    iget v14, v14, Landroidx/media3/common/Format;->r:I

    .line 186
    .line 187
    if-eq v14, v15, :cond_f

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_f
    const/16 v14, 0x10

    .line 191
    .line 192
    :goto_8
    add-int/2addr v14, v6

    .line 193
    if-ge v10, v14, :cond_10

    .line 194
    .line 195
    if-nez v13, :cond_10

    .line 196
    .line 197
    if-eqz v9, :cond_11

    .line 198
    .line 199
    :cond_10
    iput v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    .line 200
    .line 201
    iput v15, v1, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 202
    .line 203
    :cond_11
    :goto_9
    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 208
    .line 209
    aput-wide v2, v10, v9

    .line 210
    .line 211
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 212
    .line 213
    aput-wide v7, v2, v9

    .line 214
    .line 215
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 216
    .line 217
    aput v0, v2, v9

    .line 218
    .line 219
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 220
    .line 221
    aput v4, v0, v9

    .line 222
    .line 223
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 224
    .line 225
    aput-object p6, v0, v9

    .line 226
    .line 227
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    .line 228
    .line 229
    const-wide/16 v2, 0x0

    .line 230
    .line 231
    aput-wide v2, v0, v9

    .line 232
    .line 233
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 234
    .line 235
    iget-object v0, v0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_12

    .line 242
    .line 243
    move v0, v6

    .line 244
    goto :goto_a

    .line 245
    :cond_12
    move v0, v5

    .line 246
    :goto_a
    if-nez v0, :cond_13

    .line 247
    .line 248
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 249
    .line 250
    iget-object v0, v0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    sub-int/2addr v2, v6

    .line 257
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 262
    .line 263
    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    .line 264
    .line 265
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 266
    .line 267
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_19

    .line 272
    .line 273
    :cond_13
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 279
    .line 280
    if-eqz v2, :cond_14

    .line 281
    .line 282
    sget-object v2, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->c:Lf7;

    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_14
    sget-object v2, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->c:Lf7;

    .line 286
    .line 287
    :goto_b
    iget-object v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 288
    .line 289
    iget v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 290
    .line 291
    iget v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 292
    .line 293
    add-int/2addr v4, v7

    .line 294
    new-instance v7, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 295
    .line 296
    invoke-direct {v7, v0, v2}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v3, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 300
    .line 301
    iget v2, v3, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    .line 302
    .line 303
    if-ne v2, v15, :cond_16

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-nez v2, :cond_15

    .line 310
    .line 311
    move v2, v6

    .line 312
    goto :goto_c

    .line 313
    :cond_15
    move v2, v5

    .line 314
    :goto_c
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 315
    .line 316
    .line 317
    iput v5, v3, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    .line 318
    .line 319
    :cond_16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-lez v2, :cond_18

    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    sub-int/2addr v2, v6

    .line 330
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-lt v4, v2, :cond_17

    .line 335
    .line 336
    move v8, v6

    .line 337
    goto :goto_d

    .line 338
    :cond_17
    move v8, v5

    .line 339
    :goto_d
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 340
    .line 341
    .line 342
    if-ne v2, v4, :cond_18

    .line 343
    .line 344
    iget-object v2, v3, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/exoplayer/source/d;

    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    sub-int/2addr v3, v6

    .line 351
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/d;->accept(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_18
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_19
    iget v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 362
    .line 363
    add-int/2addr v0, v6

    .line 364
    iput v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 365
    .line 366
    iget v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 367
    .line 368
    if-ne v0, v2, :cond_1a

    .line 369
    .line 370
    add-int/lit16 v0, v2, 0x3e8

    .line 371
    .line 372
    new-array v3, v0, [J

    .line 373
    .line 374
    new-array v4, v0, [J

    .line 375
    .line 376
    new-array v6, v0, [J

    .line 377
    .line 378
    new-array v7, v0, [I

    .line 379
    .line 380
    new-array v8, v0, [I

    .line 381
    .line 382
    new-array v9, v0, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 383
    .line 384
    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 385
    .line 386
    sub-int/2addr v2, v10

    .line 387
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 388
    .line 389
    invoke-static {v11, v10, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    .line 391
    .line 392
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 393
    .line 394
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 395
    .line 396
    invoke-static {v10, v11, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    .line 398
    .line 399
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 400
    .line 401
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 402
    .line 403
    invoke-static {v10, v11, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    .line 405
    .line 406
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 407
    .line 408
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 409
    .line 410
    invoke-static {v10, v11, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    .line 412
    .line 413
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 414
    .line 415
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 416
    .line 417
    invoke-static {v10, v11, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    .line 419
    .line 420
    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    .line 421
    .line 422
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 423
    .line 424
    invoke-static {v10, v11, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    .line 426
    .line 427
    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 428
    .line 429
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 430
    .line 431
    invoke-static {v11, v5, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    .line 433
    .line 434
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 435
    .line 436
    invoke-static {v11, v5, v6, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    .line 438
    .line 439
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 440
    .line 441
    invoke-static {v11, v5, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    .line 443
    .line 444
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 445
    .line 446
    invoke-static {v11, v5, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    .line 448
    .line 449
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 450
    .line 451
    invoke-static {v11, v5, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    .line 453
    .line 454
    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    .line 455
    .line 456
    invoke-static {v11, v5, v3, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    .line 458
    .line 459
    iput-object v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 460
    .line 461
    iput-object v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 462
    .line 463
    iput-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 464
    .line 465
    iput-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 466
    .line 467
    iput-object v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 468
    .line 469
    iput-object v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    .line 470
    .line 471
    iput v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 472
    .line 473
    iput v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .line 475
    :cond_1a
    monitor-exit p0

    .line 476
    return-void

    .line 477
    :goto_e
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    throw v0
.end method

.method public final h(I)J
    .locals 9

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const-wide/high16 v3, -0x8000000000000000L

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    add-int/lit8 v5, p1, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    move v6, v2

    .line 16
    :goto_0
    if-ge v6, p1, :cond_3

    .line 17
    .line 18
    iget-object v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 19
    .line 20
    aget-wide v7, v7, v5

    .line 21
    .line 22
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-object v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 27
    .line 28
    aget v7, v7, v5

    .line 29
    .line 30
    and-int/lit8 v7, v7, 0x1

    .line 31
    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 36
    .line 37
    const/4 v7, -0x1

    .line 38
    if-ne v5, v7, :cond_2

    .line 39
    .line 40
    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 41
    .line 42
    add-int/lit8 v5, v5, -0x1

    .line 43
    .line 44
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    .line 52
    .line 53
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 54
    .line 55
    sub-int/2addr v0, p1

    .line 56
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 57
    .line 58
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 59
    .line 60
    add-int/2addr v0, p1

    .line 61
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 62
    .line 63
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 64
    .line 65
    add-int/2addr v1, p1

    .line 66
    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 67
    .line 68
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 69
    .line 70
    if-lt v1, v3, :cond_4

    .line 71
    .line 72
    sub-int/2addr v1, v3

    .line 73
    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 74
    .line 75
    :cond_4
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 76
    .line 77
    sub-int/2addr v1, p1

    .line 78
    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 79
    .line 80
    if-gez v1, :cond_5

    .line 81
    .line 82
    iput v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 83
    .line 84
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 85
    .line 86
    iget-object v1, p1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 87
    .line 88
    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    add-int/lit8 v3, v3, -0x1

    .line 93
    .line 94
    if-ge v2, v3, :cond_7

    .line 95
    .line 96
    add-int/lit8 v3, v2, 0x1

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-lt v0, v4, :cond_7

    .line 103
    .line 104
    iget-object v4, p1, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/exoplayer/source/d;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/d;->accept(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 114
    .line 115
    .line 116
    iget v2, p1, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    .line 117
    .line 118
    if-lez v2, :cond_6

    .line 119
    .line 120
    add-int/lit8 v2, v2, -0x1

    .line 121
    .line 122
    iput v2, p1, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    .line 123
    .line 124
    :cond_6
    move v2, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_7
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 127
    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 131
    .line 132
    if-nez p1, :cond_8

    .line 133
    .line 134
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 135
    .line 136
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 137
    .line 138
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 139
    .line 140
    aget-wide v0, v0, p1

    .line 141
    .line 142
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 143
    .line 144
    aget p0, p0, p1

    .line 145
    .line 146
    int-to-long p0, p0

    .line 147
    add-long/2addr v0, p0

    .line 148
    return-wide v0

    .line 149
    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 150
    .line 151
    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 152
    .line 153
    aget-wide p0, p1, p0

    .line 154
    .line 155
    return-wide p0
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->h(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->a(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method

.method public final j(IIJZ)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, p2, :cond_4

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 7
    .line 8
    aget-wide v3, v3, p1

    .line 9
    .line 10
    cmp-long v3, v3, p3

    .line 11
    .line 12
    if-gtz v3, :cond_4

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 17
    .line 18
    aget v4, v4, p1

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    :cond_0
    if-nez v3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 31
    .line 32
    if-ne p1, v3, :cond_3

    .line 33
    .line 34
    move p1, v1

    .line 35
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    return v0
.end method

.method public final k(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    .line 5
    .line 6
    if-ge v0, p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    sub-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public final declared-synchronized l()Landroidx/media3/common/Format;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized m(Z)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 5
    .line 6
    add-int v2, v0, v1

    .line 7
    .line 8
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v3, v4, :cond_0

    .line 13
    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return v5

    .line 18
    :cond_0
    :try_start_1
    iget v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    if-eq v1, v6, :cond_1

    .line 22
    .line 23
    move v6, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v6, v7

    .line 26
    :goto_0
    if-eqz v6, :cond_5

    .line 27
    .line 28
    if-ne v3, v4, :cond_2

    .line 29
    .line 30
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 31
    .line 32
    if-eq v3, v4, :cond_2

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    if-lt v0, v3, :cond_2

    .line 36
    .line 37
    move v0, v5

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_4

    .line 41
    :cond_2
    move v0, v7

    .line 42
    :goto_1
    if-eqz v0, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/SpannedData;->a(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    if-eq p1, v0, :cond_4

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return v5

    .line 61
    :cond_4
    :try_start_2
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->n(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    monitor-exit p0

    .line 72
    return p1

    .line 73
    :cond_5
    :goto_2
    if-nez p1, :cond_7

    .line 74
    .line 75
    :try_start_3
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    .line 76
    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 80
    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    if-eq p1, v0, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move v5, v7

    .line 89
    :cond_7
    :goto_3
    monitor-exit p0

    .line 90
    return v5

    .line 91
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    throw p1
.end method

.method public final n(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 13
    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    and-int/2addr p1, v0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public final o(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Landroidx/media3/common/Format;->t:Landroidx/media3/common/DrmInitData;

    .line 13
    .line 14
    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/media3/common/Format;->t:Landroidx/media3/common/DrmInitData;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->b(Landroidx/media3/common/Format;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iput v4, v5, Landroidx/media3/common/Format$Builder;->S:I

    .line 31
    .line 32
    new-instance v4, Landroidx/media3/common/Format;

    .line 33
    .line 34
    invoke-direct {v4, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object v4, p1

    .line 39
    :goto_2
    iput-object v4, p2, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 42
    .line 43
    iput-object v4, p2, Landroidx/media3/exoplayer/FormatHolder;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    if-nez v1, :cond_4

    .line 49
    .line 50
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 60
    .line 61
    invoke-interface {v3, v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->a(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 66
    .line 67
    iput-object p1, p2, Landroidx/media3/exoplayer/FormatHolder;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_3
    return-void
.end method

.method public final p(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->a:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/Allocator;->a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    .line 14
    .line 15
    .line 16
    iput-object v4, v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 17
    .line 18
    iput-object v4, v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 19
    .line 20
    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 21
    .line 22
    iget v3, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->b:I

    .line 23
    .line 24
    iget-object v5, v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    move v5, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v5, v7

    .line 33
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v8, 0x0

    .line 37
    .line 38
    iput-wide v8, v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 39
    .line 40
    int-to-long v10, v3

    .line 41
    iput-wide v10, v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 42
    .line 43
    iget-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 44
    .line 45
    iput-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 46
    .line 47
    iput-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 48
    .line 49
    iput-wide v8, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 50
    .line 51
    invoke-interface {v1}, Landroidx/media3/exoplayer/upstream/Allocator;->d()V

    .line 52
    .line 53
    .line 54
    iput v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 55
    .line 56
    iput v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 57
    .line 58
    iput v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 59
    .line 60
    iput v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    .line 64
    .line 65
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 66
    .line 67
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    .line 68
    .line 69
    const-wide/high16 v1, -0x8000000000000000L

    .line 70
    .line 71
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    .line 72
    .line 73
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    .line 74
    .line 75
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    .line 76
    .line 77
    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 80
    .line 81
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    .line 82
    .line 83
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v7, v3, :cond_2

    .line 88
    .line 89
    iget-object v3, v1, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/exoplayer/source/d;

    .line 90
    .line 91
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/source/d;->accept(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v7, v7, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iput v0, v1, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    iput-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 109
    .line 110
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    .line 111
    .line 112
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Z

    .line 113
    .line 114
    :cond_3
    return-void
.end method

.method public final declared-synchronized q(JZ)Z
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 9
    .line 10
    iput-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 11
    .line 12
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 13
    :try_start_3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->u:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 18
    .line 19
    const-wide/high16 v5, -0x8000000000000000L

    .line 20
    .line 21
    cmp-long v3, v1, v5

    .line 22
    .line 23
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    :try_start_4
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    move-object v3, p0

    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_0
    :goto_0
    :try_start_5
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 38
    .line 39
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    move v3, v9

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v3, v0

    .line 47
    :goto_1
    if-eqz v3, :cond_2

    .line 48
    .line 49
    :try_start_6
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 50
    .line 51
    aget-wide v7, v3, v4

    .line 52
    .line 53
    cmp-long v3, p1, v7

    .line 54
    .line 55
    if-ltz v3, :cond_2

    .line 56
    .line 57
    cmp-long v3, p1, v5

    .line 58
    .line 59
    if-lez v3, :cond_3

    .line 60
    .line 61
    if-nez p3, :cond_3

    .line 62
    .line 63
    :cond_2
    move-object v3, p0

    .line 64
    goto :goto_6

    .line 65
    :cond_3
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    .line 67
    const/4 v10, -0x1

    .line 68
    if-eqz v3, :cond_8

    .line 69
    .line 70
    sub-int/2addr v2, v1

    .line 71
    move v1, v0

    .line 72
    :goto_2
    if-ge v1, v2, :cond_6

    .line 73
    .line 74
    :try_start_7
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 75
    .line 76
    aget-wide v5, v3, v4

    .line 77
    .line 78
    cmp-long v3, v5, p1

    .line 79
    .line 80
    if-ltz v3, :cond_4

    .line 81
    .line 82
    move v2, v1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 87
    .line 88
    if-ne v4, v3, :cond_5

    .line 89
    .line 90
    move v4, v0

    .line 91
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    if-eqz p3, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    move v2, v10

    .line 98
    :goto_3
    move-object v3, p0

    .line 99
    move-wide v6, p1

    .line 100
    goto :goto_4

    .line 101
    :cond_8
    sub-int v5, v2, v1

    .line 102
    .line 103
    const/4 v8, 0x1

    .line 104
    move-object v3, p0

    .line 105
    move-wide v6, p1

    .line 106
    :try_start_8
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->j(IIJZ)I

    .line 107
    .line 108
    .line 109
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 110
    :goto_4
    if-ne v2, v10, :cond_9

    .line 111
    .line 112
    monitor-exit v3

    .line 113
    return v0

    .line 114
    :cond_9
    :try_start_9
    iput-wide v6, v3, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    .line 115
    .line 116
    iget p0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 117
    .line 118
    add-int/2addr p0, v2

    .line 119
    iput p0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 120
    .line 121
    monitor-exit v3

    .line 122
    return v9

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    :goto_5
    move-object p1, v0

    .line 125
    goto :goto_9

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    move-object v3, p0

    .line 128
    goto :goto_5

    .line 129
    :goto_6
    monitor-exit v3

    .line 130
    return v0

    .line 131
    :catchall_3
    move-exception v0

    .line 132
    move-object v3, p0

    .line 133
    :goto_7
    move-object p0, v0

    .line 134
    move-object p1, p0

    .line 135
    goto :goto_9

    .line 136
    :catchall_4
    move-exception v0

    .line 137
    move-object v3, p0

    .line 138
    goto :goto_7

    .line 139
    :catchall_5
    move-exception v0

    .line 140
    move-object v3, p0

    .line 141
    :goto_8
    move-object p0, v0

    .line 142
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 143
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 144
    :catchall_6
    move-exception v0

    .line 145
    goto :goto_7

    .line 146
    :catchall_7
    move-exception v0

    .line 147
    goto :goto_8

    .line 148
    :goto_9
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 149
    throw p1
.end method
