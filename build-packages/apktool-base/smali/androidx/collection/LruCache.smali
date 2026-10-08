.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/collection/internal/LruHashMap;

.field public final c:Landroidx/collection/internal/Lock;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/collection/LruCache;->a:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroidx/collection/internal/LruHashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/collection/internal/LruHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 14
    .line 15
    new-instance p1, Landroidx/collection/internal/Lock;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/collection/LruCache;->c:Landroidx/collection/internal/Lock;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "maxSize <= 0"

    .line 24
    .line 25
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/LruCache;->c:Landroidx/collection/internal/Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Landroidx/collection/LruCache;->e:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Landroidx/collection/LruCache;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    iget p1, p0, Landroidx/collection/LruCache;->f:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Landroidx/collection/LruCache;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    throw p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/LruCache;->c:Landroidx/collection/internal/Lock;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->d:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iput v1, p0, Landroidx/collection/LruCache;->d:I

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget p2, p0, Landroidx/collection/LruCache;->d:I

    .line 30
    .line 31
    add-int/lit8 p2, p2, -0x1

    .line 32
    .line 33
    iput p2, p0, Landroidx/collection/LruCache;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    iget p2, p0, Landroidx/collection/LruCache;->a:I

    .line 41
    .line 42
    :goto_1
    iget-object v0, p0, Landroidx/collection/LruCache;->c:Landroidx/collection/internal/Lock;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_1
    iget v1, p0, Landroidx/collection/LruCache;->d:I

    .line 46
    .line 47
    if-ltz v1, :cond_8

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget v1, p0, Landroidx/collection/LruCache;->d:I

    .line 60
    .line 61
    if-nez v1, :cond_8

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_1
    :goto_2
    iget v1, p0, Landroidx/collection/LruCache;->d:I

    .line 68
    .line 69
    if-le v1, p2, :cond_7

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 72
    .line 73
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_2
    iget-object v1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 83
    .line 84
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    check-cast v1, Ljava/lang/Iterable;

    .line 94
    .line 95
    instance-of v2, v1, Ljava/util/List;

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    check-cast v1, Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    const/4 v2, 0x0

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_5

    .line 123
    .line 124
    :goto_3
    const/4 v1, 0x0

    .line 125
    goto :goto_4

    .line 126
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_4
    check-cast v1, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    monitor-exit v0

    .line 135
    return-object p1

    .line 136
    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v3, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v3, v3, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget v2, p0, Landroidx/collection/LruCache;->d:I

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    add-int/lit8 v2, v2, -0x1

    .line 163
    .line 164
    iput v2, p0, Landroidx/collection/LruCache;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    .line 166
    monitor-exit v0

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    :goto_5
    monitor-exit v0

    .line 169
    return-object p1

    .line 170
    :cond_8
    :try_start_3
    const-string p0, "LruCache.sizeOf() is reporting inconsistent results!"

    .line 171
    .line 172
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :goto_6
    monitor-exit v0

    .line 179
    throw p0

    .line 180
    :goto_7
    monitor-exit v0

    .line 181
    throw p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/LruCache;->c:Landroidx/collection/internal/Lock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->b:Landroidx/collection/internal/LruHashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Landroidx/collection/LruCache;->d:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    iput v1, p0, Landroidx/collection/LruCache;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    monitor-exit v0

    .line 27
    return-object p1

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "LruCache[maxSize="

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/LruCache;->c:Landroidx/collection/internal/Lock;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Landroidx/collection/LruCache;->e:I

    .line 7
    .line 8
    iget v3, p0, Landroidx/collection/LruCache;->f:I

    .line 9
    .line 10
    add-int/2addr v3, v2

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    mul-int/lit8 v2, v2, 0x64

    .line 14
    .line 15
    div-int/2addr v2, v3

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Landroidx/collection/LruCache;->a:I

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ",hits="

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v0, p0, Landroidx/collection/LruCache;->e:I

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ",misses="

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget p0, p0, Landroidx/collection/LruCache;->f:I

    .line 46
    .line 47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ",hitRate="

    .line 51
    .line 52
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, "%]"

    .line 59
    .line 60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v1

    .line 68
    return-object p0

    .line 69
    :goto_1
    monitor-exit v1

    .line 70
    throw p0
.end method
