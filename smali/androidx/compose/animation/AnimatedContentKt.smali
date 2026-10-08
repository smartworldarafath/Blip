.class public abstract Landroidx/compose/animation/AnimatedContentKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    move-object/from16 v15, p6

    .line 4
    .line 5
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x1e804e2f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v7, 0x6

    .line 14
    .line 15
    move-object/from16 v8, p0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v7

    .line 31
    :goto_1
    and-int/lit8 v1, v7, 0x30

    .line 32
    .line 33
    move-object/from16 v9, p1

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/16 v1, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v1, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v1

    .line 49
    :cond_3
    and-int/lit16 v1, v7, 0x180

    .line 50
    .line 51
    move-object/from16 v10, p2

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/16 v1, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v1, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v1

    .line 67
    :cond_5
    and-int/lit8 v1, p8, 0x4

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    or-int/lit16 v0, v0, 0xc00

    .line 72
    .line 73
    :cond_6
    move-object/from16 v2, p3

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    and-int/lit16 v2, v7, 0xc00

    .line 77
    .line 78
    if-nez v2, :cond_6

    .line 79
    .line 80
    move-object/from16 v2, p3

    .line 81
    .line 82
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_8

    .line 87
    .line 88
    const/16 v3, 0x800

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    const/16 v3, 0x400

    .line 92
    .line 93
    :goto_4
    or-int/2addr v0, v3

    .line 94
    :goto_5
    and-int/lit16 v3, v7, 0x6000

    .line 95
    .line 96
    move-object/from16 v12, p4

    .line 97
    .line 98
    if-nez v3, :cond_a

    .line 99
    .line 100
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_9

    .line 105
    .line 106
    const/16 v3, 0x4000

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_9
    const/16 v3, 0x2000

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v3

    .line 112
    :cond_a
    const/high16 v3, 0x30000

    .line 113
    .line 114
    and-int v4, v7, v3

    .line 115
    .line 116
    move-object/from16 v14, p5

    .line 117
    .line 118
    if-nez v4, :cond_c

    .line 119
    .line 120
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_b

    .line 125
    .line 126
    const/high16 v4, 0x20000

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_b
    const/high16 v4, 0x10000

    .line 130
    .line 131
    :goto_7
    or-int/2addr v0, v4

    .line 132
    :cond_c
    const v4, 0x12493

    .line 133
    .line 134
    .line 135
    and-int/2addr v4, v0

    .line 136
    const v5, 0x12492

    .line 137
    .line 138
    .line 139
    if-eq v4, v5, :cond_d

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    goto :goto_8

    .line 143
    :cond_d
    const/4 v4, 0x0

    .line 144
    :goto_8
    and-int/lit8 v5, v0, 0x1

    .line 145
    .line 146
    invoke-virtual {v15, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_10

    .line 151
    .line 152
    if-eqz v1, :cond_e

    .line 153
    .line 154
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 155
    .line 156
    move-object v11, v1

    .line 157
    goto :goto_9

    .line 158
    :cond_e
    move-object v11, v2

    .line 159
    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 164
    .line 165
    if-ne v1, v2, :cond_f

    .line 166
    .line 167
    sget-object v1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;->k:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    .line 168
    .line 169
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_f
    move-object v13, v1

    .line 173
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    and-int/lit8 v1, v0, 0xe

    .line 176
    .line 177
    or-int/2addr v1, v3

    .line 178
    and-int/lit8 v2, v0, 0x70

    .line 179
    .line 180
    or-int/2addr v1, v2

    .line 181
    and-int/lit16 v2, v0, 0x380

    .line 182
    .line 183
    or-int/2addr v1, v2

    .line 184
    and-int/lit16 v2, v0, 0x1c00

    .line 185
    .line 186
    or-int/2addr v1, v2

    .line 187
    const v2, 0xe000

    .line 188
    .line 189
    .line 190
    and-int/2addr v2, v0

    .line 191
    or-int/2addr v1, v2

    .line 192
    shl-int/lit8 v0, v0, 0x3

    .line 193
    .line 194
    const/high16 v2, 0x380000

    .line 195
    .line 196
    and-int/2addr v0, v2

    .line 197
    or-int v16, v1, v0

    .line 198
    .line 199
    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/AnimatedContentKt;->c(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 200
    .line 201
    .line 202
    move-object v4, v11

    .line 203
    goto :goto_a

    .line 204
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 205
    .line 206
    .line 207
    move-object v4, v2

    .line 208
    :goto_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    if-eqz v9, :cond_11

    .line 213
    .line 214
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$7;

    .line 215
    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    move-object/from16 v2, p1

    .line 219
    .line 220
    move-object/from16 v3, p2

    .line 221
    .line 222
    move-object/from16 v5, p4

    .line 223
    .line 224
    move-object/from16 v6, p5

    .line 225
    .line 226
    move/from16 v8, p8

    .line 227
    .line 228
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 229
    .line 230
    .line 231
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    :cond_11
    return-void
.end method

.method public static final b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move/from16 v8, p8

    .line 6
    .line 7
    move-object/from16 v15, p7

    .line 8
    .line 9
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x598416e0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v8, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    and-int/lit8 v0, v8, 0x8

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_1
    or-int/2addr v0, v8

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v0, v8

    .line 42
    :goto_2
    and-int/lit8 v2, p9, 0x2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    or-int/lit8 v0, v0, 0x30

    .line 47
    .line 48
    :cond_3
    move-object/from16 v3, p1

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    and-int/lit8 v3, v8, 0x30

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    move-object/from16 v3, p1

    .line 56
    .line 57
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    const/16 v4, 0x20

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    const/16 v4, 0x10

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v4

    .line 69
    :goto_4
    and-int/lit8 v4, p9, 0x4

    .line 70
    .line 71
    if-eqz v4, :cond_7

    .line 72
    .line 73
    or-int/lit16 v0, v0, 0x180

    .line 74
    .line 75
    :cond_6
    move-object/from16 v6, p2

    .line 76
    .line 77
    goto :goto_6

    .line 78
    :cond_7
    and-int/lit16 v6, v8, 0x180

    .line 79
    .line 80
    if-nez v6, :cond_6

    .line 81
    .line 82
    move-object/from16 v6, p2

    .line 83
    .line 84
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_8

    .line 89
    .line 90
    const/16 v7, 0x100

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_8
    const/16 v7, 0x80

    .line 94
    .line 95
    :goto_5
    or-int/2addr v0, v7

    .line 96
    :goto_6
    and-int/lit8 v7, p9, 0x8

    .line 97
    .line 98
    if-eqz v7, :cond_a

    .line 99
    .line 100
    or-int/lit16 v0, v0, 0xc00

    .line 101
    .line 102
    :cond_9
    move-object/from16 v9, p3

    .line 103
    .line 104
    goto :goto_8

    .line 105
    :cond_a
    and-int/lit16 v9, v8, 0xc00

    .line 106
    .line 107
    if-nez v9, :cond_9

    .line 108
    .line 109
    move-object/from16 v9, p3

    .line 110
    .line 111
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_b

    .line 116
    .line 117
    const/16 v10, 0x800

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_b
    const/16 v10, 0x400

    .line 121
    .line 122
    :goto_7
    or-int/2addr v0, v10

    .line 123
    :goto_8
    and-int/lit16 v10, v8, 0x6000

    .line 124
    .line 125
    if-nez v10, :cond_d

    .line 126
    .line 127
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_c

    .line 132
    .line 133
    const/16 v10, 0x4000

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_c
    const/16 v10, 0x2000

    .line 137
    .line 138
    :goto_9
    or-int/2addr v0, v10

    .line 139
    :cond_d
    const/high16 v10, 0x30000

    .line 140
    .line 141
    or-int/2addr v0, v10

    .line 142
    const/high16 v10, 0x180000

    .line 143
    .line 144
    and-int/2addr v10, v8

    .line 145
    move-object/from16 v14, p6

    .line 146
    .line 147
    if-nez v10, :cond_f

    .line 148
    .line 149
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-eqz v10, :cond_e

    .line 154
    .line 155
    const/high16 v10, 0x100000

    .line 156
    .line 157
    goto :goto_a

    .line 158
    :cond_e
    const/high16 v10, 0x80000

    .line 159
    .line 160
    :goto_a
    or-int/2addr v0, v10

    .line 161
    :cond_f
    const v10, 0x92493

    .line 162
    .line 163
    .line 164
    and-int/2addr v10, v0

    .line 165
    const v11, 0x92492

    .line 166
    .line 167
    .line 168
    if-eq v10, v11, :cond_10

    .line 169
    .line 170
    const/4 v10, 0x1

    .line 171
    goto :goto_b

    .line 172
    :cond_10
    const/4 v10, 0x0

    .line 173
    :goto_b
    and-int/lit8 v11, v0, 0x1

    .line 174
    .line 175
    invoke-virtual {v15, v11, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-eqz v10, :cond_16

    .line 180
    .line 181
    if-eqz v2, :cond_11

    .line 182
    .line 183
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 184
    .line 185
    move-object v10, v2

    .line 186
    goto :goto_c

    .line 187
    :cond_11
    move-object v10, v3

    .line 188
    :goto_c
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 189
    .line 190
    if-eqz v4, :cond_13

    .line 191
    .line 192
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    if-ne v3, v2, :cond_12

    .line 197
    .line 198
    sget-object v3, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$1$1;->k:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$1$1;

    .line 199
    .line 200
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 204
    .line 205
    move-object v11, v3

    .line 206
    goto :goto_d

    .line 207
    :cond_13
    move-object v11, v6

    .line 208
    :goto_d
    if-eqz v7, :cond_14

    .line 209
    .line 210
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 211
    .line 212
    move-object v12, v3

    .line 213
    goto :goto_e

    .line 214
    :cond_14
    move-object v12, v9

    .line 215
    :goto_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    if-ne v3, v2, :cond_15

    .line 220
    .line 221
    sget-object v3, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$2$1;->k:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$2$1;

    .line 222
    .line 223
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_15
    move-object v13, v3

    .line 227
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 228
    .line 229
    and-int/lit8 v2, v0, 0xe

    .line 230
    .line 231
    shr-int/lit8 v3, v0, 0x9

    .line 232
    .line 233
    and-int/lit8 v3, v3, 0x70

    .line 234
    .line 235
    or-int/2addr v2, v3

    .line 236
    invoke-static {v1, v5, v15, v2}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/TransitionInstance;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    and-int/lit16 v2, v0, 0x1ff0

    .line 241
    .line 242
    shr-int/lit8 v0, v0, 0x3

    .line 243
    .line 244
    const v3, 0xe000

    .line 245
    .line 246
    .line 247
    and-int/2addr v3, v0

    .line 248
    or-int/2addr v2, v3

    .line 249
    const/high16 v3, 0x70000

    .line 250
    .line 251
    and-int/2addr v0, v3

    .line 252
    or-int v16, v2, v0

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 257
    .line 258
    .line 259
    move-object v2, v10

    .line 260
    move-object v3, v11

    .line 261
    move-object v4, v12

    .line 262
    move-object v6, v13

    .line 263
    goto :goto_f

    .line 264
    :cond_16
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 265
    .line 266
    .line 267
    move-object v2, v3

    .line 268
    move-object v3, v6

    .line 269
    move-object v4, v9

    .line 270
    move-object/from16 v6, p5

    .line 271
    .line 272
    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    if-eqz v10, :cond_17

    .line 277
    .line 278
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;

    .line 279
    .line 280
    move-object/from16 v7, p6

    .line 281
    .line 282
    move/from16 v9, p9

    .line 283
    .line 284
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 285
    .line 286
    .line 287
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 288
    .line 289
    :cond_17
    return-void
.end method

.method public static final c(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    move-object/from16 v11, p5

    .line 12
    .line 13
    move/from16 v12, p8

    .line 14
    .line 15
    move-object/from16 v13, p7

    .line 16
    .line 17
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v0, 0x735659bc

    .line 20
    .line 21
    .line 22
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v0, v12, 0x6

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int/2addr v0, v12

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v0, v12

    .line 42
    :goto_1
    and-int/lit8 v4, v12, 0x30

    .line 43
    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v4, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v4

    .line 58
    :cond_3
    and-int/lit16 v4, v12, 0x180

    .line 59
    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const/16 v4, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v4, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v0, v4

    .line 74
    :cond_5
    and-int/lit16 v4, v12, 0xc00

    .line 75
    .line 76
    if-nez v4, :cond_7

    .line 77
    .line 78
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_6

    .line 83
    .line 84
    const/16 v4, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v4, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v0, v4

    .line 90
    :cond_7
    and-int/lit16 v4, v12, 0x6000

    .line 91
    .line 92
    if-nez v4, :cond_9

    .line 93
    .line 94
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_8

    .line 99
    .line 100
    const/16 v4, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v4, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v0, v4

    .line 106
    :cond_9
    const/high16 v4, 0x30000

    .line 107
    .line 108
    and-int/2addr v4, v12

    .line 109
    if-nez v4, :cond_b

    .line 110
    .line 111
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_a

    .line 116
    .line 117
    const/high16 v4, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v4, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v0, v4

    .line 123
    :cond_b
    const/high16 v4, 0x180000

    .line 124
    .line 125
    and-int/2addr v4, v12

    .line 126
    move-object/from16 v7, p6

    .line 127
    .line 128
    if-nez v4, :cond_d

    .line 129
    .line 130
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_c

    .line 135
    .line 136
    const/high16 v4, 0x100000

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    const/high16 v4, 0x80000

    .line 140
    .line 141
    :goto_7
    or-int/2addr v0, v4

    .line 142
    :cond_d
    const v4, 0x92493

    .line 143
    .line 144
    .line 145
    and-int/2addr v4, v0

    .line 146
    const v6, 0x92492

    .line 147
    .line 148
    .line 149
    if-eq v4, v6, :cond_e

    .line 150
    .line 151
    const/4 v4, 0x1

    .line 152
    goto :goto_8

    .line 153
    :cond_e
    const/4 v4, 0x0

    .line 154
    :goto_8
    and-int/lit8 v6, v0, 0x1

    .line 155
    .line 156
    invoke-virtual {v13, v6, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_41

    .line 161
    .line 162
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 163
    .line 164
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 169
    .line 170
    and-int/lit8 v4, v0, 0xe

    .line 171
    .line 172
    if-ne v4, v2, :cond_f

    .line 173
    .line 174
    const/4 v6, 0x1

    .line 175
    goto :goto_9

    .line 176
    :cond_f
    const/4 v6, 0x0

    .line 177
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 182
    .line 183
    if-nez v6, :cond_10

    .line 184
    .line 185
    if-ne v5, v15, :cond_11

    .line 186
    .line 187
    :cond_10
    new-instance v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 188
    .line 189
    invoke-direct {v5, v1, v9}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_11
    check-cast v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 196
    .line 197
    if-ne v4, v2, :cond_12

    .line 198
    .line 199
    const/4 v6, 0x1

    .line 200
    goto :goto_a

    .line 201
    :cond_12
    const/4 v6, 0x0

    .line 202
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    if-nez v6, :cond_13

    .line 207
    .line 208
    if-ne v14, v15, :cond_14

    .line 209
    .line 210
    :cond_13
    iget-object v6, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 211
    .line 212
    invoke-virtual {v6}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    new-instance v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 221
    .line 222
    invoke-direct {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_14
    move-object v6, v14

    .line 236
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 237
    .line 238
    iget-object v14, v1, Landroidx/compose/animation/core/Transition;->e:Landroidx/compose/runtime/MutableState;

    .line 239
    .line 240
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 241
    .line 242
    move/from16 v18, v0

    .line 243
    .line 244
    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 245
    .line 246
    move-object/from16 v19, v14

    .line 247
    .line 248
    check-cast v19, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 249
    .line 250
    move-object/from16 v20, v0

    .line 251
    .line 252
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/4 v1, 0x4

    .line 257
    if-ne v4, v1, :cond_15

    .line 258
    .line 259
    const/4 v1, 0x1

    .line 260
    goto :goto_b

    .line 261
    :cond_15
    const/4 v1, 0x0

    .line 262
    :goto_b
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    or-int/2addr v0, v1

    .line 267
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    if-nez v0, :cond_16

    .line 272
    .line 273
    if-ne v1, v15, :cond_17

    .line 274
    .line 275
    :cond_16
    sget-object v0, Landroidx/collection/ScatterMapKt;->a:[J

    .line 276
    .line 277
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 278
    .line 279
    invoke-direct {v1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_17
    move-object v0, v1

    .line 286
    check-cast v0, Landroidx/collection/MutableScatterMap;

    .line 287
    .line 288
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_18

    .line 297
    .line 298
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_1d

    .line 323
    .line 324
    move-object v1, v14

    .line 325
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 326
    .line 327
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-nez v1, :cond_1d

    .line 332
    .line 333
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    const/4 v4, 0x1

    .line 338
    if-ne v1, v4, :cond_19

    .line 339
    .line 340
    const/4 v1, 0x0

    .line 341
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-nez v1, :cond_1a

    .line 354
    .line 355
    :cond_19
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    :cond_1a
    iget v1, v0, Landroidx/collection/ScatterMap;->e:I

    .line 366
    .line 367
    const/4 v4, 0x1

    .line 368
    if-ne v1, v4, :cond_1b

    .line 369
    .line 370
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_1c

    .line 379
    .line 380
    :cond_1b
    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->h()V

    .line 381
    .line 382
    .line 383
    :cond_1c
    iput-object v9, v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->b:Landroidx/compose/ui/Alignment;

    .line 384
    .line 385
    :cond_1d
    check-cast v14, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 386
    .line 387
    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    if-eqz v1, :cond_21

    .line 392
    .line 393
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-nez v4, :cond_21

    .line 402
    .line 403
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    const/16 v19, 0x0

    .line 408
    .line 409
    :goto_c
    move-object/from16 v21, v4

    .line 410
    .line 411
    check-cast v21, Landroidx/compose/runtime/snapshots/StateListIterator;

    .line 412
    .line 413
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v22

    .line 417
    if-eqz v22, :cond_1f

    .line 418
    .line 419
    move-object/from16 v22, v2

    .line 420
    .line 421
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-interface {v10, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_1e

    .line 438
    .line 439
    move/from16 v2, v19

    .line 440
    .line 441
    :goto_d
    const/4 v3, -0x1

    .line 442
    goto :goto_e

    .line 443
    :cond_1e
    add-int/lit8 v19, v19, 0x1

    .line 444
    .line 445
    move-object/from16 v3, p2

    .line 446
    .line 447
    move-object/from16 v2, v22

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_1f
    move-object/from16 v22, v2

    .line 451
    .line 452
    const/4 v2, -0x1

    .line 453
    goto :goto_d

    .line 454
    :goto_e
    if-ne v2, v3, :cond_20

    .line 455
    .line 456
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_20
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-nez v3, :cond_22

    .line 469
    .line 470
    invoke-virtual {v6, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_21
    move-object/from16 v22, v2

    .line 475
    .line 476
    :cond_22
    :goto_f
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_27

    .line 489
    .line 490
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    const/4 v2, 0x0

    .line 495
    :goto_10
    move-object v3, v1

    .line 496
    check-cast v3, Landroidx/compose/runtime/snapshots/StateListIterator;

    .line 497
    .line 498
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    if-eqz v4, :cond_24

    .line 503
    .line 504
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-interface {v10, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-interface {v10, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_23

    .line 525
    .line 526
    move v3, v2

    .line 527
    :goto_11
    const/4 v1, -0x1

    .line 528
    goto :goto_12

    .line 529
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 530
    .line 531
    goto :goto_10

    .line 532
    :cond_24
    const/4 v3, -0x1

    .line 533
    goto :goto_11

    .line 534
    :goto_12
    if-ne v3, v1, :cond_25

    .line 535
    .line 536
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    goto :goto_13

    .line 544
    :cond_25
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_26

    .line 557
    .line 558
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    const/16 v16, 0x1

    .line 563
    .line 564
    add-int/lit8 v1, v1, -0x1

    .line 565
    .line 566
    if-eq v3, v1, :cond_27

    .line 567
    .line 568
    :cond_26
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    :cond_27
    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    if-nez v2, :cond_28

    .line 602
    .line 603
    if-ne v3, v15, :cond_2a

    .line 604
    .line 605
    :cond_28
    if-eqz v1, :cond_29

    .line 606
    .line 607
    new-instance v2, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

    .line 608
    .line 609
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-direct {v2, v5, v3, v1}, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScope;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    move-object v3, v2

    .line 617
    goto :goto_14

    .line 618
    :cond_29
    const/4 v3, 0x0

    .line 619
    :goto_14
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    :cond_2a
    check-cast v3, Landroidx/compose/animation/PendingAnimatedContentTransitionScope;

    .line 623
    .line 624
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    const/high16 v17, 0x70000

    .line 629
    .line 630
    and-int v4, v18, v17

    .line 631
    .line 632
    move/from16 v17, v2

    .line 633
    .line 634
    const/high16 v2, 0x20000

    .line 635
    .line 636
    if-ne v4, v2, :cond_2b

    .line 637
    .line 638
    const/4 v2, 0x1

    .line 639
    goto :goto_15

    .line 640
    :cond_2b
    const/4 v2, 0x0

    .line 641
    :goto_15
    or-int v2, v17, v2

    .line 642
    .line 643
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    if-nez v2, :cond_2d

    .line 648
    .line 649
    if-ne v4, v15, :cond_2c

    .line 650
    .line 651
    goto :goto_16

    .line 652
    :cond_2c
    move-object v2, v4

    .line 653
    const/4 v4, 0x0

    .line 654
    goto :goto_18

    .line 655
    :cond_2d
    :goto_16
    if-eqz v3, :cond_2e

    .line 656
    .line 657
    invoke-interface {v11, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    if-nez v2, :cond_2f

    .line 662
    .line 663
    :cond_2e
    const/4 v4, 0x0

    .line 664
    goto :goto_17

    .line 665
    :cond_2f
    invoke-static {}, Lio/sentry/d;->i()V

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :goto_17
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    move-object v2, v4

    .line 673
    :goto_18
    if-nez v2, :cond_40

    .line 674
    .line 675
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v0, v2}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v2

    .line 683
    if-eqz v2, :cond_31

    .line 684
    .line 685
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-virtual {v0, v2}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-eqz v2, :cond_31

    .line 694
    .line 695
    if-eqz v1, :cond_30

    .line 696
    .line 697
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    if-nez v1, :cond_30

    .line 702
    .line 703
    goto :goto_19

    .line 704
    :cond_30
    const v1, -0x11b8c6fa

    .line 705
    .line 706
    .line 707
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 708
    .line 709
    .line 710
    const/4 v1, 0x0

    .line 711
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 712
    .line 713
    .line 714
    move-object v9, v0

    .line 715
    move-object/from16 v19, v4

    .line 716
    .line 717
    move-object v7, v5

    .line 718
    move-object v0, v6

    .line 719
    move-object/from16 v6, p2

    .line 720
    .line 721
    goto :goto_1b

    .line 722
    :cond_31
    :goto_19
    const v1, -0x12013746

    .line 723
    .line 724
    .line 725
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->h()V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    const/4 v2, 0x0

    .line 736
    :goto_1a
    if-ge v2, v1, :cond_32

    .line 737
    .line 738
    move/from16 v17, v1

    .line 739
    .line 740
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    move-object/from16 v18, v0

    .line 745
    .line 746
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;

    .line 747
    .line 748
    move-object/from16 v19, v4

    .line 749
    .line 750
    move-object/from16 v9, v18

    .line 751
    .line 752
    move-object/from16 v4, p2

    .line 753
    .line 754
    move/from16 v18, v2

    .line 755
    .line 756
    move-object/from16 v2, p0

    .line 757
    .line 758
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/PendingAnimatedContentTransitionScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 759
    .line 760
    .line 761
    move-object v2, v0

    .line 762
    move-object v7, v5

    .line 763
    move-object v0, v6

    .line 764
    move-object v6, v4

    .line 765
    const v4, 0x19804f66

    .line 766
    .line 767
    .line 768
    invoke-static {v4, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    invoke-virtual {v9, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    add-int/lit8 v2, v18, 0x1

    .line 776
    .line 777
    move-object v6, v0

    .line 778
    move-object v0, v9

    .line 779
    move/from16 v1, v17

    .line 780
    .line 781
    move-object/from16 v4, v19

    .line 782
    .line 783
    move-object/from16 v9, p3

    .line 784
    .line 785
    move-object/from16 v7, p6

    .line 786
    .line 787
    goto :goto_1a

    .line 788
    :cond_32
    move-object v9, v0

    .line 789
    move-object/from16 v19, v4

    .line 790
    .line 791
    move-object v7, v5

    .line 792
    move-object v0, v6

    .line 793
    const/4 v1, 0x0

    .line 794
    move-object/from16 v6, p2

    .line 795
    .line 796
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 797
    .line 798
    .line 799
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    or-int/2addr v1, v3

    .line 816
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    or-int/2addr v1, v2

    .line 821
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    if-nez v1, :cond_33

    .line 826
    .line 827
    if-ne v2, v15, :cond_34

    .line 828
    .line 829
    :cond_33
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    move-object v2, v1

    .line 834
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 835
    .line 836
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    :cond_34
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 840
    .line 841
    iget-object v1, v7, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->a:Landroidx/compose/animation/core/Transition;

    .line 842
    .line 843
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    if-nez v3, :cond_35

    .line 852
    .line 853
    if-ne v4, v15, :cond_36

    .line 854
    .line 855
    :cond_35
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 856
    .line 857
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 862
    .line 863
    .line 864
    :cond_36
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 865
    .line 866
    iget-object v2, v2, Landroidx/compose/animation/ContentTransform;->d:Landroidx/compose/animation/SizeTransform;

    .line 867
    .line 868
    invoke-static {v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 869
    .line 870
    .line 871
    move-result-object v14

    .line 872
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 873
    .line 874
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 879
    .line 880
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 881
    .line 882
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v1

    .line 890
    if-eqz v1, :cond_37

    .line 891
    .line 892
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 893
    .line 894
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    goto :goto_1c

    .line 898
    :cond_37
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    if-eqz v1, :cond_38

    .line 903
    .line 904
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 905
    .line 906
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 907
    .line 908
    .line 909
    :cond_38
    :goto_1c
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    check-cast v1, Ljava/lang/Boolean;

    .line 914
    .line 915
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    sget-object v17, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 920
    .line 921
    if-eqz v1, :cond_3b

    .line 922
    .line 923
    const v1, 0x50a652f9

    .line 924
    .line 925
    .line 926
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 927
    .line 928
    .line 929
    move-object v1, v0

    .line 930
    iget-object v0, v7, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->a:Landroidx/compose/animation/core/Transition;

    .line 931
    .line 932
    const/4 v4, 0x0

    .line 933
    const/4 v5, 0x2

    .line 934
    move-object v2, v1

    .line 935
    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->h:Landroidx/compose/animation/core/TwoWayConverter;

    .line 936
    .line 937
    move-object v3, v2

    .line 938
    const/4 v2, 0x0

    .line 939
    move-object/from16 v23, v13

    .line 940
    .line 941
    move-object v13, v3

    .line 942
    move-object/from16 v3, v23

    .line 943
    .line 944
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 945
    .line 946
    .line 947
    move-result-object v4

    .line 948
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    if-nez v0, :cond_39

    .line 957
    .line 958
    if-ne v1, v15, :cond_3a

    .line 959
    .line 960
    :cond_39
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    check-cast v0, Landroidx/compose/animation/SizeTransform;

    .line 965
    .line 966
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 971
    .line 972
    .line 973
    :cond_3a
    move-object/from16 v17, v1

    .line 974
    .line 975
    check-cast v17, Landroidx/compose/ui/Modifier;

    .line 976
    .line 977
    const/4 v1, 0x0

    .line 978
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 979
    .line 980
    .line 981
    :goto_1d
    move-object/from16 v0, v17

    .line 982
    .line 983
    goto :goto_1e

    .line 984
    :cond_3b
    move-object v3, v13

    .line 985
    const/4 v1, 0x0

    .line 986
    move-object v13, v0

    .line 987
    const v0, 0x50aa6233

    .line 988
    .line 989
    .line 990
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 994
    .line 995
    .line 996
    move-object/from16 v4, v19

    .line 997
    .line 998
    goto :goto_1d

    .line 999
    :goto_1e
    new-instance v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    .line 1000
    .line 1001
    invoke-direct {v1, v4, v14, v7}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v1

    .line 1016
    if-ne v1, v15, :cond_3c

    .line 1017
    .line 1018
    new-instance v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 1019
    .line 1020
    invoke-direct {v1, v7}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    :cond_3c
    check-cast v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 1027
    .line 1028
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1029
    .line 1030
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 1031
    .line 1032
    .line 1033
    move-result v2

    .line 1034
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v4

    .line 1038
    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1043
    .line 1044
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1048
    .line 1049
    .line 1050
    iget-boolean v5, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1051
    .line 1052
    if-eqz v5, :cond_3d

    .line 1053
    .line 1054
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 1055
    .line 1056
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1057
    .line 1058
    .line 1059
    goto :goto_1f

    .line 1060
    :cond_3d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1061
    .line 1062
    .line 1063
    :goto_1f
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 1064
    .line 1065
    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1066
    .line 1067
    .line 1068
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 1069
    .line 1070
    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v1

    .line 1077
    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1081
    .line 1082
    .line 1083
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 1084
    .line 1085
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1086
    .line 1087
    .line 1088
    const v0, 0x2d371b53

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    const/4 v1, 0x0

    .line 1099
    :goto_20
    if-ge v1, v0, :cond_3f

    .line 1100
    .line 1101
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    const v4, 0x54a54e03

    .line 1106
    .line 1107
    .line 1108
    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v5

    .line 1112
    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/GapComposer;->U(ILjava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v9, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v2

    .line 1119
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1120
    .line 1121
    if-nez v2, :cond_3e

    .line 1122
    .line 1123
    const v2, 0x400500c6

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1127
    .line 1128
    .line 1129
    const/4 v4, 0x0

    .line 1130
    :goto_21
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1131
    .line 1132
    .line 1133
    goto :goto_22

    .line 1134
    :cond_3e
    const/4 v4, 0x0

    .line 1135
    const v5, 0x54a5529b

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1139
    .line 1140
    .line 1141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v5

    .line 1145
    invoke-interface {v2, v3, v5}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    goto :goto_21

    .line 1149
    :goto_22
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1150
    .line 1151
    .line 1152
    add-int/lit8 v1, v1, 0x1

    .line 1153
    .line 1154
    goto :goto_20

    .line 1155
    :cond_3f
    const/4 v4, 0x0

    .line 1156
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1157
    .line 1158
    .line 1159
    const/4 v4, 0x1

    .line 1160
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1161
    .line 1162
    .line 1163
    goto :goto_23

    .line 1164
    :cond_40
    invoke-static {}, Lio/sentry/d;->i()V

    .line 1165
    .line 1166
    .line 1167
    return-void

    .line 1168
    :cond_41
    move-object v6, v3

    .line 1169
    move-object v3, v13

    .line 1170
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1171
    .line 1172
    .line 1173
    :goto_23
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v9

    .line 1177
    if-eqz v9, :cond_42

    .line 1178
    .line 1179
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$11;

    .line 1180
    .line 1181
    move-object/from16 v1, p0

    .line 1182
    .line 1183
    move-object/from16 v4, p3

    .line 1184
    .line 1185
    move-object/from16 v7, p6

    .line 1186
    .line 1187
    move-object v3, v6

    .line 1188
    move-object v2, v8

    .line 1189
    move-object v5, v10

    .line 1190
    move-object v6, v11

    .line 1191
    move v8, v12

    .line 1192
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$11;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 1193
    .line 1194
    .line 1195
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 1196
    .line 1197
    :cond_42
    return-void
.end method

.method public static final d(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/animation/SizeTransformImpl;

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->k:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroidx/compose/animation/SizeTransformImpl;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v2, v1}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
