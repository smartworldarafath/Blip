.class final Landroidx/work/CoroutineWorker$DeprecatedDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/CoroutineWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeprecatedDispatcher"
.end annotation


# static fields
.field public static final l:Landroidx/work/CoroutineWorker$DeprecatedDispatcher;

.field public static final m:Lkotlinx/coroutines/scheduling/DefaultScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->l:Landroidx/work/CoroutineWorker$DeprecatedDispatcher;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 9
    .line 10
    sput-object v0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->m:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object p0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->m:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->b1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d1(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->m:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0
.end method
