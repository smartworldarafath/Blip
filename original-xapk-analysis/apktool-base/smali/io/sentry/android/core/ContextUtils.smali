.class public abstract Lio/sentry/android/core/ContextUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ContextUtils$SideLoadedInfo;,
        Lio/sentry/android/core/ContextUtils$SplitApksInfo;
    }
.end annotation


# static fields
.field public static final a:Lio/sentry/android/core/util/AndroidLazyEvaluator;

.field public static final b:Lio/sentry/android/core/util/AndroidLazyEvaluator;

.field public static final c:Lio/sentry/android/core/util/AndroidLazyEvaluator;

.field public static final d:Lio/sentry/android/core/util/AndroidLazyEvaluator;

.field public static final e:Lio/sentry/android/core/util/AndroidLazyEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 2
    .line 3
    new-instance v1, Lio/sentry/android/core/a;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lio/sentry/android/core/ContextUtils;->a:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 13
    .line 14
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 15
    .line 16
    new-instance v1, Lio/sentry/android/core/a;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lio/sentry/android/core/ContextUtils;->b:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 26
    .line 27
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 28
    .line 29
    new-instance v1, Lio/sentry/android/core/a;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lio/sentry/android/core/ContextUtils;->c:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 39
    .line 40
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 41
    .line 42
    new-instance v1, Lio/sentry/android/core/a;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lio/sentry/android/core/ContextUtils;->d:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 52
    .line 53
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 54
    .line 55
    new-instance v1, Lio/sentry/android/core/a;

    .line 56
    .line 57
    const/4 v2, 0x6

    .line 58
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lio/sentry/android/core/ContextUtils;->e:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object p0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const-string v2, "Error getting device family."

    .line 18
    .line 19
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 3

    .line 1
    const-string v0, "Error getting MemoryInfo."

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "activity"

    .line 5
    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/ActivityManager;

    .line 11
    .line 12
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p0, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :goto_0
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 35
    .line 36
    invoke-interface {p1, v2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public static c(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lio/sentry/android/core/ContextUtils;->a:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p1, Lio/sentry/android/core/ContextUtils;->b:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 26
    .line 27
    return-object p0
.end method

.method public static d()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 8
    .line 9
    .line 10
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/16 v2, 0x64

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :catchall_0
    :cond_0
    return v0
.end method
