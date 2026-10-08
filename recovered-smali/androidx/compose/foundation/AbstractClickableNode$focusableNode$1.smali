.class final synthetic Landroidx/compose/foundation/AbstractClickableNode$focusableNode$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    iget-object v1, v1, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/compose/foundation/AbstractClickableNode;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/compose/foundation/AbstractClickableNode;->N:Landroidx/collection/MutableLongObjectMap;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/foundation/AbstractClickableNode;->j1()V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v0, v1, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    iget-object v0, v2, Landroidx/collection/LongObjectMap;->c:[Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v4, v2, Landroidx/collection/LongObjectMap;->a:[J

    .line 31
    .line 32
    array-length v5, v4

    .line 33
    add-int/lit8 v5, v5, -0x2

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    if-ltz v5, :cond_4

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_0
    aget-wide v9, v4, v8

    .line 40
    .line 41
    not-long v11, v9

    .line 42
    const/4 v13, 0x7

    .line 43
    shl-long/2addr v11, v13

    .line 44
    and-long/2addr v11, v9

    .line 45
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v11, v13

    .line 51
    cmp-long v11, v11, v13

    .line 52
    .line 53
    if-eqz v11, :cond_3

    .line 54
    .line 55
    sub-int v11, v8, v5

    .line 56
    .line 57
    not-int v11, v11

    .line 58
    ushr-int/lit8 v11, v11, 0x1f

    .line 59
    .line 60
    const/16 v12, 0x8

    .line 61
    .line 62
    rsub-int/lit8 v11, v11, 0x8

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    :goto_1
    if-ge v13, v11, :cond_2

    .line 66
    .line 67
    const-wide/16 v14, 0xff

    .line 68
    .line 69
    and-long/2addr v14, v9

    .line 70
    const-wide/16 v16, 0x80

    .line 71
    .line 72
    cmp-long v14, v14, v16

    .line 73
    .line 74
    if-gez v14, :cond_1

    .line 75
    .line 76
    shl-int/lit8 v14, v8, 0x3

    .line 77
    .line 78
    add-int/2addr v14, v13

    .line 79
    aget-object v14, v0, v14

    .line 80
    .line 81
    check-cast v14, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$1$1;

    .line 88
    .line 89
    invoke-direct {v7, v1, v14, v3}, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$1$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v15, v3, v3, v7, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 93
    .line 94
    .line 95
    :cond_1
    shr-long/2addr v9, v12

    .line 96
    add-int/lit8 v13, v13, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    if-ne v11, v12, :cond_4

    .line 100
    .line 101
    :cond_3
    if-eq v8, v5, :cond_4

    .line 102
    .line 103
    add-int/lit8 v8, v8, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, v1, Landroidx/compose/foundation/AbstractClickableNode;->P:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-instance v5, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$2$1;

    .line 115
    .line 116
    invoke-direct {v5, v1, v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$2$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v3, v3, v5, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {v2}, Landroidx/collection/MutableLongObjectMap;->c()V

    .line 123
    .line 124
    .line 125
    iput-object v3, v1, Landroidx/compose/foundation/AbstractClickableNode;->P:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroidx/compose/foundation/AbstractClickableNode;->k1()V

    .line 128
    .line 129
    .line 130
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object v0
.end method
