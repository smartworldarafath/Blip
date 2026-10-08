.class public final Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->a:Lio/sentry/android/core/BuildInfoProvider;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentProvider;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->a:Lio/sentry/android/core/BuildInfoProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v0, 0x1c

    .line 9
    .line 10
    if-gt p0, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string p1, "Provider does not allow for granting of Uri permissions"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    return-void
.end method
