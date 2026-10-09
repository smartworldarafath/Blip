.class public final synthetic Lef;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Lef;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lef;->k:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Lef;->l:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lef;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v0, Lef;->l:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v0, v0, Lef;->k:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 22
    .line 23
    move-object/from16 v8, p2

    .line 24
    .line 25
    check-cast v8, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    and-int/lit8 v9, v8, 0x3

    .line 32
    .line 33
    if-eq v9, v4, :cond_0

    .line 34
    .line 35
    move v4, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v4, v5

    .line 38
    :goto_0
    and-int/2addr v8, v7

    .line 39
    move-object v14, v1

    .line 40
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    invoke-virtual {v14, v8, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->e:J

    .line 49
    .line 50
    const/16 v15, 0xc30

    .line 51
    .line 52
    const/16 v16, 0x5

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const-string v10, "Sign out"

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-static/range {v9 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const v1, -0x62723aec

    .line 74
    .line 75
    .line 76
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    if-ne v4, v3, :cond_2

    .line 90
    .line 91
    :cond_1
    new-instance v4, Lcd;

    .line 92
    .line 93
    const/16 v1, 0x15

    .line 94
    .line 95
    invoke-direct {v4, v0, v1}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    move-object v9, v4

    .line 102
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 103
    .line 104
    new-instance v1, Lea;

    .line 105
    .line 106
    invoke-direct {v1, v6, v7}, Lea;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 107
    .line 108
    .line 109
    const v3, 0x4d870b5a    # 2.83208512E8f

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    new-instance v1, La1;

    .line 117
    .line 118
    const/4 v3, 0x3

    .line 119
    invoke-direct {v1, v0, v3}, La1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 120
    .line 121
    .line 122
    const v0, 0x46982e5c

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    const/16 v20, 0x0

    .line 130
    .line 131
    const v22, 0x36c30

    .line 132
    .line 133
    .line 134
    const/4 v11, 0x0

    .line 135
    sget-object v13, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    move-object/from16 v21, v14

    .line 138
    .line 139
    sget-object v14, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 140
    .line 141
    const/4 v15, 0x0

    .line 142
    const-wide/16 v16, 0x0

    .line 143
    .line 144
    const-wide/16 v18, 0x0

    .line 145
    .line 146
    invoke-static/range {v9 .. v22}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 147
    .line 148
    .line 149
    move-object/from16 v14, v21

    .line 150
    .line 151
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    const v0, -0x624d254b

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 166
    .line 167
    .line 168
    :goto_1
    return-object v2

    .line 169
    :pswitch_0
    move-object/from16 v1, p1

    .line 170
    .line 171
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 172
    .line 173
    move-object/from16 v8, p2

    .line 174
    .line 175
    check-cast v8, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    and-int/lit8 v9, v8, 0x3

    .line 182
    .line 183
    if-eq v9, v4, :cond_5

    .line 184
    .line 185
    move v5, v7

    .line 186
    :cond_5
    and-int/2addr v8, v7

    .line 187
    move-object v14, v1

    .line 188
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 189
    .line 190
    invoke-virtual {v14, v8, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_9

    .line 195
    .line 196
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    .line 197
    .line 198
    const/16 v5, 0x30

    .line 199
    .line 200
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 201
    .line 202
    invoke-static {v1, v8, v14, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 207
    .line 208
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 217
    .line 218
    invoke-static {v14, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 223
    .line 224
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 228
    .line 229
    .line 230
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 231
    .line 232
    if-eqz v11, :cond_6

    .line 233
    .line 234
    sget-object v11, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 235
    .line 236
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 241
    .line 242
    .line 243
    :goto_2
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 244
    .line 245
    invoke-static {v14, v1, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 246
    .line 247
    .line 248
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 249
    .line 250
    invoke-static {v14, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 258
    .line 259
    invoke-static {v14, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 263
    .line 264
    .line 265
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 266
    .line 267
    invoke-static {v14, v10, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 268
    .line 269
    .line 270
    const/16 v15, 0x1b0

    .line 271
    .line 272
    const/16 v16, 0x9

    .line 273
    .line 274
    move-object v1, v9

    .line 275
    const/4 v9, 0x0

    .line 276
    const-string v10, "Searchable by name"

    .line 277
    .line 278
    const-string v11, "Help people find you on Blip"

    .line 279
    .line 280
    const-wide/16 v12, 0x0

    .line 281
    .line 282
    invoke-static/range {v9 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 283
    .line 284
    .line 285
    const/high16 v5, 0x3f800000    # 1.0f

    .line 286
    .line 287
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-static {v14, v5}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 292
    .line 293
    .line 294
    const/4 v5, 0x0

    .line 295
    invoke-static {v1, v5, v4}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Ljava/lang/Boolean;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    or-int/2addr v1, v4

    .line 318
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    if-nez v1, :cond_7

    .line 323
    .line 324
    if-ne v4, v3, :cond_8

    .line 325
    .line 326
    :cond_7
    new-instance v4, Llc;

    .line 327
    .line 328
    invoke-direct {v4, v0, v6}, Llc;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    :cond_8
    move-object v10, v4

    .line 335
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 336
    .line 337
    const/4 v13, 0x0

    .line 338
    const/16 v15, 0x180

    .line 339
    .line 340
    const/4 v12, 0x0

    .line 341
    invoke-static/range {v9 .. v15}, Lnet/blip/android/ui/controls/AndroidSwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 349
    .line 350
    .line 351
    :goto_3
    return-object v2

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
