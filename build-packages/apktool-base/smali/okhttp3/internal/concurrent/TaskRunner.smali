.class public final Lokhttp3/internal/concurrent/TaskRunner;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/concurrent/TaskRunner$RealBackend;
    }
.end annotation


# static fields
.field public static final h:Lokhttp3/internal/concurrent/TaskRunner;

.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

.field public b:I

.field public c:Z

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lokhttp3/internal/concurrent/TaskRunner$runnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 2
    .line 3
    new-instance v1, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lokhttp3/internal/Util;->f:Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, " TaskRunner"

    .line 13
    .line 14
    invoke-static {v2, v3, v4}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lfi;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, v2, v4}, Lfi;-><init>(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v3}, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;-><init>(Lfi;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lokhttp3/internal/concurrent/TaskRunner;-><init>(Lokhttp3/internal/concurrent/TaskRunner$RealBackend;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lokhttp3/internal/concurrent/TaskRunner;->h:Lokhttp3/internal/concurrent/TaskRunner;

    .line 31
    .line 32
    const-class v0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sput-object v0, Lokhttp3/internal/concurrent/TaskRunner;->i:Ljava/util/logging/Logger;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner$RealBackend;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->a:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    .line 5
    .line 6
    const/16 p1, 0x2710

    .line 7
    .line 8
    iput p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->b:I

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->e:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->f:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance p1, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lokhttp3/internal/concurrent/TaskRunner$runnable$1;-><init>(Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->g:Lokhttp3/internal/concurrent/TaskRunner$runnable$1;

    .line 30
    .line 31
    return-void
.end method

.method public static final a(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;)V
    .locals 5

    .line 1
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p1, Lokhttp3/internal/concurrent/Task;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/Task;->a()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    monitor-enter p0

    .line 21
    :try_start_1
    invoke-virtual {p0, p1, v2, v3}, Lokhttp3/internal/concurrent/TaskRunner;->b(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :catchall_1
    move-exception v2

    .line 33
    monitor-enter p0

    .line 34
    const-wide/16 v3, -0x1

    .line 35
    .line 36
    :try_start_2
    invoke-virtual {p0, p1, v3, v4}, Lokhttp3/internal/concurrent/TaskRunner;->b(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :catchall_2
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method


# virtual methods
.method public final b(Lokhttp3/internal/concurrent/Task;J)V
    .locals 4

    .line 1
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 2
    .line 3
    iget-object v0, p1, Lokhttp3/internal/concurrent/Task;->c:Lokhttp3/internal/concurrent/TaskQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lokhttp3/internal/concurrent/TaskQueue;->d:Lokhttp3/internal/concurrent/Task;

    .line 9
    .line 10
    if-ne v1, p1, :cond_2

    .line 11
    .line 12
    iget-boolean v1, v0, Lokhttp3/internal/concurrent/TaskQueue;->f:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->f:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->d:Lokhttp3/internal/concurrent/Task;

    .line 19
    .line 20
    iget-object v2, p0, Lokhttp3/internal/concurrent/TaskRunner;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    cmp-long v2, p2, v2

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-boolean v1, v0, Lokhttp3/internal/concurrent/TaskQueue;->c:Z

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, p1, p2, p3, v1}, Lokhttp3/internal/concurrent/TaskQueue;->d(Lokhttp3/internal/concurrent/Task;JZ)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, v0, Lokhttp3/internal/concurrent/TaskQueue;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskRunner;->f:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    const-string p0, "Check failed."

    .line 56
    .line 57
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final c()Lokhttp3/internal/concurrent/Task;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 4
    .line 5
    :goto_0
    iget-object v0, v1, Lokhttp3/internal/concurrent/TaskRunner;->f:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-wide v6, 0x7fffffffffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    move-object v8, v3

    .line 30
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    const/4 v10, 0x1

    .line 35
    const-wide/16 v11, 0x0

    .line 36
    .line 37
    const/4 v13, 0x0

    .line 38
    if-eqz v9, :cond_3

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    check-cast v9, Lokhttp3/internal/concurrent/TaskQueue;

    .line 45
    .line 46
    iget-object v9, v9, Lokhttp3/internal/concurrent/TaskQueue;->e:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Lokhttp3/internal/concurrent/Task;

    .line 53
    .line 54
    iget-wide v14, v9, Lokhttp3/internal/concurrent/Task;->d:J

    .line 55
    .line 56
    sub-long/2addr v14, v4

    .line 57
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v14

    .line 61
    cmp-long v16, v14, v11

    .line 62
    .line 63
    if-lez v16, :cond_1

    .line 64
    .line 65
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    if-eqz v8, :cond_2

    .line 71
    .line 72
    move v2, v10

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move-object v8, v9

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v2, v13

    .line 77
    :goto_2
    iget-object v9, v1, Lokhttp3/internal/concurrent/TaskRunner;->e:Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v8, :cond_6

    .line 80
    .line 81
    sget-object v3, Lokhttp3/internal/Util;->a:[B

    .line 82
    .line 83
    const-wide/16 v3, -0x1

    .line 84
    .line 85
    iput-wide v3, v8, Lokhttp3/internal/concurrent/Task;->d:J

    .line 86
    .line 87
    iget-object v3, v8, Lokhttp3/internal/concurrent/Task;->c:Lokhttp3/internal/concurrent/TaskQueue;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v4, v3, Lokhttp3/internal/concurrent/TaskQueue;->e:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iput-object v8, v3, Lokhttp3/internal/concurrent/TaskQueue;->d:Lokhttp3/internal/concurrent/Task;

    .line 101
    .line 102
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    iget-boolean v2, v1, Lokhttp3/internal/concurrent/TaskRunner;->c:Z

    .line 108
    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    :cond_4
    iget-object v0, v1, Lokhttp3/internal/concurrent/TaskRunner;->g:Lokhttp3/internal/concurrent/TaskRunner$runnable$1;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object v1, v1, Lokhttp3/internal/concurrent/TaskRunner;->a:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    .line 123
    .line 124
    iget-object v1, v1, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    return-object v8

    .line 130
    :cond_6
    iget-boolean v2, v1, Lokhttp3/internal/concurrent/TaskRunner;->c:Z

    .line 131
    .line 132
    if-eqz v2, :cond_8

    .line 133
    .line 134
    iget-wide v8, v1, Lokhttp3/internal/concurrent/TaskRunner;->d:J

    .line 135
    .line 136
    sub-long/2addr v8, v4

    .line 137
    cmp-long v0, v6, v8

    .line 138
    .line 139
    if-gez v0, :cond_7

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_3
    return-object v3

    .line 145
    :cond_8
    iput-boolean v10, v1, Lokhttp3/internal/concurrent/TaskRunner;->c:Z

    .line 146
    .line 147
    add-long/2addr v4, v6

    .line 148
    iput-wide v4, v1, Lokhttp3/internal/concurrent/TaskRunner;->d:J

    .line 149
    .line 150
    const-wide/32 v2, 0xf4240

    .line 151
    .line 152
    .line 153
    :try_start_0
    div-long v4, v6, v2

    .line 154
    .line 155
    mul-long/2addr v2, v4

    .line 156
    sub-long v2, v6, v2

    .line 157
    .line 158
    cmp-long v8, v4, v11

    .line 159
    .line 160
    if-gtz v8, :cond_9

    .line 161
    .line 162
    cmp-long v6, v6, v11

    .line 163
    .line 164
    if-lez v6, :cond_a

    .line 165
    .line 166
    :cond_9
    long-to-int v2, v2

    .line 167
    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_a
    iput-boolean v13, v1, Lokhttp3/internal/concurrent/TaskRunner;->c:Z

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto :goto_6

    .line 176
    :catch_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    sub-int/2addr v2, v10

    .line 181
    :goto_4
    const/4 v3, -0x1

    .line 182
    if-ge v3, v2, :cond_b

    .line 183
    .line 184
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Lokhttp3/internal/concurrent/TaskQueue;

    .line 189
    .line 190
    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskQueue;->b()Z

    .line 191
    .line 192
    .line 193
    add-int/lit8 v2, v2, -0x1

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    sub-int/2addr v2, v10

    .line 201
    :goto_5
    if-ge v3, v2, :cond_a

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Lokhttp3/internal/concurrent/TaskQueue;

    .line 208
    .line 209
    invoke-virtual {v4}, Lokhttp3/internal/concurrent/TaskQueue;->b()Z

    .line 210
    .line 211
    .line 212
    iget-object v4, v4, Lokhttp3/internal/concurrent/TaskQueue;->e:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_c

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    .line 223
    :cond_c
    add-int/lit8 v2, v2, -0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :goto_6
    iput-boolean v13, v1, Lokhttp3/internal/concurrent/TaskRunner;->c:Z

    .line 227
    .line 228
    throw v0
.end method

.method public final d(Lokhttp3/internal/concurrent/TaskQueue;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 5
    .line 6
    iget-object v0, p1, Lokhttp3/internal/concurrent/TaskQueue;->d:Lokhttp3/internal/concurrent/Task;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Lokhttp3/internal/concurrent/TaskQueue;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lokhttp3/internal/concurrent/TaskRunner;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->c:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/concurrent/TaskRunner;->g:Lokhttp3/internal/concurrent/TaskRunner$runnable$1;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskRunner;->a:Lokhttp3/internal/concurrent/TaskRunner$RealBackend;

    .line 50
    .line 51
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskRunner$RealBackend;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final e()Lokhttp3/internal/concurrent/TaskQueue;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lokhttp3/internal/concurrent/TaskRunner;->b:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lokhttp3/internal/concurrent/TaskRunner;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    new-instance v1, Lokhttp3/internal/concurrent/TaskQueue;

    .line 10
    .line 11
    const-string v2, "Q"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, p0, v0}, Lokhttp3/internal/concurrent/TaskQueue;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method
