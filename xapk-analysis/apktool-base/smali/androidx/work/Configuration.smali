.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Landroidx/work/SystemClock;

.field public final e:Landroidx/work/DefaultWorkerFactory;

.field public final f:Landroidx/work/NoOpInputMergerFactory;

.field public final g:Landroidx/work/impl/DefaultRunnableScheduler;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Landroidx/work/ConfigurationKt;->a(Z)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/work/Configuration;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/work/Configuration;->b:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Landroidx/work/ConfigurationKt;->a(Z)Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/work/Configuration;->c:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v0, Landroidx/work/SystemClock;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 28
    .line 29
    sget-object v0, Landroidx/work/DefaultWorkerFactory;->a:Landroidx/work/DefaultWorkerFactory;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/work/Configuration;->e:Landroidx/work/DefaultWorkerFactory;

    .line 32
    .line 33
    sget-object v0, Landroidx/work/NoOpInputMergerFactory;->a:Landroidx/work/NoOpInputMergerFactory;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/work/Configuration;->f:Landroidx/work/NoOpInputMergerFactory;

    .line 36
    .line 37
    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 38
    .line 39
    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/work/Configuration;->g:Landroidx/work/impl/DefaultRunnableScheduler;

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    iput v0, p0, Landroidx/work/Configuration;->h:I

    .line 46
    .line 47
    const v0, 0x7fffffff

    .line 48
    .line 49
    .line 50
    iput v0, p0, Landroidx/work/Configuration;->i:I

    .line 51
    .line 52
    const/16 v0, 0x14

    .line 53
    .line 54
    iput v0, p0, Landroidx/work/Configuration;->k:I

    .line 55
    .line 56
    const/16 v0, 0x8

    .line 57
    .line 58
    iput v0, p0, Landroidx/work/Configuration;->j:I

    .line 59
    .line 60
    iput-boolean p1, p0, Landroidx/work/Configuration;->l:Z

    .line 61
    .line 62
    new-instance p1, Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Landroidx/work/Configuration;->m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 68
    .line 69
    return-void
.end method
