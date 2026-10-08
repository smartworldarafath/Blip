.class public final Lio/sentry/android/replay/gestures/ReplayGestureConverter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/transport/ICurrentDateProvider;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->a:Lio/sentry/transport/ICurrentDateProvider;

    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    return-void
.end method
