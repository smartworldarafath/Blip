.class public final Lio/sentry/SentryEnvelope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/SentryEnvelopeHeader;

.field public final b:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "SentryEnvelopeHeader is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 26
    const-string p1, "SentryEnvelope items are required."

    invoke-static {p2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/SentryEnvelopeHeader;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p2, v1}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 22
    .line 23
    return-void
.end method
