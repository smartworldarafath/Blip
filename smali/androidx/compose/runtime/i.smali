.class public final synthetic Landroidx/compose/runtime/i;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/i;->j:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/i;->j:Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object v0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 33
    .line 34
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-nez v1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const-string p0, "workingSoleWatchedObject must be null when workingWatchSet is non-null"

    .line 55
    .line 56
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method
