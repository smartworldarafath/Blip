.class final Landroidx/datastore/core/DataStoreImpl$data$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataStoreImpl$data$1"
    f = "DataStoreImpl.kt"
    l = {
        0x48,
        0x4a,
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:Landroidx/datastore/core/Data;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/datastore/core/DataStoreImpl;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->q:Landroidx/datastore/core/DataStoreImpl;

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
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$data$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->q:Landroidx/datastore/core/DataStoreImpl;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$data$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->o:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->q:Landroidx/datastore/core/DataStoreImpl;

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v6, :cond_1

    .line 18
    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v7

    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->n:Landroidx/datastore/core/Data;

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object v4, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 58
    .line 59
    iput v4, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->o:I

    .line 60
    .line 61
    iget-object v1, v5, Landroidx/datastore/core/DataStoreImpl;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$readState$2;

    .line 68
    .line 69
    invoke-direct {v4, v5, v7}, Landroidx/datastore/core/DataStoreImpl$readState$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-ne v1, v0, :cond_4

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_4
    move-object v4, p1

    .line 81
    move-object p1, v1

    .line 82
    :goto_0
    move-object v1, p1

    .line 83
    check-cast v1, Landroidx/datastore/core/State;

    .line 84
    .line 85
    instance-of p1, v1, Landroidx/datastore/core/Data;

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    move-object p1, v1

    .line 90
    check-cast p1, Landroidx/datastore/core/Data;

    .line 91
    .line 92
    iget-object v8, p1, Landroidx/datastore/core/Data;->b:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object v4, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->n:Landroidx/datastore/core/Data;

    .line 97
    .line 98
    iput v6, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->o:I

    .line 99
    .line 100
    invoke-interface {v4, v8, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v0, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    instance-of p1, v1, Landroidx/datastore/core/UnInitialized;

    .line 108
    .line 109
    if-nez p1, :cond_b

    .line 110
    .line 111
    instance-of p1, v1, Landroidx/datastore/core/ReadException;

    .line 112
    .line 113
    if-nez p1, :cond_a

    .line 114
    .line 115
    instance-of p1, v1, Landroidx/datastore/core/Final;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    :goto_1
    iget-object p1, v5, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 121
    .line 122
    iget-object p1, p1, Landroidx/datastore/core/DataStoreInMemoryCache;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 123
    .line 124
    new-instance v8, Landroidx/datastore/core/DataStoreImpl$data$1$1;

    .line 125
    .line 126
    invoke-direct {v8, v5, v7}, Landroidx/datastore/core/DataStoreImpl$data$1$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 127
    .line 128
    .line 129
    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 130
    .line 131
    invoke-direct {v9, v8, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$2;

    .line 135
    .line 136
    invoke-direct {p1, v6, v7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 137
    .line 138
    .line 139
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 140
    .line 141
    invoke-direct {v6, v9, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 145
    .line 146
    invoke-direct {p1, v1, v7}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Landroidx/datastore/core/State;Lkotlin/coroutines/Continuation;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    .line 150
    .line 151
    invoke-direct {v1, p1, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1;

    .line 155
    .line 156
    invoke-direct {p1, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$data$1$5;

    .line 160
    .line 161
    invoke-direct {v1, v5, v7}, Landroidx/datastore/core/DataStoreImpl$data$1$5;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 162
    .line 163
    .line 164
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    .line 165
    .line 166
    invoke-direct {v5, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;-><init>(Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1;Lkotlin/jvm/functions/Function3;)V

    .line 167
    .line 168
    .line 169
    iput-object v7, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->p:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v7, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->n:Landroidx/datastore/core/Data;

    .line 172
    .line 173
    iput v3, p0, Landroidx/datastore/core/DataStoreImpl$data$1;->o:I

    .line 174
    .line 175
    instance-of p1, v4, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 176
    .line 177
    if-nez p1, :cond_9

    .line 178
    .line 179
    invoke-virtual {v5, v4, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    if-ne p0, v0, :cond_7

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_7
    move-object p0, v2

    .line 187
    :goto_2
    if-ne p0, v0, :cond_8

    .line 188
    .line 189
    :goto_3
    return-object v0

    .line 190
    :cond_8
    :goto_4
    return-object v2

    .line 191
    :cond_9
    check-cast v4, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 192
    .line 193
    iget-object p0, v4, Lkotlinx/coroutines/flow/ThrowingCollector;->j:Ljava/lang/Throwable;

    .line 194
    .line 195
    throw p0

    .line 196
    :cond_a
    check-cast v1, Landroidx/datastore/core/ReadException;

    .line 197
    .line 198
    iget-object p0, v1, Landroidx/datastore/core/ReadException;->b:Ljava/lang/Throwable;

    .line 199
    .line 200
    throw p0

    .line 201
    :cond_b
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 202
    .line 203
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object v7
.end method
