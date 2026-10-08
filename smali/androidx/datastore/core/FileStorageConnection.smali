.class public final Landroidx/datastore/core/FileStorageConnection;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/datastore/core/StorageConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/StorageConnection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Landroidx/datastore/core/InterProcessCoordinator;

.field public final c:Lkotlin/jvm/functions/Function0;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->b:Landroidx/datastore/core/InterProcessCoordinator;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/datastore/core/FileStorageConnection;->c:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 22
    .line 23
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->r:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/FileStorageConnection$readScope$1;-><init>(Landroidx/datastore/core/FileStorageConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->r:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-boolean p0, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->o:Z

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->n:Landroidx/datastore/core/FileReadScope;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->m:Landroidx/datastore/core/FileStorageConnection;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    move-object v6, p2

    .line 49
    move p2, p0

    .line 50
    move-object p0, v0

    .line 51
    move-object v0, v6

    .line 52
    goto :goto_4

    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v4

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_7

    .line 69
    .line 70
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 71
    .line 72
    invoke-virtual {p2}, Lkotlinx/coroutines/sync/MutexImpl;->f()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    :try_start_1
    new-instance v2, Landroidx/datastore/core/FileReadScope;

    .line 77
    .line 78
    iget-object v5, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v2, v5}, Landroidx/datastore/core/FileReadScope;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iput-object p0, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->m:Landroidx/datastore/core/FileStorageConnection;

    .line 88
    .line 89
    iput-object v2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->n:Landroidx/datastore/core/FileReadScope;

    .line 90
    .line 91
    iput-boolean p2, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->o:Z

    .line 92
    .line 93
    iput v3, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->r:I

    .line 94
    .line 95
    check-cast p1, Landroidx/datastore/core/StorageConnectionKt$readData$2;

    .line 96
    .line 97
    invoke-virtual {p1, v2, v5, v0}, Landroidx/datastore/core/StorageConnectionKt$readData$2;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 101
    if-ne p1, v1, :cond_3

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_3
    move-object v0, p0

    .line 105
    move p0, p2

    .line 106
    move-object p2, p1

    .line 107
    move-object p1, v2

    .line 108
    :goto_1
    :try_start_3
    invoke-interface {p1}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .line 110
    .line 111
    move-object p1, v4

    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception p1

    .line 114
    :goto_2
    if-nez p1, :cond_5

    .line 115
    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    iget-object p0, v0, Landroidx/datastore/core/FileStorageConnection;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-object p2

    .line 124
    :cond_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    :catchall_2
    move-exception p1

    .line 126
    move p2, p0

    .line 127
    move-object p0, v0

    .line 128
    goto :goto_6

    .line 129
    :goto_3
    move-object v0, p1

    .line 130
    move-object p1, v2

    .line 131
    goto :goto_4

    .line 132
    :catchall_3
    move-exception p1

    .line 133
    goto :goto_3

    .line 134
    :goto_4
    :try_start_5
    invoke-interface {p1}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catchall_4
    move-exception p1

    .line 139
    :try_start_6
    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 143
    :catchall_5
    move-exception p1

    .line 144
    :goto_6
    if-eqz p2, :cond_6

    .line 145
    .line 146
    iget-object p0, p0, Landroidx/datastore/core/FileStorageConnection;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 147
    .line 148
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    throw p1

    .line 152
    :cond_7
    const-string p0, "StorageConnection has already been disposed."

    .line 153
    .line 154
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v4
.end method

