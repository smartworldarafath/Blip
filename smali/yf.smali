.class public final synthetic Lyf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 16
    iput p5, p0, Lyf;->j:I

    iput p1, p0, Lyf;->k:F

    iput-object p2, p0, Lyf;->l:Ljava/lang/Object;

    iput-object p3, p0, Lyf;->m:Ljava/lang/Object;

    iput-object p4, p0, Lyf;->n:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lyf;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lyf;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lyf;->k:F

    .line 10
    .line 11
    iput-object p3, p0, Lyf;->n:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p4, p0, Lyf;->m:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lyf;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lyf;->m:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lyf;->n:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget v4, p0, Lyf;->k:F

    .line 10
    .line 11
    iget-object p0, p0, Lyf;->l:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 17
    .line 18
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sget-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p1, v0, p0}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    cmpg-float p1, p0, v4

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 73
    .line 74
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 75
    .line 76
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 77
    .line 78
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0, v4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->d(FF)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget v4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 97
    .line 98
    sub-float v4, v0, v4

    .line 99
    .line 100
    :try_start_0
    invoke-interface {v2, v4}, Landroidx/compose/foundation/gestures/ScrollScope;->f(F)F

    .line 101
    .line 102
    .line 103
    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_1

    .line 105
    :catch_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 106
    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    sub-float/2addr v4, v2

    .line 117
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const/high16 v4, 0x3f000000    # 0.5f

    .line 122
    .line 123
    cmpl-float v3, v3, v4

    .line 124
    .line 125
    if-gtz v3, :cond_2

    .line 126
    .line 127
    iget-object v3, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    cmpg-float v0, v0, v3

    .line 142
    .line 143
    if-nez v0, :cond_2

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 147
    .line 148
    .line 149
    :goto_2
    iget p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 150
    .line 151
    add-float/2addr p1, v2

    .line 152
    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 153
    .line 154
    return-object v1

    .line 155
    :pswitch_1
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 156
    .line 157
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 158
    .line 159
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 160
    .line 161
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 162
    .line 163
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/Number;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    cmpl-float v0, v0, v5

    .line 184
    .line 185
    iget-object v5, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 186
    .line 187
    if-ltz v0, :cond_3

    .line 188
    .line 189
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 190
    .line 191
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/Number;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-static {v0, v4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->d(FF)F

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    iget v4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 206
    .line 207
    sub-float v4, v0, v4

    .line 208
    .line 209
    invoke-static {p1, v2, v3, v4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->c(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;F)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 213
    .line 214
    .line 215
    iput v0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_3
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 219
    .line 220
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/lang/Number;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iget v4, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 231
    .line 232
    sub-float/2addr v0, v4

    .line 233
    invoke-static {p1, v2, v3, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->c(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/functions/Function1;F)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Ljava/lang/Number;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 247
    .line 248
    :goto_3
    return-object v1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
