.class public final Lcom/google/android/gms/common/api/internal/zabk;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final d:Ljava/util/LinkedList;

.field public final e:Lcom/google/android/gms/common/api/Api$Client;

.field public final f:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final g:Lcom/google/android/gms/common/api/internal/zaaa;

.field public final h:Ljava/util/HashSet;

.field public final i:Ljava/util/HashMap;

.field public final j:I

.field public final k:Lcom/google/android/gms/common/api/internal/zacm;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:Lcom/google/android/gms/common/ConnectionResult;

.field public o:I

.field public final synthetic p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->d:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->h:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->m:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->o:I

    .line 39
    .line 40
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->a()Lcom/google/android/gms/common/internal/ClientSettings$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v5, Lcom/google/android/gms/common/internal/ClientSettings;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->a:Landroidx/collection/ArraySet;

    .line 53
    .line 54
    iget-object v3, v1, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->b:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v5, v2, v3, v1}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->d:Lcom/google/android/gms/common/api/Api;

    .line 62
    .line 63
    iget-object v2, v1, Lcom/google/android/gms/common/api/Api;->a:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v6, p2, Lcom/google/android/gms/common/api/GoogleApi;->e:Lcom/google/android/gms/common/api/Api$ApiOptions;

    .line 69
    .line 70
    iget-object v3, p2, Lcom/google/android/gms/common/api/GoogleApi;->a:Landroid/content/Context;

    .line 71
    .line 72
    move-object v8, p0

    .line 73
    move-object v7, p0

    .line 74
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->c:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    instance-of v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 83
    .line 84
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move-object v2, p0

    .line 88
    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 89
    .line 90
    iput-object v1, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->s:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->b:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    instance-of v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    move-object v2, p0

    .line 102
    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 103
    .line 104
    iput-object v1, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->r:Ljava/lang/String;

    .line 105
    .line 106
    :cond_2
    :goto_1
    iput-object p0, v7, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 107
    .line 108
    iget-object v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 109
    .line 110
    iput-object v1, v7, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 111
    .line 112
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaaa;

    .line 113
    .line 114
    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaaa;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v1, v7, Lcom/google/android/gms/common/api/internal/zabk;->g:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 118
    .line 119
    iget v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->g:I

    .line 120
    .line 121
    iput v1, v7, Lcom/google/android/gms/common/api/internal/zabk;->j:I

    .line 122
    .line 123
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_3

    .line 128
    .line 129
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 132
    .line 133
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacm;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->a()Lcom/google/android/gms/common/internal/ClientSettings$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    new-instance v1, Lcom/google/android/gms/common/internal/ClientSettings;

    .line 140
    .line 141
    iget-object v2, p2, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->a:Landroidx/collection/ArraySet;

    .line 142
    .line 143
    iget-object v3, p2, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->b:Ljava/lang/String;

    .line 144
    .line 145
    iget-object p2, p2, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->c:Ljava/lang/String;

    .line 146
    .line 147
    invoke-direct {v1, v2, v3, p2}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/zacm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/base/zao;Lcom/google/android/gms/common/internal/ClientSettings;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, v7, Lcom/google/android/gms/common/api/internal/zabk;->k:Lcom/google/android/gms/common/api/internal/zacm;

    .line 154
    .line 155
    return-void

    .line 156
    :cond_3
    iput-object v0, v7, Lcom/google/android/gms/common/api/internal/zabk;->k:Lcom/google/android/gms/common/api/internal/zacm;

    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->o:Lcom/google/android/gms/common/ConnectionResult;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 21
    .line 22
    const/16 v2, 0xb

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 30
    .line 31
    const/16 v1, 0x9

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->f()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->k()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lio/sentry/d;->i()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->g:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v5, "The connection to Google Play services was lost"

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-ne p1, v1, :cond_0

    .line 33
    .line 34
    const-string p1, " due to service disconnection."

    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v5, 0x3

    .line 41
    if-ne p1, v5, :cond_1

    .line 42
    .line 43
    const-string p1, " due to dead object exception."

    .line 44
    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const-string p1, " Last reason for disconnect: "

    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 63
    .line 64
    const/16 v4, 0x14

    .line 65
    .line 66
    invoke-direct {v2, v4, p1, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/common/api/internal/zaaa;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 77
    .line 78
    const/16 v2, 0x9

    .line 79
    .line 80
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-wide/16 v3, 0x1388

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 90
    .line 91
    const/16 v2, 0xb

    .line 92
    .line 93
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-wide/32 v2, 0x1d4c0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    .line 102
    .line 103
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->p:Lcom/google/android/gms/common/internal/zao;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zao;->a:Landroid/util/SparseIntArray;

    .line 106
    .line 107
    monitor-enter p1

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 109
    .line 110
    .line 111
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lio/sentry/d;->i()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p0
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->b(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabh;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zabh;-><init>(Lcom/google/android/gms/common/api/internal/zabk;I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->z:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    monitor-exit p1

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->a()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabg;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zabg;-><init>(Lcom/google/android/gms/common/api/internal/zabk;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->d:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/google/android/gms/common/api/internal/zai;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 22
    .line 23
    check-cast v5, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->h(Lcom/google/android/gms/common/api/internal/zai;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/zai;)Z
    .locals 14

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zac;

    .line 2
    .line 3
    const-string v1, "DeadObjectException thrown while running ApiCallRunner."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->g:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/common/api/internal/zai;->c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zai;->d(Lcom/google/android/gms/common/api/internal/zabk;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :catch_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabk;->c(I)V

    .line 24
    .line 25
    .line 26
    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/google/android/gms/common/api/internal/zac;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->f(Lcom/google/android/gms/common/api/internal/zabk;)[Lcom/google/android/gms/common/Feature;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v3, :cond_7

    .line 42
    .line 43
    array-length v6, v3

    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 48
    .line 49
    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 50
    .line 51
    iget-object v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:Lcom/google/android/gms/common/internal/zzj;

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    move-object v6, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzj;->k:[Lcom/google/android/gms/common/Feature;

    .line 58
    .line 59
    :goto_0
    if-nez v6, :cond_3

    .line 60
    .line 61
    new-array v6, v4, [Lcom/google/android/gms/common/Feature;

    .line 62
    .line 63
    :cond_3
    new-instance v7, Landroidx/collection/ArrayMap;

    .line 64
    .line 65
    array-length v8, v6

    .line 66
    invoke-direct {v7, v8}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 67
    .line 68
    .line 69
    move v8, v4

    .line 70
    :goto_1
    array-length v9, v6

    .line 71
    if-ge v8, v9, :cond_4

    .line 72
    .line 73
    aget-object v9, v6, v8

    .line 74
    .line 75
    iget-object v10, v9, Lcom/google/android/gms/common/Feature;->j:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v9}, Lcom/google/android/gms/common/Feature;->a()J

    .line 78
    .line 79
    .line 80
    move-result-wide v11

    .line 81
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v7, v10, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    array-length v6, v3

    .line 92
    move v8, v4

    .line 93
    :goto_2
    if-ge v8, v6, :cond_7

    .line 94
    .line 95
    aget-object v9, v3, v8

    .line 96
    .line 97
    iget-object v10, v9, Lcom/google/android/gms/common/Feature;->j:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v7, v10}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Ljava/lang/Long;

    .line 104
    .line 105
    if-eqz v10, :cond_6

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v10

    .line 111
    invoke-virtual {v9}, Lcom/google/android/gms/common/Feature;->a()J

    .line 112
    .line 113
    .line 114
    move-result-wide v12

    .line 115
    cmp-long v10, v10, v12

    .line 116
    .line 117
    if-gez v10, :cond_5

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    :goto_3
    move-object v5, v9

    .line 124
    :cond_7
    :goto_4
    if-nez v5, :cond_8

    .line 125
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->g:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 129
    .line 130
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/common/api/internal/zai;->c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    .line 135
    .line 136
    .line 137
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zai;->d(Lcom/google/android/gms/common/api/internal/zabk;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :catch_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabk;->c(I)V

    .line 142
    .line 143
    .line 144
    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 145
    .line 146
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v2

    .line 150
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object v1, v5, Lcom/google/android/gms/common/Feature;->j:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->a()J

    .line 163
    .line 164
    .line 165
    move-result-wide v6

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    add-int/lit8 v3, v3, 0x35

    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    add-int/2addr v3, v8

    .line 185
    add-int/lit8 v3, v3, 0x2

    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    add-int/2addr v3, v8

    .line 194
    add-int/lit8 v3, v3, 0x2

    .line 195
    .line 196
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .line 198
    .line 199
    const-string v3, " could not execute call because it requires feature ("

    .line 200
    .line 201
    const-string v8, ", "

    .line 202
    .line 203
    invoke-static {v9, p1, v3, v1, v8}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p1, ")."

    .line 210
    .line 211
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string v1, "GoogleApiManager"

    .line 219
    .line 220
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 224
    .line 225
    iget-boolean v3, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->w:Z

    .line 226
    .line 227
    if-eqz v3, :cond_c

    .line 228
    .line 229
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->g(Lcom/google/android/gms/common/api/internal/zabk;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_c

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->h(Lcom/google/android/gms/common/api/internal/zabk;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 240
    .line 241
    new-instance v3, Lcom/google/android/gms/common/api/internal/zabl;

    .line 242
    .line 243
    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/common/api/internal/zabl;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->m:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    const-wide/16 v7, 0x1388

    .line 253
    .line 254
    const/16 v9, 0xf

    .line 255
    .line 256
    if-ltz v6, :cond_9

    .line 257
    .line 258
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabl;

    .line 263
    .line 264
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 265
    .line 266
    invoke-virtual {v0, v9, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 270
    .line 271
    invoke-static {v0, v9, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 276
    .line 277
    invoke-virtual {p1, p0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    .line 279
    .line 280
    goto/16 :goto_5

    .line 281
    .line 282
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 286
    .line 287
    invoke-static {v2, v9, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    iget-object v6, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 292
    .line 293
    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 294
    .line 295
    .line 296
    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 297
    .line 298
    const/16 v6, 0x10

    .line 299
    .line 300
    invoke-static {v2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 305
    .line 306
    const-wide/32 v6, 0x1d4c0

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    .line 311
    .line 312
    new-instance v8, Lcom/google/android/gms/common/ConnectionResult;

    .line 313
    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    const/4 v9, 0x1

    .line 319
    const/4 v10, 0x2

    .line 320
    const/4 v11, 0x0

    .line 321
    const/4 v12, 0x0

    .line 322
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v8}, Lcom/google/android/gms/common/api/internal/zabk;->d(Lcom/google/android/gms/common/ConnectionResult;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    const-string v2, ", version: "

    .line 330
    .line 331
    if-nez v0, :cond_a

    .line 332
    .line 333
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->j:I

    .line 334
    .line 335
    invoke-virtual {p1, v8, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->f(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    if-eqz p0, :cond_b

    .line 340
    .line 341
    iget-object p0, v5, Lcom/google/android/gms/common/Feature;->j:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->a()J

    .line 344
    .line 345
    .line 346
    move-result-wide v5

    .line 347
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    add-int/lit8 p1, p1, 0x37

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    add-int/2addr p1, v0

    .line 368
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .line 370
    .line 371
    const-string p1, "Notification displayed for missing feature: "

    .line 372
    .line 373
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_a
    iget-object p0, v5, Lcom/google/android/gms/common/Feature;->j:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->a()J

    .line 396
    .line 397
    .line 398
    move-result-wide v5

    .line 399
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    add-int/lit8 p1, p1, 0x3d

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    add-int/2addr p1, v0

    .line 420
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    .line 422
    .line 423
    const-string p1, "A dialog should be displayed for missing feature: "

    .line 424
    .line 425
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    :cond_b
    :goto_5
    return v4

    .line 445
    :cond_c
    new-instance p0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    .line 446
    .line 447
    invoke-direct {p0, v5}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zai;->b(Ljava/lang/Exception;)V

    .line 451
    .line 452
    .line 453
    return v2
.end method

.method public final i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_1
    if-eq v2, v0, :cond_6

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->d:Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/google/android/gms/common/api/internal/zai;

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    iget v1, v0, Lcom/google/android/gms/common/api/internal/zai;->a:I

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    :cond_3
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zai;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/zai;->b(Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    return-void

    .line 59
    :cond_6
    const-string p0, "Status XOR exception should be null"

    .line 60
    .line 61
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final j(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 8
    .line 9
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 13
    .line 14
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-wide v2, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:J

    .line 19
    .line 20
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final l(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->h:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->o:Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 28
    .line 29
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->b:Lcom/google/android/gms/common/internal/zzs;

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    :cond_0
    const-string p0, "Failed to connect when checking package"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    throw p0

    .line 49
    :cond_2
    invoke-static {}, Lio/sentry/d;->i()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final m(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x19

    .line 33
    .line 34
    add-int/2addr v3, v4

    .line 35
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const-string v3, "onSignInFailed for "

    .line 39
    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " with "

    .line 47
    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->k:Lcom/google/android/gms/common/api/internal/zacm;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->d()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->p:Lcom/google/android/gms/common/internal/zao;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/google/android/gms/common/internal/zao;->a:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    monitor-enter v2

    .line 36
    :try_start_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 37
    .line 38
    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 44
    .line 45
    instance-of v2, v2, Lcom/google/android/gms/common/internal/service/zau;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 51
    .line 52
    const/16 v4, 0x18

    .line 53
    .line 54
    if-eq v2, v4, :cond_1

    .line 55
    .line 56
    iput-boolean v3, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Z

    .line 57
    .line 58
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 59
    .line 60
    const/16 v4, 0x13

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-wide/32 v5, 0x493e0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 73
    .line 74
    const/4 v4, 0x4

    .line 75
    if-ne v2, v4, :cond_2

    .line 76
    .line 77
    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->y:Lcom/google/android/gms/common/api/Status;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    const/16 v4, 0x19

    .line 84
    .line 85
    if-ne v2, v4, :cond_3

    .line 86
    .line 87
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 88
    .line 89
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->d:Ljava/util/LinkedList;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    if-eqz p2, :cond_5

    .line 109
    .line 110
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/common/api/internal/zabk;->i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    iget-boolean p2, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->w:Z

    .line 121
    .line 122
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 123
    .line 124
    if-eqz p2, :cond_a

    .line 125
    .line 126
    invoke-static {v4, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p0, p2, v1, v3}, Lcom/google/android/gms/common/api/internal/zabk;->i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_6

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->d(Lcom/google/android/gms/common/ConnectionResult;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_9

    .line 145
    .line 146
    iget p2, p0, Lcom/google/android/gms/common/api/internal/zabk;->j:I

    .line 147
    .line 148
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->f(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_9

    .line 153
    .line 154
    iget p2, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 155
    .line 156
    const/16 v1, 0x12

    .line 157
    .line 158
    if-ne p2, v1, :cond_7

    .line 159
    .line 160
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 161
    .line 162
    :cond_7
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 163
    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 167
    .line 168
    const/16 p1, 0x9

    .line 169
    .line 170
    invoke-static {p0, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-wide/16 v0, 0x1388

    .line 175
    .line 176
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_8
    invoke-static {v4, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 185
    .line 186
    .line 187
    :cond_9
    :goto_0
    return-void

    .line 188
    :cond_a
    invoke-static {v4, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :catchall_0
    move-exception p0

    .line 197
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    throw p0
.end method

.method public final o(Lcom/google/android/gms/common/api/internal/zac;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->d:Ljava/util/LinkedList;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->h(Lcom/google/android/gms/common/api/internal/zai;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->k()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p1, Lcom/google/android/gms/common/ConnectionResult;->l:Landroid/app/PendingIntent;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->q()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->x:Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->g:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/api/internal/zaaa;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-array v2, v3, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 32
    .line 33
    array-length v2, v1

    .line 34
    :goto_0
    if-ge v3, v2, :cond_0

    .line 35
    .line 36
    aget-object v4, v1, v3

    .line 37
    .line 38
    new-instance v4, Lcom/google/android/gms/common/api/internal/zah;

    .line 39
    .line 40
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 41
    .line 42
    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/internal/zad;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->o(Lcom/google/android/gms/common/api/internal/zac;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 65
    .line 66
    check-cast v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabj;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zabj;-><init>(Lcom/google/android/gms/common/api/internal/zabk;)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lcom/google/android/gms/common/api/internal/zabi;

    .line 80
    .line 81
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zabi;-><init>(Lcom/google/android/gms/common/api/internal/zabj;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const-string v1, " is not available: "

    .line 9
    .line 10
    const-string v2, "The service for "

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 13
    .line 14
    move-object v4, v3

    .line 15
    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_6

    .line 22
    .line 23
    move-object v4, v3

    .line 24
    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    const/16 v5, 0xa

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    :try_start_0
    iget-object v7, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->p:Lcom/google/android/gms/common/internal/zao;

    .line 38
    .line 39
    iget-object v8, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/common/internal/zao;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 48
    .line 49
    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v4, "GoogleApiManager"

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    add-int/lit8 v8, v8, 0x23

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    add-int/2addr v8, v9

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabn;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 111
    .line 112
    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v2, 0x2

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-object v12, p0, Lcom/google/android/gms/common/api/internal/zabk;->k:Lcom/google/android/gms/common/api/internal/zacm;

    .line 123
    .line 124
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v12, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 128
    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->d()V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v10, v12, Lcom/google/android/gms/common/api/internal/zacm;->h:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 137
    .line 138
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, v10, Lcom/google/android/gms/common/internal/ClientSettings;->f:Ljava/lang/Integer;

    .line 147
    .line 148
    iget-object v7, v12, Lcom/google/android/gms/common/api/internal/zacm;->f:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 149
    .line 150
    iget-object v8, v12, Lcom/google/android/gms/common/api/internal/zacm;->d:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v0, v12, Lcom/google/android/gms/common/api/internal/zacm;->e:Landroid/os/Handler;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    iget-object v11, v10, Lcom/google/android/gms/common/internal/ClientSettings;->e:Lcom/google/android/gms/signin/SignInOptions;

    .line 159
    .line 160
    move-object v13, v12

    .line 161
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lcom/google/android/gms/signin/zae;

    .line 166
    .line 167
    iput-object v3, v12, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 168
    .line 169
    iput-object v1, v12, Lcom/google/android/gms/common/api/internal/zacm;->j:Lcom/google/android/gms/common/api/internal/zacl;

    .line 170
    .line 171
    iget-object v3, v12, Lcom/google/android/gms/common/api/internal/zacm;->g:Ljava/util/Set;

    .line 172
    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, v12, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 183
    .line 184
    check-cast v0, Lcom/google/android/gms/signin/internal/SignInClientImpl;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance v3, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    .line 190
    .line 191
    invoke-direct {v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    .line 192
    .line 193
    .line 194
    iput-object v3, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->i:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 195
    .line 196
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->p(ILandroid/os/IInterface;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_4
    :goto_0
    new-instance v3, Lcom/google/android/gms/common/api/internal/zacj;

    .line 201
    .line 202
    invoke-direct {v3, v12}, Lcom/google/android/gms/common/api/internal/zacj;-><init>(Lcom/google/android/gms/common/api/internal/zacm;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_1
    :try_start_1
    iput-object v1, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->i:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 209
    .line 210
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->p(ILandroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :catch_1
    move-exception v0

    .line 215
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 216
    .line 217
    invoke-direct {v1, v5, v6, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :goto_2
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 225
    .line 226
    invoke-direct {v1, v5, v6, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_3
    return-void
.end method
