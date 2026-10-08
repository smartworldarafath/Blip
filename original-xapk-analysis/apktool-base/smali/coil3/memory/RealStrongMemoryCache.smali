.class public final Lcoil3/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/memory/RealStrongMemoryCache$InternalValue;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcoil3/memory/RealWeakMemoryCache;

.field public final c:Lcoil3/memory/RealStrongMemoryCache$cache$1;


# direct methods
.method public constructor <init>(JLcoil3/memory/RealWeakMemoryCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcoil3/memory/RealStrongMemoryCache;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 7
    .line 8
    new-instance p3, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    invoke-direct {p3, p0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;-><init>(Lcoil3/memory/RealStrongMemoryCache;J)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    iget-wide v1, v0, Lcoil3/util/LruCache;->b:J

    .line 4
    .line 5
    iget-object v3, v0, Lcoil3/util/LruCache;->a:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    cmp-long v1, p4, v1

    .line 8
    .line 9
    if-gtz v1, :cond_1

    .line 10
    .line 11
    new-instance p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p4, p5}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;-><init>(Lcoil3/Image;Ljava/util/Map;J)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    .line 21
    .line 22
    .line 23
    move-result-wide p3

    .line 24
    invoke-virtual {v0, p1, p0}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    add-long/2addr v1, p3

    .line 29
    iput-wide v1, v0, Lcoil3/util/LruCache;->c:J

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    .line 34
    .line 35
    .line 36
    move-result-wide p3

    .line 37
    invoke-virtual {v0, p1, p2}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    sub-long/2addr p3, v1

    .line 42
    iput-wide p3, v0, Lcoil3/util/LruCache;->c:J

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-wide p0, v0, Lcoil3/util/LruCache;->b:J

    .line 48
    .line 49
    invoke-virtual {v0, p0, p1}, Lcoil3/util/LruCache;->e(J)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v0, p1, v1}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    sub-long/2addr v2, v4

    .line 68
    iput-wide v2, v0, Lcoil3/util/LruCache;->c:J

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, p1, v1, v2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p5}, Lcoil3/memory/RealWeakMemoryCache;->b(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
