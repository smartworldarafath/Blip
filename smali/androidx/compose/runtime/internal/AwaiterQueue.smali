.class public final Landroidx/compose/runtime/internal/AwaiterQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Throwable;

.field public final c:Landroidx/compose/runtime/internal/AtomicInt;

.field public d:Landroidx/collection/MutableObjectList;

.field public e:Landroidx/collection/MutableObjectList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 18
    .line 19
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->d:Landroidx/collection/MutableObjectList;

    .line 25
    .line 26
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->e:Landroidx/collection/MutableObjectList;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->a:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->b:Ljava/lang/Throwable;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->b(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Landroidx/compose/runtime/CancellationHandle$Companion;->a:Lu2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/lit8 v4, v3, 0x1

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    const v2, 0x7ffffff

    .line 41
    .line 42
    .line 43
    and-int/2addr v2, v4

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    move v2, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v2, v5

    .line 51
    :goto_0
    ushr-int/lit8 v4, v4, 0x1b

    .line 52
    .line 53
    and-int/lit8 v4, v4, 0xf

    .line 54
    .line 55
    iput v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 56
    .line 57
    iget-object v4, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->d:Landroidx/collection/MutableObjectList;

    .line 58
    .line 59
    invoke-virtual {v4, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit v1

    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    :try_start_2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :catchall_1
    move-exception p2

    .line 72
    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->a:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v1

    .line 75
    :try_start_3
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->b:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    :goto_1
    monitor-exit v1

    .line 80
    goto :goto_4

    .line 81
    :cond_3
    :try_start_4
    iput-object p2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->b:Ljava/lang/Throwable;

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->d:Landroidx/collection/MutableObjectList;

    .line 84
    .line 85
    iget-object v4, v2, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 86
    .line 87
    iget v2, v2, Landroidx/collection/ObjectList;->b:I

    .line 88
    .line 89
    :goto_2
    if-ge v5, v2, :cond_4

    .line 90
    .line 91
    aget-object v6, v4, v5

    .line 92
    .line 93
    check-cast v6, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    .line 94
    .line 95
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->b(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_2
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget-object p2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->d:Landroidx/collection/MutableObjectList;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroidx/collection/MutableObjectList;->k()V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 109
    .line 110
    :cond_5
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    ushr-int/lit8 v4, v2, 0x1b

    .line 115
    .line 116
    and-int/lit8 v4, v4, 0xf

    .line 117
    .line 118
    add-int/2addr v4, v3

    .line 119
    and-int/lit8 v4, v4, 0xf

    .line 120
    .line 121
    shl-int/lit8 v4, v4, 0x1b

    .line 122
    .line 123
    invoke-virtual {p2, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 124
    .line 125
    .line 126
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_3
    monitor-exit v1

    .line 131
    throw p0

    .line 132
    :cond_6
    :goto_4
    new-instance p2, Landroidx/compose/runtime/OneShotCancellationHandle;

    .line 133
    .line 134
    new-instance v1, Ln1;

    .line 135
    .line 136
    invoke-direct {v1, p1, p0, v0, v3}, Ln1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, v1}, Landroidx/compose/runtime/OneShotCancellationHandle;-><init>(Ln1;)V

    .line 140
    .line 141
    .line 142
    return-object p2

    .line 143
    :goto_5
    monitor-exit v1

    .line 144
    throw p0
.end method

.method public final b(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->d:Landroidx/collection/MutableObjectList;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->e:Landroidx/collection/MutableObjectList;

    .line 7
    .line 8
    iput-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->d:Landroidx/collection/MutableObjectList;

    .line 9
    .line 10
    iput-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->e:Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    ushr-int/lit8 v3, v2, 0x1b

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0xf

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    and-int/lit8 v3, v3, 0xf

    .line 25
    .line 26
    shl-int/lit8 v3, v3, 0x1b

    .line 27
    .line 28
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget p0, v1, Landroidx/collection/ObjectList;->b:I

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-ge v2, p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0

    .line 57
    throw p0
.end method
