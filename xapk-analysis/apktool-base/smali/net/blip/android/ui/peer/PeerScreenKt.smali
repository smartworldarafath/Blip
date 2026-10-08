.class public abstract Lnet/blip/android/ui/peer/PeerScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p7

    .line 4
    .line 5
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x27e8a565

    .line 8
    .line 9
    .line 10
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int v0, p8, v0

    .line 23
    .line 24
    and-int/lit8 v2, p9, 0x10

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    or-int/lit16 v0, v0, 0x6000

    .line 29
    .line 30
    move/from16 v3, p5

    .line 31
    .line 32
    :goto_1
    move-object/from16 v12, p6

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    move/from16 v3, p5

    .line 36
    .line 37
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0x4000

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v4, 0x2000

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v4

    .line 49
    goto :goto_1

    .line 50
    :goto_3
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    const/high16 v4, 0x20000

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    const/high16 v4, 0x10000

    .line 60
    .line 61
    :goto_4
    or-int/2addr v0, v4

    .line 62
    const v4, 0x12493

    .line 63
    .line 64
    .line 65
    and-int/2addr v4, v0

    .line 66
    const v5, 0x12492

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    if-eq v4, v5, :cond_4

    .line 71
    .line 72
    move v4, v6

    .line 73
    goto :goto_5

    .line 74
    :cond_4
    const/4 v4, 0x0

    .line 75
    :goto_5
    and-int/2addr v0, v6

    .line 76
    invoke-virtual {v9, v0, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    move v0, v6

    .line 85
    goto :goto_6

    .line 86
    :cond_5
    move v0, v3

    .line 87
    :goto_6
    if-eqz v0, :cond_6

    .line 88
    .line 89
    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    .line 91
    goto :goto_7

    .line 92
    :cond_6
    const v2, 0x3ecccccd    # 0.4f

    .line 93
    .line 94
    .line 95
    :goto_7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 96
    .line 97
    invoke-static {v3, v2}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Lv0;

    .line 102
    .line 103
    move-wide/from16 v13, p1

    .line 104
    .line 105
    invoke-direct {v3, v6, v13, v14, v1}, Lv0;-><init>(IJLjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const v4, -0x15ce1a95

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v3, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    move-object v4, v12

    .line 118
    goto :goto_8

    .line 119
    :cond_7
    const/4 v4, 0x0

    .line 120
    :goto_8
    new-instance v5, Lzc;

    .line 121
    .line 122
    move-object/from16 v15, p3

    .line 123
    .line 124
    move-object/from16 v7, p4

    .line 125
    .line 126
    invoke-direct {v5, v6, v15, v7}, Lzc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const v6, 0x19aa2586

    .line 130
    .line 131
    .line 132
    invoke-static {v6, v5, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    const v10, 0x180030

    .line 137
    .line 138
    .line 139
    const/16 v11, 0x2c

    .line 140
    .line 141
    move-object v6, v4

    .line 142
    const/4 v4, 0x0

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    invoke-static/range {v2 .. v11}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 146
    .line 147
    .line 148
    move v6, v0

    .line 149
    goto :goto_9

    .line 150
    :cond_8
    move-wide/from16 v13, p1

    .line 151
    .line 152
    move-object/from16 v15, p3

    .line 153
    .line 154
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 155
    .line 156
    .line 157
    move v6, v3

    .line 158
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    if-eqz v10, :cond_9

    .line 163
    .line 164
    new-instance v0, Led;

    .line 165
    .line 166
    move-object/from16 v5, p4

    .line 167
    .line 168
    move/from16 v8, p8

    .line 169
    .line 170
    move/from16 v9, p9

    .line 171
    .line 172
    move-object v7, v12

    .line 173
    move-wide v2, v13

    .line 174
    move-object v4, v15

    .line 175
    invoke-direct/range {v0 .. v9}, Led;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V

    .line 176
    .line 177
    .line 178
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    :cond_9
    return-void
.end method

.method public static final b(Lnet/blip/libblip/PeerId;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v5, p1

    .line 7
    .line 8
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, -0x92b3e96

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v8, 0x2

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v8

    .line 26
    :goto_0
    or-int/2addr v1, v0

    .line 27
    and-int/lit8 v2, v1, 0x3

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v2, v8, :cond_1

    .line 31
    .line 32
    move v2, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_1
    and-int/2addr v1, v3

    .line 36
    invoke-virtual {v5, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_a

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v13, v1

    .line 49
    check-cast v13, Landroid/content/Context;

    .line 50
    .line 51
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 52
    .line 53
    invoke-static {v1, v5}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lnet/blip/libblip/Core;

    .line 62
    .line 63
    iget-object v14, v1, Lnet/blip/libblip/Core;->b:Lc;

    .line 64
    .line 65
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v6, 0x0

    .line 74
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    if-ne v4, v7, :cond_4

    .line 79
    .line 80
    :cond_2
    iget-object v1, v2, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-static {v1, p0}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v4, v1

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move-object v4, v6

    .line 91
    :goto_2
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    check-cast v4, Lnet/blip/libblip/Peer;

    .line 95
    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_b

    .line 103
    .line 104
    new-instance v2, Ly5;

    .line 105
    .line 106
    invoke-direct {v2, p0, v0, v3}, Ly5;-><init>(Lnet/blip/libblip/PeerId;II)V

    .line 107
    .line 108
    .line 109
    :goto_3
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    sget-object v1, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 113
    .line 114
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object v10, v1

    .line 119
    check-cast v10, Landroidx/navigation/NavHostController;

    .line 120
    .line 121
    invoke-static {v5}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->b(Landroidx/compose/runtime/Composer;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v5}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->c(Landroidx/compose/runtime/Composer;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    or-int/2addr v3, v9

    .line 138
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    if-nez v3, :cond_6

    .line 143
    .line 144
    if-ne v9, v7, :cond_7

    .line 145
    .line 146
    :cond_6
    new-instance v9, Lnet/blip/android/ui/peer/PeerScreenKt$PeerScreen$1$1;

    .line 147
    .line 148
    invoke-direct {v9, v13, p0, v6}, Lnet/blip/android/ui/peer/PeerScreenKt$PeerScreen$1$1;-><init>(Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/coroutines/Continuation;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 155
    .line 156
    invoke-static {v5, p0, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    or-int/2addr v3, v6

    .line 168
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    or-int/2addr v3, v6

    .line 173
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    or-int/2addr v3, v6

    .line 178
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    if-nez v3, :cond_9

    .line 183
    .line 184
    if-ne v6, v7, :cond_8

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_8
    move-object v12, v10

    .line 188
    move-object v10, v14

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    :goto_4
    new-instance v9, Ls2;

    .line 191
    .line 192
    move-object v12, v10

    .line 193
    move-object v10, v14

    .line 194
    const/16 v14, 0x9

    .line 195
    .line 196
    move-object v11, p0

    .line 197
    invoke-direct/range {v9 .. v14}, Ls2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/io/Serializable;Landroidx/navigation/NavHostController;Landroid/content/Context;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    move-object v6, v9

    .line 204
    :goto_5
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 205
    .line 206
    invoke-static {v6, v5}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->d(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function1;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    new-instance v9, Lfd;

    .line 211
    .line 212
    move-object v11, v4

    .line 213
    move-object v14, v10

    .line 214
    move-object v10, v12

    .line 215
    move-object v12, v13

    .line 216
    move-object v13, p0

    .line 217
    invoke-direct/range {v9 .. v14}, Lfd;-><init>(Landroidx/navigation/NavHostController;Lnet/blip/libblip/Peer;Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    const v4, 0x7f37058a

    .line 221
    .line 222
    .line 223
    invoke-static {v4, v9, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    new-instance v6, Li9;

    .line 228
    .line 229
    invoke-direct {v6, v11, v2, v3, v1}, Li9;-><init>(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function1;Z)V

    .line 230
    .line 231
    .line 232
    const v1, 0x4ef73929    # 2.0738592E9f

    .line 233
    .line 234
    .line 235
    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const/16 v6, 0x1b0

    .line 240
    .line 241
    const/4 v7, 0x1

    .line 242
    move-object v3, v4

    .line 243
    move-object v4, v1

    .line 244
    const-wide/16 v1, 0x0

    .line 245
    .line 246
    invoke-static/range {v1 .. v7}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 251
    .line 252
    .line 253
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    new-instance v2, Ly5;

    .line 260
    .line 261
    invoke-direct {v2, p0, v0, v8}, Ly5;-><init>(Lnet/blip/libblip/PeerId;II)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_b
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-wide/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v11, p4

    .line 4
    .line 5
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x6db2a87d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v11, v2, v3}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x20

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x10

    .line 23
    .line 24
    :goto_0
    or-int v0, p5, v0

    .line 25
    .line 26
    move-object/from16 v4, p3

    .line 27
    .line 28
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x100

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v1, 0x80

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v1

    .line 40
    and-int/lit16 v1, v0, 0x93

    .line 41
    .line 42
    const/16 v5, 0x92

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v14, 0x1

    .line 46
    if-eq v1, v5, :cond_2

    .line 47
    .line 48
    move v1, v14

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v1, v6

    .line 51
    :goto_2
    and-int/lit8 v5, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {v11, v5, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 60
    .line 61
    move-object/from16 v15, p0

    .line 62
    .line 63
    invoke-static {v15, v2, v3, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 68
    .line 69
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 74
    .line 75
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {v11, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 93
    .line 94
    .line 95
    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 96
    .line 97
    if-eqz v8, :cond_3

    .line 98
    .line 99
    sget-object v8, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 100
    .line 101
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 106
    .line 107
    .line 108
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 109
    .line 110
    invoke-static {v11, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 111
    .line 112
    .line 113
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 114
    .line 115
    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 123
    .line 124
    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 128
    .line 129
    .line 130
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 131
    .line 132
    invoke-static {v11, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->d:J

    .line 136
    .line 137
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    shr-int/lit8 v0, v0, 0x6

    .line 142
    .line 143
    and-int/lit8 v0, v0, 0xe

    .line 144
    .line 145
    const v1, 0x180038

    .line 146
    .line 147
    .line 148
    or-int v12, v1, v0

    .line 149
    .line 150
    const/16 v13, 0x3c

    .line 151
    .line 152
    const-string v5, ""

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_4
    move-object/from16 v15, p0

    .line 166
    .line 167
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    if-eqz v6, :cond_5

    .line 175
    .line 176
    new-instance v0, Lw0;

    .line 177
    .line 178
    move-object/from16 v4, p3

    .line 179
    .line 180
    move/from16 v5, p5

    .line 181
    .line 182
    move-object v1, v15

    .line 183
    invoke-direct/range {v0 .. v5}, Lw0;-><init>(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/painter/Painter;I)V

    .line 184
    .line 185
    .line 186
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 187
    .line 188
    :cond_5
    return-void
.end method
