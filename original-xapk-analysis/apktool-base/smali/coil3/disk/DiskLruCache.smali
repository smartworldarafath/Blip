.class public final Lcoil3/disk/DiskLruCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/disk/DiskLruCache$Editor;,
        Lcoil3/disk/DiskLruCache$Entry;,
        Lcoil3/disk/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field public static final A:Lkotlin/text/Regex;


# instance fields
.field public final j:Lokio/Path;

.field public final k:J

.field public final l:Lokio/Path;

.field public final m:Lokio/Path;

.field public final n:Lokio/Path;

.field public final o:Ljava/util/LinkedHashMap;

.field public final p:Lkotlinx/coroutines/internal/ContextScope;

.field public final q:Ljava/lang/Object;

.field public r:J

.field public s:I

.field public t:Lokio/RealBufferedSink;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public final z:Lcoil3/disk/DiskLruCache$fileSystem$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "[a-z0-9_-]{1,120}"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/disk/DiskLruCache;->A:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(JLkotlin/coroutines/CoroutineContext;Lokio/FileSystem;Lokio/Path;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcoil3/disk/DiskLruCache;->j:Lokio/Path;

    .line 5
    .line 6
    iput-wide p1, p0, Lcoil3/disk/DiskLruCache;->k:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long p1, p1, v0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    if-lez p1, :cond_2

    .line 14
    .line 15
    const-string p1, "journal"

    .line 16
    .line 17
    invoke-virtual {p5, p1}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 22
    .line 23
    const-string p1, "journal.tmp"

    .line 24
    .line 25
    invoke-virtual {p5, p1}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->m:Lokio/Path;

    .line 30
    .line 31
    const-string p1, "journal.bkp"

    .line 32
    .line 33
    invoke-virtual {p5, p1}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/Path;

    .line 38
    .line 39
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    const/4 p5, 0x0

    .line 42
    const/high16 v0, 0x3f400000    # 0.75f

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {p1, p5, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object p5, Lkotlin/coroutines/ContinuationInterceptor$Key;->j:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 59
    .line 60
    invoke-interface {p3, p5}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    instance-of p5, p3, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 65
    .line 66
    if-eqz p5, :cond_0

    .line 67
    .line 68
    move-object p2, p3

    .line 69
    check-cast p2, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 70
    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    .line 73
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 74
    .line 75
    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 76
    .line 77
    :cond_1
    sget-object p3, Lkotlinx/coroutines/CoroutineDispatcher;->k:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->e1(I)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->p:Lkotlinx/coroutines/internal/ContextScope;

    .line 92
    .line 93
    new-instance p1, Ljava/lang/Object;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 99
    .line 100
    new-instance p1, Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 101
    .line 102
    invoke-direct {p1, p4}, Lokio/ForwardingFileSystem;-><init>(Lokio/FileSystem;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    const-string p0, "maxSize <= 0"

    .line 109
    .line 110
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p2
.end method

.method public static S(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcoil3/disk/DiskLruCache;->A:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "keys must match regex [a-z0-9_-]{1,120}: \""

    .line 11
    .line 12
    const-string v1, "\""

    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final a(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Editor;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    .line 5
    .line 6
    iget-object v2, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 7
    .line 8
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p2, :cond_5

    .line 17
    .line 18
    iget-boolean v4, v1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    .line 19
    .line 20
    if-nez v4, :cond_5

    .line 21
    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_1

    .line 24
    .line 25
    iget-object v5, p1, Lcoil3/disk/DiskLruCache$Editor;->c:[Z

    .line 26
    .line 27
    aget-boolean v5, v5, v4

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    iget-object v5, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 32
    .line 33
    iget-object v6, v1, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lokio/Path;

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lcoil3/disk/DiskLruCache$Editor;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move p1, v3

    .line 59
    :goto_1
    if-ge p1, v2, :cond_6

    .line 60
    .line 61
    :try_start_1
    iget-object v4, v1, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lokio/Path;

    .line 68
    .line 69
    iget-object v5, v1, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lokio/Path;

    .line 76
    .line 77
    iget-object v6, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 78
    .line 79
    invoke-virtual {v6, v4}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 80
    .line 81
    .line 82
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object v7, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 84
    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v7, v4, v5}, Lokio/ForwardingFileSystem;->h(Lokio/Path;Lokio/Path;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget-object v4, v1, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lokio/Path;

    .line 98
    .line 99
    invoke-virtual {v7, v4}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_3

    .line 104
    .line 105
    invoke-virtual {v7, v4, v3}, Lcoil3/disk/DiskLruCache$fileSystem$1;->S(Lokio/Path;Z)Lokio/Sink;

    .line 106
    .line 107
    .line 108
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception p0

    .line 114
    :try_start_4
    throw p0

    .line 115
    :catch_1
    :cond_3
    :goto_2
    iget-object v4, v1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 116
    .line 117
    aget-wide v6, v4, p1

    .line 118
    .line 119
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Lokio/FileSystem;->O(Lokio/Path;)Lokio/FileMetadata;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v4, v4, Lokio/FileMetadata;->d:Ljava/lang/Long;

    .line 126
    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    goto :goto_3

    .line 134
    :cond_4
    const-wide/16 v4, 0x0

    .line 135
    .line 136
    :goto_3
    iget-object v8, v1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 137
    .line 138
    aput-wide v4, v8, p1

    .line 139
    .line 140
    iget-wide v8, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 141
    .line 142
    sub-long/2addr v8, v6

    .line 143
    add-long/2addr v8, v4

    .line 144
    iput-wide v8, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 145
    .line 146
    add-int/lit8 p1, p1, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    move p1, v3

    .line 150
    :goto_4
    if-ge p1, v2, :cond_6

    .line 151
    .line 152
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 153
    .line 154
    iget-object v5, v1, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lokio/Path;

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 p1, p1, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    const/4 p1, 0x0

    .line 169
    iput-object p1, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 170
    .line 171
    iget-boolean p1, v1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    .line 172
    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache;->P(Lcoil3/disk/DiskLruCache$Entry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    .line 177
    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 180
    :cond_7
    :try_start_5
    iget p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    add-int/2addr p1, v2

    .line 184
    iput p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 185
    .line 186
    iget-object p1, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    const/16 v4, 0xa

    .line 192
    .line 193
    const/16 v5, 0x20

    .line 194
    .line 195
    if-nez p2, :cond_9

    .line 196
    .line 197
    iget-boolean p2, v1, Lcoil3/disk/DiskLruCache$Entry;->e:Z

    .line 198
    .line 199
    if-eqz p2, :cond_8

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    iget-object p2, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 203
    .line 204
    iget-object v6, v1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const-string p2, "REMOVE"

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v5}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 215
    .line 216
    .line 217
    iget-object p2, v1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_9
    :goto_5
    iput-boolean v2, v1, Lcoil3/disk/DiskLruCache$Entry;->e:Z

    .line 227
    .line 228
    const-string p2, "CLEAN"

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v5}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 234
    .line 235
    .line 236
    iget-object p2, v1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 239
    .line 240
    .line 241
    iget-object p2, v1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 242
    .line 243
    array-length v1, p2

    .line 244
    move v6, v3

    .line 245
    :goto_6
    if-ge v6, v1, :cond_a

    .line 246
    .line 247
    aget-wide v7, p2, v6

    .line 248
    .line 249
    invoke-virtual {p1, v5}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v7, v8}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 253
    .line 254
    .line 255
    add-int/lit8 v6, v6, 0x1

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_a
    invoke-virtual {p1, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 259
    .line 260
    .line 261
    :goto_7
    invoke-virtual {p1}, Lokio/RealBufferedSink;->flush()V

    .line 262
    .line 263
    .line 264
    iget-wide p1, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 265
    .line 266
    iget-wide v4, p0, Lcoil3/disk/DiskLruCache;->k:J

    .line 267
    .line 268
    cmp-long p1, p1, v4

    .line 269
    .line 270
    if-gtz p1, :cond_c

    .line 271
    .line 272
    iget p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 273
    .line 274
    const/16 p2, 0x7d0

    .line 275
    .line 276
    if-lt p1, p2, :cond_b

    .line 277
    .line 278
    move v3, v2

    .line 279
    :cond_b
    if-eqz v3, :cond_d

    .line 280
    .line 281
    :cond_c
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->v()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 282
    .line 283
    .line 284
    :cond_d
    monitor-exit v0

    .line 285
    return-void

    .line 286
    :cond_e
    :try_start_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 287
    .line 288
    const-string p1, "Check failed."

    .line 289
    .line 290
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    :goto_8
    monitor-exit v0

    .line 295
    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcoil3/disk/DiskLruCache$Entry;

    .line 24
    .line 25
    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    :goto_1
    if-ge v6, v5, :cond_0

    .line 32
    .line 33
    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 34
    .line 35
    aget-wide v7, v4, v6

    .line 36
    .line 37
    add-long/2addr v1, v7

    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    iput-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 43
    .line 44
    :goto_2
    if-ge v6, v5, :cond_2

    .line 45
    .line 46
    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lokio/Path;

    .line 53
    .line 54
    iget-object v7, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 55
    .line 56
    invoke-virtual {v7, v4}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lokio/Path;

    .line 66
    .line 67
    invoke-virtual {v7, v4}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iput-wide v1, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 78
    .line 79
    return-void
.end method

.method public final E()V
    .locals 11

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, "unexpected journal header: ["

    .line 4
    .line 5
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lokio/ForwardingFileSystem;->X(Lokio/Path;)Lokio/Source;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v3, Lokio/RealBufferedSource;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 19
    .line 20
    .line 21
    const-wide v4, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string v10, "libcore.io.DiskLruCache"

    .line 47
    .line 48
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_1

    .line 53
    .line 54
    const-string v10, "1"

    .line 55
    .line 56
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_1

    .line 61
    .line 62
    const/4 v10, 0x3

    .line 63
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_1

    .line 72
    .line 73
    const/4 v10, 0x2

    .line 74
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_1

    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-gtz v10, :cond_1

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_0
    :try_start_1
    invoke-virtual {v3, v4, v5}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache;->O(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    sub-int/2addr v0, v1

    .line 110
    iput v0, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 111
    .line 112
    invoke-virtual {v3}, Lokio/RealBufferedSource;->J()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    .line 118
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->X()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->w()Lokio/RealBufferedSink;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    goto :goto_3

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    goto :goto_3

    .line 135
    :cond_1
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    .line 136
    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, "]"

    .line 170
    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Lokio/RealBufferedSource;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_2
    move-exception v0

    .line 187
    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    if-nez p0, :cond_2

    .line 191
    .line 192
    return-void

    .line 193
    :cond_2
    throw p0
.end method

.method public final O(Ljava/lang/String;)V
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    invoke-static {p1, v0, v1, v2}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "unexpected journal line: "

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v3, v5, :cond_8

    .line 13
    .line 14
    add-int/lit8 v6, v3, 0x1

    .line 15
    .line 16
    const/4 v7, 0x4

    .line 17
    invoke-static {p1, v0, v6, v7}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget-object v9, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    if-ne v8, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-ne v3, v2, :cond_1

    .line 30
    .line 31
    const-string v2, "REMOVE"

    .line 32
    .line 33
    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    new-instance v2, Lcoil3/disk/DiskLruCache$Entry;

    .line 54
    .line 55
    invoke-direct {v2, p0, v6}, Lcoil3/disk/DiskLruCache$Entry;-><init>(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v9, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    check-cast v2, Lcoil3/disk/DiskLruCache$Entry;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    if-eq v8, v5, :cond_4

    .line 65
    .line 66
    if-ne v3, v6, :cond_4

    .line 67
    .line 68
    const-string v9, "CLEAN"

    .line 69
    .line 70
    invoke-static {p1, v9, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    add-int/2addr v8, p0

    .line 78
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-array v3, p0, [C

    .line 83
    .line 84
    aput-char v0, v3, v1

    .line 85
    .line 86
    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;[C)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-boolean p0, v2, Lcoil3/disk/DiskLruCache$Entry;->e:Z

    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    iput-object p0, v2, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    const/4 v0, 0x2

    .line 100
    if-ne p0, v0, :cond_3

    .line 101
    .line 102
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    :goto_0
    if-ge v1, p0, :cond_6

    .line 107
    .line 108
    iget-object v0, v2, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 109
    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    aput-wide v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    invoke-static {p1, v4}, Lfe;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-static {p1, v4}, Lfe;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    if-ne v8, v5, :cond_5

    .line 134
    .line 135
    if-ne v3, v6, :cond_5

    .line 136
    .line 137
    const-string v0, "DIRTY"

    .line 138
    .line 139
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    new-instance p1, Lcoil3/disk/DiskLruCache$Editor;

    .line 146
    .line 147
    invoke-direct {p1, p0, v2}, Lcoil3/disk/DiskLruCache$Editor;-><init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V

    .line 148
    .line 149
    .line 150
    iput-object p1, v2, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    if-ne v8, v5, :cond_7

    .line 154
    .line 155
    if-ne v3, v7, :cond_7

    .line 156
    .line 157
    const-string p0, "READ"

    .line 158
    .line 159
    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_7

    .line 164
    .line 165
    :cond_6
    return-void

    .line 166
    :cond_7
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final P(Lcoil3/disk/DiskLruCache$Entry;)V
    .locals 10

    .line 1
    iget v0, p1, Lcoil3/disk/DiskLruCache$Entry;->h:I

    .line 2
    .line 3
    iget-object v1, p1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v4, "DIRTY"

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lokio/RealBufferedSink;->flush()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v0, p1, Lcoil3/disk/DiskLruCache$Entry;->h:I

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-gtz v0, :cond_5

    .line 36
    .line 37
    iget-object v0, p1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    const/4 v5, 0x2

    .line 44
    if-ge v0, v5, :cond_2

    .line 45
    .line 46
    iget-object v5, p1, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lokio/Path;

    .line 53
    .line 54
    iget-object v6, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 57
    .line 58
    .line 59
    iget-wide v5, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 60
    .line 61
    iget-object v7, p1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 62
    .line 63
    aget-wide v8, v7, v0

    .line 64
    .line 65
    sub-long/2addr v5, v8

    .line 66
    iput-wide v5, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 67
    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    aput-wide v5, v7, v0

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 76
    .line 77
    add-int/2addr p1, v4

    .line 78
    iput p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 79
    .line 80
    iget-object p1, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    const-string v0, "REMOVE"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lokio/RealBufferedSink;->flush()V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 107
    .line 108
    const/16 v0, 0x7d0

    .line 109
    .line 110
    if-lt p1, v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->v()V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void

    .line 116
    :cond_5
    :goto_1
    iput-boolean v4, p1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    .line 117
    .line 118
    return-void
.end method

.method public final R()V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p0, Lcoil3/disk/DiskLruCache;->r:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcoil3/disk/DiskLruCache;->k:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcoil3/disk/DiskLruCache$Entry;

    .line 30
    .line 31
    iget-boolean v2, v1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache;->P(Lcoil3/disk/DiskLruCache$Entry;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcoil3/disk/DiskLruCache;->x:Z

    .line 42
    .line 43
    return-void
.end method

.method public final X()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    :goto_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 16
    .line 17
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->m:Lokio/Path;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Lcoil3/disk/DiskLruCache$fileSystem$1;->S(Lokio/Path;Z)Lokio/Sink;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lokio/RealBufferedSink;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 40
    .line 41
    .line 42
    const-string v4, "1"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 48
    .line 49
    .line 50
    const-wide/16 v4, 0x3

    .line 51
    .line 52
    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 56
    .line 57
    .line 58
    const-wide/16 v4, 0x2

    .line 59
    .line 60
    invoke-virtual {v2, v4, v5}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Lcoil3/disk/DiskLruCache$Entry;

    .line 90
    .line 91
    iget-object v6, v5, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 92
    .line 93
    const/16 v7, 0x20

    .line 94
    .line 95
    if-eqz v6, :cond_1

    .line 96
    .line 97
    const-string v6, "DIRTY"

    .line 98
    .line 99
    invoke-virtual {v2, v6}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v7}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 103
    .line 104
    .line 105
    iget-object v5, v5, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_1
    move-exception v1

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    const-string v6, "CLEAN"

    .line 117
    .line 118
    invoke-virtual {v2, v6}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v7}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 122
    .line 123
    .line 124
    iget-object v6, v5, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v6}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 127
    .line 128
    .line 129
    iget-object v5, v5, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    .line 130
    .line 131
    array-length v6, v5

    .line 132
    move v8, v3

    .line 133
    :goto_2
    if-ge v8, v6, :cond_2

    .line 134
    .line 135
    aget-wide v9, v5, v8

    .line 136
    .line 137
    invoke-virtual {v2, v7}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v9, v10}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 141
    .line 142
    .line 143
    add-int/lit8 v8, v8, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v2, v1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    goto :goto_4

    .line 155
    :catchall_2
    move-exception v1

    .line 156
    goto :goto_4

    .line 157
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :catchall_3
    move-exception v2

    .line 162
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    if-nez v1, :cond_5

    .line 166
    .line 167
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 168
    .line 169
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 172
    .line 173
    .line 174
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 176
    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    :try_start_5
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 180
    .line 181
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/Path;

    .line 182
    .line 183
    invoke-virtual {v2, v1, v4}, Lokio/ForwardingFileSystem;->h(Lokio/Path;Lokio/Path;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 187
    .line 188
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->m:Lokio/Path;

    .line 189
    .line 190
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 191
    .line 192
    invoke-virtual {v1, v2, v4}, Lokio/ForwardingFileSystem;->h(Lokio/Path;Lokio/Path;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 196
    .line 197
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/Path;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_4
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->m:Lokio/Path;

    .line 204
    .line 205
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 206
    .line 207
    invoke-virtual {v2, v1, v4}, Lokio/ForwardingFileSystem;->h(Lokio/Path;Lokio/Path;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->w()Lokio/RealBufferedSink;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iput-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 215
    .line 216
    iput v3, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 217
    .line 218
    iput-boolean v3, p0, Lcoil3/disk/DiskLruCache;->u:Z

    .line 219
    .line 220
    iput-boolean v3, p0, Lcoil3/disk/DiskLruCache;->y:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 224
    :cond_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    :goto_6
    monitor-exit v0

    .line 226
    throw p0
.end method

.method public final close()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->v:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->w:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    new-array v4, v3, [Lcoil3/disk/DiskLruCache$Entry;

    .line 22
    .line 23
    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Lcoil3/disk/DiskLruCache$Entry;

    .line 28
    .line 29
    array-length v4, v1

    .line 30
    :goto_0
    if-ge v3, v4, :cond_2

    .line 31
    .line 32
    aget-object v5, v1, v3

    .line 33
    .line 34
    iget-object v5, v5, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    iget-object v6, v5, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    .line 39
    .line 40
    iget-object v7, v6, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 41
    .line 42
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    iput-boolean v2, v6, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->R()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->p:Lkotlinx/coroutines/internal/ContextScope;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-static {v1, v3}, Lkotlinx/coroutines/CoroutineScopeKt;->b(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 73
    .line 74
    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_2
    monitor-exit v0

    .line 83
    throw p0
.end method

.method public final h(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->w:Z

    .line 5
    .line 6
    if-nez v1, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lcoil3/disk/DiskLruCache;->S(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->q()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcoil3/disk/DiskLruCache$Entry;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v3, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    move-object v3, v2

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v2

    .line 35
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    .line 37
    :try_start_1
    iget v3, v1, Lcoil3/disk/DiskLruCache$Entry;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object v2

    .line 43
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcoil3/disk/DiskLruCache;->x:Z

    .line 44
    .line 45
    if-nez v3, :cond_6

    .line 46
    .line 47
    iget-boolean v3, p0, Lcoil3/disk/DiskLruCache;->y:Z

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v4, "DIRTY"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 68
    .line 69
    .line 70
    const/16 v4, 0xa

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lokio/RealBufferedSink;->flush()V

    .line 76
    .line 77
    .line 78
    iget-boolean v3, p0, Lcoil3/disk/DiskLruCache;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-object v2

    .line 84
    :cond_4
    if-nez v1, :cond_5

    .line 85
    .line 86
    :try_start_3
    new-instance v1, Lcoil3/disk/DiskLruCache$Entry;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Lcoil3/disk/DiskLruCache$Entry;-><init>(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_5
    new-instance p1, Lcoil3/disk/DiskLruCache$Editor;

    .line 97
    .line 98
    invoke-direct {p1, p0, v1}, Lcoil3/disk/DiskLruCache$Editor;-><init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return-object p1

    .line 105
    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->v()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return-object v2

    .line 110
    :cond_7
    :try_start_5
    const-string p0, "cache is closed"

    .line 111
    .line 112
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :goto_2
    monitor-exit v0

    .line 119
    throw p0
.end method

.method public final n(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->w:Z

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lcoil3/disk/DiskLruCache;->S(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->q()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->o:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcoil3/disk/DiskLruCache$Entry;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v1}, Lcoil3/disk/DiskLruCache$Entry;->a()Lcoil3/disk/DiskLruCache$Snapshot;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    iget v2, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    add-int/2addr v2, v3

    .line 35
    iput v2, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 36
    .line 37
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->t:Lokio/RealBufferedSink;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v4, "READ"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 45
    .line 46
    .line 47
    const/16 v4, 0x20

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 53
    .line 54
    .line 55
    const/16 p1, 0xa

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lokio/RealBufferedSink;->flush()V

    .line 61
    .line 62
    .line 63
    iget p1, p0, Lcoil3/disk/DiskLruCache;->s:I

    .line 64
    .line 65
    const/16 v2, 0x7d0

    .line 66
    .line 67
    if-lt p1, v2, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v3, 0x0

    .line 71
    :goto_0
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    :goto_1
    monitor-exit v0

    .line 80
    return-object v1

    .line 81
    :cond_3
    :goto_2
    monitor-exit v0

    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0

    .line 84
    :cond_4
    :try_start_1
    const-string p0, "cache is closed"

    .line 85
    .line 86
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_3
    monitor-exit v0

    .line 93
    throw p0
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 11
    .line 12
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->m:Lokio/Path;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 18
    .line 19
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/Path;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 28
    .line 29
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 36
    .line 37
    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/Path;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v2, v3}, Lokio/FileSystem;->w(Lokio/Path;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 48
    .line 49
    invoke-virtual {v2, v3, v1}, Lokio/ForwardingFileSystem;->h(Lokio/Path;Lokio/Path;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 53
    .line 54
    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    const/4 v2, 0x1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->E()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->A()V

    .line 67
    .line 68
    .line 69
    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->v:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :catch_0
    const/4 v1, 0x0

    .line 74
    :try_start_4
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->close()V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 78
    .line 79
    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->j:Lokio/Path;

    .line 80
    .line 81
    invoke-static {v3, v4}, Lcoil3/util/FileSystemsKt;->a(Lokio/FileSystem;Lokio/Path;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    .line 83
    .line 84
    :try_start_5
    iput-boolean v1, p0, Lcoil3/disk/DiskLruCache;->w:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception v2

    .line 88
    iput-boolean v1, p0, Lcoil3/disk/DiskLruCache;->w:Z

    .line 89
    .line 90
    throw v2

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->X()V

    .line 92
    .line 93
    .line 94
    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->v:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_2
    monitor-exit v0

    .line 99
    throw p0
.end method

.method public final v()V
    .locals 3

    .line 1
    new-instance v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(Lcoil3/disk/DiskLruCache;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    iget-object p0, p0, Lcoil3/disk/DiskLruCache;->p:Lkotlinx/coroutines/internal/ContextScope;

    .line 9
    .line 10
    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final w()Lokio/RealBufferedSink;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->l:Lokio/Path;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lokio/ForwardingFileSystem;->l:Lokio/FileSystem;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokio/FileSystem;->a(Lokio/Path;)Lokio/Sink;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcoil3/disk/FaultHidingSink;

    .line 18
    .line 19
    new-instance v2, Lc;

    .line 20
    .line 21
    const/16 v3, 0xf

    .line 22
    .line 23
    invoke-direct {v2, v3, p0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lcoil3/disk/FaultHidingSink;-><init>(Lokio/Sink;Lc;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lokio/RealBufferedSink;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method
