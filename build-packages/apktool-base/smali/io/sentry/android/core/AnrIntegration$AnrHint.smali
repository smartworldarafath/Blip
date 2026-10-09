.class final Lio/sentry/android/core/AnrIntegration$AnrHint;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/hints/AbnormalExit;
.implements Lio/sentry/hints/TransactionEnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnrHint"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lio/sentry/android/core/AnrIntegration$AnrHint;->a:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Long;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/AnrIntegration$AnrHint;->a:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "anr_background"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "anr_foreground"

    .line 9
    .line 10
    return-object p0
.end method
