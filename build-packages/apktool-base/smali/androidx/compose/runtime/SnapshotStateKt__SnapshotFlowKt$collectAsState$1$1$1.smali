.class final Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/ProduceStateScope;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ProduceStateScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->j:Landroidx/compose/runtime/ProduceStateScope;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->j:Landroidx/compose/runtime/ProduceStateScope;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method
