.class Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DefaultCompositePerformanceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompositeData"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lio/sentry/ITransaction;

.field public final c:J

.field public final synthetic d:Lio/sentry/DefaultCompositePerformanceCollector;


# direct methods
.method public constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/SentryTracer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->d:Lio/sentry/DefaultCompositePerformanceCollector;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p2, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->b:Lio/sentry/ITransaction;

    .line 14
    .line 15
    iget-object p1, p1, Lio/sentry/DefaultCompositePerformanceCollector;->g:Lio/sentry/SentryOptions;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lio/sentry/SentryDate;->d()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iput-wide p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->c:J

    .line 30
    .line 31
    return-void
.end method
