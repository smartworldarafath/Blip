.class final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic l:[Ljava/lang/String;

.field public final synthetic m:[I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->k:Lkotlinx/coroutines/flow/FlowCollector;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->l:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->m:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->q:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->q:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->o:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->q:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x1

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v8, :cond_2

    .line 43
    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v6

    .line 53
    :cond_2
    :goto_1
    iget-object v0, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->n:[I

    .line 54
    .line 55
    iget-object v1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->m:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object/from16 v16, v1

    .line 63
    .line 64
    move-object v1, v0

    .line 65
    move-object/from16 v0, v16

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v9, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->l:[Ljava/lang/String;

    .line 76
    .line 77
    iget-object v10, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->k:Lkotlinx/coroutines/flow/FlowCollector;

    .line 78
    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    invoke-static {v9}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iput-object v0, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->m:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->n:[I

    .line 88
    .line 89
    iput v8, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->q:I

    .line 90
    .line 91
    invoke-interface {v10, v2, v3}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-ne v2, v4, :cond_8

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    array-length v8, v9

    .line 104
    const/4 v11, 0x0

    .line 105
    move v12, v11

    .line 106
    :goto_2
    if-ge v11, v8, :cond_7

    .line 107
    .line 108
    aget-object v13, v9, v11

    .line 109
    .line 110
    add-int/lit8 v14, v12, 0x1

    .line 111
    .line 112
    iget-object v15, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 113
    .line 114
    if-eqz v15, :cond_6

    .line 115
    .line 116
    check-cast v15, [I

    .line 117
    .line 118
    move-object/from16 p2, v6

    .line 119
    .line 120
    iget-object v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->m:[I

    .line 121
    .line 122
    aget v6, v6, v12

    .line 123
    .line 124
    aget v12, v15, v6

    .line 125
    .line 126
    aget v6, v1, v6

    .line 127
    .line 128
    if-eq v12, v6, :cond_5

    .line 129
    .line 130
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 134
    .line 135
    move-object/from16 v6, p2

    .line 136
    .line 137
    move v12, v14

    .line 138
    goto :goto_2

    .line 139
    :cond_6
    move-object/from16 p2, v6

    .line 140
    .line 141
    const-string v0, "Required value was null."

    .line 142
    .line 143
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object p2

    .line 147
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_8

    .line 152
    .line 153
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iput-object v0, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->m:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->n:[I

    .line 160
    .line 161
    iput v7, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->q:I

    .line 162
    .line 163
    invoke-interface {v10, v2, v3}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-ne v2, v4, :cond_8

    .line 168
    .line 169
    :goto_3
    return-object v4

    .line 170
    :cond_8
    :goto_4
    iget-object v0, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 171
    .line 172
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 173
    .line 174
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object v0
.end method

.method public final bridge synthetic r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [I

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->a([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
