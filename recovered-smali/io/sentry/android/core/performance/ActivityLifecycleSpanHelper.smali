.class public Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lio/sentry/SentryDate;

.field public c:Lio/sentry/SentryDate;

.field public d:Lio/sentry/ISpan;

.field public e:Lio/sentry/ISpan;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->b:Lio/sentry/SentryDate;

    .line 6
    .line 7
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->c:Lio/sentry/SentryDate;

    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->a:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lio/sentry/ISpan;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ISpan;->c(Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 16
    .line 17
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x24

    .line 20
    .line 21
    if-lt p2, v0, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lt4;->d(Ljava/lang/Thread;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "thread.id"

    .line 37
    .line 38
    invoke-interface {p0, p1, p2}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "thread.name"

    .line 42
    .line 43
    const-string p2, "main"

    .line 44
    .line 45
    invoke-interface {p0, p2, p1}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    const-string p2, "ui.contributes_to_ttid"

    .line 51
    .line 52
    invoke-interface {p0, p1, p2}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p2, "ui.contributes_to_ttfd"

    .line 56
    .line 57
    invoke-interface {p0, p1, p2}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method
