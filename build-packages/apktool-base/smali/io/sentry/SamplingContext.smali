.class public final Lio/sentry/SamplingContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/TransactionContext;

.field public final b:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/SamplingContext;->a:Lio/sentry/TransactionContext;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/SamplingContext;->b:Ljava/lang/Double;

    .line 7
    .line 8
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method
