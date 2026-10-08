.class final Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.ShortTermDiskCache$purge$2"
    f = "FirebaseNotificationService.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Lnet/blip/android/notifications/ShortTermDiskCache;

.field public final synthetic o:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lnet/blip/android/notifications/ShortTermDiskCache;Ljava/time/Duration;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->n:Lnet/blip/android/notifications/ShortTermDiskCache;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->o:Ljava/time/Duration;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->n:Lnet/blip/android/notifications/ShortTermDiskCache;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->o:Ljava/time/Duration;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;-><init>(Lnet/blip/android/notifications/ShortTermDiskCache;Ljava/time/Duration;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->n:Lnet/blip/android/notifications/ShortTermDiskCache;

    .line 7
    .line 8
    iget-object p1, p1, Lnet/blip/android/notifications/ShortTermDiskCache;->a:Ljava/io/File;

    .line 9
    .line 10
    new-instance v0, Llf;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/android/notifications/ShortTermDiskCache$purge$2;->o:Ljava/time/Duration;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Llf;-><init>(Ljava/time/Duration;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    array-length p1, p0

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-ge v0, p1, :cond_0

    .line 26
    .line 27
    aget-object v1, p0, v0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
