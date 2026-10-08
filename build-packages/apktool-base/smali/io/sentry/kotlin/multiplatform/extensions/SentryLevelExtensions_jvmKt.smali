.class public abstract Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final a(Lio/sentry/kotlin/multiplatform/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt$WhenMappings;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p0, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    .line 27
    sget-object p0, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final b(Lio/sentry/SentryLevel;)Lio/sentry/kotlin/multiplatform/SentryLevel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt$WhenMappings;->b:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p0, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    .line 27
    sget-object p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->FATAL:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->ERROR:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->WARNING:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    sget-object p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->INFO:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    sget-object p0, Lio/sentry/kotlin/multiplatform/SentryLevel;->DEBUG:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 45
    .line 46
    return-object p0
.end method
