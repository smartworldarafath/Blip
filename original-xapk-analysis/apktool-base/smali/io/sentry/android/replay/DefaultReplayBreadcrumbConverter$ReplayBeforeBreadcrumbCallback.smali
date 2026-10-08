.class final Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReplayBeforeBreadcrumbCallback"
.end annotation


# instance fields
.field public final j:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;->j:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;->j:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;->b(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p0, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "http"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    iget-object p0, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    const-string p0, "sentry:replayNetworkDetails"

    .line 34
    .line 35
    invoke-virtual {p2, p0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object p1
.end method
