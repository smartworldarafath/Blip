.class public final synthetic Landroidx/compose/foundation/lazy/layout/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

.field public final synthetic k:I

.field public final synthetic l:F

.field public final synthetic m:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic n:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic o:Z

.field public final synthetic p:F

.field public final synthetic q:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;IFLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;IILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/d;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/d;->k:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/lazy/layout/d;->l:F

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/d;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/layout/d;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/layout/d;->o:Z

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/foundation/lazy/layout/d;->p:F

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/lazy/layout/d;->q:Lkotlin/jvm/internal/Ref$IntRef;

    .line 19
    .line 20
    iput p9, p0, Landroidx/compose/foundation/lazy/layout/d;->r:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/foundation/lazy/layout/d;->s:I

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/lazy/layout/d;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/d;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/d;->k:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/d;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/layout/d;->o:Z

    .line 14
    .line 15
    iget v5, p0, Landroidx/compose/foundation/lazy/layout/d;->s:I

    .line 16
    .line 17
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-nez v2, :cond_7

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iget v8, p0, Landroidx/compose/foundation/lazy/layout/d;->l:F

    .line 24
    .line 25
    cmpl-float v2, v8, v2

    .line 26
    .line 27
    if-lez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 30
    .line 31
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    cmpl-float v9, v2, v8

    .line 44
    .line 45
    if-lez v9, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v8, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 51
    .line 52
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    cmpg-float v9, v2, v8

    .line 65
    .line 66
    if-gez v9, :cond_0

    .line 67
    .line 68
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/d;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 69
    .line 70
    iget v9, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 71
    .line 72
    sub-float/2addr v8, v9

    .line 73
    invoke-interface {v0, v8}, Landroidx/compose/foundation/gestures/ScrollScope;->f(F)F

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-static {v4, v0, v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->b(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;II)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-nez v10, :cond_7

    .line 89
    .line 90
    cmpg-float v9, v8, v9

    .line 91
    .line 92
    if-nez v9, :cond_6

    .line 93
    .line 94
    iget v9, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 95
    .line 96
    add-float/2addr v9, v8

    .line 97
    iput v9, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 98
    .line 99
    iget v2, p0, Landroidx/compose/foundation/lazy/layout/d;->p:F

    .line 100
    .line 101
    if-eqz v4, :cond_3

    .line 102
    .line 103
    iget-object v8, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 106
    .line 107
    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    cmpl-float v2, v8, v2

    .line 118
    .line 119
    if-lez v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object v8, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 126
    .line 127
    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 128
    .line 129
    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    neg-float v2, v2

    .line 140
    cmpg-float v2, v8, v2

    .line 141
    .line 142
    if-gez v2, :cond_4

    .line 143
    .line 144
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/d;->q:Lkotlin/jvm/internal/Ref$IntRef;

    .line 148
    .line 149
    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 150
    .line 151
    iget v8, p0, Landroidx/compose/foundation/lazy/layout/d;->r:I

    .line 152
    .line 153
    const/4 v9, 0x2

    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    if-lt v2, v9, :cond_7

    .line 157
    .line 158
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->b()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    sub-int v2, v1, v2

    .line 163
    .line 164
    if-le v2, v8, :cond_7

    .line 165
    .line 166
    sub-int v2, v1, v8

    .line 167
    .line 168
    invoke-interface {v0, v2, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    if-lt v2, v9, :cond_7

    .line 173
    .line 174
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    sub-int/2addr v2, v1

    .line 179
    if-le v2, v8, :cond_7

    .line 180
    .line 181
    add-int/2addr v8, v1

    .line 182
    invoke-interface {v0, v8, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 187
    .line 188
    .line 189
    iput-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 190
    .line 191
    return-object v6

    .line 192
    :cond_7
    :goto_2
    invoke-static {v4, v0, v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->b(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;II)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_8

    .line 197
    .line 198
    invoke-interface {v0, v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    .line 199
    .line 200
    .line 201
    iput-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 202
    .line 203
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 204
    .line 205
    .line 206
    return-object v6

    .line 207
    :cond_8
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_9

    .line 212
    .line 213
    return-object v6

    .line 214
    :cond_9
    invoke-interface {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->e(I)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    new-instance v0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;

    .line 219
    .line 220
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/d;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 221
    .line 222
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Landroidx/compose/animation/core/AnimationState;

    .line 225
    .line 226
    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    .line 227
    .line 228
    .line 229
    throw v0
.end method
