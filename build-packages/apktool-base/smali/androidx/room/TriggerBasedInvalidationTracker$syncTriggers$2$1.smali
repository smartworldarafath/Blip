.class final Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/room/Transactor;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1"
    f = "InvalidationTracker.kt"
    l = {
        0x12d,
        0x135
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/room/TriggerBasedInvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->p:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/room/Transactor;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->p:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->n:I

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v6, :cond_1

    .line 15
    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v5

    .line 28
    :cond_1
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroidx/room/Transactor;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object/from16 v7, p1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->o:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Landroidx/room/Transactor;

    .line 44
    .line 45
    iput-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->o:Ljava/lang/Object;

    .line 46
    .line 47
    iput v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->n:I

    .line 48
    .line 49
    invoke-interface {v2, v0}, Landroidx/room/Transactor;->b(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-ne v7, v1, :cond_3

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_3
    :goto_0
    check-cast v7, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_4
    iget-object v7, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->p:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 68
    .line 69
    iget-object v8, v7, Landroidx/room/TriggerBasedInvalidationTracker;->h:Landroidx/room/ObservedTableStates;

    .line 70
    .line 71
    iget-object v9, v8, Landroidx/room/ObservedTableStates;->b:[J

    .line 72
    .line 73
    iget-object v10, v8, Landroidx/room/ObservedTableStates;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    .line 75
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget-boolean v11, v8, Landroidx/room/ObservedTableStates;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    if-nez v11, :cond_5

    .line 81
    .line 82
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    .line 84
    .line 85
    move-object v13, v5

    .line 86
    goto :goto_6

    .line 87
    :cond_5
    const/4 v11, 0x0

    .line 88
    :try_start_1
    iput-boolean v11, v8, Landroidx/room/ObservedTableStates;->d:Z

    .line 89
    .line 90
    array-length v12, v9

    .line 91
    new-array v13, v12, [Landroidx/room/ObservedTableStates$ObserveOp;

    .line 92
    .line 93
    move v14, v11

    .line 94
    move v15, v14

    .line 95
    :goto_1
    if-ge v14, v12, :cond_9

    .line 96
    .line 97
    aget-wide v16, v9, v14

    .line 98
    .line 99
    const-wide/16 v18, 0x0

    .line 100
    .line 101
    cmp-long v16, v16, v18

    .line 102
    .line 103
    if-lez v16, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    move v6, v11

    .line 107
    :goto_2
    iget-object v11, v8, Landroidx/room/ObservedTableStates;->c:[Z

    .line 108
    .line 109
    aget-boolean v4, v11, v14

    .line 110
    .line 111
    if-eq v6, v4, :cond_8

    .line 112
    .line 113
    aput-boolean v6, v11, v14

    .line 114
    .line 115
    if-eqz v6, :cond_7

    .line 116
    .line 117
    sget-object v4, Landroidx/room/ObservedTableStates$ObserveOp;->k:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 118
    .line 119
    :goto_3
    const/4 v15, 0x1

    .line 120
    goto :goto_4

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto :goto_9

    .line 123
    :cond_7
    sget-object v4, Landroidx/room/ObservedTableStates$ObserveOp;->l:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_8
    sget-object v4, Landroidx/room/ObservedTableStates$ObserveOp;->j:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 127
    .line 128
    :goto_4
    aput-object v4, v13, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    add-int/lit8 v14, v14, 0x1

    .line 131
    .line 132
    const/4 v4, 0x2

    .line 133
    const/4 v6, 0x1

    .line 134
    const/4 v11, 0x0

    .line 135
    goto :goto_1

    .line 136
    :cond_9
    if-eqz v15, :cond_a

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_a
    move-object v13, v5

    .line 140
    :goto_5
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    .line 142
    .line 143
    :goto_6
    if-eqz v13, :cond_b

    .line 144
    .line 145
    sget-object v4, Landroidx/room/Transactor$SQLiteTransactionType;->k:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 146
    .line 147
    new-instance v6, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;

    .line 148
    .line 149
    invoke-direct {v6, v13, v7, v2, v5}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;-><init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)V

    .line 150
    .line 151
    .line 152
    iput-object v5, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->o:Ljava/lang/Object;

    .line 153
    .line 154
    const/4 v5, 0x2

    .line 155
    iput v5, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->n:I

    .line 156
    .line 157
    invoke-interface {v2, v4, v6, v0}, Landroidx/room/Transactor;->a(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-ne v0, v1, :cond_b

    .line 162
    .line 163
    :goto_7
    return-object v1

    .line 164
    :cond_b
    :goto_8
    return-object v3

    .line 165
    :goto_9
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    .line 167
    .line 168
    throw v0
.end method
