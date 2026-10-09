.class public final synthetic Lnc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Lnc;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lnc;->k:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnc;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    move-object/from16 v6, p2

    .line 18
    .line 19
    check-cast v6, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    and-int/lit8 v7, v6, 0x3

    .line 26
    .line 27
    if-eq v7, v4, :cond_0

    .line 28
    .line 29
    move v3, v5

    .line 30
    :cond_0
    and-int/lit8 v4, v6, 0x1

    .line 31
    .line 32
    move-object v9, v1

    .line 33
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {v9, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    const/high16 v1, 0x41800000    # 16.0f

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v3, 0x36

    .line 48
    .line 49
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 50
    .line 51
    invoke-static {v1, v4, v9, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-wide v3, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 56
    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 66
    .line 67
    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 77
    .line 78
    .line 79
    iget-boolean v7, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 80
    .line 81
    if-eqz v7, :cond_1

    .line 82
    .line 83
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 84
    .line 85
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 90
    .line 91
    .line 92
    :goto_0
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 93
    .line 94
    invoke-static {v9, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 95
    .line 96
    .line 97
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 98
    .line 99
    invoke-static {v9, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 107
    .line 108
    invoke-static {v9, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 115
    .line 116
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    const/4 v10, 0x6

    .line 120
    const/4 v11, 0x2

    .line 121
    const-string v6, "Sign in with email"

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    iget-object v8, v0, Lnc;->k:Lkotlin/jvm/functions/Function0;

    .line 125
    .line 126
    invoke-static/range {v6 .. v11}, Lnet/blip/android/ui/onboarding/ComposablesKt;->a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->s:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/compose/ui/platform/UriHandler;

    .line 136
    .line 137
    sget-object v7, Lnet/blip/shared/Strings$Onboarding$Splash;->a:Ljava/lang/String;

    .line 138
    .line 139
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 140
    .line 141
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 146
    .line 147
    iget-object v10, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 148
    .line 149
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 150
    .line 151
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 156
    .line 157
    iget-wide v11, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 158
    .line 159
    const/16 v3, 0xe

    .line 160
    .line 161
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 162
    .line 163
    .line 164
    move-result-wide v13

    .line 165
    const/16 v21, 0x0

    .line 166
    .line 167
    const v22, 0xff7ffc

    .line 168
    .line 169
    .line 170
    const/4 v15, 0x0

    .line 171
    const-wide/16 v16, 0x0

    .line 172
    .line 173
    const-wide/16 v18, 0x0

    .line 174
    .line 175
    const/16 v20, 0x0

    .line 176
    .line 177
    invoke-static/range {v10 .. v22}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 186
    .line 187
    iget-wide v3, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 188
    .line 189
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-nez v1, :cond_2

    .line 198
    .line 199
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 200
    .line 201
    if-ne v6, v1, :cond_3

    .line 202
    .line 203
    :cond_2
    new-instance v6, Lma;

    .line 204
    .line 205
    const/16 v1, 0x8

    .line 206
    .line 207
    invoke-direct {v6, v1, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 214
    .line 215
    move-object v10, v9

    .line 216
    new-instance v9, Lnet/blip/shared/SimpleLinkTextButton;

    .line 217
    .line 218
    invoke-direct {v9, v3, v4, v6}, Lnet/blip/shared/SimpleLinkTextButton;-><init>(JLkotlin/jvm/functions/Function1;)V

    .line 219
    .line 220
    .line 221
    const/4 v11, 0x0

    .line 222
    const/4 v12, 0x1

    .line 223
    const/4 v6, 0x0

    .line 224
    invoke-static/range {v6 .. v12}, Lnet/blip/shared/LinkableTextKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/runtime/Composer;II)V

    .line 225
    .line 226
    .line 227
    move-object v9, v10

    .line 228
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 233
    .line 234
    .line 235
    :goto_1
    return-object v2

    .line 236
    :pswitch_0
    move-object/from16 v1, p1

    .line 237
    .line 238
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 239
    .line 240
    move-object/from16 v6, p2

    .line 241
    .line 242
    check-cast v6, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    and-int/lit8 v7, v6, 0x3

    .line 249
    .line 250
    if-eq v7, v4, :cond_5

    .line 251
    .line 252
    move v3, v5

    .line 253
    :cond_5
    and-int/lit8 v4, v6, 0x1

    .line 254
    .line 255
    move-object v8, v1

    .line 256
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 257
    .line 258
    invoke-virtual {v8, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_6

    .line 263
    .line 264
    const/4 v9, 0x6

    .line 265
    const/4 v10, 0x2

    .line 266
    const-string v5, "Done"

    .line 267
    .line 268
    const/4 v6, 0x0

    .line 269
    iget-object v7, v0, Lnc;->k:Lkotlin/jvm/functions/Function0;

    .line 270
    .line 271
    invoke-static/range {v5 .. v10}, Lnet/blip/android/ui/onboarding/ComposablesKt;->a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 276
    .line 277
    .line 278
    :goto_2
    return-object v2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
