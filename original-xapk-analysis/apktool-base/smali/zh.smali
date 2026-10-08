.class public final synthetic Lzh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic k:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzh;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 5
    .line 6
    iput-object p2, p0, Lzh;->k:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 7
    .line 8
    iput p3, p0, Lzh;->l:I

    .line 9
    .line 10
    iput-object p4, p0, Lzh;->m:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lzh;->k:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 2
    .line 3
    iget v1, p0, Lzh;->l:I

    .line 4
    .line 5
    iget-object v2, p0, Lzh;->m:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object p0, p0, Lzh;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->f:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 10
    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 12
    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v5, Lp;

    .line 17
    .line 18
    const/16 v6, 0x14

    .line 19
    .line 20
    invoke-direct {v5, v6, v4}, Lp;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v4, v3

    .line 24
    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->a:Landroid/content/Context;

    .line 30
    .line 31
    const-string v5, "connectivity"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance v4, Lai;

    .line 58
    .line 59
    invoke-direct {v4, p0, v0, v1}, Lai;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V

    .line 60
    .line 61
    .line 62
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    :try_start_1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 86
    .line 87
    .line 88
    throw p0
.end method
