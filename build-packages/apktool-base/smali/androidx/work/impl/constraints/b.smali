.class public final synthetic Landroidx/work/impl/constraints/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lec;

.field public final synthetic k:Landroid/net/ConnectivityManager;


# direct methods
.method public synthetic constructor <init>(Lec;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/constraints/b;->j:Lec;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/constraints/b;->k:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/b;->j:Lec;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/work/impl/constraints/b;->k:Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    sget-object v1, Landroidx/work/impl/constraints/SharedNetworkCallback;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v2, Landroidx/work/impl/constraints/SharedNetworkCallback;->c:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v2, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "NetworkRequestConstraintController unregister shared callback"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Landroidx/work/impl/constraints/SharedNetworkCallback;->a:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    sput-object p0, Landroidx/work/impl/constraints/SharedNetworkCallback;->f:Ljava/lang/Boolean;

    .line 37
    .line 38
    sput-object p0, Landroidx/work/impl/constraints/SharedNetworkCallback;->d:Landroid/net/NetworkCapabilities;

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    sput-boolean p0, Landroidx/work/impl/constraints/SharedNetworkCallback;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v1

    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0

    .line 50
    :goto_1
    monitor-exit v1

    .line 51
    throw p0
.end method
