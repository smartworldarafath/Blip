.class public final Lio/sentry/android/replay/RootViewsSpy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Lio/sentry/util/AutoClosableReentrantLock;

.field public final l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

.field public final m:Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->k:Lio/sentry/util/AutoClosableReentrantLock;

    .line 18
    .line 19
    new-instance v0, Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;-><init>(Lio/sentry/android/replay/RootViewsSpy;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 25
    .line 26
    new-instance v0, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;-><init>(Lio/sentry/android/replay/RootViewsSpy;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->m:Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/android/replay/RootViewsSpy;->l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
