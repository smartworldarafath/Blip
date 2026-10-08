.class public abstract Lkotlinx/coroutines/sync/SemaphoreKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:I

.field public static final b:Lkotlinx/coroutines/internal/Symbol;

.field public static final c:Lkotlinx/coroutines/internal/Symbol;

.field public static final d:Lkotlinx/coroutines/internal/Symbol;

.field public static final e:Lkotlinx/coroutines/internal/Symbol;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->d(Ljava/lang/String;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->a:I

    .line 12
    .line 13
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 14
    .line 15
    const-string v1, "PERMIT"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 21
    .line 22
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 23
    .line 24
    const-string v1, "TAKEN"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->c:Lkotlinx/coroutines/internal/Symbol;

    .line 30
    .line 31
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 32
    .line 33
    const-string v1, "BROKEN"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 39
    .line 40
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 41
    .line 42
    const-string v1, "CANCELLED"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->e:Lkotlinx/coroutines/internal/Symbol;

    .line 48
    .line 49
    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    .line 50
    .line 51
    const/16 v1, 0x10

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->d(Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->f:I

    .line 58
    .line 59
    return-void
.end method

.method public static a(I)Lkotlinx/coroutines/sync/Semaphore;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
