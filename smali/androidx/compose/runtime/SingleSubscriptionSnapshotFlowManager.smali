.class final Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;
.super Landroidx/compose/runtime/SnapshotFlowManagerImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Landroidx/collection/MutableScatterSet;

.field public e:Landroidx/collection/MutableScatterSet;

.field public f:Lkotlinx/coroutines/channels/SendChannel;

.field public final g:Landroidx/compose/runtime/i;

.field public final h:Lp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/compose/runtime/i;-><init>(Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->g:Landroidx/compose/runtime/i;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/e;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/e;-><init>(Landroidx/compose/runtime/SnapshotFlowManagerImpl;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->d(Lkotlin/jvm/functions/Function2;)Lp;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->h:Lp;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/channels/SendChannel;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 23
    .line 24
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 25
    .line 26
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->h:Lp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp;->a()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v1

    .line 24
    throw p0
.end method

.method public final d(Lkotlinx/coroutines/channels/SendChannel;)Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->g:Landroidx/compose/runtime/i;

    .line 20
    .line 21
    return-object p0
.end method

.method public final e(Lkotlinx/coroutines/channels/Channel;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->e:Landroidx/collection/MutableScatterSet;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
