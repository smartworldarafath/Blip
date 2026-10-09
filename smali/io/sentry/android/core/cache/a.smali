.class public final synthetic Lio/sentry/android/core/cache/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/android/core/cache/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/android/core/cache/a;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    .line 7
    .line 8
    sget-object p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->u:Ljava/util/List;

    .line 9
    .line 10
    iget-wide p0, p1, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->d:J

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p1, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    .line 18
    .line 19
    sget-object p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->u:Ljava/util/List;

    .line 20
    .line 21
    iget-wide p0, p1, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->d:J

    .line 22
    .line 23
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
