.class public final Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/util/DefaultActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/util/AndroidSystemCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityCallbacks"
.end annotation


# instance fields
.field public final j:D

.field public final synthetic k:Lcoil3/util/AndroidSystemCallbacks;


# direct methods
.method public constructor <init>(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->k:Lcoil3/util/AndroidSystemCallbacks;

    .line 5
    .line 6
    iget-object p1, p2, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 7
    .line 8
    sget-object p2, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    .line 9
    .line 10
    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 11
    .line 12
    iget-object p1, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 13
    .line 14
    sget-object p2, Lcoil3/ImageLoaders_androidKt;->d:Lcoil3/Extras$Key;

    .line 15
    .line 16
    iget-object p1, p1, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    iput-wide p1, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->j:D

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->j:D

    .line 2
    .line 3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    cmpg-double v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroid/app/Application;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->k:Lcoil3/util/AndroidSystemCallbacks;

    .line 23
    .line 24
    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcoil3/RealImageLoader;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcoil3/RealImageLoader;->d()Lcoil3/memory/MemoryCache;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    check-cast p0, Lcoil3/memory/RealMemoryCache;

    .line 41
    .line 42
    iget-object p1, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 46
    .line 47
    iget-wide v2, v2, Lcoil3/memory/RealStrongMemoryCache;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit p1

    .line 50
    long-to-double v2, v2

    .line 51
    mul-double/2addr v0, v2

    .line 52
    double-to-long v0, v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcoil3/memory/RealMemoryCache;->a(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit p1

    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->a()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->j:D

    .line 2
    .line 3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    cmpg-double v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroid/app/Application;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->k:Lcoil3/util/AndroidSystemCallbacks;

    .line 23
    .line 24
    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcoil3/RealImageLoader;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcoil3/RealImageLoader;->d()Lcoil3/memory/MemoryCache;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    check-cast p0, Lcoil3/memory/RealMemoryCache;

    .line 41
    .line 42
    iget-object p1, p0, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 46
    .line 47
    iget-wide v0, v0, Lcoil3/memory/RealStrongMemoryCache;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit p1

    .line 50
    invoke-virtual {p0, v0, v1}, Lcoil3/memory/RealMemoryCache;->a(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit p1

    .line 56
    throw p0

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->a()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
