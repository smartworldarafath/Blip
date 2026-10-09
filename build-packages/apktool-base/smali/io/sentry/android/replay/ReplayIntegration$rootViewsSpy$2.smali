.class final Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/sentry/android/replay/RootViewsSpy;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;->k:Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p0, Lio/sentry/android/replay/RootViewsSpy;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/android/replay/RootViewsSpy;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lio/sentry/android/replay/b;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, v2}, Lio/sentry/android/replay/b;-><init>(Ljava/io/Closeable;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-object p0
.end method
