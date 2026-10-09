.class final Landroidx/work/impl/SynchronizedStartStopTokensImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/work/impl/StartStopTokens;


# instance fields
.field public final a:Landroidx/work/impl/StartStopTokens;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/StartStopTokens;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->a:Landroidx/work/impl/StartStopTokens;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->a:Landroidx/work/impl/StartStopTokens;

    .line 5
    .line 6
    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokensImpl;->a(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0
.end method

.method public final b(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->a:Landroidx/work/impl/StartStopTokens;

    .line 5
    .line 6
    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/work/impl/StartStopTokensImpl;->a:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0
.end method

.method public final c(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->b:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->a:Landroidx/work/impl/StartStopTokens;

    .line 8
    .line 9
    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokensImpl;->c(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method public final remove(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->b:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/SynchronizedStartStopTokensImpl;->a:Landroidx/work/impl/StartStopTokens;

    .line 8
    .line 9
    check-cast p0, Landroidx/work/impl/StartStopTokensImpl;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokensImpl;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method
