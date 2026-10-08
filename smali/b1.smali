.class public final synthetic Lb1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    const/16 p5, 0xb

    .line 2
    .line 3
    iput p5, p0, Lb1;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lb1;->m:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lb1;->n:Ljava/lang/Object;

    .line 11
    .line 12
    iput p3, p0, Lb1;->l:I

    .line 13
    .line 14
    iput-object p4, p0, Lb1;->k:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    .line 17
    const/4 v0, 0x7

    iput v0, p0, Lb1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1;->k:Ljava/lang/Object;

    iput-object p2, p0, Lb1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb1;->n:Ljava/lang/Object;

    iput p4, p0, Lb1;->l:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 18
    const/16 p4, 0x8

    iput p4, p0, Lb1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb1;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb1;->k:Ljava/lang/Object;

    iput p5, p0, Lb1;->l:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 19
    iput p5, p0, Lb1;->j:I

    iput-object p1, p0, Lb1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb1;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb1;->k:Ljava/lang/Object;

    iput p4, p0, Lb1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 20
    iput p5, p0, Lb1;->j:I

    iput-object p1, p0, Lb1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb1;->k:Ljava/lang/Object;

    iput-object p3, p0, Lb1;->m:Ljava/lang/Object;

    iput p4, p0, Lb1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lb1;->j:I

    .line 2
    .line 3
    iget v1, p0, Lb1;->l:I

    .line 4
    .line 5
    iget-object v2, p0, Lb1;->k:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lb1;->n:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v6, p0, Lb1;->m:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v3, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 18
    .line 19
    check-cast v2, Lnet/blip/libblip/PeerPickerViewModel;

    .line 20
    .line 21
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    check-cast p2, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    or-int/lit8 p0, v1, 0x1

    .line 31
    .line 32
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {v3, v2, v6, p1, p0}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt;->c(Lnet/blip/libblip/TransferChoosePeerViewModel;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 37
    .line 38
    .line 39
    return-object v4

    .line 40
    :pswitch_0
    check-cast v6, Landroidx/compose/foundation/text/TextLinkScope;

    .line 41
    .line 42
    check-cast v3, [Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    or-int/lit8 p0, v1, 0x1

    .line 54
    .line 55
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-virtual {v6, v3, v2, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope;->b([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :pswitch_1
    check-cast v6, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 64
    .line 65
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 68
    .line 69
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 70
    .line 71
    check-cast p2, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    or-int/lit8 p0, v1, 0x1

    .line 77
    .line 78
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :pswitch_2
    check-cast v6, Landroidx/compose/material/SnackbarHostState;

    .line 87
    .line 88
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 89
    .line 90
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 91
    .line 92
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 93
    .line 94
    check-cast p2, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    or-int/lit8 p0, v1, 0x1

    .line 100
    .line 101
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/material/SnackbarHostKt;->b(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 106
    .line 107
    .line 108
    return-object v4

    .line 109
    :pswitch_3
    check-cast v6, Landroidx/lifecycle/LifecycleOwner;

    .line 110
    .line 111
    check-cast v3, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 112
    .line 113
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 116
    .line 117
    check-cast p2, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    or-int/lit8 p0, v1, 0x1

    .line 123
    .line 124
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/lifecycle/compose/LifecycleEffectKt;->b(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 129
    .line 130
    .line 131
    return-object v4

    .line 132
    :pswitch_4
    move-object v7, v6

    .line 133
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 134
    .line 135
    move-object v11, p1

    .line 136
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 137
    .line 138
    check-cast p2, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    iget-object v8, p0, Lb1;->n:Ljava/lang/Object;

    .line 148
    .line 149
    iget v9, p0, Lb1;->l:I

    .line 150
    .line 151
    iget-object v10, p0, Lb1;->k:Ljava/lang/Object;

    .line 152
    .line 153
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 154
    .line 155
    .line 156
    return-object v4

    .line 157
    :pswitch_5
    check-cast v3, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 158
    .line 159
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 160
    .line 161
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 162
    .line 163
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 164
    .line 165
    check-cast p2, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    or-int/lit8 p0, v1, 0x1

    .line 171
    .line 172
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    invoke-static {v3, v2, v6, p1, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->c(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 177
    .line 178
    .line 179
    return-object v4

    .line 180
    :pswitch_6
    check-cast v6, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 181
    .line 182
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 183
    .line 184
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 185
    .line 186
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 187
    .line 188
    check-cast p2, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    or-int/lit8 p0, v1, 0x1

    .line 194
    .line 195
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->a(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 200
    .line 201
    .line 202
    return-object v4

    .line 203
    :pswitch_7
    move-object v7, v6

    .line 204
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 205
    .line 206
    move-object v8, v3

    .line 207
    check-cast v8, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 208
    .line 209
    move-object v9, v2

    .line 210
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 211
    .line 212
    move-object v10, p1

    .line 213
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 214
    .line 215
    check-cast p2, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    iget v12, p0, Lb1;->l:I

    .line 225
    .line 226
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 227
    .line 228
    .line 229
    return-object v4

    .line 230
    :pswitch_8
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 231
    .line 232
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 233
    .line 234
    check-cast p2, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    or-int/2addr p0, v5

    .line 244
    invoke-virtual {v2, v6, v3, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->l(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    return-object v4

    .line 248
    :pswitch_9
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 249
    .line 250
    check-cast v3, Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 251
    .line 252
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 253
    .line 254
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 255
    .line 256
    check-cast p2, Ljava/lang/Integer;

    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    or-int/lit8 p0, v1, 0x1

    .line 262
    .line 263
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 268
    .line 269
    .line 270
    return-object v4

    .line 271
    :pswitch_a
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 272
    .line 273
    check-cast v3, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 274
    .line 275
    check-cast v2, Ljava/lang/String;

    .line 276
    .line 277
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 278
    .line 279
    check-cast p2, Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    or-int/lit8 p0, v1, 0x1

    .line 285
    .line 286
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    invoke-static {v6, v3, v2, p1, p0}, Lnet/blip/shared/AvatarKt;->f(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 291
    .line 292
    .line 293
    return-object v4

    .line 294
    :pswitch_b
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    check-cast v3, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 297
    .line 298
    check-cast v2, Lnet/blip/libblip/Device;

    .line 299
    .line 300
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 301
    .line 302
    check-cast p2, Ljava/lang/Integer;

    .line 303
    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    or-int/lit8 p0, v1, 0x1

    .line 308
    .line 309
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    invoke-static {v6, v3, v2, p1, p0}, Lnet/blip/shared/AvatarKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/Device;Landroidx/compose/runtime/Composer;I)V

    .line 314
    .line 315
    .line 316
    return-object v4

    .line 317
    :pswitch_c
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 318
    .line 319
    check-cast v3, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 320
    .line 321
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 322
    .line 323
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 324
    .line 325
    check-cast p2, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    or-int/lit8 p0, v1, 0x1

    .line 331
    .line 332
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 333
    .line 334
    .line 335
    move-result p0

    .line 336
    invoke-static {v6, v3, v2, p1, p0}, Lnet/blip/shared/AvatarKt;->e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 337
    .line 338
    .line 339
    return-object v4

    .line 340
    :pswitch_d
    check-cast v6, Lnet/blip/libblip/User;

    .line 341
    .line 342
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 343
    .line 344
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 345
    .line 346
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 347
    .line 348
    check-cast p2, Ljava/lang/Integer;

    .line 349
    .line 350
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    or-int/lit8 p0, v1, 0x1

    .line 354
    .line 355
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 356
    .line 357
    .line 358
    move-result p0

    .line 359
    invoke-static {v6, v3, v2, p1, p0}, Lnet/blip/shared/AvatarEditorKt;->a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 360
    .line 361
    .line 362
    return-object v4

    .line 363
    :pswitch_e
    check-cast v6, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 364
    .line 365
    check-cast v3, Landroidx/compose/ui/Alignment;

    .line 366
    .line 367
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 368
    .line 369
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 370
    .line 371
    check-cast p2, Ljava/lang/Integer;

    .line 372
    .line 373
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    or-int/lit8 p0, v1, 0x1

    .line 377
    .line 378
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 379
    .line 380
    .line 381
    move-result p0

    .line 382
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 383
    .line 384
    .line 385
    return-object v4

    .line 386
    :pswitch_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 387
    .line 388
    check-cast v3, Landroidx/compose/ui/window/DialogProperties;

    .line 389
    .line 390
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 391
    .line 392
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 393
    .line 394
    check-cast p2, Ljava/lang/Integer;

    .line 395
    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    or-int/lit8 p0, v1, 0x1

    .line 400
    .line 401
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 406
    .line 407
    .line 408
    return-object v4

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
