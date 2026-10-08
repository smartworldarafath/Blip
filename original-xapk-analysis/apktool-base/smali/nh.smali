.class public final synthetic Lnh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/frontend/Transfer;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnh;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lnh;->k:Lnet/blip/libblip/frontend/Transfer;

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
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnh;->j:I

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
    iget-object v0, v0, Lnh;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    and-int/lit8 v7, v6, 0x3

    .line 28
    .line 29
    if-eq v7, v4, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    :cond_0
    and-int/lit8 v4, v6, 0x1

    .line 33
    .line 34
    move-object v14, v1

    .line 35
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v14, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->a(Lnet/blip/libblip/frontend/Transfer;)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/high16 v1, 0x42c80000    # 100.0f

    .line 48
    .line 49
    mul-float/2addr v0, v1

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "%.1f"

    .line 63
    .line 64
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "Transferring, "

    .line 69
    .line 70
    const-string v3, "% complete"

    .line 71
    .line 72
    invoke-static {v1, v0, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 77
    .line 78
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 83
    .line 84
    iget-object v15, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 85
    .line 86
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 93
    .line 94
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 95
    .line 96
    const/16 v3, 0x10

    .line 97
    .line 98
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v18

    .line 102
    const/16 v26, 0x0

    .line 103
    .line 104
    const v27, 0xfffffc

    .line 105
    .line 106
    .line 107
    const/16 v20, 0x0

    .line 108
    .line 109
    const-wide/16 v21, 0x0

    .line 110
    .line 111
    const-wide/16 v23, 0x0

    .line 112
    .line 113
    const/16 v25, 0x0

    .line 114
    .line 115
    move-wide/from16 v16, v0

    .line 116
    .line 117
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    const/4 v15, 0x0

    .line 122
    const/16 v16, 0x1fa

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    const/4 v12, 0x0

    .line 129
    const/4 v13, 0x0

    .line 130
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-object v2

    .line 138
    :pswitch_0
    move-object/from16 v1, p1

    .line 139
    .line 140
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 141
    .line 142
    move-object/from16 v6, p2

    .line 143
    .line 144
    check-cast v6, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    and-int/lit8 v7, v6, 0x3

    .line 151
    .line 152
    if-eq v7, v4, :cond_2

    .line 153
    .line 154
    move v3, v5

    .line 155
    :cond_2
    and-int/lit8 v4, v6, 0x1

    .line 156
    .line 157
    move-object v13, v1

    .line 158
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 159
    .line 160
    invoke-virtual {v13, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_3

    .line 165
    .line 166
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 179
    .line 180
    iget-object v14, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 181
    .line 182
    const/16 v0, 0x12

    .line 183
    .line 184
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 185
    .line 186
    .line 187
    move-result-wide v17

    .line 188
    const/16 v25, 0x0

    .line 189
    .line 190
    const v26, 0xfffffd

    .line 191
    .line 192
    .line 193
    const-wide/16 v15, 0x0

    .line 194
    .line 195
    const/16 v19, 0x0

    .line 196
    .line 197
    const-wide/16 v20, 0x0

    .line 198
    .line 199
    const-wide/16 v22, 0x0

    .line 200
    .line 201
    const/16 v24, 0x0

    .line 202
    .line 203
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    const/4 v14, 0x0

    .line 208
    const/16 v15, 0x1fa

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    const/4 v10, 0x0

    .line 214
    const/4 v11, 0x0

    .line 215
    const/4 v12, 0x0

    .line 216
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 221
    .line 222
    .line 223
    :goto_1
    return-object v2

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
