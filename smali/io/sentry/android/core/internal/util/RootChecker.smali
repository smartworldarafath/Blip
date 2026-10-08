.class public final Lio/sentry/android/core/internal/util/RootChecker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final g:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/sentry/android/core/BuildInfoProvider;

.field public final c:Lio/sentry/ILogger;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/android/core/internal/util/RootChecker;->g:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 12

    .line 1
    const-string v10, "/su/bin"

    .line 2
    .line 3
    const-string v11, "/system/xbin/daemonsu"

    .line 4
    .line 5
    const-string v0, "/sbin/su"

    .line 6
    .line 7
    const-string v1, "/data/local/xbin/su"

    .line 8
    .line 9
    const-string v2, "/system/bin/su"

    .line 10
    .line 11
    const-string v3, "/system/xbin/su"

    .line 12
    .line 13
    const-string v4, "/data/local/bin/su"

    .line 14
    .line 15
    const-string v5, "/system/app/Superuser.apk"

    .line 16
    .line 17
    const-string v6, "/system/sd/xbin/su"

    .line 18
    .line 19
    const-string v7, "/system/bin/failsafe/su"

    .line 20
    .line 21
    const-string v8, "/data/local/su"

    .line 22
    .line 23
    const-string v9, "/su/bin/su"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v5, "eu.chainfire.supersu"

    .line 30
    .line 31
    const-string v6, "com.noshufou.android.su"

    .line 32
    .line 33
    const-string v1, "com.devadvance.rootcloak"

    .line 34
    .line 35
    const-string v2, "com.devadvance.rootcloakplus"

    .line 36
    .line 37
    const-string v3, "com.koushikdutta.superuser"

    .line 38
    .line 39
    const-string v4, "com.thirdparty.superuser"

    .line 40
    .line 41
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lio/sentry/android/core/internal/util/RootChecker;->a:Landroid/content/Context;

    .line 53
    .line 54
    const-string p1, "The BuildInfoProvider is required."

    .line 55
    .line 56
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Lio/sentry/android/core/internal/util/RootChecker;->b:Lio/sentry/android/core/BuildInfoProvider;

    .line 60
    .line 61
    const-string p1, "The Logger is required."

    .line 62
    .line 63
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lio/sentry/android/core/internal/util/RootChecker;->c:Lio/sentry/ILogger;

    .line 67
    .line 68
    iput-object v0, p0, Lio/sentry/android/core/internal/util/RootChecker;->d:[Ljava/lang/String;

    .line 69
    .line 70
    iput-object v1, p0, Lio/sentry/android/core/internal/util/RootChecker;->e:[Ljava/lang/String;

    .line 71
    .line 72
    const-string p1, "The Runtime is required."

    .line 73
    .line 74
    invoke-static {v2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lio/sentry/android/core/internal/util/RootChecker;->f:Ljava/lang/Runtime;

    .line 78
    .line 79
    return-void
.end method