.method public final b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "Unable to rename "

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->s:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->s:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Landroidx/datastore/core/FileStorageConnection$writeScope$1;-><init>(Landroidx/datastore/core/FileStorageConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->q:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->s:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    if-eq v3, v5, :cond_2

    .line 39
    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    iget-object p0, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->p:Landroidx/datastore/core/FileWriteScope;

    .line 43
    .line 44
    iget-object p1, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->o:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ljava/io/File;

    .line 47
    .line 48
    iget-object v2, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->n:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 51
    .line 52
    iget-object v1, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->m:Landroidx/datastore/core/FileStorageConnection;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :catchall_0
    move-exception p2

    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v6

    .line 68
    :cond_2
    iget-object p0, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->o:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    .line 71
    .line 72
    iget-object p1, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->n:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 75
    .line 76
    iget-object v3, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->m:Landroidx/datastore/core/FileStorageConnection;

    .line 77
    .line 78
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object p2, p0

    .line 82
    move-object p0, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_b

    .line 94
    .line 95
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const-string p0, "Unable to create parent directories of "

    .line 118
    .line 119
    invoke-static {p2, p0}, Lfe;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v6

    .line 123
    :cond_5
    :goto_1
    iput-object p0, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->m:Landroidx/datastore/core/FileStorageConnection;

    .line 124
    .line 125
    iput-object p1, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->n:Ljava/lang/Object;

    .line 126
    .line 127
    iget-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 128
    .line 129
    iput-object p2, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->o:Ljava/lang/Object;

    .line 130
    .line 131
    iput v5, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->s:I

    .line 132
    .line 133
    invoke-virtual {p2, v1}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-ne v3, v2, :cond_6

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    :goto_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 141
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v8, p0, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v8, ".tmp"

    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 166
    .line 167
    .line 168
    :try_start_2
    new-instance v7, Landroidx/datastore/core/FileWriteScope;

    .line 169
    .line 170
    invoke-direct {v7, v3}, Landroidx/datastore/core/FileReadScope;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 171
    .line 172
    .line 173
    :try_start_3
    iput-object p0, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->m:Landroidx/datastore/core/FileStorageConnection;

    .line 174
    .line 175
    iput-object p2, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->n:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v3, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->o:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v7, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->p:Landroidx/datastore/core/FileWriteScope;

    .line 180
    .line 181
    iput v4, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->s:I

    .line 182
    .line 183
    invoke-interface {p1, v7, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 187
    if-ne p1, v2, :cond_7

    .line 188
    .line 189
    :goto_3
    return-object v2

    .line 190
    :cond_7
    move-object v1, p0

    .line 191
    move-object v2, p2

    .line 192
    move-object p1, v3

    .line 193
    move-object p0, v7

    .line 194
    :goto_4
    :try_start_4
    invoke-interface {p0}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    .line 196
    .line 197
    move-object p0, v6

    .line 198
    goto :goto_5

    .line 199
    :catchall_1
    move-exception p0

    .line 200
    :goto_5
    if-nez p0, :cond_9

    .line 201
    .line 202
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-eqz p0, :cond_8

    .line 207
    .line 208
    iget-object p0, v1, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 209
    .line 210
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    new-array v3, v5, [Ljava/nio/file/CopyOption;

    .line 219
    .line 220
    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 221
    .line 222
    const/4 v5, 0x0

    .line 223
    aput-object v4, v3, v5

    .line 224
    .line 225
    invoke-static {p2, p0, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :goto_6
    move-object p2, v2

    .line 230
    goto :goto_b

    .line 231
    :catch_0
    :try_start_7
    new-instance p0, Ljava/io/IOException;

    .line 232
    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, " to "

    .line 242
    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v0, v1, Landroidx/datastore/core/FileStorageConnection;->a:Ljava/io/File;

    .line 247
    .line 248
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v0, ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    .line 252
    .line 253
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 264
    :catchall_2
    move-exception p0

    .line 265
    goto :goto_6

    .line 266
    :catch_1
    move-exception p0

    .line 267
    move-object v3, p1

    .line 268
    move-object p2, v2

    .line 269
    goto :goto_a

    .line 270
    :cond_8
    :goto_7
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 274
    .line 275
    return-object p0

    .line 276
    :cond_9
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 277
    :catchall_3
    move-exception p0

    .line 278
    move-object v2, p2

    .line 279
    move-object p1, v3

    .line 280
    move-object p2, p0

    .line 281
    move-object p0, v7

    .line 282
    :goto_8
    :try_start_9
    invoke-interface {p0}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 283
    .line 284
    .line 285
    goto :goto_9

    .line 286
    :catchall_4
    move-exception p0

    .line 287
    :try_start_a
    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :goto_9
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 291
    :catchall_5
    move-exception p0

    .line 292
    goto :goto_b

    .line 293
    :catch_2
    move-exception p0

    .line 294
    :goto_a
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_a

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 301
    .line 302
    .line 303
    :cond_a
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 304
    :goto_b
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    throw p0

    .line 308
    :cond_b
    const-string p0, "StorageConnection has already been disposed."

    .line 309
    .line 310
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    return-object v6
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/datastore/core/FileStorageConnection;->c:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    check-cast p0, Landroidx/datastore/core/FileStorage$createConnection$2;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/datastore/core/FileStorage$createConnection$2;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
