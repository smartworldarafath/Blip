.class public Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AndroidProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileStartData"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/util/Date;


# direct methods
.method public constructor <init>(JJLjava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->b:J

    .line 7
    .line 8
    iput-object p5, p0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->c:Ljava/util/Date;

    .line 9
    .line 10
    return-void
.end method
