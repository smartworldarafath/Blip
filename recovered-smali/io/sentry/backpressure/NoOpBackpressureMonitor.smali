.class public final Lio/sentry/backpressure/NoOpBackpressureMonitor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/backpressure/IBackpressureMonitor;


# static fields
.field public static final j:Lio/sentry/backpressure/NoOpBackpressureMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/backpressure/NoOpBackpressureMonitor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/backpressure/NoOpBackpressureMonitor;->j:Lio/sentry/backpressure/NoOpBackpressureMonitor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    return-void
.end method
