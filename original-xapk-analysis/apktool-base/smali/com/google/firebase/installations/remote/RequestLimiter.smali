.class Lcom/google/firebase/installations/remote/RequestLimiter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/firebase/installations/Utils;

.field public b:J

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/firebase/installations/time/SystemClock;->a:Lcom/google/firebase/installations/time/SystemClock;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/firebase/installations/Utils;->b:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    new-instance v0, Lcom/google/firebase/installations/time/SystemClock;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/firebase/installations/time/SystemClock;->a:Lcom/google/firebase/installations/time/SystemClock;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/google/firebase/installations/time/SystemClock;->a:Lcom/google/firebase/installations/time/SystemClock;

    .line 18
    .line 19
    sget-object v1, Lcom/google/firebase/installations/Utils;->c:Lcom/google/firebase/installations/Utils;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/google/firebase/installations/Utils;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/google/firebase/installations/Utils;-><init>(Lcom/google/firebase/installations/time/SystemClock;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lcom/google/firebase/installations/Utils;->c:Lcom/google/firebase/installations/Utils;

    .line 29
    .line 30
    :cond_1
    sget-object v0, Lcom/google/firebase/installations/Utils;->c:Lcom/google/firebase/installations/Utils;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->a:Lcom/google/firebase/installations/Utils;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->c:I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->a:Lcom/google/firebase/installations/Utils;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/firebase/installations/Utils;->a:Lcom/google/firebase/installations/time/Clock;

    .line 9
    .line 10
    check-cast v0, Lcom/google/firebase/installations/time/SystemClock;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    return v0

    .line 33
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x12c

    .line 7
    .line 8
    if-lt p1, v0, :cond_4

    .line 9
    .line 10
    :cond_0
    const/16 v0, 0x191

    .line 11
    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x194

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->c:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->c:I

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    const/16 v0, 0x1ad

    .line 27
    .line 28
    if-eq p1, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x1f4

    .line 31
    .line 32
    if-lt p1, v0, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x258

    .line 35
    .line 36
    if-ge p1, v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const-wide/32 v0, 0x5265c00

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    :try_start_1
    iget p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->c:I

    .line 45
    .line 46
    int-to-double v0, p1

    .line 47
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iget-object p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->a:Lcom/google/firebase/installations/Utils;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    mul-double/2addr v2, v4

    .line 68
    double-to-long v2, v2

    .line 69
    long-to-double v2, v2

    .line 70
    add-double/2addr v0, v2

    .line 71
    const-wide v2, 0x413b774000000000L    # 1800000.0

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    double-to-long v0, v0

    .line 81
    :try_start_2
    monitor-exit p0

    .line 82
    :goto_1
    iget-object p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->a:Lcom/google/firebase/installations/Utils;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/google/firebase/installations/Utils;->a:Lcom/google/firebase/installations/time/Clock;

    .line 85
    .line 86
    check-cast p1, Lcom/google/firebase/installations/time/SystemClock;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    add-long/2addr v2, v0

    .line 96
    iput-wide v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto :goto_3

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :try_start_4
    throw p1

    .line 105
    :cond_4
    :goto_2
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    const/4 p1, 0x0

    .line 107
    :try_start_5
    iput p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 108
    .line 109
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 112
    :catchall_2
    move-exception p1

    .line 113
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 114
    :try_start_8
    throw p1

    .line 115
    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 116
    throw p1
.end method
