.class final Landroidx/compose/animation/core/Animatable$runAnimation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/compose/animation/core/AnimationResult<",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.Animatable$runAnimation$2"
    f = "Animatable.kt"
    l = {
        0x134
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Landroidx/compose/animation/core/AnimationState;

.field public o:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public p:I

.field public final synthetic q:Landroidx/compose/animation/core/Animatable;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroidx/compose/animation/core/Animation;

.field public final synthetic t:J

.field public final synthetic u:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->q:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->r:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->s:Landroidx/compose/animation/core/Animation;

    .line 6
    .line 7
    iput-wide p4, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->t:J

    .line 8
    .line 9
    iput-object p6, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->u:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 3
    .line 4
    new-instance v0, Landroidx/compose/animation/core/Animatable$runAnimation$2;

    .line 5
    .line 6
    iget-wide v4, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->t:J

    .line 7
    .line 8
    iget-object v6, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->u:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->q:Landroidx/compose/animation/core/Animatable;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->r:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2;->s:Landroidx/compose/animation/core/Animation;

    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable$runAnimation$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroidx/compose/animation/core/Animatable$runAnimation$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget-object v1, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->s:Landroidx/compose/animation/core/Animation;

    .line 4
    .line 5
    iget-object v7, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->q:Landroidx/compose/animation/core/Animatable;

    .line 6
    .line 7
    iget-object v0, v7, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    .line 8
    .line 9
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    iget v2, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->p:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 19
    .line 20
    iget-object v1, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->n:Landroidx/compose/animation/core/AnimationState;

    .line 21
    .line 22
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v2, v7, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 41
    .line 42
    check-cast v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 43
    .line 44
    iget-object v2, v2, Landroidx/compose/animation/core/TwoWayConverterImpl;->a:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    iget-object v4, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->r:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroidx/compose/animation/core/AnimationVector;

    .line 53
    .line 54
    iput-object v2, v0, Landroidx/compose/animation/core/AnimationState;->l:Landroidx/compose/animation/core/AnimationVector;

    .line 55
    .line 56
    invoke-interface {v1}, Landroidx/compose/animation/core/Animation;->g()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v4, v7, Landroidx/compose/animation/core/Animatable;->e:Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 63
    .line 64
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v7, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/runtime/MutableState;

    .line 68
    .line 69
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    iget-object v2, v0, Landroidx/compose/animation/core/AnimationState;->l:Landroidx/compose/animation/core/AnimationVector;

    .line 85
    .line 86
    invoke-static {v2}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 87
    .line 88
    .line 89
    move-result-object v16

    .line 90
    iget-wide v8, v0, Landroidx/compose/animation/core/AnimationState;->m:J

    .line 91
    .line 92
    iget-boolean v2, v0, Landroidx/compose/animation/core/AnimationState;->o:Z

    .line 93
    .line 94
    new-instance v13, Landroidx/compose/animation/core/AnimationState;

    .line 95
    .line 96
    iget-object v14, v0, Landroidx/compose/animation/core/AnimationState;->j:Landroidx/compose/animation/core/TwoWayConverter;

    .line 97
    .line 98
    const-wide/high16 v19, -0x8000000000000000L

    .line 99
    .line 100
    move/from16 v21, v2

    .line 101
    .line 102
    move-wide/from16 v17, v8

    .line 103
    .line 104
    invoke-direct/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 105
    .line 106
    .line 107
    move-object v0, v13

    .line 108
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 109
    .line 110
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-wide v13, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->t:J

    .line 114
    .line 115
    iget-object v9, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->u:Lkotlin/jvm/functions/Function1;

    .line 116
    .line 117
    new-instance v4, Ls2;

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    move-object v8, v0

    .line 121
    move-object v6, v4

    .line 122
    invoke-direct/range {v6 .. v11}, Ls2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    iput-object v0, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->n:Landroidx/compose/animation/core/AnimationState;

    .line 126
    .line 127
    iput-object v10, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 128
    .line 129
    iput v3, v5, Landroidx/compose/animation/core/Animatable$runAnimation$2;->p:I

    .line 130
    .line 131
    move-wide v2, v13

    .line 132
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-ne v1, v12, :cond_2

    .line 137
    .line 138
    return-object v12

    .line 139
    :cond_2
    move-object v1, v0

    .line 140
    move-object v0, v10

    .line 141
    :goto_0
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 142
    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    sget-object v0, Landroidx/compose/animation/core/AnimationEndReason;->j:Landroidx/compose/animation/core/AnimationEndReason;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    sget-object v0, Landroidx/compose/animation/core/AnimationEndReason;->k:Landroidx/compose/animation/core/AnimationEndReason;

    .line 149
    .line 150
    :goto_1
    invoke-static {v7}, Landroidx/compose/animation/core/Animatable;->a(Landroidx/compose/animation/core/Animatable;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Landroidx/compose/animation/core/AnimationResult;

    .line 154
    .line 155
    invoke-direct {v2, v1, v0}, Landroidx/compose/animation/core/AnimationResult;-><init>(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationEndReason;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    .line 158
    return-object v2

    .line 159
    :goto_2
    invoke-static {v7}, Landroidx/compose/animation/core/Animatable;->a(Landroidx/compose/animation/core/Animatable;)V

    .line 160
    .line 161
    .line 162
    throw v0
.end method
