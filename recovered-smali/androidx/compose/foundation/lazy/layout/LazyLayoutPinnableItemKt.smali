.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v0, p4

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v6, 0x340208e3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v6, v5, 0x6

    .line 22
    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v6, 0x2

    .line 34
    :goto_0
    or-int/2addr v6, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v6, v5

    .line 37
    :goto_1
    and-int/lit8 v7, v5, 0x30

    .line 38
    .line 39
    if-nez v7, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v7, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v6, v7

    .line 53
    :cond_3
    and-int/lit16 v7, v5, 0x180

    .line 54
    .line 55
    if-nez v7, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const/16 v7, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v7, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v6, v7

    .line 69
    :cond_5
    and-int/lit16 v7, v5, 0xc00

    .line 70
    .line 71
    if-nez v7, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_6

    .line 78
    .line 79
    const/16 v7, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v7, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v6, v7

    .line 85
    :cond_7
    and-int/lit16 v7, v6, 0x493

    .line 86
    .line 87
    const/16 v8, 0x492

    .line 88
    .line 89
    if-eq v7, v8, :cond_8

    .line 90
    .line 91
    const/4 v7, 0x1

    .line 92
    goto :goto_5

    .line 93
    :cond_8
    const/4 v7, 0x0

    .line 94
    :goto_5
    and-int/lit8 v8, v6, 0x1

    .line 95
    .line 96
    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_11

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    or-int/2addr v7, v8

    .line 111
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    if-ne v8, v10, :cond_a

    .line 120
    .line 121
    :cond_9
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 122
    .line 123
    invoke-direct {v8, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;-><init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 130
    .line 131
    iput v2, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->c:I

    .line 132
    .line 133
    iget-object v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->g:Landroidx/compose/runtime/MutableState;

    .line 134
    .line 135
    sget-object v11, Landroidx/compose/ui/layout/PinnableContainerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 136
    .line 137
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    check-cast v12, Landroidx/compose/ui/layout/PinnableContainer;

    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    if-eqz v13, :cond_b

    .line 148
    .line 149
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    goto :goto_6

    .line 154
    :cond_b
    const/4 v15, 0x0

    .line 155
    :goto_6
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    :try_start_0
    move-object/from16 v16, v7

    .line 160
    .line 161
    check-cast v16, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 162
    .line 163
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v16

    .line 167
    move-object/from16 v9, v16

    .line 168
    .line 169
    check-cast v9, Landroidx/compose/ui/layout/PinnableContainer;

    .line 170
    .line 171
    if-eq v12, v9, :cond_e

    .line 172
    .line 173
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 174
    .line 175
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iget v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->d:I

    .line 179
    .line 180
    if-lez v7, :cond_e

    .line 181
    .line 182
    iget-object v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->e:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 183
    .line 184
    if-eqz v7, :cond_c

    .line 185
    .line 186
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 187
    .line 188
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->a()V

    .line 189
    .line 190
    .line 191
    :cond_c
    if-eqz v12, :cond_d

    .line 192
    .line 193
    move-object v7, v12

    .line 194
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 195
    .line 196
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->b()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 197
    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_d
    const/4 v7, 0x0

    .line 201
    :goto_7
    iput-object v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->e:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    goto :goto_9

    .line 206
    :cond_e
    :goto_8
    invoke-static {v13, v14, v15}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    if-nez v7, :cond_f

    .line 218
    .line 219
    if-ne v9, v10, :cond_10

    .line 220
    .line 221
    :cond_f
    new-instance v9, Landroidx/compose/foundation/lazy/layout/b;

    .line 222
    .line 223
    const/4 v7, 0x1

    .line 224
    invoke-direct {v9, v7, v8}, Landroidx/compose/foundation/lazy/layout/b;-><init>(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_10
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 231
    .line 232
    invoke-static {v8, v9, v0}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    shr-int/lit8 v6, v6, 0x6

    .line 240
    .line 241
    and-int/lit8 v6, v6, 0x70

    .line 242
    .line 243
    const/16 v8, 0x8

    .line 244
    .line 245
    or-int/2addr v6, v8

    .line 246
    invoke-static {v7, v4, v0, v6}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_a

    .line 250
    :goto_9
    invoke-static {v13, v14, v15}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 255
    .line 256
    .line 257
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    if-eqz v6, :cond_12

    .line 262
    .line 263
    new-instance v0, Lz3;

    .line 264
    .line 265
    invoke-direct/range {v0 .. v5}, Lz3;-><init>(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 269
    .line 270
    :cond_12
    return-void
.end method
