.class public final synthetic Ln;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Ln;->j:I

    .line 4
    .line 5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v0, "LocalClipboard"

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v3

    .line 18
    :pswitch_0
    const-string v0, "LocalClipboardManager"

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v3

    .line 24
    :pswitch_1
    const-string v0, "LocalAutofillManager"

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v3

    .line 30
    :pswitch_2
    const-string v0, "LocalAutofillTree"

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v3

    .line 36
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 37
    .line 38
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_4
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_5
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalSoundEffect$1$1;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_6
    const-string v0, "LocalWindowInfo"

    .line 55
    .line 56
    invoke-static {v0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v3

    .line 60
    :pswitch_7
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 61
    .line 62
    return-object v3

    .line 63
    :pswitch_8
    sget-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 64
    .line 65
    return-object v3

    .line 66
    :pswitch_9
    return-object v1

    .line 67
    :pswitch_a
    sget-object v0, Landroidx/compose/material/ColorsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 68
    .line 69
    const-wide v0, 0xff6200eeL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    const-wide v0, 0xff3700b3L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    const-wide v0, 0xff03dac6L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    const-wide v0, 0xff018786L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->d:J

    .line 106
    .line 107
    const-wide v0, 0xffb00020L

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v15

    .line 116
    sget-wide v19, Landroidx/compose/ui/graphics/Color;->b:J

    .line 117
    .line 118
    new-instance v2, Landroidx/compose/material/Colors;

    .line 119
    .line 120
    const/16 v27, 0x1

    .line 121
    .line 122
    move-wide v13, v11

    .line 123
    move-wide/from16 v17, v11

    .line 124
    .line 125
    move-wide/from16 v21, v19

    .line 126
    .line 127
    move-wide/from16 v23, v19

    .line 128
    .line 129
    move-wide/from16 v25, v11

    .line 130
    .line 131
    invoke-direct/range {v2 .. v27}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZ)V

    .line 132
    .line 133
    .line 134
    return-object v2

    .line 135
    :pswitch_b
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 136
    .line 137
    const-string v1, "yyyyMMdd_HHmmss"

    .line 138
    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 144
    .line 145
    .line 146
    new-instance v1, Ljava/util/Date;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    const-string v1, "IMG-"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :pswitch_c
    sget-object v0, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    return-object v3

    .line 168
    :pswitch_d
    sget-object v0, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 169
    .line 170
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 171
    .line 172
    new-array v1, v2, [Lkotlin/Pair;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const-string v0, "Missing compositionLocal for LocalAvatarTheme"

    .line 178
    .line 179
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 180
    .line 181
    .line 182
    throw v3

    .line 183
    :pswitch_e
    sget-object v0, Landroidx/compose/foundation/text/AutofillHighlightKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 184
    .line 185
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 186
    .line 187
    const v1, 0x4dffeb3b    # 5.36700768E8f

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    :pswitch_f
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 199
    .line 200
    return-object v1

    .line 201
    :pswitch_10
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 202
    .line 203
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 204
    .line 205
    new-array v1, v2, [Lkotlin/Pair;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const-string v0, "CompositionLocal LocalAndroidTextStyles not present"

    .line 211
    .line 212
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 213
    .line 214
    .line 215
    throw v3

    .line 216
    :pswitch_11
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 217
    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    return-object v0

    .line 223
    :pswitch_12
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 224
    .line 225
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 226
    .line 227
    return-object v0

    .line 228
    :pswitch_13
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 229
    .line 230
    const-string v0, "DEFAULT_TEST_TAG"

    .line 231
    .line 232
    return-object v0

    .line 233
    :pswitch_14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    return-object v0

    .line 238
    :pswitch_15
    const-string v0, "LocalView"

    .line 239
    .line 240
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v3

    .line 244
    :pswitch_16
    const-string v0, "LocalResourceIdCache"

    .line 245
    .line 246
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3

    .line 250
    :pswitch_17
    const-string v0, "LocalImageVectorCache"

    .line 251
    .line 252
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v3

    .line 256
    :pswitch_18
    const-string v0, "LocalContext"

    .line 257
    .line 258
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v3

    .line 262
    :pswitch_19
    const-string v0, "LocalConfiguration"

    .line 263
    .line 264
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v3

    .line 268
    :pswitch_1a
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 269
    .line 270
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 271
    .line 272
    new-array v1, v2, [Lkotlin/Pair;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    const-string v0, "CompositionLocal LocalAndroidColors not present"

    .line 278
    .line 279
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 280
    .line 281
    .line 282
    throw v3

    .line 283
    :pswitch_1b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    return-object v0

    .line 292
    :pswitch_1c
    sget-object v0, Lkotlin/random/Random;->j:Lkotlin/random/Random$Default;

    .line 293
    .line 294
    sget-object v0, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 295
    .line 296
    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->c()Ljava/util/Random;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const/high16 v1, 0x7fff0000

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    const/high16 v1, 0x10000

    .line 307
    .line 308
    add-int/2addr v0, v1

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    return-object v0

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
