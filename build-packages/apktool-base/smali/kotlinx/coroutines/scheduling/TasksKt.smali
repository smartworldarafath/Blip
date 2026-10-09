.class public abstract Lkotlinx/coroutines/scheduling/TasksKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static final f:Lkotlinx/coroutines/scheduling/NanoTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/internal/SystemPropsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "DefaultDispatcher"

    .line 10
    .line 11
    :cond_0
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v4, 0x1

    .line 14
    .line 15
    const-wide v6, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 21
    .line 22
    const-wide/32 v2, 0x186a0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->b(Ljava/lang/String;JJJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->b:J

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->a()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 36
    if-ge v0, v1, :cond_1

    .line 37
    .line 38
    move v0, v1

    .line 39
    :cond_1
    const/16 v1, 0x8

    .line 40
    .line 41
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 42
    .line 43
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->d(Ljava/lang/String;II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->c:I

    .line 48
    .line 49
    const v0, 0x1ffffe

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    const-string v2, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 54
    .line 55
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->d(Ljava/lang/String;II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->d:I

    .line 60
    .line 61
    const-wide/16 v4, 0x1

    .line 62
    .line 63
    const-wide v6, 0x7fffffffffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 69
    .line 70
    const-wide/16 v2, 0x3c

    .line 71
    .line 72
    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->b(Ljava/lang/String;JJJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->e:J

    .line 83
    .line 84
    sget-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->a:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 85
    .line 86
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->f:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 87
    .line 88
    return-void
.end method
