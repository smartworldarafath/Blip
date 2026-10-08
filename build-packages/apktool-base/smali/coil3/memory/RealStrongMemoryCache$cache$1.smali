.class public final Lcoil3/memory/RealStrongMemoryCache$cache$1;
.super Lcoil3/util/LruCache;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcoil3/util/LruCache<",
        "Lcoil3/memory/MemoryCache$Key;",
        "Lcoil3/memory/RealStrongMemoryCache$InternalValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcoil3/memory/RealStrongMemoryCache;


# direct methods
.method public constructor <init>(Lcoil3/memory/RealStrongMemoryCache;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->d:Lcoil3/memory/RealStrongMemoryCache;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcoil3/util/LruCache;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Lcoil3/memory/MemoryCache$Key;

    .line 3
    .line 4
    check-cast p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->d:Lcoil3/memory/RealStrongMemoryCache;

    .line 7
    .line 8
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 9
    .line 10
    iget-object v2, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->a:Lcoil3/Image;

    .line 11
    .line 12
    iget-object v3, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->b:Ljava/util/Map;

    .line 13
    .line 14
    iget-wide v4, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->c:J

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Lcoil3/memory/RealWeakMemoryCache;->b(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p1, Lcoil3/memory/MemoryCache$Key;

    .line 2
    .line 3
    check-cast p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 4
    .line 5
    iget-wide p0, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->c:J

    .line 6
    .line 7
    return-wide p0
.end method
