.class final Lio/sentry/transport/TransportResult$SuccessTransportResult;
.super Lio/sentry/transport/TransportResult;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/TransportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessTransportResult"
.end annotation


# static fields
.field public static final a:Lio/sentry/transport/TransportResult$SuccessTransportResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/transport/TransportResult$SuccessTransportResult;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/transport/TransportResult$SuccessTransportResult;->a:Lio/sentry/transport/TransportResult$SuccessTransportResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
