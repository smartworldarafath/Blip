.class public final synthetic Ll7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll7;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Ll7;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ll7;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lio/sentry/ITransaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll7;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 4
    .line 5
    iget-object v1, p0, Ll7;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/sentry/IScope;

    .line 8
    .line 9
    iget-object p0, p0, Ll7;->l:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lio/sentry/ITransaction;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p0}, Lio/sentry/IScope;->G(Lio/sentry/ITransaction;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 26
    .line 27
    invoke-interface {p0}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 36
    .line 37
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ll7;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    .line 4
    .line 5
    iget-object v1, p0, Ll7;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 8
    .line 9
    iget-object p0, p0, Ll7;->l:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->d:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 14
    .line 15
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 16
    .line 17
    invoke-virtual {v2, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->w(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 18
    .line 19
    .line 20
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    .line 21
    .line 22
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method
