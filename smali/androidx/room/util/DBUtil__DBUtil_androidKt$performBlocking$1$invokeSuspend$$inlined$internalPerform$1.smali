.class public final Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1"
    f = "DBUtil.android.kt"
    l = {
        0x38,
        0x39,
        0x3b,
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:Landroidx/room/Transactor$SQLiteTransactionType;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Z

.field public final synthetic r:Z

.field public final synthetic s:Landroidx/room/RoomDatabase;

.field public final synthetic t:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;ZZ)V
    .locals 0

    .line 1
    iput-boolean p4, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->q:Z

    .line 2
    .line 3
    iput-boolean p5, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->r:Z

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->s:Landroidx/room/RoomDatabase;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->t:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->s:Landroidx/room/RoomDatabase;

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->t:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-boolean v4, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->q:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->r:Z

    .line 10
    .line 11
    move-object v2, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->o:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->t:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->s:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    iget-boolean v5, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->r:Z

    .line 11
    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    if-eq v1, v9, :cond_3

    .line 19
    .line 20
    if-eq v1, v8, :cond_2

    .line 21
    .line 22
    if-eq v1, v7, :cond_1

    .line 23
    .line 24
    if-ne v1, v6, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v3

    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroidx/room/Transactor;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->n:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 49
    .line 50
    iget-object v8, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v8, Landroidx/room/Transactor;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->n:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 59
    .line 60
    iget-object v9, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v9, Landroidx/room/Transactor;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroidx/room/Transactor;

    .line 74
    .line 75
    iget-boolean v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->q:Z

    .line 76
    .line 77
    if-eqz v1, :cond_e

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    sget-object v1, Landroidx/room/Transactor$SQLiteTransactionType;->j:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    sget-object v1, Landroidx/room/Transactor$SQLiteTransactionType;->k:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 85
    .line 86
    :goto_0
    if-nez v5, :cond_9

    .line 87
    .line 88
    iput-object p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->n:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 91
    .line 92
    iput v9, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->o:I

    .line 93
    .line 94
    invoke-interface {p1, p0}, Landroidx/room/Transactor;->b(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    if-ne v9, v0, :cond_6

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    move-object v10, v9

    .line 102
    move-object v9, p1

    .line 103
    move-object p1, v10

    .line 104
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()Landroidx/room/InvalidationTracker;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object v9, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->n:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 119
    .line 120
    iput v8, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->o:I

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Landroidx/room/InvalidationTracker;->b(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v0, :cond_7

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_7
    move-object v8, v9

    .line 130
    :goto_2
    move-object p1, v1

    .line 131
    move-object v1, v8

    .line 132
    goto :goto_3

    .line 133
    :cond_8
    move-object p1, v1

    .line 134
    move-object v1, v9

    .line 135
    goto :goto_3

    .line 136
    :cond_9
    move-object v10, v1

    .line 137
    move-object v1, p1

    .line 138
    move-object p1, v10

    .line 139
    :goto_3
    new-instance v8, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1$1;

    .line 140
    .line 141
    invoke-direct {v8, v3, v2}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v3, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->n:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 147
    .line 148
    iput v7, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->o:I

    .line 149
    .line 150
    invoke-interface {v1, p1, v8, p0}, Landroidx/room/Transactor;->a(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-ne p1, v0, :cond_a

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_a
    :goto_4
    if-nez v5, :cond_d

    .line 158
    .line 159
    iput-object p1, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->p:Ljava/lang/Object;

    .line 160
    .line 161
    iput v6, p0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;->o:I

    .line 162
    .line 163
    invoke-interface {v1, p0}, Landroidx/room/Transactor;->b(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    if-ne p0, v0, :cond_b

    .line 168
    .line 169
    :goto_5
    return-object v0

    .line 170
    :cond_b
    move-object v10, p1

    .line 171
    move-object p1, p0

    .line 172
    move-object p0, v10

    .line 173
    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_c

    .line 180
    .line 181
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()Landroidx/room/InvalidationTracker;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object v0, p1, Landroidx/room/InvalidationTracker;->b:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 186
    .line 187
    iget-object v1, p1, Landroidx/room/InvalidationTracker;->e:Lx9;

    .line 188
    .line 189
    iget-object p1, p1, Landroidx/room/InvalidationTracker;->f:Lx9;

    .line 190
    .line 191
    invoke-virtual {v0, v1, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->e(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    return-object p0

    .line 195
    :cond_d
    return-object p1

    .line 196
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    check-cast p1, Landroidx/room/coroutines/RawConnectionAccessor;

    .line 200
    .line 201
    invoke-interface {p1}, Landroidx/room/coroutines/RawConnectionAccessor;->d()Landroidx/sqlite/SQLiteConnection;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0
.end method
