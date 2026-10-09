.class public final Lio/sentry/NoOpReplayBreadcrumbConverter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ReplayBreadcrumbConverter;


# static fields
.field public static final a:Lio/sentry/NoOpReplayBreadcrumbConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpReplayBreadcrumbConverter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/NoOpReplayBreadcrumbConverter;->a:Lio/sentry/NoOpReplayBreadcrumbConverter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
