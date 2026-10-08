.class public final Lio/sentry/TransactionOptions;
.super Lio/sentry/SpanOptions;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Lio/sentry/android/core/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/sentry/SpanOptions;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/TransactionOptions;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/sentry/TransactionOptions;->f:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/TransactionOptions;->h:Ljava/lang/Long;

    .line 13
    .line 14
    iput-object v0, p0, Lio/sentry/TransactionOptions;->i:Lio/sentry/android/core/f;

    .line 15
    .line 16
    return-void
.end method
