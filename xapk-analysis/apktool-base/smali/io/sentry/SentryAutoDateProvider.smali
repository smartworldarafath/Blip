.class public final Lio/sentry/SentryAutoDateProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/SentryDateProvider;


# instance fields
.field public final a:Lio/sentry/SentryDateProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lio/sentry/util/Platform;->a:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-boolean v0, Lio/sentry/util/Platform;->b:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/sentry/SentryInstantDateProvider;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/SentryAutoDateProvider;->a:Lio/sentry/SentryDateProvider;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lio/sentry/SentryNanotimeDateProvider;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/SentryAutoDateProvider;->a:Lio/sentry/SentryDateProvider;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryAutoDateProvider;->a:Lio/sentry/SentryDateProvider;

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
