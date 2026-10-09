.class final Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/SharedMutableTransformState;

.field public final synthetic l:Landroidx/compose/runtime/State;

.field public final synthetic m:Landroidx/compose/runtime/State;

.field public final synthetic n:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedMutableTransformState;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->k:Landroidx/compose/animation/SharedMutableTransformState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->l:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->m:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->n:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->l:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v0

    .line 21
    :goto_0
    iget-object v2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->k:Landroidx/compose/animation/SharedMutableTransformState;

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/compose/animation/SharedMutableTransformState;->c:Landroidx/compose/animation/TransformScopeImpl;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/compose/animation/TransformScopeImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 32
    .line 33
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget-object v4, v3, Landroidx/compose/animation/TransformScopeImpl;->b:Landroidx/compose/runtime/MutableFloatState;

    .line 48
    .line 49
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v4, v0

    .line 57
    :goto_1
    mul-float/2addr v1, v4

    .line 58
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iput v1, v2, Landroidx/compose/animation/SharedMutableTransformState;->f:F

    .line 65
    .line 66
    :cond_2
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b(F)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->m:Landroidx/compose/runtime/State;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v1, v0

    .line 87
    :goto_2
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const/4 v5, 0x0

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    iget-object v4, v3, Landroidx/compose/animation/TransformScopeImpl;->c:Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    const/4 v4, 0x1

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move v4, v5

    .line 113
    :goto_3
    if-eqz v4, :cond_5

    .line 114
    .line 115
    iget-object v0, v3, Landroidx/compose/animation/TransformScopeImpl;->d:Landroidx/compose/runtime/MutableFloatState;

    .line 116
    .line 117
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    :cond_5
    mul-float/2addr v1, v0

    .line 124
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    iput v1, v2, Landroidx/compose/animation/SharedMutableTransformState;->g:F

    .line 131
    .line 132
    if-eqz v4, :cond_6

    .line 133
    .line 134
    iget-object v0, v3, Landroidx/compose/animation/TransformScopeImpl;->d:Landroidx/compose/runtime/MutableFloatState;

    .line 135
    .line 136
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 139
    .line 140
    .line 141
    :cond_6
    if-eqz v4, :cond_9

    .line 142
    .line 143
    iget-object v0, v2, Landroidx/compose/animation/SharedMutableTransformState;->j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 144
    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 148
    .line 149
    invoke-direct {v0, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(Z)V

    .line 150
    .line 151
    .line 152
    iput-object v0, v2, Landroidx/compose/animation/SharedMutableTransformState;->j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 153
    .line 154
    :cond_7
    iget-object v0, v2, Landroidx/compose/animation/SharedMutableTransformState;->j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    iget-wide v4, v2, Landroidx/compose/animation/SharedMutableTransformState;->d:J

    .line 159
    .line 160
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->a()J

    .line 161
    .line 162
    .line 163
    move-result-wide v6

    .line 164
    sget-object v8, Lkotlin/time/DurationUnit;->k:Lkotlin/time/DurationUnit;

    .line 165
    .line 166
    const-wide/16 v8, 0x1

    .line 167
    .line 168
    sub-long v10, v4, v8

    .line 169
    .line 170
    or-long/2addr v8, v10

    .line 171
    const-wide v10, 0x7fffffffffffffffL

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    cmp-long v8, v8, v10

    .line 177
    .line 178
    if-nez v8, :cond_8

    .line 179
    .line 180
    invoke-static {v4, v5}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    .line 181
    .line 182
    .line 183
    move-result-wide v4

    .line 184
    invoke-static {v4, v5}, Lkotlin/time/Duration;->i(J)J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    invoke-static {v6, v7, v4, v5}, Lkotlin/time/LongSaturatedMathKt;->b(JJ)J

    .line 190
    .line 191
    .line 192
    move-result-wide v4

    .line 193
    :goto_4
    invoke-static {v4, v5}, Lkotlin/time/Duration;->d(J)J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    invoke-virtual {v0, v4, v5, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 198
    .line 199
    .line 200
    :cond_9
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g(F)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h(F)V

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;->n:Landroidx/compose/runtime/State;

    .line 207
    .line 208
    if-eqz p0, :cond_a

    .line 209
    .line 210
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 215
    .line 216
    iget-wide v0, p0, Landroidx/compose/ui/graphics/TransformOrigin;->a:J

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_a
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 220
    .line 221
    :goto_5
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_b

    .line 226
    .line 227
    iget-object p0, v3, Landroidx/compose/animation/TransformScopeImpl;->e:Landroidx/compose/runtime/MutableState;

    .line 228
    .line 229
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    check-cast p0, Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-eqz p0, :cond_b

    .line 242
    .line 243
    iget-object p0, v3, Landroidx/compose/animation/TransformScopeImpl;->f:Landroidx/compose/runtime/MutableState;

    .line 244
    .line 245
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 246
    .line 247
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 252
    .line 253
    iget-wide v0, p0, Landroidx/compose/ui/graphics/TransformOrigin;->a:J

    .line 254
    .line 255
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    if-eqz p0, :cond_c

    .line 260
    .line 261
    iput-wide v0, v2, Landroidx/compose/animation/SharedMutableTransformState;->h:J

    .line 262
    .line 263
    :cond_c
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n(J)V

    .line 264
    .line 265
    .line 266
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 267
    .line 268
    return-object p0
.end method
