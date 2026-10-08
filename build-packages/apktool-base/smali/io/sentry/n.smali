.class public final synthetic Lio/sentry/n;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/sentry/n;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/n;->k:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/n;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/n;->k:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lio/sentry/SentryOptions;->b(Lio/sentry/SentryOptions;)Lio/sentry/EnvelopeReader;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    sget-object v0, Lio/sentry/SentryOptions;->DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lio/sentry/JsonSerializer;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_1
    invoke-static {p0}, Lio/sentry/SentryOptions;->a(Lio/sentry/SentryOptions;)Lio/sentry/Dsn;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
