.class public Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->k:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->m:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 7
    .line 8
    iput-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 11
    .line 12
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->n:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 13
    .line 14
    iput-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 18
    .line 19
    return-void
.end method

.method public static m([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p4, p3

    .line 3
    const/4 p1, -0x1

    .line 4
    const/4 p3, 0x0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p6, p1, :cond_2

    .line 9
    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    if-eq p6, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float p1, p2

    .line 16
    mul-float/2addr p1, p5

    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    aput p2, p0, p3

    .line 20
    .line 21
    aput p1, p0, v1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    int-to-float p1, p4

    .line 25
    mul-float/2addr p1, p5

    .line 26
    add-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    aput p1, p0, p3

    .line 29
    .line 30
    aput p4, p0, v1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    int-to-float p1, p4

    .line 34
    mul-float/2addr p1, p5

    .line 35
    add-float/2addr p1, v0

    .line 36
    float-to-int p1, p1

    .line 37
    int-to-float p6, p2

    .line 38
    div-float/2addr p6, p5

    .line 39
    add-float/2addr p6, v0

    .line 40
    float-to-int p5, p6

    .line 41
    if-gt p1, p2, :cond_3

    .line 42
    .line 43
    aput p1, p0, p3

    .line 44
    .line 45
    aput p4, p0, v1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    if-gt p5, p4, :cond_4

    .line 49
    .line 50
    aput p2, p0, p3

    .line 51
    .line 52
    aput p5, p0, v1

    .line 53
    .line 54
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq v1, v3, :cond_26

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 14
    .line 15
    iget-boolean v4, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 16
    .line 17
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 18
    .line 19
    const/high16 v6, 0x3f000000    # 0.5f

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 23
    .line 24
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    .line 30
    if-ne v4, v5, :cond_0

    .line 31
    .line 32
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 33
    .line 34
    iget v10, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 35
    .line 36
    iget-object v11, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 37
    .line 38
    const/4 v12, 0x2

    .line 39
    if-eq v10, v12, :cond_1c

    .line 40
    .line 41
    if-eq v10, v3, :cond_1

    .line 42
    .line 43
    :cond_0
    :goto_0
    move/from16 p1, v6

    .line 44
    .line 45
    goto/16 :goto_a

    .line 46
    .line 47
    :cond_1
    iget v10, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 48
    .line 49
    const/4 v12, -0x1

    .line 50
    if-eqz v10, :cond_6

    .line 51
    .line 52
    if-ne v10, v3, :cond_2

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_2
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 56
    .line 57
    if-eq v3, v12, :cond_5

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    if-eq v3, v7, :cond_3

    .line 62
    .line 63
    move v3, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    iget-object v3, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 66
    .line 67
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 71
    .line 72
    :goto_1
    mul-float/2addr v3, v4

    .line 73
    :goto_2
    add-float/2addr v3, v6

    .line 74
    float-to-int v3, v3

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    iget-object v3, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 77
    .line 78
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 79
    .line 80
    int-to-float v3, v3

    .line 81
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 82
    .line 83
    div-float/2addr v3, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget-object v3, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 86
    .line 87
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 88
    .line 89
    int-to-float v3, v3

    .line 90
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_3
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    :goto_4
    iget-object v3, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 98
    .line 99
    iget-object v10, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 100
    .line 101
    iget-object v11, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 102
    .line 103
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 104
    .line 105
    if-eqz v11, :cond_7

    .line 106
    .line 107
    move v11, v7

    .line 108
    goto :goto_5

    .line 109
    :cond_7
    move v11, v2

    .line 110
    :goto_5
    iget-object v13, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 111
    .line 112
    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 113
    .line 114
    if-eqz v13, :cond_8

    .line 115
    .line 116
    move v13, v7

    .line 117
    goto :goto_6

    .line 118
    :cond_8
    move v13, v2

    .line 119
    :goto_6
    iget-object v14, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 120
    .line 121
    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 122
    .line 123
    if-eqz v14, :cond_9

    .line 124
    .line 125
    move v14, v7

    .line 126
    goto :goto_7

    .line 127
    :cond_9
    move v14, v2

    .line 128
    :goto_7
    iget-object v15, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 129
    .line 130
    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 131
    .line 132
    if-eqz v15, :cond_a

    .line 133
    .line 134
    move v15, v7

    .line 135
    :goto_8
    move/from16 p1, v6

    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_a
    move v15, v2

    .line 139
    goto :goto_8

    .line 140
    :goto_9
    iget v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 141
    .line 142
    if-eqz v11, :cond_10

    .line 143
    .line 144
    if-eqz v13, :cond_10

    .line 145
    .line 146
    if-eqz v14, :cond_10

    .line 147
    .line 148
    if-eqz v15, :cond_10

    .line 149
    .line 150
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 151
    .line 152
    iget-boolean v11, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 153
    .line 154
    iget-object v12, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 155
    .line 156
    sget-object v16, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->k:[I

    .line 157
    .line 158
    if-eqz v11, :cond_c

    .line 159
    .line 160
    iget-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 161
    .line 162
    if-eqz v11, :cond_c

    .line 163
    .line 164
    iget-boolean v5, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 165
    .line 166
    if-eqz v5, :cond_25

    .line 167
    .line 168
    iget-boolean v5, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 169
    .line 170
    if-nez v5, :cond_b

    .line 171
    .line 172
    goto/16 :goto_c

    .line 173
    .line 174
    :cond_b
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 181
    .line 182
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 183
    .line 184
    iget v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 185
    .line 186
    add-int v17, v5, v8

    .line 187
    .line 188
    iget-object v5, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 195
    .line 196
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 197
    .line 198
    iget v8, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 199
    .line 200
    sub-int v18, v5, v8

    .line 201
    .line 202
    iget v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 203
    .line 204
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 205
    .line 206
    add-int v19, v5, v3

    .line 207
    .line 208
    iget v3, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 209
    .line 210
    iget v5, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 211
    .line 212
    sub-int v20, v3, v5

    .line 213
    .line 214
    move/from16 v21, v4

    .line 215
    .line 216
    move/from16 v22, v6

    .line 217
    .line 218
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->m([IIIIIFI)V

    .line 219
    .line 220
    .line 221
    aget v2, v16, v2

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 227
    .line 228
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 229
    .line 230
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 231
    .line 232
    aget v1, v16, v7

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_c
    move/from16 v21, v4

    .line 239
    .line 240
    move/from16 v22, v6

    .line 241
    .line 242
    iget-boolean v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 243
    .line 244
    if-eqz v4, :cond_e

    .line 245
    .line 246
    iget-boolean v4, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 247
    .line 248
    if-eqz v4, :cond_e

    .line 249
    .line 250
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 251
    .line 252
    if-eqz v4, :cond_25

    .line 253
    .line 254
    iget-boolean v4, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 255
    .line 256
    if-nez v4, :cond_d

    .line 257
    .line 258
    goto/16 :goto_c

    .line 259
    .line 260
    :cond_d
    iget v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 261
    .line 262
    iget v6, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 263
    .line 264
    add-int v17, v4, v6

    .line 265
    .line 266
    iget v4, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 267
    .line 268
    iget v6, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 269
    .line 270
    sub-int v18, v4, v6

    .line 271
    .line 272
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 277
    .line 278
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 279
    .line 280
    iget v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 281
    .line 282
    add-int v19, v4, v6

    .line 283
    .line 284
    iget-object v4, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 291
    .line 292
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 293
    .line 294
    iget v6, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 295
    .line 296
    sub-int v20, v4, v6

    .line 297
    .line 298
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->m([IIIIIFI)V

    .line 299
    .line 300
    .line 301
    aget v4, v16, v2

    .line 302
    .line 303
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 304
    .line 305
    .line 306
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 307
    .line 308
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 309
    .line 310
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 311
    .line 312
    aget v6, v16, v7

    .line 313
    .line 314
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 315
    .line 316
    .line 317
    :cond_e
    iget-boolean v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 318
    .line 319
    if-eqz v4, :cond_25

    .line 320
    .line 321
    iget-boolean v4, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 322
    .line 323
    if-eqz v4, :cond_25

    .line 324
    .line 325
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 326
    .line 327
    if-eqz v4, :cond_25

    .line 328
    .line 329
    iget-boolean v4, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 330
    .line 331
    if-nez v4, :cond_f

    .line 332
    .line 333
    goto/16 :goto_c

    .line 334
    .line 335
    :cond_f
    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 342
    .line 343
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 344
    .line 345
    iget v6, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 346
    .line 347
    add-int v17, v4, v6

    .line 348
    .line 349
    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 356
    .line 357
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 358
    .line 359
    iget v6, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 360
    .line 361
    sub-int v18, v4, v6

    .line 362
    .line 363
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 368
    .line 369
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 370
    .line 371
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 372
    .line 373
    add-int v19, v4, v3

    .line 374
    .line 375
    iget-object v3, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 382
    .line 383
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 384
    .line 385
    iget v4, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 386
    .line 387
    sub-int v20, v3, v4

    .line 388
    .line 389
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->m([IIIIIFI)V

    .line 390
    .line 391
    .line 392
    aget v3, v16, v2

    .line 393
    .line 394
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 395
    .line 396
    .line 397
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 398
    .line 399
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 400
    .line 401
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 402
    .line 403
    aget v4, v16, v7

    .line 404
    .line 405
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_a

    .line 409
    .line 410
    :cond_10
    if-eqz v11, :cond_16

    .line 411
    .line 412
    if-eqz v14, :cond_16

    .line 413
    .line 414
    iget-boolean v3, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 415
    .line 416
    if-eqz v3, :cond_25

    .line 417
    .line 418
    iget-boolean v3, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 419
    .line 420
    if-nez v3, :cond_11

    .line 421
    .line 422
    goto/16 :goto_c

    .line 423
    .line 424
    :cond_11
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 425
    .line 426
    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 433
    .line 434
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 435
    .line 436
    iget v10, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 437
    .line 438
    add-int/2addr v4, v10

    .line 439
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    check-cast v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 446
    .line 447
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 448
    .line 449
    iget v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 450
    .line 451
    sub-int/2addr v10, v11

    .line 452
    if-eq v6, v12, :cond_14

    .line 453
    .line 454
    if-eqz v6, :cond_14

    .line 455
    .line 456
    if-eq v6, v7, :cond_12

    .line 457
    .line 458
    goto/16 :goto_a

    .line 459
    .line 460
    :cond_12
    sub-int/2addr v10, v4

    .line 461
    invoke-virtual {v0, v10, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    int-to-float v6, v4

    .line 466
    div-float/2addr v6, v3

    .line 467
    add-float v6, v6, p1

    .line 468
    .line 469
    float-to-int v6, v6

    .line 470
    invoke-virtual {v0, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 471
    .line 472
    .line 473
    move-result v10

    .line 474
    if-eq v6, v10, :cond_13

    .line 475
    .line 476
    int-to-float v4, v10

    .line 477
    mul-float/2addr v4, v3

    .line 478
    add-float v4, v4, p1

    .line 479
    .line 480
    float-to-int v4, v4

    .line 481
    :cond_13
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 482
    .line 483
    .line 484
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 485
    .line 486
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 487
    .line 488
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 489
    .line 490
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_a

    .line 494
    .line 495
    :cond_14
    sub-int/2addr v10, v4

    .line 496
    invoke-virtual {v0, v10, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    int-to-float v6, v4

    .line 501
    mul-float/2addr v6, v3

    .line 502
    add-float v6, v6, p1

    .line 503
    .line 504
    float-to-int v6, v6

    .line 505
    invoke-virtual {v0, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    if-eq v6, v10, :cond_15

    .line 510
    .line 511
    int-to-float v4, v10

    .line 512
    div-float/2addr v4, v3

    .line 513
    add-float v4, v4, p1

    .line 514
    .line 515
    float-to-int v4, v4

    .line 516
    :cond_15
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 517
    .line 518
    .line 519
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 520
    .line 521
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 522
    .line 523
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 524
    .line 525
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_a

    .line 529
    .line 530
    :cond_16
    if-eqz v13, :cond_1d

    .line 531
    .line 532
    if-eqz v15, :cond_1d

    .line 533
    .line 534
    iget-boolean v11, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 535
    .line 536
    if-eqz v11, :cond_25

    .line 537
    .line 538
    iget-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 539
    .line 540
    if-nez v11, :cond_17

    .line 541
    .line 542
    goto/16 :goto_c

    .line 543
    .line 544
    :cond_17
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 545
    .line 546
    iget-object v11, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v11

    .line 552
    check-cast v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 553
    .line 554
    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 555
    .line 556
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 557
    .line 558
    add-int/2addr v11, v3

    .line 559
    iget-object v3, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 566
    .line 567
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 568
    .line 569
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 570
    .line 571
    sub-int/2addr v3, v10

    .line 572
    if-eq v6, v12, :cond_1a

    .line 573
    .line 574
    if-eqz v6, :cond_18

    .line 575
    .line 576
    if-eq v6, v7, :cond_1a

    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_18
    sub-int/2addr v3, v11

    .line 580
    invoke-virtual {v0, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    int-to-float v6, v3

    .line 585
    mul-float/2addr v6, v4

    .line 586
    add-float v6, v6, p1

    .line 587
    .line 588
    float-to-int v6, v6

    .line 589
    invoke-virtual {v0, v6, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    if-eq v6, v10, :cond_19

    .line 594
    .line 595
    int-to-float v3, v10

    .line 596
    div-float/2addr v3, v4

    .line 597
    add-float v3, v3, p1

    .line 598
    .line 599
    float-to-int v3, v3

    .line 600
    :cond_19
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 601
    .line 602
    .line 603
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 604
    .line 605
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 606
    .line 607
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 608
    .line 609
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 610
    .line 611
    .line 612
    goto :goto_a

    .line 613
    :cond_1a
    sub-int/2addr v3, v11

    .line 614
    invoke-virtual {v0, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    int-to-float v6, v3

    .line 619
    div-float/2addr v6, v4

    .line 620
    add-float v6, v6, p1

    .line 621
    .line 622
    float-to-int v6, v6

    .line 623
    invoke-virtual {v0, v6, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g(II)I

    .line 624
    .line 625
    .line 626
    move-result v10

    .line 627
    if-eq v6, v10, :cond_1b

    .line 628
    .line 629
    int-to-float v3, v10

    .line 630
    mul-float/2addr v3, v4

    .line 631
    add-float v3, v3, p1

    .line 632
    .line 633
    float-to-int v3, v3

    .line 634
    :cond_1b
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 635
    .line 636
    .line 637
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 638
    .line 639
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 640
    .line 641
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 642
    .line 643
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 644
    .line 645
    .line 646
    goto :goto_a

    .line 647
    :cond_1c
    move/from16 p1, v6

    .line 648
    .line 649
    iget-object v3, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 650
    .line 651
    if-eqz v3, :cond_1d

    .line 652
    .line 653
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 654
    .line 655
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 656
    .line 657
    iget-boolean v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 658
    .line 659
    if-eqz v6, :cond_1d

    .line 660
    .line 661
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 662
    .line 663
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 664
    .line 665
    int-to-float v3, v3

    .line 666
    mul-float/2addr v3, v4

    .line 667
    add-float v3, v3, p1

    .line 668
    .line 669
    float-to-int v3, v3

    .line 670
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 671
    .line 672
    .line 673
    :cond_1d
    :goto_a
    iget-boolean v3, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 674
    .line 675
    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 676
    .line 677
    if-eqz v3, :cond_25

    .line 678
    .line 679
    iget-boolean v3, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c:Z

    .line 680
    .line 681
    iget-object v6, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 682
    .line 683
    if-nez v3, :cond_1e

    .line 684
    .line 685
    goto/16 :goto_c

    .line 686
    .line 687
    :cond_1e
    iget-boolean v3, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 688
    .line 689
    if-eqz v3, :cond_1f

    .line 690
    .line 691
    iget-boolean v3, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 692
    .line 693
    if-eqz v3, :cond_1f

    .line 694
    .line 695
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 696
    .line 697
    if-eqz v3, :cond_1f

    .line 698
    .line 699
    goto/16 :goto_c

    .line 700
    .line 701
    :cond_1f
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 702
    .line 703
    if-nez v3, :cond_20

    .line 704
    .line 705
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 706
    .line 707
    if-ne v3, v5, :cond_20

    .line 708
    .line 709
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 710
    .line 711
    iget v10, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 712
    .line 713
    if-nez v10, :cond_20

    .line 714
    .line 715
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    if-nez v3, :cond_20

    .line 720
    .line 721
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 726
    .line 727
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 732
    .line 733
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 734
    .line 735
    iget v3, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 736
    .line 737
    add-int/2addr v0, v3

    .line 738
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 739
    .line 740
    iget v3, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 741
    .line 742
    add-int/2addr v2, v3

    .line 743
    sub-int v3, v2, v0

    .line 744
    .line 745
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 752
    .line 753
    .line 754
    return-void

    .line 755
    :cond_20
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 756
    .line 757
    if-nez v3, :cond_22

    .line 758
    .line 759
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 760
    .line 761
    if-ne v3, v5, :cond_22

    .line 762
    .line 763
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 764
    .line 765
    if-ne v3, v7, :cond_22

    .line 766
    .line 767
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    if-lez v3, :cond_22

    .line 772
    .line 773
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    if-lez v3, :cond_22

    .line 778
    .line 779
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 784
    .line 785
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 790
    .line 791
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 792
    .line 793
    iget v7, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 794
    .line 795
    add-int/2addr v3, v7

    .line 796
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 797
    .line 798
    iget v7, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 799
    .line 800
    add-int/2addr v5, v7

    .line 801
    sub-int/2addr v5, v3

    .line 802
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 803
    .line 804
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 809
    .line 810
    iget v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 811
    .line 812
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 813
    .line 814
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    if-lez v7, :cond_21

    .line 819
    .line 820
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    :cond_21
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 825
    .line 826
    .line 827
    :cond_22
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 828
    .line 829
    if-nez v3, :cond_23

    .line 830
    .line 831
    goto :goto_c

    .line 832
    :cond_23
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 837
    .line 838
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 843
    .line 844
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 845
    .line 846
    iget v5, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 847
    .line 848
    add-int/2addr v5, v4

    .line 849
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 850
    .line 851
    iget v7, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 852
    .line 853
    add-int/2addr v7, v6

    .line 854
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 855
    .line 856
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 857
    .line 858
    if-ne v3, v2, :cond_24

    .line 859
    .line 860
    move/from16 v0, p1

    .line 861
    .line 862
    goto :goto_b

    .line 863
    :cond_24
    move v4, v5

    .line 864
    move v6, v7

    .line 865
    :goto_b
    sub-int/2addr v6, v4

    .line 866
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 867
    .line 868
    sub-int/2addr v6, v2

    .line 869
    int-to-float v2, v4

    .line 870
    add-float v2, v2, p1

    .line 871
    .line 872
    int-to-float v3, v6

    .line 873
    mul-float/2addr v3, v0

    .line 874
    add-float/2addr v3, v2

    .line 875
    float-to-int v0, v3

    .line 876
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 877
    .line 878
    .line 879
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 880
    .line 881
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 882
    .line 883
    add-int/2addr v0, v1

    .line 884
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 885
    .line 886
    .line 887
    :cond_25
    :goto_c
    return-void

    .line 888
    :cond_26
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 889
    .line 890
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 891
    .line 892
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 893
    .line 894
    invoke-virtual {v0, v3, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->l(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 895
    .line 896
    .line 897
    return-void
.end method

.method public final d()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 17
    .line 18
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 21
    .line 22
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 25
    .line 26
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 30
    .line 31
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 36
    .line 37
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    aget-object v10, v10, v7

    .line 40
    .line 41
    iput-object v10, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    if-eq v10, v5, :cond_7

    .line 44
    .line 45
    if-ne v10, v4, :cond_3

    .line 46
    .line 47
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 48
    .line 49
    if-eqz v11, :cond_1

    .line 50
    .line 51
    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    .line 53
    aget-object v12, v12, v7

    .line 54
    .line 55
    if-eq v12, v6, :cond_2

    .line 56
    .line 57
    :cond_1
    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    aget-object v12, v12, v7

    .line 60
    .line 61
    if-ne v12, v4, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 70
    .line 71
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    sub-int/2addr v0, v3

    .line 78
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 79
    .line 80
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    sub-int/2addr v0, v3

    .line 87
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 88
    .line 89
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 90
    .line 91
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-static {v9, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 101
    .line 102
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 103
    .line 104
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    neg-int p0, p0

    .line 111
    invoke-static {v8, v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_3
    if-ne v10, v6, :cond_7

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 129
    .line 130
    if-ne v0, v4, :cond_7

    .line 131
    .line 132
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 133
    .line 134
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 135
    .line 136
    if-eqz v10, :cond_5

    .line 137
    .line 138
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 139
    .line 140
    aget-object v11, v11, v7

    .line 141
    .line 142
    if-eq v11, v6, :cond_6

    .line 143
    .line 144
    :cond_5
    iget-object v6, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 145
    .line 146
    aget-object v6, v6, v7

    .line 147
    .line 148
    if-ne v6, v4, :cond_7

    .line 149
    .line 150
    :cond_6
    iget-object v1, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 151
    .line 152
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 153
    .line 154
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static {v9, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 161
    .line 162
    .line 163
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 164
    .line 165
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 166
    .line 167
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 168
    .line 169
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    neg-int p0, p0

    .line 176
    invoke-static {v8, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_7
    :goto_0
    iget-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 181
    .line 182
    const/4 v4, 0x1

    .line 183
    if-eqz v0, :cond_e

    .line 184
    .line 185
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 186
    .line 187
    iget-boolean v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 188
    .line 189
    if-eqz v6, :cond_e

    .line 190
    .line 191
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 192
    .line 193
    aget-object v3, v1, v7

    .line 194
    .line 195
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 196
    .line 197
    if-eqz v5, :cond_b

    .line 198
    .line 199
    aget-object v6, v1, v4

    .line 200
    .line 201
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 202
    .line 203
    if-eqz v6, :cond_b

    .line 204
    .line 205
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 214
    .line 215
    aget-object v0, v0, v7

    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iput v0, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 222
    .line 223
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 224
    .line 225
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 226
    .line 227
    aget-object p0, p0, v4

    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    neg-int p0, p0

    .line 234
    iput p0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 235
    .line 236
    return-void

    .line 237
    :cond_8
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 238
    .line 239
    aget-object v0, v0, v7

    .line 240
    .line 241
    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 248
    .line 249
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 250
    .line 251
    aget-object v1, v1, v7

    .line 252
    .line 253
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-static {v9, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 258
    .line 259
    .line 260
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 261
    .line 262
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 263
    .line 264
    aget-object v0, v0, v4

    .line 265
    .line 266
    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-eqz v0, :cond_a

    .line 271
    .line 272
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 273
    .line 274
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 275
    .line 276
    aget-object p0, p0, v4

    .line 277
    .line 278
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    neg-int p0, p0

    .line 283
    invoke-static {v8, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 284
    .line 285
    .line 286
    :cond_a
    iput-boolean v4, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b:Z

    .line 287
    .line 288
    iput-boolean v4, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b:Z

    .line 289
    .line 290
    return-void

    .line 291
    :cond_b
    if-eqz v5, :cond_c

    .line 292
    .line 293
    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-eqz v0, :cond_1a

    .line 298
    .line 299
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 300
    .line 301
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 302
    .line 303
    aget-object p0, p0, v7

    .line 304
    .line 305
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    invoke-static {v9, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 310
    .line 311
    .line 312
    iget p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 313
    .line 314
    invoke-static {v8, v9, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_c
    aget-object v1, v1, v4

    .line 319
    .line 320
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 321
    .line 322
    if-eqz v3, :cond_d

    .line 323
    .line 324
    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-eqz v0, :cond_1a

    .line 329
    .line 330
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 331
    .line 332
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 333
    .line 334
    aget-object p0, p0, v4

    .line 335
    .line 336
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    neg-int p0, p0

    .line 341
    invoke-static {v8, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 342
    .line 343
    .line 344
    iget p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 345
    .line 346
    neg-int p0, p0

    .line 347
    invoke-static {v9, v8, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_d
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/Helper;

    .line 352
    .line 353
    if-nez v1, :cond_1a

    .line 354
    .line 355
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 356
    .line 357
    if-eqz v1, :cond_1a

    .line 358
    .line 359
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->o:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 366
    .line 367
    if-nez v0, :cond_1a

    .line 368
    .line 369
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 370
    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 372
    .line 373
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 374
    .line 375
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 376
    .line 377
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    invoke-static {v9, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 382
    .line 383
    .line 384
    iget p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 385
    .line 386
    invoke-static {v8, v9, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 391
    .line 392
    if-ne v0, v5, :cond_15

    .line 393
    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 395
    .line 396
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 397
    .line 398
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 399
    .line 400
    const/4 v10, 0x2

    .line 401
    if-eq v5, v10, :cond_13

    .line 402
    .line 403
    const/4 v10, 0x3

    .line 404
    if-eq v5, v10, :cond_f

    .line 405
    .line 406
    goto/16 :goto_1

    .line 407
    .line 408
    :cond_f
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 409
    .line 410
    if-ne v5, v10, :cond_12

    .line 411
    .line 412
    iput-object p0, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 413
    .line 414
    iput-object p0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 415
    .line 416
    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 417
    .line 418
    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 419
    .line 420
    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 421
    .line 422
    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 423
    .line 424
    iput-object p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 425
    .line 426
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_10

    .line 431
    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 433
    .line 434
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 435
    .line 436
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 437
    .line 438
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 442
    .line 443
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 444
    .line 445
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 446
    .line 447
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 453
    .line 454
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 455
    .line 456
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 457
    .line 458
    iput-object p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 459
    .line 460
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 461
    .line 462
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 466
    .line 467
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 468
    .line 469
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 470
    .line 471
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 475
    .line 476
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 477
    .line 478
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 479
    .line 480
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 486
    .line 487
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 488
    .line 489
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 490
    .line 491
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    goto/16 :goto_1

    .line 497
    .line 498
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 499
    .line 500
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 505
    .line 506
    if-eqz v0, :cond_11

    .line 507
    .line 508
    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 509
    .line 510
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 511
    .line 512
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 518
    .line 519
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 520
    .line 521
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 522
    .line 523
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    goto :goto_1

    .line 527
    :cond_11
    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 528
    .line 529
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 530
    .line 531
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_1

    .line 537
    :cond_12
    iget-object v0, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 538
    .line 539
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 548
    .line 549
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 550
    .line 551
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 552
    .line 553
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 559
    .line 560
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 561
    .line 562
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 563
    .line 564
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    iput-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b:Z

    .line 570
    .line 571
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    iget-object v0, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_1

    .line 588
    :cond_13
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 589
    .line 590
    if-nez v0, :cond_14

    .line 591
    .line 592
    goto :goto_1

    .line 593
    :cond_14
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 594
    .line 595
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 596
    .line 597
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 601
    .line 602
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    iput-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b:Z

    .line 606
    .line 607
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    :cond_15
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 614
    .line 615
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 616
    .line 617
    aget-object v3, v1, v7

    .line 618
    .line 619
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 620
    .line 621
    if-eqz v5, :cond_17

    .line 622
    .line 623
    aget-object v6, v1, v4

    .line 624
    .line 625
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 626
    .line 627
    if-eqz v6, :cond_17

    .line 628
    .line 629
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 634
    .line 635
    if-eqz v0, :cond_16

    .line 636
    .line 637
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 638
    .line 639
    aget-object v0, v0, v7

    .line 640
    .line 641
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    iput v0, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 646
    .line 647
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 648
    .line 649
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 650
    .line 651
    aget-object p0, p0, v4

    .line 652
    .line 653
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 654
    .line 655
    .line 656
    move-result p0

    .line 657
    neg-int p0, p0

    .line 658
    iput p0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 659
    .line 660
    return-void

    .line 661
    :cond_16
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 662
    .line 663
    aget-object v0, v0, v7

    .line 664
    .line 665
    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 670
    .line 671
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 672
    .line 673
    aget-object v1, v1, v4

    .line 674
    .line 675
    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->b(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 683
    .line 684
    .line 685
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->k:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    .line 686
    .line 687
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    .line 688
    .line 689
    return-void

    .line 690
    :cond_17
    if-eqz v5, :cond_18

    .line 691
    .line 692
    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    if-eqz v0, :cond_1a

    .line 697
    .line 698
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 699
    .line 700
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 701
    .line 702
    aget-object v1, v1, v7

    .line 703
    .line 704
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    invoke-static {v9, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p0, v8, v9, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;)V

    .line 712
    .line 713
    .line 714
    return-void

    .line 715
    :cond_18
    aget-object v1, v1, v4

    .line 716
    .line 717
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 718
    .line 719
    if-eqz v3, :cond_19

    .line 720
    .line 721
    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    if-eqz v0, :cond_1a

    .line 726
    .line 727
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 728
    .line 729
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 730
    .line 731
    aget-object v1, v1, v4

    .line 732
    .line 733
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    neg-int v1, v1

    .line 738
    invoke-static {v8, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 739
    .line 740
    .line 741
    const/4 v0, -0x1

    .line 742
    invoke-virtual {p0, v9, v8, v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;)V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :cond_19
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/Helper;

    .line 747
    .line 748
    if-nez v1, :cond_1a

    .line 749
    .line 750
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 751
    .line 752
    if-eqz v1, :cond_1a

    .line 753
    .line 754
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 755
    .line 756
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 757
    .line 758
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    invoke-static {v9, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {p0, v8, v9, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;)V

    .line 766
    .line 767
    .line 768
    :cond_1a
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 8
    .line 9
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 21
    .line 22
    return-void
.end method

.method public final k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 9
    .line 10
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    return v2
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->c()V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 21
    .line 22
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HorizontalRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
