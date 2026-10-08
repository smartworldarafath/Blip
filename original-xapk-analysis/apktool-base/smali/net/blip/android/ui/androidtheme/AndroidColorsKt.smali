.class public abstract Lnet/blip/android/ui/androidtheme/AndroidColorsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:Lnet/blip/android/ui/androidtheme/AndroidColors;

.field public static final c:Lnet/blip/android/ui/androidtheme/AndroidColors;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 1
    new-instance v0, Ln;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    new-instance v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 15
    .line 16
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 17
    .line 18
    const-wide v0, 0xff6b0effL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    const v7, 0x3f19999a    # 0.6f

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v7}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->d:J

    .line 39
    .line 40
    invoke-static {v0, v1, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    const v10, 0x3f4ccccd    # 0.8f

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4, v10}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    sget-object v12, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->e:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 52
    .line 53
    const/4 v13, 0x0

    .line 54
    invoke-static {v13, v13, v13, v7, v12}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    move-wide/from16 v16, v0

    .line 59
    .line 60
    const v0, 0x3ecccccd    # 0.4f

    .line 61
    .line 62
    .line 63
    invoke-static {v13, v13, v13, v0, v12}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v18

    .line 67
    const-wide v20, 0xffe23030L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v20

    .line 76
    const-wide v22, 0xfff7f7f7L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v22

    .line 85
    sget-wide v24, Landroidx/compose/ui/graphics/Color;->c:J

    .line 86
    .line 87
    const v1, 0x3e19999a    # 0.15f

    .line 88
    .line 89
    .line 90
    move-object v13, v12

    .line 91
    move-wide/from16 v37, v14

    .line 92
    .line 93
    move v14, v7

    .line 94
    move-wide/from16 v39, v16

    .line 95
    .line 96
    move-wide/from16 v41, v18

    .line 97
    .line 98
    move-wide/from16 v17, v8

    .line 99
    .line 100
    move-wide v9, v10

    .line 101
    move-wide/from16 v11, v37

    .line 102
    .line 103
    move-wide/from16 v7, v39

    .line 104
    .line 105
    move-wide/from16 v15, v20

    .line 106
    .line 107
    move-wide/from16 v21, v22

    .line 108
    .line 109
    move-wide/from16 v23, v24

    .line 110
    .line 111
    move-wide/from16 v19, v41

    .line 112
    .line 113
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 114
    .line 115
    .line 116
    move-result-wide v25

    .line 117
    const-wide v27, 0xff222222L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v27

    .line 126
    move-object/from16 v29, v13

    .line 127
    .line 128
    move/from16 v30, v14

    .line 129
    .line 130
    move-wide/from16 v13, v19

    .line 131
    .line 132
    move-wide/from16 v19, v17

    .line 133
    .line 134
    move-object/from16 v31, v29

    .line 135
    .line 136
    move/from16 v32, v30

    .line 137
    .line 138
    move-wide/from16 v29, v17

    .line 139
    .line 140
    move-object/from16 v33, v31

    .line 141
    .line 142
    move/from16 v34, v32

    .line 143
    .line 144
    move-wide/from16 v31, v3

    .line 145
    .line 146
    move-object/from16 v35, v33

    .line 147
    .line 148
    move/from16 v36, v34

    .line 149
    .line 150
    move-wide/from16 v33, v17

    .line 151
    .line 152
    move-object/from16 v1, v35

    .line 153
    .line 154
    move/from16 v0, v36

    .line 155
    .line 156
    invoke-direct/range {v2 .. v34}, Lnet/blip/android/ui/androidtheme/AndroidColors;-><init>(JJJJJJJJJJJJJJJJ)V

    .line 157
    .line 158
    .line 159
    move-wide/from16 v5, v17

    .line 160
    .line 161
    sput-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->b:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 162
    .line 163
    new-instance v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 164
    .line 165
    const-wide v7, 0xff8335ffL

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    const-wide v9, 0xff9d60ffL

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v9

    .line 183
    const/high16 v11, 0x3f400000    # 0.75f

    .line 184
    .line 185
    invoke-static {v9, v10, v11}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 186
    .line 187
    .line 188
    move-result-wide v9

    .line 189
    invoke-static {v9, v10, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 190
    .line 191
    .line 192
    move-result-wide v9

    .line 193
    const/high16 v11, 0x3f800000    # 1.0f

    .line 194
    .line 195
    invoke-static {v11, v11, v11, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v12

    .line 199
    const v0, 0x3ecccccd    # 0.4f

    .line 200
    .line 201
    .line 202
    invoke-static {v11, v11, v11, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v14

    .line 206
    const-wide v0, 0xffe94b4bL

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 212
    .line 213
    .line 214
    move-result-wide v16

    .line 215
    const-wide v0, 0xff131313L

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v20

    .line 224
    const v11, 0x3e19999a    # 0.15f

    .line 225
    .line 226
    .line 227
    invoke-static {v5, v6, v11}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 228
    .line 229
    .line 230
    move-result-wide v26

    .line 231
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 232
    .line 233
    .line 234
    move-result-wide v28

    .line 235
    const-wide v0, 0xff282828L

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 241
    .line 242
    .line 243
    move-result-wide v30

    .line 244
    move-wide/from16 v24, v23

    .line 245
    .line 246
    move-wide/from16 v22, v3

    .line 247
    .line 248
    move-wide v4, v5

    .line 249
    move-wide v6, v7

    .line 250
    move-wide v8, v9

    .line 251
    move-wide v10, v4

    .line 252
    move-wide/from16 v18, v4

    .line 253
    .line 254
    move-wide/from16 v32, v4

    .line 255
    .line 256
    move-wide/from16 v34, v22

    .line 257
    .line 258
    move-object v3, v2

    .line 259
    invoke-direct/range {v3 .. v35}, Lnet/blip/android/ui/androidtheme/AndroidColors;-><init>(JJJJJJJJJJJJJJJJ)V

    .line 260
    .line 261
    .line 262
    sput-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->c:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 263
    .line 264
    return-void
.end method
