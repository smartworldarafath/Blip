.class public abstract Lnet/blip/android/ui/transfer/TransferThumbnailStackKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, 0x1ce270e4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p3, 0x6

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int/2addr v0, p3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, p3

    .line 28
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v1, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v1

    .line 44
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 45
    .line 46
    const/16 v2, 0x12

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    if-eq v1, v2, :cond_4

    .line 51
    .line 52
    move v1, v4

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move v1, v3

    .line 55
    :goto_3
    and-int/2addr v0, v4

    .line 56
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    if-eqz v0, :cond_d

    .line 63
    .line 64
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v7, v0

    .line 71
    check-cast v7, Landroid/content/Context;

    .line 72
    .line 73
    iget-object v0, p1, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 74
    .line 75
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-static {v0}, Lnet/blip/libblip/Metadata_DerivedKt;->c(Lbsarchive/Metadata;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_7

    .line 105
    .line 106
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0, v8}, Lnet/blip/libblip/Metadata_DerivedKt;->a(Lbsarchive/Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    if-eqz v9, :cond_5

    .line 117
    .line 118
    new-instance v8, Lkotlin/Pair;

    .line 119
    .line 120
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-direct {v8, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    const-string v9, "/"

    .line 127
    .line 128
    filled-new-array {v9}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    const/4 v10, 0x6

    .line 133
    invoke-static {v8, v9, v10}, Lkotlin/text/StringsKt;->G(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Ljava/lang/String;

    .line 142
    .line 143
    new-instance v9, Lkotlin/Pair;

    .line 144
    .line 145
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v8, v9

    .line 151
    :goto_5
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    move-object v6, v2

    .line 156
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 161
    .line 162
    if-ne v0, v5, :cond_8

    .line 163
    .line 164
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    move-object v9, v0

    .line 172
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 173
    .line 174
    iget-object v0, p1, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 175
    .line 176
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Direction;->o:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 177
    .line 178
    if-eq v0, v2, :cond_a

    .line 179
    .line 180
    iget-object v0, p1, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 181
    .line 182
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Status;->u:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 183
    .line 184
    if-ne v0, v2, :cond_9

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_9
    move v8, v3

    .line 188
    goto :goto_7

    .line 189
    :cond_a
    :goto_6
    move v8, v4

    .line 190
    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    or-int/2addr v2, v3

    .line 203
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    or-int/2addr v2, v3

    .line 208
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-nez v2, :cond_b

    .line 213
    .line 214
    if-ne v3, v5, :cond_c

    .line 215
    .line 216
    :cond_b
    new-instance v5, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;

    .line 217
    .line 218
    const/4 v10, 0x0

    .line 219
    invoke-direct/range {v5 .. v10}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1;-><init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object v3, v5

    .line 226
    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 227
    .line 228
    invoke-static {v6, v0, v3, p2}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 229
    .line 230
    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    .line 232
    .line 233
    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v2, La1;

    .line 238
    .line 239
    const/4 v3, 0x7

    .line 240
    invoke-direct {v2, v9, v3}, La1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 241
    .line 242
    .line 243
    const v3, -0x5f386777

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v2, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const/16 v3, 0x1b0

    .line 251
    .line 252
    const v4, 0x3f4ccccd    # 0.8f

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v4, v2, p2, v3}, Lnet/blip/shared/StackLayoutKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 256
    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_d
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 260
    .line 261
    .line 262
    :goto_8
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    if-eqz p2, :cond_e

    .line 267
    .line 268
    new-instance v0, Lt2;

    .line 269
    .line 270
    invoke-direct {v0, p3, v1, p0, p1}, Lt2;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 274
    .line 275
    :cond_e
    return-void
.end method
