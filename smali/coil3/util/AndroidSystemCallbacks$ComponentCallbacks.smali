.class public final Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/util/AndroidSystemCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentCallbacks"
.end annotation


# instance fields
.field public final synthetic j:Lcoil3/util/AndroidSystemCallbacks;


# direct methods
.method public constructor <init>(Lcoil3/util/AndroidSystemCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->j:Lcoil3/util/AndroidSystemCallbacks;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->j:Lcoil3/util/AndroidSystemCallbacks;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcoil3/RealImageLoader;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->onTrimMemory(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->j:Lcoil3/util/AndroidSystemCallbacks;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcoil3/RealImageLoader;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 15
    .line 16
    const/16 v2, 0x28

    .line 17
    .line 18
    if-lt p1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcoil3/RealImageLoader;->d()Lcoil3/memory/MemoryCache;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    check-cast p1, Lcoil3/memory/RealMemoryCache;

    .line 27
    .line 28
    iget-object v0, p1, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v1, p1, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 32
    .line 33
    iget-object v1, v1, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 34
    .line 35
    const-wide/16 v2, -0x1

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcoil3/util/LruCache;->e(J)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput v1, p1, Lcoil3/memory/RealWeakMemoryCache;->b:I

    .line 44
    .line 45
    iget-object p1, p1, Lcoil3/memory/RealWeakMemoryCache;->a:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_2
    monitor-exit v0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0

    .line 54
    throw p1

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/16 v2, 0x14

    .line 58
    .line 59
    if-lt p1, v2, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    .line 62
    .line 63
    iget-object v0, v1, Lcoil3/RealImageLoader$Options;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->a(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/16 v1, 0xa

    .line 70
    .line 71
    if-lt p1, v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lcoil3/RealImageLoader;->d()Lcoil3/memory/MemoryCache;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    move-object v0, p1

    .line 80
    check-cast v0, Lcoil3/memory/RealMemoryCache;

    .line 81
    .line 82
    iget-object v1, v0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :try_start_3
    iget-object v0, v0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 86
    .line 87
    iget-object v0, v0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 93
    :try_start_4
    monitor-exit v1

    .line 94
    const-wide/16 v0, 0x2

    .line 95
    .line 96
    div-long/2addr v2, v0

    .line 97
    check-cast p1, Lcoil3/memory/RealMemoryCache;

    .line 98
    .line 99
    iget-object v0, p1, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :try_start_5
    iget-object p1, p1, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 103
    .line 104
    iget-object p1, p1, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 105
    .line 106
    invoke-virtual {p1, v2, v3}, Lcoil3/util/LruCache;->e(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    .line 108
    .line 109
    :try_start_6
    monitor-exit v0

    .line 110
    goto :goto_0

    .line 111
    :catchall_2
    move-exception p1

    .line 112
    monitor-exit v0

    .line 113
    throw p1

    .line 114
    :catchall_3
    move-exception p1

    .line 115
    monitor-exit v1

    .line 116
    throw p1

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_0
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :goto_1
    monitor-exit p0

    .line 123
    throw p1
.end method
