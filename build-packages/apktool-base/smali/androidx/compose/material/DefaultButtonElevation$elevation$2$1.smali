.class final Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.DefaultButtonElevation$elevation$2$1"
    f = "Button.kt"
    l = {
        0x227,
        0x230
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/animation/core/Animatable;

.field public final synthetic p:F

.field public final synthetic q:Z

.field public final synthetic r:Landroidx/compose/material/DefaultButtonElevation;

.field public final synthetic s:Landroidx/compose/foundation/interaction/Interaction;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material/DefaultButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->p:F

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->q:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->r:Landroidx/compose/material/DefaultButtonElevation;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->s:Landroidx/compose/foundation/interaction/Interaction;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;

    .line 2
    .line 3
    iget-object v4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->r:Landroidx/compose/material/DefaultButtonElevation;

    .line 4
    .line 5
    iget-object v5, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->s:Landroidx/compose/foundation/interaction/Interaction;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->p:F

    .line 10
    .line 11
    iget-boolean v3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->q:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material/DefaultButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->n:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v5

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 34
    .line 35
    iget-object v1, p1, Landroidx/compose/animation/core/Animatable;->e:Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 44
    .line 45
    iget v1, v1, Landroidx/compose/ui/unit/Dp;->j:F

    .line 46
    .line 47
    iget v6, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->p:F

    .line 48
    .line 49
    invoke-static {v1, v6}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_11

    .line 54
    .line 55
    iget-boolean v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->q:Z

    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 60
    .line 61
    invoke-direct {v1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 62
    .line 63
    .line 64
    iput v4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->n:I

    .line 65
    .line 66
    invoke-virtual {p1, v1, p0}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-ne p0, v0, :cond_11

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_3
    iget-object p1, p1, Landroidx/compose/animation/core/Animatable;->e:Landroidx/compose/runtime/MutableState;

    .line 75
    .line 76
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 83
    .line 84
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->j:F

    .line 85
    .line 86
    const/high16 v1, 0x41000000    # 8.0f

    .line 87
    .line 88
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 95
    .line 96
    const-wide/16 v7, 0x0

    .line 97
    .line 98
    invoke-direct {p1, v7, v8}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const/high16 v1, 0x40800000    # 4.0f

    .line 103
    .line 104
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    new-instance p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    new-instance p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 123
    .line 124
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    move-object p1, v5

    .line 129
    :goto_0
    iput v3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->n:I

    .line 130
    .line 131
    sget-object v1, Landroidx/compose/material/ElevationKt;->b:Landroidx/compose/animation/core/TweenSpec;

    .line 132
    .line 133
    sget-object v3, Landroidx/compose/material/ElevationKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 134
    .line 135
    iget-object v4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->s:Landroidx/compose/foundation/interaction/Interaction;

    .line 136
    .line 137
    if-eqz v4, :cond_b

    .line 138
    .line 139
    instance-of p1, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 140
    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    :goto_1
    move-object v5, v3

    .line 144
    goto :goto_2

    .line 145
    :cond_7
    instance-of p1, v4, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 146
    .line 147
    if-eqz p1, :cond_8

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    instance-of p1, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 151
    .line 152
    if-eqz p1, :cond_9

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    instance-of p1, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 156
    .line 157
    if-eqz p1, :cond_a

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_a
    :goto_2
    move-object v9, v5

    .line 161
    goto :goto_4

    .line 162
    :cond_b
    if-eqz p1, :cond_a

    .line 163
    .line 164
    instance-of v3, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 165
    .line 166
    if-eqz v3, :cond_c

    .line 167
    .line 168
    :goto_3
    move-object v5, v1

    .line 169
    goto :goto_2

    .line 170
    :cond_c
    instance-of v3, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 171
    .line 172
    if-eqz v3, :cond_d

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_d
    instance-of v3, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 176
    .line 177
    if-eqz v3, :cond_e

    .line 178
    .line 179
    sget-object v5, Landroidx/compose/material/ElevationKt;->c:Landroidx/compose/animation/core/TweenSpec;

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_e
    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 183
    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :goto_4
    iget-object v7, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 188
    .line 189
    if-eqz v9, :cond_10

    .line 190
    .line 191
    new-instance v8, Landroidx/compose/ui/unit/Dp;

    .line 192
    .line 193
    invoke-direct {v8, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 194
    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    const/16 v12, 0xc

    .line 198
    .line 199
    move-object v11, p0

    .line 200
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->d(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-ne p0, v0, :cond_f

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_f
    move-object p0, v2

    .line 208
    goto :goto_5

    .line 209
    :cond_10
    move-object v11, p0

    .line 210
    new-instance p0, Landroidx/compose/ui/unit/Dp;

    .line 211
    .line 212
    invoke-direct {p0, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, p0, v11}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    if-ne p0, v0, :cond_f

    .line 220
    .line 221
    :goto_5
    if-ne p0, v0, :cond_11

    .line 222
    .line 223
    :goto_6
    return-object v0

    .line 224
    :cond_11
    return-object v2
.end method
