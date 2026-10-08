.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/Dispatcher;->b:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/Dispatcher;->c:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lokhttp3/Dispatcher;->d:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/connection/RealCall$AsyncCall;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lokhttp3/internal/connection/RealCall$AsyncCall;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/Dispatcher;->c:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->b()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 21
    .line 22
    const-string v0, "Call wasn\'t in-flight!"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final b()V
    .locals 14

    .line 1
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lokhttp3/Dispatcher;->b:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 29
    .line 30
    iget-object v3, p0, Lokhttp3/Dispatcher;->c:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x40

    .line 37
    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v3, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x5

    .line 47
    if-ge v3, v4, :cond_0

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v2, Lokhttp3/internal/connection/RealCall$AsyncCall;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lokhttp3/Dispatcher;->c:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->c:Ljava/util/ArrayDeque;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lokhttp3/Dispatcher;->d:Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 78
    .line 79
    .line 80
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x0

    .line 87
    move v4, v3

    .line 88
    :goto_1
    if-ge v4, v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v5, v0

    .line 95
    check-cast v5, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 96
    .line 97
    monitor-enter p0

    .line 98
    :try_start_3
    iget-object v0, p0, Lokhttp3/Dispatcher;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    .line 104
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    .line 106
    new-instance v12, Ljava/util/concurrent/SynchronousQueue;

    .line 107
    .line 108
    invoke-direct {v12}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    sget-object v7, Lokhttp3/internal/Util;->f:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v7, " Dispatcher"

    .line 122
    .line 123
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v13, Lfi;

    .line 131
    .line 132
    invoke-direct {v13, v0, v3}, Lfi;-><init>(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    const/4 v7, 0x0

    .line 136
    const v8, 0x7fffffff

    .line 137
    .line 138
    .line 139
    const-wide/16 v9, 0x3c

    .line 140
    .line 141
    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 142
    .line 143
    .line 144
    iput-object v6, p0, Lokhttp3/Dispatcher;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    goto :goto_5

    .line 149
    :cond_2
    :goto_2
    iget-object v0, p0, Lokhttp3/Dispatcher;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    .line 153
    .line 154
    monitor-exit p0

    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v6, v5, Lokhttp3/internal/connection/RealCall$AsyncCall;->l:Lokhttp3/internal/connection/RealCall;

    .line 159
    .line 160
    sget-object v7, Lokhttp3/internal/Util;->a:[B

    .line 161
    .line 162
    :try_start_4
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catchall_2
    move-exception v0

    .line 167
    move-object p0, v0

    .line 168
    goto :goto_4

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_5
    new-instance v7, Ljava/io/InterruptedIOException;

    .line 171
    .line 172
    const-string v8, "executor rejected"

    .line 173
    .line 174
    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v7}, Lokhttp3/internal/connection/RealCall;->h(Ljava/io/IOException;)Ljava/io/IOException;

    .line 181
    .line 182
    .line 183
    iget-object v0, v5, Lokhttp3/internal/connection/RealCall$AsyncCall;->j:Lcoil3/network/okhttp/internal/CallsKt$await$2$2;

    .line 184
    .line 185
    iget-object v0, v0, Lcoil3/network/okhttp/internal/CallsKt$await$2$2;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 186
    .line 187
    new-instance v8, Lkotlin/Result$Failure;

    .line 188
    .line 189
    invoke-direct {v8, v7}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 193
    .line 194
    .line 195
    iget-object v0, v6, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 196
    .line 197
    iget-object v0, v0, Lokhttp3/OkHttpClient;->j:Lokhttp3/Dispatcher;

    .line 198
    .line 199
    invoke-virtual {v0, v5}, Lokhttp3/Dispatcher;->a(Lokhttp3/internal/connection/RealCall$AsyncCall;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :goto_4
    iget-object v0, v6, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 206
    .line 207
    iget-object v0, v0, Lokhttp3/OkHttpClient;->j:Lokhttp3/Dispatcher;

    .line 208
    .line 209
    invoke-virtual {v0, v5}, Lokhttp3/Dispatcher;->a(Lokhttp3/internal/connection/RealCall$AsyncCall;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 214
    throw v0

    .line 215
    :cond_3
    return-void

    .line 216
    :catchall_3
    move-exception v0

    .line 217
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 218
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    :goto_6
    monitor-exit p0

    .line 220
    throw v0
.end method
