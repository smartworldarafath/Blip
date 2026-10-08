.class public final Landroidx/compose/ui/text/TextStyle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final d:Landroidx/compose/ui/text/TextStyle;


# instance fields
.field public final a:Landroidx/compose/ui/text/SpanStyle;

.field public final b:Landroidx/compose/ui/text/ParagraphStyle;

.field public final c:Landroidx/compose/ui/text/PlatformTextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    const/4 v12, 0x0

    .line 4
    const v13, 0xffffff

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const-wide/16 v10, 0x0

    .line 17
    .line 18
    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/compose/ui/text/TextStyle;->d:Landroidx/compose/ui/text/TextStyle;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V
    .locals 25

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->h:J

    .line 8
    .line 9
    move-wide v4, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide/from16 v4, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-wide v1, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 18
    .line 19
    move-wide v6, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v6, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v1, v0, 0x4

    .line 24
    .line 25
    const/16 v22, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    move-object/from16 v8, v22

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object/from16 v8, p5

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move-object/from16 v11, v22

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object/from16 v11, p6

    .line 42
    .line 43
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    sget-wide v1, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 48
    .line 49
    move-wide v13, v1

    .line 50
    goto :goto_4

    .line 51
    :cond_4
    move-wide/from16 v13, p7

    .line 52
    .line 53
    :goto_4
    sget-wide v18, Landroidx/compose/ui/graphics/Color;->h:J

    .line 54
    .line 55
    const v1, 0x8000

    .line 56
    .line 57
    .line 58
    and-int/2addr v1, v0

    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    move v1, v2

    .line 63
    goto :goto_5

    .line 64
    :cond_5
    move/from16 v1, p9

    .line 65
    .line 66
    :goto_5
    const/high16 v3, 0x20000

    .line 67
    .line 68
    and-int/2addr v3, v0

    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    sget-wide v9, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 72
    .line 73
    move-wide/from16 v23, v9

    .line 74
    .line 75
    goto :goto_6

    .line 76
    :cond_6
    move-wide/from16 v23, p10

    .line 77
    .line 78
    :goto_6
    const/high16 v3, 0x200000

    .line 79
    .line 80
    and-int/2addr v0, v3

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    goto :goto_7

    .line 84
    :cond_7
    move/from16 v2, p12

    .line 85
    .line 86
    :goto_7
    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    const/4 v15, 0x0

    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/16 v17, 0x0

    .line 95
    .line 96
    const/16 v20, 0x0

    .line 97
    .line 98
    const/16 v21, 0x0

    .line 99
    .line 100
    invoke-direct/range {v3 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Landroidx/compose/ui/text/ParagraphStyle;

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    move-object/from16 p1, v0

    .line 111
    .line 112
    move/from16 p2, v1

    .line 113
    .line 114
    move/from16 p9, v2

    .line 115
    .line 116
    move/from16 p3, v4

    .line 117
    .line 118
    move-object/from16 p6, v5

    .line 119
    .line 120
    move-object/from16 p8, v6

    .line 121
    .line 122
    move/from16 p10, v7

    .line 123
    .line 124
    move-object/from16 p11, v8

    .line 125
    .line 126
    move-object/from16 p7, v22

    .line 127
    .line 128
    move-wide/from16 p4, v23

    .line 129
    .line 130
    invoke-direct/range {p1 .. p11}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    move-object/from16 v2, p0

    .line 135
    .line 136
    invoke-direct {v2, v3, v0, v1}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V
    .locals 3

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    iget-object v0, p2, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Landroidx/compose/ui/text/PlatformTextStyle;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/text/PlatformTextStyle;-><init>(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)V

    move-object v1, v2

    .line 143
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 146
    iput-object p2, p0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 147
    iput-object p3, p0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    return-void
.end method

.method public static a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p12

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 12
    .line 13
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide/from16 v2, p1

    .line 19
    .line 20
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v4, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 25
    .line 26
    iget-wide v4, v4, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 27
    .line 28
    move-wide v8, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-wide/from16 v8, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iget-object v4, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 37
    .line 38
    iget-object v4, v4, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 39
    .line 40
    move-object v10, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object/from16 v10, p5

    .line 43
    .line 44
    :goto_2
    iget-object v4, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 45
    .line 46
    iget-object v11, v4, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 47
    .line 48
    iget-object v12, v4, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 49
    .line 50
    and-int/lit8 v5, v1, 0x20

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    iget-object v5, v4, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    .line 55
    .line 56
    :goto_3
    move-object v13, v5

    .line 57
    goto :goto_4

    .line 58
    :cond_3
    sget-object v5, Landroidx/compose/ui/text/font/FontFamily;->j:Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_4
    and-int/lit8 v5, v1, 0x40

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    iget-object v5, v4, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    .line 66
    .line 67
    :goto_5
    move-object v14, v5

    .line 68
    goto :goto_6

    .line 69
    :cond_4
    const-string v5, "tnum"

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :goto_6
    and-int/lit16 v5, v1, 0x80

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    iget-wide v5, v4, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 77
    .line 78
    move-wide v15, v5

    .line 79
    goto :goto_7

    .line 80
    :cond_5
    move-wide/from16 v15, p6

    .line 81
    .line 82
    :goto_7
    iget-object v5, v4, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    .line 83
    .line 84
    iget-object v6, v4, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 85
    .line 86
    iget-object v7, v4, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    .line 87
    .line 88
    move-object/from16 v17, v5

    .line 89
    .line 90
    move-object/from16 v18, v6

    .line 91
    .line 92
    iget-wide v5, v4, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 93
    .line 94
    iget-object v1, v4, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 95
    .line 96
    move-object/from16 v22, v1

    .line 97
    .line 98
    iget-object v1, v4, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 99
    .line 100
    move-object/from16 v23, v1

    .line 101
    .line 102
    iget-object v1, v4, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 103
    .line 104
    const v19, 0x8000

    .line 105
    .line 106
    .line 107
    and-int v19, p12, v19

    .line 108
    .line 109
    move-object/from16 v25, v1

    .line 110
    .line 111
    if-eqz v19, :cond_6

    .line 112
    .line 113
    iget-object v1, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 114
    .line 115
    iget v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 116
    .line 117
    goto :goto_8

    .line 118
    :cond_6
    const/4 v1, 0x3

    .line 119
    :goto_8
    const/high16 v19, 0x10000

    .line 120
    .line 121
    and-int v19, p12, v19

    .line 122
    .line 123
    move/from16 p1, v1

    .line 124
    .line 125
    if-eqz v19, :cond_7

    .line 126
    .line 127
    iget-object v1, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 128
    .line 129
    iget v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 130
    .line 131
    goto :goto_9

    .line 132
    :cond_7
    const/4 v1, 0x1

    .line 133
    :goto_9
    const/high16 v19, 0x20000

    .line 134
    .line 135
    and-int v19, p12, v19

    .line 136
    .line 137
    move/from16 p2, v1

    .line 138
    .line 139
    if-eqz v19, :cond_8

    .line 140
    .line 141
    iget-object v1, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 142
    .line 143
    move-wide/from16 v20, v5

    .line 144
    .line 145
    iget-wide v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 146
    .line 147
    move-wide/from16 v26, v5

    .line 148
    .line 149
    goto :goto_a

    .line 150
    :cond_8
    move-wide/from16 v20, v5

    .line 151
    .line 152
    move-wide/from16 v26, p8

    .line 153
    .line 154
    :goto_a
    iget-object v1, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 155
    .line 156
    iget-object v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 157
    .line 158
    const/high16 v6, 0x80000

    .line 159
    .line 160
    and-int v6, p12, v6

    .line 161
    .line 162
    if-eqz v6, :cond_9

    .line 163
    .line 164
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 165
    .line 166
    goto :goto_b

    .line 167
    :cond_9
    sget-object v0, Landroidx/compose/material/DefaultPlatformTextStyle_androidKt;->a:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 168
    .line 169
    :goto_b
    const/high16 v6, 0x100000

    .line 170
    .line 171
    and-int v6, p12, v6

    .line 172
    .line 173
    if-eqz v6, :cond_a

    .line 174
    .line 175
    iget-object v6, v1, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 176
    .line 177
    move-object/from16 v28, v6

    .line 178
    .line 179
    goto :goto_c

    .line 180
    :cond_a
    move-object/from16 v28, p10

    .line 181
    .line 182
    :goto_c
    const/high16 v6, 0x200000

    .line 183
    .line 184
    and-int v6, p12, v6

    .line 185
    .line 186
    if-eqz v6, :cond_b

    .line 187
    .line 188
    iget v6, v1, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 189
    .line 190
    move/from16 v29, v6

    .line 191
    .line 192
    goto :goto_d

    .line 193
    :cond_b
    move/from16 v29, p11

    .line 194
    .line 195
    :goto_d
    iget v6, v1, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 196
    .line 197
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 198
    .line 199
    move-object/from16 p10, v1

    .line 200
    .line 201
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 202
    .line 203
    move/from16 v19, v6

    .line 204
    .line 205
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    .line 206
    .line 207
    move-object/from16 p5, v5

    .line 208
    .line 209
    iget-object v5, v4, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 210
    .line 211
    move-object/from16 p0, v6

    .line 212
    .line 213
    invoke-interface {v5}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 214
    .line 215
    .line 216
    move-result-wide v5

    .line 217
    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_c

    .line 222
    .line 223
    iget-object v2, v4, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 224
    .line 225
    goto :goto_e

    .line 226
    :cond_c
    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->b(J)Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :goto_e
    const/16 v24, 0x0

    .line 231
    .line 232
    move-object v6, v7

    .line 233
    move-object v7, v2

    .line 234
    move/from16 v2, v19

    .line 235
    .line 236
    move-object/from16 v19, v6

    .line 237
    .line 238
    move-object/from16 v6, p0

    .line 239
    .line 240
    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 241
    .line 242
    .line 243
    new-instance v3, Landroidx/compose/ui/text/ParagraphStyle;

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    iget-object v4, v0, Landroidx/compose/ui/text/PlatformTextStyle;->a:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 248
    .line 249
    :goto_f
    move/from16 p9, v2

    .line 250
    .line 251
    move-object/from16 p0, v3

    .line 252
    .line 253
    move-object/from16 p6, v4

    .line 254
    .line 255
    move-wide/from16 p3, v26

    .line 256
    .line 257
    move-object/from16 p7, v28

    .line 258
    .line 259
    move/from16 p8, v29

    .line 260
    .line 261
    goto :goto_10

    .line 262
    :cond_d
    const/4 v4, 0x0

    .line 263
    goto :goto_f

    .line 264
    :goto_10
    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 265
    .line 266
    .line 267
    move-object/from16 v2, p0

    .line 268
    .line 269
    invoke-direct {v1, v6, v2, v0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    .line 270
    .line 271
    .line 272
    return-object v1
.end method

.method public static e(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p10

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->h:J

    .line 10
    .line 11
    move-wide v5, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide/from16 v5, p1

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 20
    .line 21
    move-wide v9, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-wide/from16 v9, p3

    .line 24
    .line 25
    :goto_1
    and-int/lit16 v2, v1, 0x80

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 30
    .line 31
    move-wide/from16 v16, v2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move-wide/from16 v16, p5

    .line 35
    .line 36
    :goto_2
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->h:J

    .line 37
    .line 38
    const v2, 0x8000

    .line 39
    .line 40
    .line 41
    and-int/2addr v2, v1

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move/from16 v2, p7

    .line 47
    .line 48
    :goto_3
    const/high16 v3, 0x20000

    .line 49
    .line 50
    and-int/2addr v1, v3

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    sget-wide v3, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 54
    .line 55
    move-wide/from16 v27, v3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    move-wide/from16 v27, p8

    .line 59
    .line 60
    :goto_4
    iget-object v4, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    const/16 v19, 0x0

    .line 73
    .line 74
    const/16 v20, 0x0

    .line 75
    .line 76
    const/16 v23, 0x0

    .line 77
    .line 78
    const/16 v24, 0x0

    .line 79
    .line 80
    const/16 v25, 0x0

    .line 81
    .line 82
    const/16 v26, 0x0

    .line 83
    .line 84
    invoke-static/range {v4 .. v26}, Landroidx/compose/ui/text/SpanStyleKt;->a(Landroidx/compose/ui/text/SpanStyle;JLandroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v3, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 89
    .line 90
    move-object/from16 v29, v25

    .line 91
    .line 92
    const/16 v25, 0x0

    .line 93
    .line 94
    move-wide/from16 v26, v27

    .line 95
    .line 96
    const/16 v28, 0x0

    .line 97
    .line 98
    const/16 v30, 0x0

    .line 99
    .line 100
    const/16 v31, 0x0

    .line 101
    .line 102
    const/16 v32, 0x0

    .line 103
    .line 104
    const/16 v33, 0x0

    .line 105
    .line 106
    move/from16 v24, v2

    .line 107
    .line 108
    move-object/from16 v23, v3

    .line 109
    .line 110
    invoke-static/range {v23 .. v33}, Landroidx/compose/ui/text/ParagraphStyleKt;->a(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v3, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 115
    .line 116
    if-ne v3, v1, :cond_5

    .line 117
    .line 118
    iget-object v3, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 119
    .line 120
    if-ne v3, v2, :cond_5

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_5
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 124
    .line 125
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 126
    .line 127
    .line 128
    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final c(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 2

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SpanStyle;->a(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final d(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->d:Landroidx/compose/ui/text/TextStyle;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/SpanStyle;->c(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphStyle;->a(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/TextStyle;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/SpanStyle;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/ParagraphStyle;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformTextStyle;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    add-int/2addr v1, p0

    .line 29
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 14
    .line 15
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 20
    .line 21
    invoke-interface {v4}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-wide v5, v2, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 26
    .line 27
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->d(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v6, v2, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 32
    .line 33
    iget-object v7, v2, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 34
    .line 35
    iget-object v8, v2, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 36
    .line 37
    iget-object v9, v2, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    .line 38
    .line 39
    iget-object v10, v2, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    .line 40
    .line 41
    iget-wide v11, v2, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 42
    .line 43
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->d(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v12, v2, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    .line 48
    .line 49
    iget-object v13, v2, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 50
    .line 51
    iget-object v14, v2, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    .line 52
    .line 53
    move-object/from16 v16, v14

    .line 54
    .line 55
    iget-wide v14, v2, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 56
    .line 57
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    iget-object v15, v2, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 62
    .line 63
    move-object/from16 v17, v15

    .line 64
    .line 65
    iget-object v15, v2, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 66
    .line 67
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 68
    .line 69
    move-object/from16 v18, v2

    .line 70
    .line 71
    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 72
    .line 73
    iget v0, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextAlign;->a(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object/from16 v19, v0

    .line 80
    .line 81
    iget v0, v2, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 82
    .line 83
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextDirection;->a(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object/from16 v20, v14

    .line 88
    .line 89
    move-object/from16 v21, v15

    .line 90
    .line 91
    iget-wide v14, v2, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 92
    .line 93
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->d(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    iget-object v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 98
    .line 99
    move-object/from16 v22, v15

    .line 100
    .line 101
    iget-object v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 102
    .line 103
    move-object/from16 v23, v15

    .line 104
    .line 105
    iget v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 106
    .line 107
    invoke-static {v15}, Landroidx/compose/ui/text/style/LineBreak;->a(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    move-object/from16 v24, v15

    .line 112
    .line 113
    iget v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 114
    .line 115
    invoke-static {v15}, Landroidx/compose/ui/text/style/Hyphens;->a(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 120
    .line 121
    move-object/from16 v25, v2

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    move-object/from16 v26, v15

    .line 126
    .line 127
    const-string v15, "TextStyle(color="

    .line 128
    .line 129
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", brush="

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", alpha="

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ", fontSize="

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, ", fontWeight="

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", fontStyle="

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ", fontSynthesis="

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", fontFamily="

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", fontFeatureSettings="

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", letterSpacing="

    .line 197
    .line 198
    const-string v3, ", baselineShift="

    .line 199
    .line 200
    invoke-static {v2, v10, v1, v11, v3}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", textGeometricTransform="

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, ", localeList="

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    move-object/from16 v1, v16

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", background="

    .line 225
    .line 226
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-object/from16 v1, v20

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", textDecoration="

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-object/from16 v1, v17

    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", shadow="

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-object/from16 v1, v21

    .line 250
    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ", drawStyle="

    .line 255
    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-object/from16 v1, v18

    .line 260
    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", textAlign="

    .line 265
    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v1, v19

    .line 270
    .line 271
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", textDirection="

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, ", lineHeight="

    .line 280
    .line 281
    const-string v3, ", textIndent="

    .line 282
    .line 283
    invoke-static {v2, v0, v1, v14, v3}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v0, v22

    .line 287
    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, ", platformStyle="

    .line 292
    .line 293
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-object/from16 v0, p0

    .line 297
    .line 298
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v0, ", lineHeightStyle="

    .line 304
    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move-object/from16 v0, v23

    .line 309
    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v0, ", lineBreak="

    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    move-object/from16 v0, v24

    .line 319
    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v0, ", hyphens="

    .line 324
    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-object/from16 v0, v26

    .line 329
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v0, ", textMotion="

    .line 334
    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-object/from16 v0, v25

    .line 339
    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v0, ")"

    .line 344
    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    return-object v0
.end method
