.class public abstract Lkotlinx/io/SegmentPool;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlinx/io/Segment;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    new-instance v2, Lkotlinx/io/Segment;

    .line 5
    .line 6
    invoke-direct {v2, v1}, Lkotlinx/io/Segment;-><init>([B)V

    .line 7
    .line 8
    .line 9
    sput-object v2, Lkotlinx/io/SegmentPool;->a:Lkotlinx/io/Segment;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v1, v2

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput v1, Lkotlinx/io/SegmentPool;->b:I

    .line 28
    .line 29
    div-int/lit8 v3, v1, 0x2

    .line 30
    .line 31
    if-ge v3, v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :goto_0
    sput v2, Lkotlinx/io/SegmentPool;->c:I

    .line 36
    .line 37
    const-string v3, "java.vm.name"

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "Dalvik"

    .line 44
    .line 45
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const-string v3, "0"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v3, "4194304"

    .line 55
    .line 56
    :goto_1
    const-string v4, "kotlinx.io.pool.size.bytes"

    .line 57
    .line 58
    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v3}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-gez v3, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move v0, v3

    .line 79
    :cond_3
    :goto_2
    sput v0, Lkotlinx/io/SegmentPool;->d:I

    .line 80
    .line 81
    div-int/2addr v0, v2

    .line 82
    const/16 v3, 0x2000

    .line 83
    .line 84
    if-ge v0, v3, :cond_4

    .line 85
    .line 86
    move v0, v3

    .line 87
    :cond_4
    sput v0, Lkotlinx/io/SegmentPool;->e:I

    .line 88
    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lkotlinx/io/SegmentPool;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 95
    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 97
    .line 98
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lkotlinx/io/SegmentPool;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 102
    .line 103
    return-void
.end method

.method public static final a()Lkotlinx/io/Segment;
    .locals 10

    .line 1
    sget v0, Lkotlinx/io/SegmentPool;->b:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    sub-long/2addr v0, v2

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    and-long/2addr v0, v4

    .line 16
    long-to-int v0, v0

    .line 17
    :goto_0
    sget-object v1, Lkotlinx/io/SegmentPool;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 18
    .line 19
    sget-object v4, Lkotlinx/io/SegmentPool;->a:Lkotlinx/io/Segment;

    .line 20
    .line 21
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lkotlinx/io/Segment;

    .line 26
    .line 27
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    if-nez v5, :cond_5

    .line 37
    .line 38
    invoke-virtual {v1, v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lkotlinx/io/SegmentPool;->d:I

    .line 42
    .line 43
    if-lez v0, :cond_4

    .line 44
    .line 45
    sget v0, Lkotlinx/io/SegmentPool;->c:I

    .line 46
    .line 47
    int-to-long v8, v0

    .line 48
    sub-long/2addr v8, v2

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    and-long/2addr v1, v8

    .line 58
    long-to-int v1, v1

    .line 59
    move v2, v6

    .line 60
    :goto_1
    sget-object v3, Lkotlinx/io/SegmentPool;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 61
    .line 62
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lkotlinx/io/Segment;

    .line 67
    .line 68
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    if-nez v5, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3, v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    if-ge v2, v0, :cond_2

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    add-int/lit8 v3, v0, -0x1

    .line 85
    .line 86
    and-int/2addr v1, v3

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v0, Lkotlinx/io/Segment;

    .line 91
    .line 92
    invoke-direct {v0}, Lkotlinx/io/Segment;-><init>()V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    iget-object v0, v5, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 97
    .line 98
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iput-object v7, v5, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 102
    .line 103
    iput v6, v5, Lkotlinx/io/Segment;->c:I

    .line 104
    .line 105
    return-object v5

    .line 106
    :cond_4
    new-instance v0, Lkotlinx/io/Segment;

    .line 107
    .line 108
    invoke-direct {v0}, Lkotlinx/io/Segment;-><init>()V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_5
    iget-object v2, v5, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 113
    .line 114
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object v7, v5, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 118
    .line 119
    iput v6, v5, Lkotlinx/io/Segment;->c:I

    .line 120
    .line 121
    return-object v5
.end method
