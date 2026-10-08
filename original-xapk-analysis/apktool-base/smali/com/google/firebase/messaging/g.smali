.class public final synthetic Lcom/google/firebase/messaging/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/messaging/g;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/messaging/g;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/messaging/g;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/g;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->k:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lcom/google/firebase/messaging/RequestDeduplicator;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/firebase/messaging/g;->l:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v0, v1, Lcom/google/firebase/messaging/RequestDeduplicator;->b:Landroidx/collection/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    move-object p0, v0

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->k:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/google/firebase/messaging/g;->l:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->k()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/firebase/messaging/GmsRegistrationClient;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->g()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/google/firebase/installations/InstallationTokenResult;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v1, v0, Lcom/google/firebase/messaging/GmsRegistrationClient;->c:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 61
    .line 62
    check-cast v1, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/firebase/installations/FirebaseInstallations;->c()Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/google/firebase/messaging/f;

    .line 69
    .line 70
    invoke-direct {v2, v0, p1}, Lcom/google/firebase/messaging/f;-><init>(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/tasks/Task;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_0
    return-object p0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->k:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/google/firebase/messaging/g;->l:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->k()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    invoke-static {p1}, Lcom/google/firebase/messaging/GmsRegistrationClient;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->g()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroid/util/Pair;

    .line 106
    .line 107
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 108
    .line 109
    move-object v6, v1

    .line 110
    check-cast v6, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->g()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/util/Pair;

    .line 117
    .line 118
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    move-object v7, p1

    .line 121
    check-cast v7, Ljava/lang/String;

    .line 122
    .line 123
    iget-object p1, v0, Lcom/google/firebase/messaging/GmsRegistrationClient;->b:Lcom/google/firebase/FirebaseApp;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 126
    .line 127
    .line 128
    iget-object v1, p1, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 129
    .line 130
    iget-object v5, v1, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 133
    .line 134
    .line 135
    iget-object v4, v1, Lcom/google/firebase/FirebaseOptions;->b:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/google/firebase/messaging/Metadata;->b(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    new-instance v2, Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    .line 142
    .line 143
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/cloudmessaging/RegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, v0, Lcom/google/firebase/messaging/GmsRegistrationClient;->a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/cloudmessaging/zzm;->c(Lcom/google/android/gms/cloudmessaging/RegisterRequest;)Lcom/google/android/gms/tasks/Task;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v0, Ly8;

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-direct {v0, v6, v1}, Ly8;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :goto_1
    return-object p0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
