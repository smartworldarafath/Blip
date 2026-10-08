.class public final Landroidx/media3/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Allocator;


# instance fields
.field public final a:Z

.field public final b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[Landroidx/media3/exoplayer/upstream/Allocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->a:Z

    .line 6
    .line 7
    const/high16 v0, 0x10000

    .line 8
    .line 9
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 13
    .line 14
    const/16 v0, 0x64

    .line 15
    .line 16
    new-array v0, v0, [Landroidx/media3/exoplayer/upstream/Allocation;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->a()Landroidx/media3/exoplayer/upstream/Allocation;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I

    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->next()Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void
.end method

.method public final declared-synchronized b()Landroidx/media3/exoplayer/upstream/Allocation;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 17
    .line 18
    aget-object v0, v0, v1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 24
    .line 25
    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v3, v1, v2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/upstream/Allocation;

    .line 34
    .line 35
    iget v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v1, v3, v2}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>(I[B)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 44
    .line 45
    array-length v3, v2

    .line 46
    if-le v0, v3, :cond_1

    .line 47
    .line 48
    array-length v0, v2

    .line 49
    mul-int/lit8 v0, v0, 0x2

    .line 50
    .line 51
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, [Landroidx/media3/exoplayer/upstream/Allocation;

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    :cond_1
    move-object v0, v1

    .line 60
    :goto_0
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0
.end method

.method public final declared-synchronized c(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 9
    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    iget p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->c:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->e(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f:[Landroidx/media3/exoplayer/upstream/Allocation;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw v0
.end method

.method public final e()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final declared-synchronized f(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->c:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->c:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method
