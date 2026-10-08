.class final Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
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
    c = "androidx.collection.MutableSetWrapper$iterator$1$iterator$1"
    f = "ScatterSet.kt"
    l = {
        0x4a4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public l:Landroidx/collection/MutableSetWrapper$iterator$1;

.field public m:Ljava/lang/Object;

.field public n:[J

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:I

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Landroidx/collection/MutableSetWrapper;

.field public final synthetic w:Landroidx/collection/MutableSetWrapper$iterator$1;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableSetWrapper;Landroidx/collection/MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->v:Landroidx/collection/MutableSetWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->w:Landroidx/collection/MutableSetWrapper$iterator$1;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->v:Landroidx/collection/MutableSetWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->w:Landroidx/collection/MutableSetWrapper$iterator$1;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;Landroidx/collection/MutableSetWrapper$iterator$1;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->u:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->t:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v5, :cond_0

    .line 14
    .line 15
    iget v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->r:I

    .line 16
    .line 17
    iget v6, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->q:I

    .line 18
    .line 19
    iget-wide v7, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->s:J

    .line 20
    .line 21
    iget v9, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->p:I

    .line 22
    .line 23
    iget v10, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->o:I

    .line 24
    .line 25
    iget-object v11, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->n:[J

    .line 26
    .line 27
    iget-object v12, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v12, Landroidx/collection/MutableSetWrapper;

    .line 30
    .line 31
    iget-object v13, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->l:Landroidx/collection/MutableSetWrapper$iterator$1;

    .line 32
    .line 33
    iget-object v14, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->u:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v14, Lkotlin/sequences/SequenceScope;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    return-object v0

    .line 49
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->u:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lkotlin/sequences/SequenceScope;

    .line 55
    .line 56
    iget-object v6, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->v:Landroidx/collection/MutableSetWrapper;

    .line 57
    .line 58
    iget-object v7, v6, Landroidx/collection/MutableSetWrapper;->k:Landroidx/collection/MutableScatterSet;

    .line 59
    .line 60
    iget-object v7, v7, Landroidx/collection/ScatterSet;->a:[J

    .line 61
    .line 62
    array-length v8, v7

    .line 63
    add-int/lit8 v8, v8, -0x2

    .line 64
    .line 65
    if-ltz v8, :cond_5

    .line 66
    .line 67
    iget-object v9, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->w:Landroidx/collection/MutableSetWrapper$iterator$1;

    .line 68
    .line 69
    move v10, v3

    .line 70
    :goto_0
    aget-wide v11, v7, v10

    .line 71
    .line 72
    not-long v13, v11

    .line 73
    const/4 v15, 0x7

    .line 74
    shl-long/2addr v13, v15

    .line 75
    and-long/2addr v13, v11

    .line 76
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    and-long/2addr v13, v15

    .line 82
    cmp-long v13, v13, v15

    .line 83
    .line 84
    if-eqz v13, :cond_4

    .line 85
    .line 86
    sub-int v13, v10, v8

    .line 87
    .line 88
    not-int v13, v13

    .line 89
    ushr-int/lit8 v13, v13, 0x1f

    .line 90
    .line 91
    rsub-int/lit8 v13, v13, 0x8

    .line 92
    .line 93
    move-object v14, v2

    .line 94
    move v2, v3

    .line 95
    move-wide/from16 v19, v11

    .line 96
    .line 97
    move-object v12, v6

    .line 98
    move-object v11, v7

    .line 99
    move v6, v13

    .line 100
    move-object v13, v9

    .line 101
    move v9, v10

    .line 102
    move v10, v8

    .line 103
    move-wide/from16 v7, v19

    .line 104
    .line 105
    :goto_1
    if-ge v2, v6, :cond_3

    .line 106
    .line 107
    const-wide/16 v15, 0xff

    .line 108
    .line 109
    and-long/2addr v15, v7

    .line 110
    const-wide/16 v17, 0x80

    .line 111
    .line 112
    cmp-long v15, v15, v17

    .line 113
    .line 114
    if-gez v15, :cond_2

    .line 115
    .line 116
    shl-int/lit8 v3, v9, 0x3

    .line 117
    .line 118
    add-int/2addr v3, v2

    .line 119
    iput v3, v13, Landroidx/collection/MutableSetWrapper$iterator$1;->j:I

    .line 120
    .line 121
    iget-object v4, v12, Landroidx/collection/MutableSetWrapper;->k:Landroidx/collection/MutableScatterSet;

    .line 122
    .line 123
    iget-object v4, v4, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 124
    .line 125
    aget-object v3, v4, v3

    .line 126
    .line 127
    iput-object v14, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->u:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v13, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->l:Landroidx/collection/MutableSetWrapper$iterator$1;

    .line 130
    .line 131
    iput-object v12, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->m:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v11, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->n:[J

    .line 134
    .line 135
    iput v10, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->o:I

    .line 136
    .line 137
    iput v9, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->p:I

    .line 138
    .line 139
    iput-wide v7, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->s:J

    .line 140
    .line 141
    iput v6, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->q:I

    .line 142
    .line 143
    iput v2, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->r:I

    .line 144
    .line 145
    iput v5, v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;->t:I

    .line 146
    .line 147
    invoke-virtual {v14, v3, v0}, Lkotlin/sequences/SequenceScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 151
    .line 152
    return-object v1

    .line 153
    :cond_2
    :goto_2
    shr-long/2addr v7, v4

    .line 154
    add-int/2addr v2, v5

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    if-ne v6, v4, :cond_5

    .line 157
    .line 158
    move v8, v10

    .line 159
    move-object v7, v11

    .line 160
    move-object v6, v12

    .line 161
    move-object v2, v14

    .line 162
    move v10, v9

    .line 163
    move-object v9, v13

    .line 164
    :cond_4
    if-eq v10, v8, :cond_5

    .line 165
    .line 166
    add-int/lit8 v10, v10, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object v0
.end method
