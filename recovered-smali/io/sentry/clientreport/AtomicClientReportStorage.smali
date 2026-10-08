.class final Lio/sentry/clientreport/AtomicClientReportStorage;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/clientreport/IClientReportStorage;


# instance fields
.field public final a:Lio/sentry/util/LazyEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    .line 5
    .line 6
    new-instance v1, Lio/sentry/clientreport/a;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->a:Lio/sentry/util/LazyEvaluator;

    .line 15
    .line 16
    return-void
.end method
