.class public abstract Lcoil3/SingletonImageLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/SingletonImageLoader$Factory;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/SingletonImageLoader;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 6

    .line 1
    sget-object v0, Lcoil3/SingletonImageLoader;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lcoil3/ImageLoader;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcoil3/ImageLoader;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v3

    .line 16
    :goto_0
    if-nez v1, :cond_9

    .line 17
    .line 18
    move-object v1, v3

    .line 19
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v4, v2, Lcoil3/ImageLoader;

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    move-object v4, v2

    .line 28
    check-cast v4, Lcoil3/ImageLoader;

    .line 29
    .line 30
    move-object v5, v1

    .line 31
    goto :goto_5

    .line 32
    :cond_1
    if-nez v1, :cond_6

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    instance-of v4, v2, Lcoil3/SingletonImageLoader$Factory;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    move-object v4, v2

    .line 43
    check-cast v4, Lcoil3/SingletonImageLoader$Factory;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v4, v3

    .line 47
    :goto_2
    if-eqz v4, :cond_3

    .line 48
    .line 49
    check-cast v4, Lmf;

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Lmf;->a(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    instance-of v4, v1, Lcoil3/SingletonImageLoader$Factory;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    move-object v4, v1

    .line 61
    check-cast v4, Lcoil3/SingletonImageLoader$Factory;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move-object v4, v3

    .line 65
    :goto_3
    if-eqz v4, :cond_5

    .line 66
    .line 67
    check-cast v4, Lmf;

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Lmf;->a(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_4

    .line 74
    :cond_5
    sget-object v4, Lcoil3/SingletonImageLoaderKt;->a:Lmf;

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Lmf;->a(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_6
    :goto_4
    move-object v4, v1

    .line 81
    move-object v5, v4

    .line 82
    :cond_7
    :goto_5
    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_8

    .line 87
    .line 88
    return-object v4

    .line 89
    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eq v1, v2, :cond_7

    .line 94
    .line 95
    move-object v1, v5

    .line 96
    goto :goto_1

    .line 97
    :cond_9
    return-object v1
.end method
