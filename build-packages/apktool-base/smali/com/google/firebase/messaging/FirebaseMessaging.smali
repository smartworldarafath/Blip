.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;
    }
.end annotation


# static fields
.field public static l:Lcom/google/firebase/messaging/Store;

.field public static m:Lcom/google/firebase/inject/Provider;

.field public static n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/firebase/messaging/GmsRpc;

.field public final d:Lcom/google/firebase/messaging/GmsRegistrationClient;

.field public final e:Lcom/google/firebase/messaging/RequestDeduplicator;

.field public final f:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

.field public final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final h:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final i:Lcom/google/firebase/messaging/Metadata;

.field public final j:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq5;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lq5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/inject/Provider;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/events/Subscriber;)V
    .locals 22

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    new-instance v11, Lcom/google/firebase/messaging/Metadata;

    .line 6
    .line 7
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v4, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v11, v0}, Lcom/google/firebase/messaging/Metadata;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v10, Lcom/google/firebase/messaging/GmsRpc;

    .line 16
    .line 17
    move-object/from16 v9, p2

    .line 18
    .line 19
    move-object v7, v4

    .line 20
    move-object v6, v10

    .line 21
    move-object v8, v11

    .line 22
    move-object/from16 v10, p3

    .line 23
    .line 24
    move-object/from16 v11, p4

    .line 25
    .line 26
    invoke-direct/range {v6 .. v11}, Lcom/google/firebase/messaging/GmsRpc;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    .line 27
    .line 28
    .line 29
    move-object v10, v6

    .line 30
    move-object v9, v11

    .line 31
    move-object v11, v8

    .line 32
    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 33
    .line 34
    const-string v2, "Firebase-Messaging-Task"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v12, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 44
    .line 45
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 46
    .line 47
    const-string v3, "Firebase-Messaging-Init"

    .line 48
    .line 49
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v13, 0x1

    .line 53
    invoke-direct {v12, v13, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 54
    .line 55
    .line 56
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    .line 58
    new-instance v20, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 59
    .line 60
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 64
    .line 65
    const-string v3, "Firebase-Messaging-File-Io"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    const/16 v16, 0x1

    .line 72
    .line 73
    const-wide/16 v17, 0x1e

    .line 74
    .line 75
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 76
    .line 77
    move-object/from16 v21, v2

    .line 78
    .line 79
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-boolean v15, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    .line 86
    .line 87
    sput-object p5, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/inject/Provider;

    .line 88
    .line 89
    iput-object v4, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/FirebaseApp;

    .line 90
    .line 91
    new-instance v2, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    .line 92
    .line 93
    move-object/from16 v3, p6

    .line 94
    .line 95
    invoke-direct {v2, v5, v3}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/events/Subscriber;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 101
    .line 102
    .line 103
    iget-object v7, v4, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 104
    .line 105
    iput-object v7, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 106
    .line 107
    new-instance v2, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;

    .line 108
    .line 109
    invoke-direct {v2}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v11, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/Metadata;

    .line 113
    .line 114
    iput-object v10, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/GmsRpc;

    .line 115
    .line 116
    iput-object v9, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 117
    .line 118
    new-instance v6, Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 119
    .line 120
    move-object v8, v4

    .line 121
    invoke-direct/range {v6 .. v11}, Lcom/google/firebase/messaging/GmsRegistrationClient;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/messaging/GmsRpc;Lcom/google/firebase/messaging/Metadata;)V

    .line 122
    .line 123
    .line 124
    iput-object v6, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 125
    .line 126
    new-instance v3, Lcom/google/firebase/messaging/RequestDeduplicator;

    .line 127
    .line 128
    invoke-direct {v3, v1}, Lcom/google/firebase/messaging/RequestDeduplicator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 129
    .line 130
    .line 131
    iput-object v3, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/RequestDeduplicator;

    .line 132
    .line 133
    iput-object v12, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 134
    .line 135
    iput-object v14, v5, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 138
    .line 139
    .line 140
    instance-of v1, v0, Landroid/app/Application;

    .line 141
    .line 142
    if-eqz v1, :cond_0

    .line 143
    .line 144
    check-cast v0, Landroid/app/Application;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v2, "Context "

    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "FirebaseMessaging"

    .line 170
    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-virtual {v6}, Lcom/google/firebase/messaging/GmsRegistrationClient;->b()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    new-instance v0, Lm8;

    .line 181
    .line 182
    invoke-direct {v0, v5}, Lm8;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 183
    .line 184
    .line 185
    move-object/from16 v1, p4

    .line 186
    .line 187
    check-cast v1, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->g(Lm8;)Lcom/google/firebase/installations/internal/FidListenerHandle;

    .line 190
    .line 191
    .line 192
    :cond_1
    new-instance v0, Lcom/google/firebase/messaging/b;

    .line 193
    .line 194
    invoke-direct {v0, v5, v15}, Lcom/google/firebase/messaging/b;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v12, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 201
    .line 202
    new-instance v0, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 203
    .line 204
    const-string v1, "Firebase-Messaging-Topics-Io"

    .line 205
    .line 206
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v13, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/google/firebase/messaging/k;

    .line 213
    .line 214
    move-object/from16 v4, p1

    .line 215
    .line 216
    move-object/from16 v6, p4

    .line 217
    .line 218
    move-object v1, v7

    .line 219
    move-object v3, v11

    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/k;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v0}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v1, Lcom/google/firebase/messaging/c;

    .line 228
    .line 229
    invoke-direct {v1, v5, v15}, Lcom/google/firebase/messaging/c;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 233
    .line 234
    .line 235
    new-instance v0, Lcom/google/firebase/messaging/b;

    .line 236
    .line 237
    invoke-direct {v0, v5, v13}, Lcom/google/firebase/messaging/b;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public static c(JLjava/lang/Runnable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 11
    .line 12
    const-string v3, "TAG"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-virtual {v1, p2, p0, p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;
    .locals 2

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/Store;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/messaging/Store;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/Store;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/Store;

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
    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/Store;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/firebase/FirebaseApp;->d:Lcom/google/firebase/components/ComponentRuntime;

    .line 10
    .line 11
    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 16
    .line 17
    const-string v1, "Firebase Messaging component is not present"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/Store$Token;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Lcom/google/firebase/messaging/Store$Token;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lcom/google/firebase/messaging/Store$Token;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/FirebaseApp;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/firebase/messaging/Metadata;->b(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/RequestDeduplicator;

    .line 21
    .line 22
    const-string v3, "Making new request for: "

    .line 23
    .line 24
    const-string v4, "Joining ongoing request for: "

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v5, v2, Lcom/google/firebase/messaging/RequestDeduplicator;->b:Landroidx/collection/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v5, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/google/android/gms/tasks/Task;

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    const-string p0, "FirebaseMessaging"

    .line 39
    .line 40
    invoke-static {p0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const-string p0, "FirebaseMessaging"

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_0
    monitor-exit v2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :try_start_1
    const-string v4, "FirebaseMessaging"

    .line 69
    .line 70
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    const-string v4, "FirebaseMessaging"

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/google/firebase/messaging/GmsRegistrationClient;->c()Lcom/google/android/gms/tasks/Task;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    new-instance v5, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 100
    .line 101
    const-string v6, "Firebase-Messaging-Task"

    .line 102
    .line 103
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    new-instance v6, Lcom/google/firebase/messaging/f;

    .line 111
    .line 112
    const/4 v7, 0x0

    .line 113
    invoke-direct {v6, v7, v3}, Lcom/google/firebase/messaging/f;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/tasks/Task;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 121
    .line 122
    new-instance v5, Lcom/google/firebase/messaging/e;

    .line 123
    .line 124
    invoke-direct {v5, p0, v1, v0}, Lcom/google/firebase/messaging/e;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/Store$Token;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    iget-object v0, v2, Lcom/google/firebase/messaging/RequestDeduplicator;->a:Ljava/util/concurrent/Executor;

    .line 132
    .line 133
    new-instance v3, Lcom/google/firebase/messaging/g;

    .line 134
    .line 135
    const/4 v4, 0x2

    .line 136
    invoke-direct {v3, v4, v2, v1}, Lcom/google/firebase/messaging/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tasks/Task;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iget-object p0, v2, Lcom/google/firebase/messaging/RequestDeduplicator;->b:Landroidx/collection/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {p0, v1, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    monitor-exit v2

    .line 149
    :goto_1
    :try_start_2
    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .line 155
    return-object p0

    .line 156
    :catch_0
    move-exception p0

    .line 157
    new-instance v0, Ljava/io/IOException;

    .line 158
    .line 159
    const-string v1, "FCM Registration failed!"

    .line 160
    .line 161
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    throw p0
.end method

.method public final b()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "API disabled. Please use {@link #unregister()} instead or enable this API by removing {@code <meta-data android:name=\"firebase_messaging_installation_id_enabled\" android:value=\"true\" />} from your app\'s manifest."

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/Store$Token;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 39
    .line 40
    const-string v2, "Firebase-Messaging-Network-Io"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/google/firebase/messaging/d;

    .line 50
    .line 51
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/d;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 58
    .line 59
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "[DEFAULT]"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final f()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "API disabled. Please use {@link #register()} instead or enable this API by removing {@code <meta-data android:name=\"firebase_messaging_installation_id_enabled\" android:value=\"true\" />} from your app\'s manifest."

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lf3;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    invoke-direct {v1, v2, p0, v0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 38
    .line 39
    return-object p0
.end method

.method public final g()Lcom/google/firebase/messaging/Store$Token;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/FirebaseApp;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/firebase/messaging/Metadata;->b(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/messaging/Store;->a:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    invoke-static {v1, p0}, Lcom/google/firebase/messaging/Store;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/google/firebase/messaging/Store$Token;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/Store$Token;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final h()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1d

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x3

    .line 12
    const-string v5, "FirebaseMessaging"

    .line 13
    .line 14
    if-lt v1, v2, :cond_3

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    const-class v1, Landroid/app/NotificationManager;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    .line 36
    invoke-static {v0}, Lbb;->i(Landroid/app/NotificationManager;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "com.google.android.gms"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string v0, "GMS core is set for proxying"

    .line 55
    .line 56
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/FirebaseApp;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/google/firebase/FirebaseApp;->d:Lcom/google/firebase/components/ComponentRuntime;

    .line 65
    .line 66
    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 67
    .line 68
    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->a()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/inject/Provider;

    .line 82
    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    :goto_0
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "error retrieving notification delegate for package "

    .line 90
    .line 91
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return v3

    .line 109
    :cond_3
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_4

    .line 114
    .line 115
    const-string p0, "Platform doesn\'t support proxying."

    .line 116
    .line 117
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_4
    return v3
.end method

.method public final declared-synchronized i(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/16 v2, 0x1e

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x7080

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    new-instance v2, Lcom/google/firebase/messaging/SyncTask;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/SyncTask;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->c(JLjava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public final j(Lcom/google/firebase/messaging/Store$Token;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Lcom/google/firebase/messaging/Store$Token;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/Metadata;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/google/firebase/messaging/Metadata;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget-wide v5, p1, Lcom/google/firebase/messaging/Store$Token;->c:J

    .line 17
    .line 18
    const-wide/32 v7, 0x240c8400

    .line 19
    .line 20
    .line 21
    add-long/2addr v5, v7

    .line 22
    cmp-long v3, v3, v5

    .line 23
    .line 24
    if-gtz v3, :cond_3

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/firebase/messaging/Store$Token;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/GmsRegistrationClient;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/messaging/GmsRegistrationClient;->b()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 44
    .line 45
    check-cast p0, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->c()Lcom/google/android/gms/tasks/Task;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    const/4 p0, 0x0

    .line 59
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    xor-int/2addr p0, v0

    .line 64
    return p0

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    const/16 p1, 0x16

    .line 70
    .line 71
    if-gt p0, p1, :cond_2

    .line 72
    .line 73
    return v0

    .line 74
    :cond_2
    const/4 p0, 0x0

    .line 75
    return p0

    .line 76
    :cond_3
    :goto_1
    return v0
.end method
