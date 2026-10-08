.class public final synthetic Lq9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lq9;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq9;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lq9;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p5, p0, Lq9;->k:Z

    .line 12
    .line 13
    iput-object p3, p0, Lq9;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p4, p0, Lq9;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 18
    const/4 p6, 0x2

    iput p6, p0, Lq9;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9;->l:Ljava/lang/Object;

    iput-object p2, p0, Lq9;->m:Ljava/lang/Object;

    iput-boolean p3, p0, Lq9;->k:Z

    iput-object p4, p0, Lq9;->n:Ljava/lang/Object;

    iput-object p5, p0, Lq9;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lq9;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lq9;->k:Z

    iput-object p2, p0, Lq9;->l:Ljava/lang/Object;

    iput-object p3, p0, Lq9;->m:Ljava/lang/Object;

    iput-object p4, p0, Lq9;->n:Ljava/lang/Object;

    iput-object p5, p0, Lq9;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lq9;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, Lq9;->o:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v0, Lq9;->n:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, Lq9;->m:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Lq9;->l:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object v10, v9

    .line 22
    check-cast v10, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;

    .line 23
    .line 24
    move-object v11, v8

    .line 25
    check-cast v11, Ljava/lang/String;

    .line 26
    .line 27
    move-object v13, v7

    .line 28
    check-cast v13, Lnet/blip/libblip/frontend/Err;

    .line 29
    .line 30
    move-object v14, v6

    .line 31
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    move-object/from16 v15, p1

    .line 34
    .line 35
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 36
    .line 37
    move-object/from16 v1, p2

    .line 38
    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result v16

    .line 48
    iget-boolean v12, v0, Lq9;->k:Z

    .line 49
    .line 50
    invoke-virtual/range {v10 .. v16}, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;->a(Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 51
    .line 52
    .line 53
    return-object v4

    .line 54
    :pswitch_0
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    check-cast v7, Landroidx/compose/ui/focus/FocusRequester;

    .line 59
    .line 60
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 65
    .line 66
    move-object/from16 v10, p2

    .line 67
    .line 68
    check-cast v10, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    and-int/lit8 v11, v10, 0x3

    .line 75
    .line 76
    if-eq v11, v3, :cond_0

    .line 77
    .line 78
    move v2, v5

    .line 79
    :cond_0
    and-int/lit8 v3, v10, 0x1

    .line 80
    .line 81
    move-object v15, v1

    .line 82
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    invoke-virtual {v15, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    iget-boolean v0, v0, Lq9;->k:Z

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    new-instance v0, Lnet/blip/android/ui/onboarding/b;

    .line 97
    .line 98
    invoke-direct {v0, v9, v8, v7, v6}, Lnet/blip/android/ui/onboarding/b;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;)V

    .line 99
    .line 100
    .line 101
    const v1, 0x727818a2

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    const/16 v16, 0x6c00

    .line 109
    .line 110
    const/16 v17, 0x6

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const-string v13, ""

    .line 115
    .line 116
    invoke-static/range {v10 .. v17}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-object v4

    .line 124
    :pswitch_1
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 129
    .line 130
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 131
    .line 132
    move-object/from16 v1, p1

    .line 133
    .line 134
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 135
    .line 136
    move-object/from16 v10, p2

    .line 137
    .line 138
    check-cast v10, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    and-int/lit8 v11, v10, 0x3

    .line 145
    .line 146
    if-eq v11, v3, :cond_2

    .line 147
    .line 148
    move v2, v5

    .line 149
    :cond_2
    and-int/lit8 v3, v10, 0x1

    .line 150
    .line 151
    move-object v14, v1

    .line 152
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 153
    .line 154
    invoke-virtual {v14, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_4

    .line 159
    .line 160
    invoke-static {}, Landroidx/compose/material/icons/rounded/MoreVertKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 165
    .line 166
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 171
    .line 172
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    const/16 v15, 0x30

    .line 179
    .line 180
    const/16 v16, 0x3c

    .line 181
    .line 182
    const-string v11, "Menu"

    .line 183
    .line 184
    const/4 v12, 0x0

    .line 185
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 203
    .line 204
    if-ne v2, v3, :cond_3

    .line 205
    .line 206
    new-instance v2, Lo1;

    .line 207
    .line 208
    const/16 v3, 0x10

    .line 209
    .line 210
    invoke-direct {v2, v9, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    move-object v11, v2

    .line 217
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 218
    .line 219
    const/high16 v2, -0x3ec00000    # -12.0f

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    int-to-long v2, v2

    .line 226
    const/high16 v5, -0x3e000000    # -32.0f

    .line 227
    .line 228
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    int-to-long v12, v5

    .line 233
    const/16 v5, 0x20

    .line 234
    .line 235
    shl-long/2addr v2, v5

    .line 236
    const-wide v15, 0xffffffffL

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    and-long/2addr v12, v15

    .line 242
    or-long/2addr v2, v12

    .line 243
    new-instance v5, Lo9;

    .line 244
    .line 245
    iget-boolean v10, v0, Lq9;->k:Z

    .line 246
    .line 247
    move-object/from16 v21, v9

    .line 248
    .line 249
    move-object v9, v6

    .line 250
    move-object/from16 v6, v21

    .line 251
    .line 252
    move-object/from16 v21, v8

    .line 253
    .line 254
    move-object v8, v7

    .line 255
    move-object/from16 v7, v21

    .line 256
    .line 257
    invoke-direct/range {v5 .. v10}, Lo9;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 258
    .line 259
    .line 260
    const v0, -0x110abdf5

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v5, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 264
    .line 265
    .line 266
    move-result-object v17

    .line 267
    const v19, 0x180c30

    .line 268
    .line 269
    .line 270
    const/16 v20, 0x34

    .line 271
    .line 272
    const/4 v12, 0x0

    .line 273
    const/4 v15, 0x0

    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    move v10, v1

    .line 277
    move-object/from16 v18, v14

    .line 278
    .line 279
    move-wide v13, v2

    .line 280
    invoke-static/range {v10 .. v20}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 285
    .line 286
    .line 287
    :goto_1
    return-object v4

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
