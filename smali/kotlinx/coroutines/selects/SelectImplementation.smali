.class public Lkotlinx/coroutines/selects/SelectImplementation;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/CancelHandler;
.implements Lkotlinx/coroutines/selects/SelectInstance;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/CancelHandler;",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "Lkotlinx/coroutines/Waiter;"
    }
.end annotation


# static fields
.field public static final synthetic o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final j:Lkotlin/coroutines/CoroutineContext;

.field public k:Ljava/util/ArrayList;

.field public l:Lkotlinx/coroutines/internal/Segment;

.field public m:I

.field public n:Ljava/lang/Object;

.field private volatile synthetic state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "state$volatile"

    .line 4
    .line 5
    const-class v2, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->j:Lkotlin/coroutines/CoroutineContext;

    .line 5
    .line 6
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 7
    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->m:I

    .line 20
    .line 21
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 22
    .line 23
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->l:Lkotlinx/coroutines/internal/Segment;

    .line 2
    .line 3
    iput p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->m:I

    .line 4
    .line 5
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :goto_0
    sget-object p1, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->c:Lkotlinx/coroutines/internal/Symbol;

    .line 13
    .line 14
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :goto_1
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 40
    .line 41
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 46
    .line 47
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eq v1, v0, :cond_0

    .line 58
    .line 59
    goto :goto_0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 11
    .line 12
    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v3, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 35
    .line 36
    if-eq v5, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 43
    .line 44
    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lkotlinx/coroutines/selects/SelectKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 48
    .line 49
    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v4, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 52
    .line 53
    :goto_1
    iget-object p0, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->c:Lkotlin/jvm/functions/Function3;

    .line 54
    .line 55
    iget-object v0, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 56
    .line 57
    invoke-interface {p0, v0, v4, v2}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object v0, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->d:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 62
    .line 63
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 64
    .line 65
    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->o:I

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
    iput v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput v5, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->o:I

    .line 59
    .line 60
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {p1, v5, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    sget-object v2, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    sget-object v8, Lkotlinx/coroutines/selects/SelectKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 81
    .line 82
    if-ne v6, v8, :cond_7

    .line 83
    .line 84
    :cond_5
    invoke-virtual {v2, p0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_6

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->y(Lkotlinx/coroutines/NotCompleted;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    if-eq v8, v6, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    instance-of v9, v6, Ljava/util/List;

    .line 102
    .line 103
    if-eqz v9, :cond_a

    .line 104
    .line 105
    :cond_8
    invoke-virtual {v2, p0, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_9

    .line 110
    .line 111
    check-cast v6, Ljava/lang/Iterable;

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/selects/SelectImplementation;->e(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iput-object v3, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->f:Lkotlinx/coroutines/internal/Segment;

    .line 135
    .line 136
    const/4 v7, -0x1

    .line 137
    iput v7, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->g:I

    .line 138
    .line 139
    invoke-virtual {p0, v6, v5}, Lkotlinx/coroutines/selects/SelectImplementation;->f(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    if-eq v7, v6, :cond_8

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_a
    instance-of v2, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 151
    .line 152
    if-eqz v2, :cond_f

    .line 153
    .line 154
    check-cast v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 155
    .line 156
    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 157
    .line 158
    iget-object v5, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->e:Lkotlin/jvm/functions/Function3;

    .line 159
    .line 160
    if-eqz v5, :cond_b

    .line 161
    .line 162
    invoke-interface {v5, p0, v3, v2}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v3, v2

    .line 167
    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 168
    .line 169
    :cond_b
    invoke-virtual {p1, v7, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 177
    .line 178
    if-ne p1, v2, :cond_c

    .line 179
    .line 180
    move-object v7, p1

    .line 181
    :cond_c
    if-ne v7, v1, :cond_d

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_d
    :goto_4
    iput v4, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->o:I

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-ne p0, v1, :cond_e

    .line 191
    .line 192
    :goto_5
    return-object v1

    .line 193
    :cond_e
    return-object p0

    .line 194
    :cond_f
    const-string p0, "unexpected state: "

    .line 195
    .line 196
    invoke-static {v6, p0}, Lf7;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-object v3
.end method

.method public final e(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .locals 3

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 23
    .line 24
    iget-object v2, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 25
    .line 26
    if-ne v2, p1, :cond_1

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_2
    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Clause with object "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " is not found"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final f(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V
    .locals 4

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    instance-of v2, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 43
    .line 44
    iget-object v3, v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 45
    .line 46
    if-eq v3, v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string p0, "Cannot use select clauses on the same object: "

    .line 50
    .line 51
    invoke-static {v0, p0}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    :goto_1
    iget-object v2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->b:Lkotlin/jvm/functions/Function3;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-interface {v2, v0, p0, v3}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 62
    .line 63
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 64
    .line 65
    if-ne v0, v2, :cond_5

    .line 66
    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->k:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->l:Lkotlinx/coroutines/internal/Segment;

    .line 78
    .line 79
    iput-object p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->f:Lkotlinx/coroutines/internal/Segment;

    .line 80
    .line 81
    iget p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->m:I

    .line 82
    .line 83
    iput p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->g:I

    .line 84
    .line 85
    iput-object v3, p0, Lkotlinx/coroutines/selects/SelectImplementation;->l:Lkotlinx/coroutines/internal/Segment;

    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->m:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    :goto_0
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->e(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v5, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->e:Lkotlin/jvm/functions/Function3;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v5, p0, v6, p2}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    move-object v6, v5

    .line 30
    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 39
    .line 40
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 41
    .line 42
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-interface {v1, p1, v6}, Lkotlinx/coroutines/CancellableContinuation;->l(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/internal/Symbol;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 51
    .line 52
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->n:Ljava/lang/Object;

    .line 53
    .line 54
    return v4

    .line 55
    :cond_2
    invoke-interface {v1, p1}, Lkotlinx/coroutines/CancellableContinuation;->t(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return v3

    .line 59
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eq v5, v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_d

    .line 73
    .line 74
    instance-of v2, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->c:Lkotlinx/coroutines/internal/Symbol;

    .line 80
    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    return v4

    .line 88
    :cond_6
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 89
    .line 90
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_9

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_7
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eq v3, v1, :cond_7

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_9
    instance-of v2, v1, Ljava/util/List;

    .line 115
    .line 116
    if-eqz v2, :cond_c

    .line 117
    .line 118
    move-object v2, v1

    .line 119
    check-cast v2, Ljava/util/Collection;

    .line 120
    .line 121
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :cond_a
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_b

    .line 130
    .line 131
    :goto_1
    const/4 p0, 0x1

    .line 132
    return p0

    .line 133
    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-eq v3, v1, :cond_a

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_c
    const-string p0, "Unexpected state: "

    .line 142
    .line 143
    invoke-static {v1, p0}, Lf7;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v3

    .line 147
    :cond_d
    :goto_2
    const/4 p0, 0x3

    .line 148
    return p0
.end method
