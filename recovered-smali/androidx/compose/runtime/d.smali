.class public final synthetic Landroidx/compose/runtime/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

.field public final synthetic k:Lkotlinx/coroutines/channels/SendChannel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Lkotlinx/coroutines/channels/SendChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/d;->j:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/d;->k:Lkotlinx/coroutines/channels/SendChannel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/d;->j:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/d;->k:Lkotlinx/coroutines/channels/SendChannel;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method
