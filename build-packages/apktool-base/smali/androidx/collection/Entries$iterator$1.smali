.class final Landroidx/collection/Entries$iterator$1;
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
        "-",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.collection.Entries$iterator$1"
    f = "ScatterMap.kt"
    l = {
        0x586
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public l:Ljava/lang/Object;

.field public m:[J

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Landroidx/collection/Entries;


# direct methods
.method public constructor <init>(Landroidx/collection/Entries;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/collection/Entries$iterator$1;->u:Landroidx/collection/Entries;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Entries$iterator$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/collection/Entries$iterator$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/collection/Entries$iterator$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/collection/Entries$iterator$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/collection/Entries$iterator$1;->u:Landroidx/collection/Entries;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/collection/Entries$iterator$1;-><init>(Landroidx/collection/Entries;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/collection/Entries$iterator$1;->t:Ljava/lang/Object;

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
    iget v2, v0, Landroidx/collection/Entries$iterator$1;->s:I

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
    iget v2, v0, Landroidx/collection/Entries$iterator$1;->q:I

    .line 16
    .line 17
    iget v6, v0, Landroidx/collection/Entries$iterator$1;->p:I

    .line 18
    .line 19
    iget-wide v7, v0, Landroidx/collection/Entries$iterator$1;->r:J

    .line 20
    .line 21
    iget v9, v0, Landroidx/collection/Entries$iterator$1;->o:I

    .line 22
    .line 23
    iget v10, v0, Landroidx/collection/Entries$iterator$1;->n:I

    .line 24
    .line 25
    iget-object v11, v0, Landroidx/collection/Entries$iterator$1;->m:[J

    .line 26
    .line 27
    iget-object v12, v0, Landroidx/collection/Entries$iterator$1;->l:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v12, Landroidx/collection/Entries;

    .line 30
    .line 31
    iget-object v13, v0, Landroidx/collection/Entries$iterator$1;->t:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v13, Lkotlin/sequences/SequenceScope;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0

    .line 47
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Landroidx/collection/Entries$iterator$1;->t:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lkotlin/sequences/SequenceScope;

    .line 53
    .line 54
    iget-object v6, v0, Landroidx/collection/Entries$iterator$1;->u:Landroidx/collection/Entries;

    .line 55
    .line 56
    iget-object v7, v6, Landroidx/collection/Entries;->j:Landroidx/collection/ScatterMap;

    .line 57
    .line 58
    iget-object v7, v7, Landroidx/collection/ScatterMap;->a:[J

    .line 59
    .line 60
    array-length v8, v7

    .line 61
    add-int/lit8 v8, v8, -0x2

    .line 62
    .line 63
    if-ltz v8, :cond_5

    .line 64
    .line 65
    move v9, v3

    .line 66
    :goto_0
    aget-wide v10, v7, v9

    .line 67
    .line 68
    not-long v12, v10

    .line 69
    const/4 v14, 0x7

    .line 70
    shl-long/2addr v12, v14

    .line 71
    and-long/2addr v12, v10

    .line 72
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr v12, v14

    .line 78
    cmp-long v12, v12, v14

    .line 79
    .line 80
    if-eqz v12, :cond_4

    .line 81
    .line 82
    sub-int v12, v9, v8

    .line 83
    .line 84
    not-int v12, v12

    .line 85
    ushr-int/lit8 v12, v12, 0x1f

    .line 86
    .line 87
    rsub-int/lit8 v12, v12, 0x8

    .line 88
    .line 89
    move v13, v12

    .line 90
    move-object v12, v6

    .line 91
    move v6, v13

    .line 92
    move-object v13, v2

    .line 93
    move v2, v3

    .line 94
    move-wide/from16 v18, v10

    .line 95
    .line 96
    move-object v11, v7

    .line 97
    move v10, v8

    .line 98
    move-wide/from16 v7, v18

    .line 99
    .line 100
    :goto_1
    if-ge v2, v6, :cond_3

    .line 101
    .line 102
    const-wide/16 v14, 0xff

    .line 103
    .line 104
    and-long/2addr v14, v7

    .line 105
    const-wide/16 v16, 0x80

    .line 106
    .line 107
    cmp-long v14, v14, v16

    .line 108
    .line 109
    if-gez v14, :cond_2

    .line 110
    .line 111
    shl-int/lit8 v3, v9, 0x3

    .line 112
    .line 113
    add-int/2addr v3, v2

    .line 114
    new-instance v4, Landroidx/collection/MapEntry;

    .line 115
    .line 116
    iget-object v14, v12, Landroidx/collection/Entries;->j:Landroidx/collection/ScatterMap;

    .line 117
    .line 118
    iget-object v15, v14, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 119
    .line 120
    aget-object v15, v15, v3

    .line 121
    .line 122
    iget-object v14, v14, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 123
    .line 124
    aget-object v3, v14, v3

    .line 125
    .line 126
    invoke-direct {v4, v15, v3}, Landroidx/collection/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput-object v13, v0, Landroidx/collection/Entries$iterator$1;->t:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v12, v0, Landroidx/collection/Entries$iterator$1;->l:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v11, v0, Landroidx/collection/Entries$iterator$1;->m:[J

    .line 134
    .line 135
    iput v10, v0, Landroidx/collection/Entries$iterator$1;->n:I

    .line 136
    .line 137
    iput v9, v0, Landroidx/collection/Entries$iterator$1;->o:I

    .line 138
    .line 139
    iput-wide v7, v0, Landroidx/collection/Entries$iterator$1;->r:J

    .line 140
    .line 141
    iput v6, v0, Landroidx/collection/Entries$iterator$1;->p:I

    .line 142
    .line 143
    iput v2, v0, Landroidx/collection/Entries$iterator$1;->q:I

    .line 144
    .line 145
    iput v5, v0, Landroidx/collection/Entries$iterator$1;->s:I

    .line 146
    .line 147
    invoke-virtual {v13, v4, v0}, Lkotlin/sequences/SequenceScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

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
    move-object v2, v13

    .line 162
    :cond_4
    if-eq v9, v8, :cond_5

    .line 163
    .line 164
    add-int/lit8 v9, v9, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object v0
.end method
