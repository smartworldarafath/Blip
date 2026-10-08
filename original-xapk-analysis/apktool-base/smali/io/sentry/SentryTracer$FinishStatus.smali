.class final Lio/sentry/SentryTracer$FinishStatus;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinishStatus"
.end annotation


# static fields
.field public static final c:Lio/sentry/SentryTracer$FinishStatus;


# instance fields
.field public final a:Z

.field public final b:Lio/sentry/SpanStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/SentryTracer$FinishStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lio/sentry/SentryTracer$FinishStatus;-><init>(ZLio/sentry/SpanStatus;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/sentry/SentryTracer$FinishStatus;->c:Lio/sentry/SentryTracer$FinishStatus;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(ZLio/sentry/SpanStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lio/sentry/SentryTracer$FinishStatus;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/SentryTracer$FinishStatus;->b:Lio/sentry/SpanStatus;

    .line 7
    .line 8
    return-void
.end method
