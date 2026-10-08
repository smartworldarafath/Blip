.class final Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Allocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerIdFilteringAllocatorImpl"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final synthetic c:Landroidx/media3/exoplayer/DefaultLoadControl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->b:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->a()Landroidx/media3/exoplayer/upstream/Allocation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->f(Landroidx/media3/exoplayer/upstream/Allocation;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;->next()Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public final declared-synchronized b()Landroidx/media3/exoplayer/upstream/Allocation;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b()Landroidx/media3/exoplayer/upstream/Allocation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->b:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->b:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    iput v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 47
    throw v0
.end method

.method public final declared-synchronized c(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->c(Landroidx/media3/exoplayer/upstream/Allocation;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->f(Landroidx/media3/exoplayer/upstream/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 5
    .line 6
    iget v0, v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final f(Landroidx/media3/exoplayer/upstream/Allocation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;->c:Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    iput p1, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1

    .line 36
    :cond_0
    return-void
.end method
