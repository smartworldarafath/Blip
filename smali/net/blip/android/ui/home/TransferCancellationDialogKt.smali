.class public abstract Lnet/blip/android/ui/home/TransferCancellationDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v8, p1

    .line 9
    .line 10
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, -0x569c3d61

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v0, v7, 0x6

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x4

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    :goto_0
    or-int/2addr v0, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v7

    .line 36
    :goto_1
    and-int/lit8 v3, v0, 0x3

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x1

    .line 40
    if-eq v3, v1, :cond_2

    .line 41
    .line 42
    move v3, v10

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v3, v9

    .line 45
    :goto_2
    and-int/lit8 v5, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {v8, v5, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_9

    .line 52
    .line 53
    sget-object v3, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 54
    .line 55
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lnet/blip/libblip/Core;

    .line 60
    .line 61
    iget-object v5, v5, Lnet/blip/libblip/Core;->b:Lc;

    .line 62
    .line 63
    invoke-static {v3, v8}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 68
    .line 69
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/content/Context;

    .line 74
    .line 75
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    check-cast v11, Ljava/lang/String;

    .line 80
    .line 81
    if-nez v11, :cond_3

    .line 82
    .line 83
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_a

    .line 88
    .line 89
    new-instance v1, Lmh;

    .line 90
    .line 91
    invoke-direct {v1, v4, v7, v9}, Lmh;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    iget-object v3, v3, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lnet/blip/libblip/frontend/Transfer;

    .line 104
    .line 105
    if-nez v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    new-instance v1, Lmh;

    .line 114
    .line 115
    invoke-direct {v1, v4, v7, v10}, Lmh;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    invoke-static {v3}, Lnet/blip/libblip/Transfer_DerivedKt;->c(Lnet/blip/libblip/frontend/Transfer;)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-nez v12, :cond_5

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-interface {v4, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    new-instance v2, Lmh;

    .line 138
    .line 139
    invoke-direct {v2, v4, v7, v1}, Lmh;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 140
    .line 141
    .line 142
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    and-int/lit8 v0, v0, 0xe

    .line 146
    .line 147
    if-ne v0, v2, :cond_6

    .line 148
    .line 149
    move v0, v10

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v0, v9

    .line 152
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 159
    .line 160
    if-ne v1, v0, :cond_8

    .line 161
    .line 162
    :cond_7
    new-instance v1, Lcd;

    .line 163
    .line 164
    const/16 v0, 0x19

    .line 165
    .line 166
    invoke-direct {v1, v4, v0}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_8
    move-object v12, v1

    .line 173
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 174
    .line 175
    new-instance v0, Lr7;

    .line 176
    .line 177
    move-object v2, v5

    .line 178
    move-object v5, v6

    .line 179
    const/4 v6, 0x7

    .line 180
    move-object v1, v3

    .line 181
    move-object v3, v11

    .line 182
    invoke-direct/range {v0 .. v6}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    const v2, -0x752e0119

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v2, Lnh;

    .line 193
    .line 194
    invoke-direct {v2, v1, v9}, Lnh;-><init>(Lnet/blip/libblip/frontend/Transfer;I)V

    .line 195
    .line 196
    .line 197
    const v3, 0x6a57e669

    .line 198
    .line 199
    .line 200
    invoke-static {v3, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    new-instance v2, Lnh;

    .line 205
    .line 206
    invoke-direct {v2, v1, v10}, Lnh;-><init>(Lnet/blip/libblip/frontend/Transfer;I)V

    .line 207
    .line 208
    .line 209
    const v1, 0x5a1ada2a

    .line 210
    .line 211
    .line 212
    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const/16 v20, 0x6c30

    .line 217
    .line 218
    const/16 v21, 0x1e4

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    const/4 v13, 0x0

    .line 222
    const-wide/16 v14, 0x0

    .line 223
    .line 224
    const-wide/16 v16, 0x0

    .line 225
    .line 226
    const/16 v18, 0x0

    .line 227
    .line 228
    move-object v9, v0

    .line 229
    move-object/from16 v19, v8

    .line 230
    .line 231
    move-object v8, v12

    .line 232
    move-object v12, v1

    .line 233
    invoke-static/range {v8 .. v21}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_9
    move-object/from16 v19, v8

    .line 238
    .line 239
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 240
    .line 241
    .line 242
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_a

    .line 247
    .line 248
    new-instance v1, Lmh;

    .line 249
    .line 250
    const/4 v2, 0x3

    .line 251
    invoke-direct {v1, v4, v7, v2}, Lmh;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 252
    .line 253
    .line 254
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 255
    .line 256
    :cond_a
    return-void
.end method
