.class final Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;
.super Landroidx/compose/runtime/SnapshotFlowManagerImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;,
        Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;,
        Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;
    }
.end annotation


# instance fields
.field public final b:Landroidx/collection/MutableScatterMap;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/collection/MutableScatterMap;

.field public final e:Lp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterMap;

    .line 23
    .line 24
    new-instance v0, Landroidx/compose/runtime/e;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/e;-><init>(Landroidx/compose/runtime/SnapshotFlowManagerImpl;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->d(Lkotlin/jvm/functions/Function2;)Lp;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->e:Lp;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/channels/SendChannel;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;-><init>(Lkotlinx/coroutines/channels/SendChannel;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;

    .line 18
    .line 19
    instance-of v5, v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iget-object v5, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    .line 24
    .line 25
    move-object v6, v4

    .line 26
    check-cast v6, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 27
    .line 28
    iget-object v6, v6, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 31
    .line 32
    iget-object v4, v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->b:Lkotlinx/coroutines/channels/SendChannel;

    .line 33
    .line 34
    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    instance-of v5, v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget-object v5, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    .line 45
    .line 46
    check-cast v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;

    .line 47
    .line 48
    iget-object v4, v4, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$RemoveScope;->a:Lkotlinx/coroutines/channels/SendChannel;

    .line 49
    .line 50
    invoke-static {v5, v4}, Landroidx/compose/runtime/collection/ScopeMap;->d(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    iget-object p0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    monitor-exit v0

    .line 70
    throw p0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->e:Lp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->h()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public final d(Lkotlinx/coroutines/channels/SendChannel;)Lkotlin/jvm/functions/Function1;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/runtime/d;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Landroidx/compose/runtime/d;-><init>(Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Lkotlinx/coroutines/channels/SendChannel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->j(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-gez p0, :cond_0

    .line 21
    .line 22
    not-int p0, p0

    .line 23
    :cond_0
    iget-object v2, v0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v3, v2, p0

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p1, v0, p0

    .line 30
    .line 31
    aput-object v1, v2, p0

    .line 32
    .line 33
    :cond_1
    return-object v1
.end method

.method public final e(Lkotlinx/coroutines/channels/Channel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->a(Lkotlinx/coroutines/channels/SendChannel;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
