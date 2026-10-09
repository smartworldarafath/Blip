.class public final synthetic Lz5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/ui/navigation/AuthScope;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/AuthScope;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz5;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lz5;->k:Lnet/blip/android/ui/navigation/AuthScope;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/AuthScope;II)V
    .locals 0

    .line 9
    iput p3, p0, Lz5;->j:I

    iput-object p1, p0, Lz5;->k:Lnet/blip/android/ui/navigation/AuthScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lz5;->j:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v0, v0, Lz5;->k:Lnet/blip/android/ui/navigation/AuthScope;

    .line 15
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
    move-object/from16 v2, p2

    .line 24
    .line 25
    check-cast v2, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/settings/SettingsScreenKt;->a(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/compose/runtime/Composer;I)V

    .line 35
    .line 36
    .line 37
    return-object v7

    .line 38
    :pswitch_0
    move-object/from16 v1, p1

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 41
    .line 42
    move-object/from16 v2, p2

    .line 43
    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    and-int/lit8 v3, v2, 0x3

    .line 51
    .line 52
    if-eq v3, v5, :cond_0

    .line 53
    .line 54
    move v4, v6

    .line 55
    :cond_0
    and-int/2addr v2, v6

    .line 56
    move-object v14, v1

    .line 57
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 58
    .line 59
    invoke-virtual {v14, v2, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    const/4 v12, 0x0

    .line 66
    const/16 v13, 0xa

    .line 67
    .line 68
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 69
    .line 70
    const/high16 v9, 0x41c00000    # 24.0f

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const/high16 v11, 0x42400000    # 48.0f

    .line 74
    .line 75
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    iget-object v0, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 80
    .line 81
    iget-object v0, v0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "\n                Your avatar, name, and email help others to easily find you on Blip.\n                Other people can\u2019t see your full email address until you\u2019ve chosen to send or receive files with them.\n                If you choose not to be searchable by name, people must enter your exact email address ("

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ") to send you things.\n            "

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v12

    .line 115
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 116
    .line 117
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 122
    .line 123
    iget-object v15, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 124
    .line 125
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 126
    .line 127
    const/16 v0, 0xe

    .line 128
    .line 129
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v18

    .line 133
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 134
    .line 135
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 140
    .line 141
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 142
    .line 143
    const/16 v26, 0x0

    .line 144
    .line 145
    const v27, 0xfffff8

    .line 146
    .line 147
    .line 148
    const-wide/16 v21, 0x0

    .line 149
    .line 150
    const-wide/16 v23, 0x0

    .line 151
    .line 152
    const/16 v25, 0x0

    .line 153
    .line 154
    move-wide/from16 v16, v0

    .line 155
    .line 156
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    const/16 v15, 0x6006

    .line 161
    .line 162
    const/16 v16, 0x2

    .line 163
    .line 164
    const/4 v9, 0x0

    .line 165
    invoke-static/range {v8 .. v16}, Lnet/blip/shared/ParagraphsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-object v7

    .line 173
    :pswitch_1
    move-object/from16 v1, p1

    .line 174
    .line 175
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 176
    .line 177
    move-object/from16 v2, p2

    .line 178
    .line 179
    check-cast v2, Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/settings/SettingsProfileScreenKt;->a(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/compose/runtime/Composer;I)V

    .line 189
    .line 190
    .line 191
    return-object v7

    .line 192
    :pswitch_2
    move-object/from16 v1, p1

    .line 193
    .line 194
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 195
    .line 196
    move-object/from16 v3, p2

    .line 197
    .line 198
    check-cast v3, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    and-int/lit8 v8, v3, 0x3

    .line 205
    .line 206
    if-eq v8, v5, :cond_2

    .line 207
    .line 208
    move v4, v6

    .line 209
    :cond_2
    and-int/2addr v3, v6

    .line 210
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 211
    .line 212
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_3

    .line 217
    .line 218
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/settings/SettingsProfileScreenKt;->a(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/compose/runtime/Composer;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 223
    .line 224
    .line 225
    :goto_1
    return-object v7

    .line 226
    :pswitch_3
    move-object/from16 v1, p1

    .line 227
    .line 228
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 229
    .line 230
    move-object/from16 v3, p2

    .line 231
    .line 232
    check-cast v3, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    and-int/lit8 v8, v3, 0x3

    .line 239
    .line 240
    if-eq v8, v5, :cond_4

    .line 241
    .line 242
    move v4, v6

    .line 243
    :cond_4
    and-int/2addr v3, v6

    .line 244
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 245
    .line 246
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_5

    .line 251
    .line 252
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/settings/SettingsScreenKt;->a(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/compose/runtime/Composer;I)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 257
    .line 258
    .line 259
    :goto_2
    return-object v7

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
