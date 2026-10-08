.class public final synthetic Lo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lo;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lo;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lo;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lo;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lo;->m:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lo;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p6, p0, Lo;->j:I

    iput-object p1, p0, Lo;->k:Ljava/lang/Object;

    iput-object p2, p0, Lo;->l:Ljava/lang/Object;

    iput-object p3, p0, Lo;->m:Ljava/lang/Object;

    iput-object p4, p0, Lo;->n:Ljava/lang/Object;

    iput-object p5, p0, Lo;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo;->j:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, v0, Lo;->o:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lo;->n:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Lo;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Lo;->l:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Lo;->k:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 22
    .line 23
    check-cast v7, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 24
    .line 25
    check-cast v6, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 26
    .line 27
    check-cast v5, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 28
    .line 29
    move-object v9, v4

    .line 30
    check-cast v9, Landroidx/compose/ui/graphics/SolidColor;

    .line 31
    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 35
    .line 36
    move-object v8, v1

    .line 37
    check-cast v8, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 38
    .line 39
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 43
    .line 44
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 47
    .line 48
    .line 49
    move-result v15

    .line 50
    const/4 v0, 0x0

    .line 51
    cmpg-float v1, v15, v0

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_0
    iget-wide v10, v6, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 58
    .line 59
    sget v1, Landroidx/compose/ui/text/TextRange;->c:I

    .line 60
    .line 61
    const/16 v1, 0x20

    .line 62
    .line 63
    shr-long/2addr v10, v1

    .line 64
    long-to-int v4, v10

    .line 65
    invoke-interface {v7, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v0, v5, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v4, Landroidx/compose/ui/geometry/Rect;

    .line 83
    .line 84
    invoke-direct {v4, v0, v0, v0, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    move-object v0, v4

    .line 88
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    .line 89
    .line 90
    invoke-virtual {v8, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->i0(F)F

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    float-to-double v5, v5

    .line 95
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    double-to-float v5, v5

    .line 100
    const/high16 v6, 0x3f800000    # 1.0f

    .line 101
    .line 102
    cmpg-float v7, v5, v6

    .line 103
    .line 104
    if-gez v7, :cond_2

    .line 105
    .line 106
    move v14, v6

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move v14, v5

    .line 109
    :goto_1
    iget v5, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 110
    .line 111
    div-float v4, v14, v4

    .line 112
    .line 113
    add-float/2addr v5, v4

    .line 114
    iget-object v6, v8, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 115
    .line 116
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 117
    .line 118
    .line 119
    move-result-wide v6

    .line 120
    shr-long/2addr v6, v1

    .line 121
    long-to-int v6, v6

    .line 122
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    sub-float/2addr v6, v4

    .line 127
    cmpl-float v7, v5, v6

    .line 128
    .line 129
    if-lez v7, :cond_3

    .line 130
    .line 131
    move v5, v6

    .line 132
    :cond_3
    cmpg-float v6, v5, v4

    .line 133
    .line 134
    if-gez v6, :cond_4

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move v4, v5

    .line 138
    :goto_2
    float-to-int v5, v14

    .line 139
    rem-int/lit8 v5, v5, 0x2

    .line 140
    .line 141
    if-ne v5, v2, :cond_5

    .line 142
    .line 143
    float-to-double v4, v4

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    double-to-float v2, v4

    .line 149
    const/high16 v4, 0x3f000000    # 0.5f

    .line 150
    .line 151
    add-float/2addr v2, v4

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    float-to-double v4, v4

    .line 154
    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    double-to-float v2, v4

    .line 159
    :goto_3
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 160
    .line 161
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    int-to-long v5, v5

    .line 166
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    int-to-long v10, v4

    .line 171
    shl-long v4, v5, v1

    .line 172
    .line 173
    const-wide v6, 0xffffffffL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    and-long/2addr v10, v6

    .line 179
    or-long/2addr v10, v4

    .line 180
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    int-to-long v4, v2

    .line 187
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    int-to-long v12, v0

    .line 192
    shl-long v0, v4, v1

    .line 193
    .line 194
    and-long v4, v12, v6

    .line 195
    .line 196
    or-long v12, v0, v4

    .line 197
    .line 198
    const/16 v16, 0x1b0

    .line 199
    .line 200
    invoke-static/range {v8 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->d0(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/SolidColor;JJFFI)V

    .line 201
    .line 202
    .line 203
    :goto_4
    return-object v3

    .line 204
    :pswitch_0
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 205
    .line 206
    check-cast v7, Ljava/util/ArrayList;

    .line 207
    .line 208
    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 209
    .line 210
    check-cast v5, Landroidx/navigation/internal/NavControllerImpl;

    .line 211
    .line 212
    check-cast v4, Landroid/os/Bundle;

    .line 213
    .line 214
    move-object/from16 v1, p1

    .line 215
    .line 216
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 222
    .line 223
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    const/4 v8, -0x1

    .line 228
    if-eq v0, v8, :cond_6

    .line 229
    .line 230
    iget v8, v6, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 231
    .line 232
    add-int/2addr v0, v2

    .line 233
    invoke-virtual {v7, v8, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iput v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_6
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 241
    .line 242
    :goto_5
    iget-object v0, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 243
    .line 244
    invoke-virtual {v5, v0, v4, v1, v2}, Landroidx/navigation/internal/NavControllerImpl;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    .line 245
    .line 246
    .line 247
    return-object v3

    .line 248
    :pswitch_1
    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    .line 249
    .line 250
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 251
    .line 252
    check-cast v5, Landroidx/compose/ui/window/PopupProperties;

    .line 253
    .line 254
    check-cast v6, Ljava/lang/String;

    .line 255
    .line 256
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 257
    .line 258
    move-object/from16 v1, p1

    .line 259
    .line 260
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 261
    .line 262
    sget-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 263
    .line 264
    iget-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->z:Landroid/view/WindowManager;

    .line 265
    .line 266
    iget-object v2, v0, Landroidx/compose/ui/window/PopupLayout;->A:Landroid/view/WindowManager$LayoutParams;

    .line 267
    .line 268
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v7, v5, v6, v4}, Landroidx/compose/ui/window/PopupLayout;->o(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 272
    .line 273
    .line 274
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$lambda$3$0$$inlined$onDispose$1;

    .line 275
    .line 276
    invoke-direct {v1, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    .line 277
    .line 278
    .line 279
    return-object v1

    .line 280
    :pswitch_2
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 281
    .line 282
    check-cast v7, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 283
    .line 284
    check-cast v6, Landroidx/compose/ui/text/input/ImeOptions;

    .line 285
    .line 286
    check-cast v5, Lp2;

    .line 287
    .line 288
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 289
    .line 290
    move-object/from16 v1, p1

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 293
    .line 294
    iget-object v2, v7, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;->a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;

    .line 295
    .line 296
    iput-object v0, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 297
    .line 298
    iput-object v6, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    .line 299
    .line 300
    iput-object v5, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->c:Lkotlin/jvm/functions/Function1;

    .line 301
    .line 302
    iput-object v4, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->d:Lkotlin/jvm/functions/Function1;

    .line 303
    .line 304
    const/4 v0, 0x0

    .line 305
    if-eqz v2, :cond_7

    .line 306
    .line 307
    move-object v4, v2

    .line 308
    check-cast v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 309
    .line 310
    iget-object v4, v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;->y:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_7
    move-object v4, v0

    .line 314
    :goto_6
    iput-object v4, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->e:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 315
    .line 316
    if-eqz v2, :cond_8

    .line 317
    .line 318
    move-object v4, v2

    .line 319
    check-cast v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 320
    .line 321
    iget-object v4, v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;->z:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_8
    move-object v4, v0

    .line 325
    :goto_7
    iput-object v4, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 326
    .line 327
    if-eqz v2, :cond_9

    .line 328
    .line 329
    check-cast v2, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 330
    .line 331
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 332
    .line 333
    invoke-static {v2, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 338
    .line 339
    :cond_9
    iput-object v0, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->g:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 340
    .line 341
    return-object v3

    .line 342
    :pswitch_3
    check-cast v0, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 343
    .line 344
    check-cast v7, Landroidx/activity/result/ActivityResultRegistry;

    .line 345
    .line 346
    check-cast v6, Ljava/lang/String;

    .line 347
    .line 348
    check-cast v5, Landroidx/activity/result/contract/ActivityResultContract;

    .line 349
    .line 350
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 351
    .line 352
    move-object/from16 v1, p1

    .line 353
    .line 354
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 355
    .line 356
    new-instance v1, Lp;

    .line 357
    .line 358
    const/4 v2, 0x0

    .line 359
    invoke-direct {v1, v2, v4}, Lp;-><init>(ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v6, v5, v1}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$3;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    iput-object v1, v0, Landroidx/activity/compose/ActivityResultLauncherHolder;->a:Landroidx/activity/result/ActivityResultRegistry$register$3;

    .line 367
    .line 368
    new-instance v1, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$4$0$$inlined$onDispose$1;

    .line 369
    .line 370
    invoke-direct {v1, v0}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$4$0$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;)V

    .line 371
    .line 372
    .line 373
    return-object v1

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
