.class public final synthetic Lyc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lyc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lyc;->k:Landroidx/compose/foundation/pager/PagerState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lyc;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lyc;->k:Landroidx/compose/foundation/pager/PagerState;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :try_start_0
    iget p0, p0, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 28
    .line 29
    invoke-interface {p1, p0}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->a(Landroidx/compose/foundation/pager/PagerState;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget v5, p0, Landroidx/compose/foundation/pager/PagerState;->i:F

    .line 53
    .line 54
    add-float/2addr v5, v0

    .line 55
    float-to-double v6, v5

    .line 56
    invoke-static {v6, v7}, Lkotlin/math/MathKt;->c(D)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    long-to-float v8, v6

    .line 61
    sub-float/2addr v5, v8

    .line 62
    iput v5, p0, Landroidx/compose/foundation/pager/PagerState;->i:F

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const v8, 0x38d1b717    # 1.0E-4f

    .line 69
    .line 70
    .line 71
    cmpg-float v5, v5, v8

    .line 72
    .line 73
    if-gez v5, :cond_1

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    add-long v8, v3, v6

    .line 78
    .line 79
    iget-wide v10, p0, Landroidx/compose/foundation/pager/PagerState;->h:J

    .line 80
    .line 81
    iget-wide v12, p0, Landroidx/compose/foundation/pager/PagerState;->g:J

    .line 82
    .line 83
    invoke-static/range {v8 .. v13}, Lkotlin/ranges/RangesKt;->e(JJJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    cmp-long v0, v8, v5

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x1

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    move v0, v8

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move v0, v7

    .line 96
    :goto_0
    sub-long/2addr v5, v3

    .line 97
    long-to-float v3, v5

    .line 98
    iput v3, p0, Landroidx/compose/foundation/pager/PagerState;->j:F

    .line 99
    .line 100
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    const-wide/16 v11, 0x0

    .line 105
    .line 106
    cmp-long v4, v9, v11

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState;->D:Landroidx/compose/runtime/MutableState;

    .line 112
    .line 113
    cmpl-float v10, v3, v9

    .line 114
    .line 115
    if-lez v10, :cond_3

    .line 116
    .line 117
    move v10, v8

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move v10, v7

    .line 120
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 125
    .line 126
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState;->E:Landroidx/compose/runtime/MutableState;

    .line 130
    .line 131
    cmpg-float v3, v3, v9

    .line 132
    .line 133
    if-gez v3, :cond_4

    .line 134
    .line 135
    move v7, v8

    .line 136
    :cond_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 141
    .line 142
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 146
    .line 147
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 148
    .line 149
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 154
    .line 155
    long-to-int v4, v5

    .line 156
    neg-int v7, v4

    .line 157
    invoke-virtual {v3, v7}, Landroidx/compose/foundation/pager/PagerMeasureResult;->h(I)Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    iget-object v10, p0, Landroidx/compose/foundation/pager/PagerState;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 164
    .line 165
    if-eqz v10, :cond_6

    .line 166
    .line 167
    invoke-virtual {v10, v7}, Landroidx/compose/foundation/pager/PagerMeasureResult;->h(I)Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    if-eqz v7, :cond_7

    .line 172
    .line 173
    iput-object v7, p0, Landroidx/compose/foundation/pager/PagerState;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 174
    .line 175
    :cond_6
    move-object v2, v3

    .line 176
    :cond_7
    if-eqz v2, :cond_8

    .line 177
    .line 178
    iget-boolean v3, p0, Landroidx/compose/foundation/pager/PagerState;->a:Z

    .line 179
    .line 180
    invoke-virtual {p0, v2, v3, v8}, Landroidx/compose/foundation/pager/PagerState;->h(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->z:Landroidx/compose/runtime/MutableState;

    .line 184
    .line 185
    invoke-interface {p0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 190
    .line 191
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerScrollPosition;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 192
    .line 193
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_9

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_9
    int-to-float v3, v4

    .line 201
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    int-to-float v2, v2

    .line 206
    div-float v9, v3, v2

    .line 207
    .line 208
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    add-float/2addr v2, v9

    .line 213
    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerScrollPosition;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 214
    .line 215
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->w:Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    check-cast p0, Landroidx/compose/ui/layout/Remeasurement;

    .line 229
    .line 230
    if-eqz p0, :cond_a

    .line 231
    .line 232
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 238
    .line 239
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
