.class public abstract Lnet/blip/android/ui/components/InlineTextButtonKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v13, p5

    .line 7
    .line 8
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x517c526f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    or-int/lit8 v0, p6, 0x6

    .line 17
    .line 18
    move-object/from16 v14, p1

    .line 19
    .line 20
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/16 v1, 0x100

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v1, 0x80

    .line 30
    .line 31
    :goto_0
    or-int/2addr v0, v1

    .line 32
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v2, 0x4000

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move v1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v1, 0x2000

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v1

    .line 45
    move-object/from16 v9, p4

    .line 46
    .line 47
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const/high16 v1, 0x20000

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/high16 v1, 0x10000

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v1

    .line 59
    const v1, 0x12493

    .line 60
    .line 61
    .line 62
    and-int/2addr v1, v0

    .line 63
    const v3, 0x12492

    .line 64
    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v12, 0x1

    .line 68
    if-eq v1, v3, :cond_3

    .line 69
    .line 70
    move v1, v12

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v1, v11

    .line 73
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 74
    .line 75
    invoke-virtual {v13, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_9

    .line 80
    .line 81
    const/16 v1, 0x21

    .line 82
    .line 83
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 88
    .line 89
    invoke-static {v3, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    new-instance v8, Landroidx/compose/ui/semantics/Role;

    .line 94
    .line 95
    invoke-direct {v8, v11}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 96
    .line 97
    .line 98
    const/16 v10, 0xb

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    move-object/from16 v5, p2

    .line 107
    .line 108
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/PaddingKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const/16 v25, 0x0

    .line 113
    .line 114
    const v26, 0xff7fff

    .line 115
    .line 116
    .line 117
    const-wide/16 v15, 0x0

    .line 118
    .line 119
    const-wide/16 v17, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const-wide/16 v20, 0x0

    .line 124
    .line 125
    const-wide/16 v22, 0x0

    .line 126
    .line 127
    const/16 v24, 0x0

    .line 128
    .line 129
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const/4 v1, 0x0

    .line 134
    if-nez v4, :cond_4

    .line 135
    .line 136
    const v0, -0x6d7b4f1f

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 143
    .line 144
    .line 145
    move-object v0, v1

    .line 146
    goto :goto_5

    .line 147
    :cond_4
    const v8, -0x6d7b4f1e

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 151
    .line 152
    .line 153
    const v8, 0xe000

    .line 154
    .line 155
    .line 156
    and-int/2addr v0, v8

    .line 157
    if-ne v0, v2, :cond_5

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_5
    move v12, v11

    .line 161
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-nez v12, :cond_6

    .line 166
    .line 167
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 168
    .line 169
    if-ne v0, v2, :cond_7

    .line 170
    .line 171
    :cond_6
    new-instance v0, Lnet/blip/android/ui/components/InlineTextButtonKt$InlineTextButton$1$1$1;

    .line 172
    .line 173
    invoke-direct {v0, v4}, Lnet/blip/android/ui/components/InlineTextButtonKt$InlineTextButton$1$1$1;-><init>(Landroidx/compose/ui/graphics/Color;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 180
    .line 181
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 182
    .line 183
    .line 184
    :goto_5
    if-eqz v0, :cond_8

    .line 185
    .line 186
    new-instance v1, Lnet/blip/android/ui/components/InlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 187
    .line 188
    invoke-direct {v1, v0}, Lnet/blip/android/ui/components/InlineTextButtonKt$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 189
    .line 190
    .line 191
    :cond_8
    move-object v12, v1

    .line 192
    const/4 v14, 0x6

    .line 193
    const/16 v15, 0xf8

    .line 194
    .line 195
    const-string v5, "Request a new code"

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    const/4 v9, 0x0

    .line 199
    const/4 v10, 0x0

    .line 200
    const/4 v11, 0x0

    .line 201
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 202
    .line 203
    .line 204
    move-object v1, v3

    .line 205
    goto :goto_6

    .line 206
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 207
    .line 208
    .line 209
    move-object/from16 v1, p0

    .line 210
    .line 211
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    if-eqz v8, :cond_a

    .line 216
    .line 217
    new-instance v0, Lr7;

    .line 218
    .line 219
    const/4 v7, 0x2

    .line 220
    move-object/from16 v2, p1

    .line 221
    .line 222
    move-object/from16 v3, p2

    .line 223
    .line 224
    move-object/from16 v5, p4

    .line 225
    .line 226
    move/from16 v6, p6

    .line 227
    .line 228
    invoke-direct/range {v0 .. v7}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 229
    .line 230
    .line 231
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    :cond_a
    return-void
.end method
