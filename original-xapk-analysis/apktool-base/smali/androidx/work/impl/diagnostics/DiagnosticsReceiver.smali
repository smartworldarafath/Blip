.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DiagnosticsRcvr"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string p2, "Requesting diagnostics"

    .line 9
    .line 10
    sget-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0, p2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->a(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-class p1, Landroidx/work/impl/workers/DiagnosticsWorker;

    .line 23
    .line 24
    new-instance p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/work/WorkRequest$Builder;->a()Landroidx/work/OneTimeWorkRequest;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    new-instance p2, Landroidx/work/impl/WorkContinuationImpl;

    .line 44
    .line 45
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {p2, p0, v1, p1}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroidx/work/impl/WorkContinuationImpl;->a()Landroidx/work/Operation;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p1, "enqueue needs at least one WorkRequest."

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "WorkManager is not initialized"

    .line 69
    .line 70
    invoke-virtual {p1, v0, p2, p0}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
