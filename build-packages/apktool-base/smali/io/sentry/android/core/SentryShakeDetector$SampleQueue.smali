.class Lio/sentry/android/core/SentryShakeDetector$SampleQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleQueue"
.end annotation


# instance fields
.field public final a:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

.field public b:Lio/sentry/android/core/SentryShakeDetector$Sample;

.field public c:Lio/sentry/android/core/SentryShakeDetector$Sample;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->a:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    .line 10
    .line 11
    return-void
.end method
