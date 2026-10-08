.class public final Lcoil3/memory/RealMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/memory/MemoryCache;


# instance fields
.field public final a:Lcoil3/memory/RealStrongMemoryCache;

.field public final b:Lcoil3/memory/RealWeakMemoryCache;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcoil3/memory/RealStrongMemoryCache;Lcoil3/memory/RealWeakMemoryCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 7
    .line 8
    iput-wide p1, p0, Lcoil3/util/LruCache;->b:J

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcoil3/util/LruCache;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    .line 17
    throw p0
.end method
