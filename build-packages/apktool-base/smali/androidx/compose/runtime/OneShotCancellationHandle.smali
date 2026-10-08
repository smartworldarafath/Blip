.class public final Landroidx/compose/runtime/OneShotCancellationHandle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/CancellationHandle;


# instance fields
.field public final j:Ln1;

.field public final k:Landroidx/compose/runtime/internal/AtomicInt;


# direct methods
.method public constructor <init>(Ln1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->j:Ln1;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/runtime/internal/AtomicInt;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->k:Landroidx/compose/runtime/internal/AtomicInt;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->k:Landroidx/compose/runtime/internal/AtomicInt;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/OneShotCancellationHandle;->j:Ln1;

    .line 11
    .line 12
    invoke-virtual {p0}, Ln1;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
