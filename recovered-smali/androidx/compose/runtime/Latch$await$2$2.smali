.class final Landroidx/compose/runtime/Latch$await$2$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/Latch;

.field public final synthetic k:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Latch;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->j:Landroidx/compose/runtime/Latch;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->j:Landroidx/compose/runtime/Latch;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->a:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p1, p1, Landroidx/compose/runtime/Latch;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method
