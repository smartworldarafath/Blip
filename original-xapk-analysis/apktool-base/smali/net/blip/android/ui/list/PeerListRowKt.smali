.class public abstract Lnet/blip/android/ui/list/PeerListRowKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v6, p6

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0xb444aad

    .line 16
    .line 17
    .line 18
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    or-int/lit8 v0, v6, 0x6

    .line 22
    .line 23
    and-int/lit8 v2, v6, 0x30

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v2, 0x10

    .line 37
    .line 38
    :goto_0
    or-int/2addr v0, v2

    .line 39
    :cond_1
    and-int/lit8 v2, p7, 0x4

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    or-int/lit16 v0, v0, 0x180

    .line 44
    .line 45
    :cond_2
    move/from16 v3, p2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    and-int/lit16 v3, v6, 0x180

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    move/from16 v3, p2

    .line 53
    .line 54
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    const/16 v4, 0x100

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    const/16 v4, 0x80

    .line 64
    .line 65
    :goto_1
    or-int/2addr v0, v4

    .line 66
    :goto_2
    and-int/lit16 v4, v6, 0xc00

    .line 67
    .line 68
    move-object/from16 v11, p3

    .line 69
    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    const/16 v4, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    const/16 v4, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v0, v4

    .line 84
    :cond_6
    and-int/lit8 v4, p7, 0x10

    .line 85
    .line 86
    if-eqz v4, :cond_8

    .line 87
    .line 88
    or-int/lit16 v0, v0, 0x6000

    .line 89
    .line 90
    :cond_7
    move-object/from16 v5, p4

    .line 91
    .line 92
    :goto_4
    move v7, v0

    .line 93
    goto :goto_6

    .line 94
    :cond_8
    and-int/lit16 v5, v6, 0x6000

    .line 95
    .line 96
    if-nez v5, :cond_7

    .line 97
    .line 98
    move-object/from16 v5, p4

    .line 99
    .line 100
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_9

    .line 105
    .line 106
    const/16 v7, 0x4000

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_9
    const/16 v7, 0x2000

    .line 110
    .line 111
    :goto_5
    or-int/2addr v0, v7

    .line 112
    goto :goto_4

    .line 113
    :goto_6
    and-int/lit16 v0, v7, 0x2493

    .line 114
    .line 115
    const/16 v8, 0x2492

    .line 116
    .line 117
    const/4 v9, 0x0

    .line 118
    if-eq v0, v8, :cond_a

    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    goto :goto_7

    .line 122
    :cond_a
    move v0, v9

    .line 123
    :goto_7
    and-int/lit8 v8, v7, 0x1

    .line 124
    .line 125
    invoke-virtual {v14, v8, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_f

    .line 130
    .line 131
    if-eqz v2, :cond_b

    .line 132
    .line 133
    move v2, v9

    .line 134
    goto :goto_8

    .line 135
    :cond_b
    move v2, v3

    .line 136
    :goto_8
    if-eqz v4, :cond_c

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    move-object v3, v0

    .line 140
    goto :goto_9

    .line 141
    :cond_c
    move-object v3, v5

    .line 142
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 147
    .line 148
    if-ne v0, v4, :cond_d

    .line 149
    .line 150
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_d
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 160
    .line 161
    new-instance v5, Lbd;

    .line 162
    .line 163
    invoke-direct {v5, v1, v9}, Lbd;-><init>(Lnet/blip/libblip/Peer;I)V

    .line 164
    .line 165
    .line 166
    const v8, 0x250a9c23

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v5, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-ne v5, v4, :cond_e

    .line 178
    .line 179
    new-instance v5, Lo1;

    .line 180
    .line 181
    const/16 v4, 0x1c

    .line 182
    .line 183
    invoke-direct {v5, v0, v4}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_e
    move-object v12, v5

    .line 190
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 191
    .line 192
    move-object v4, v0

    .line 193
    new-instance v0, Ldc;

    .line 194
    .line 195
    const/4 v5, 0x1

    .line 196
    invoke-direct/range {v0 .. v5}, Ldc;-><init>(Ljava/lang/Object;ZLkotlin/Function;Ljava/lang/Object;I)V

    .line 197
    .line 198
    .line 199
    const v1, -0x1cb03382

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    and-int/lit8 v0, v7, 0xe

    .line 207
    .line 208
    const v1, 0x1b0030

    .line 209
    .line 210
    .line 211
    or-int/2addr v0, v1

    .line 212
    shl-int/lit8 v1, v7, 0x3

    .line 213
    .line 214
    const v4, 0xe000

    .line 215
    .line 216
    .line 217
    and-int/2addr v1, v4

    .line 218
    or-int v15, v0, v1

    .line 219
    .line 220
    const/16 v16, 0xc

    .line 221
    .line 222
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    invoke-static/range {v7 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 227
    .line 228
    .line 229
    move-object v5, v3

    .line 230
    move-object v1, v7

    .line 231
    move v3, v2

    .line 232
    goto :goto_a

    .line 233
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 234
    .line 235
    .line 236
    move-object/from16 v1, p0

    .line 237
    .line 238
    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    if-eqz v8, :cond_10

    .line 243
    .line 244
    new-instance v0, Lf1;

    .line 245
    .line 246
    move-object/from16 v2, p1

    .line 247
    .line 248
    move-object/from16 v4, p3

    .line 249
    .line 250
    move/from16 v7, p7

    .line 251
    .line 252
    invoke-direct/range {v0 .. v7}, Lf1;-><init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;II)V

    .line 253
    .line 254
    .line 255
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    :cond_10
    return-void
.end method
