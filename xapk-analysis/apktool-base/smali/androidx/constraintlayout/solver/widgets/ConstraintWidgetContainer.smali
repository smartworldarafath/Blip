.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final e0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

.field public final f0:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

.field public g0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field public h0:Z

.field public final i0:Landroidx/constraintlayout/solver/LinearSystem;

.field public j0:I

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field public o0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field public p0:I

.field public q0:Z

.field public r0:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->e0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    .line 17
    .line 18
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->c:Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->f:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 42
    .line 43
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->g:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h:Ljava/util/ArrayList;

    .line 56
    .line 57
    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 58
    .line 59
    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->f0:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 62
    .line 63
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->g0:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 67
    .line 68
    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem;

    .line 69
    .line 70
    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->i0:Landroidx/constraintlayout/solver/LinearSystem;

    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 76
    .line 77
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 78
    .line 79
    const/4 v1, 0x4

    .line 80
    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 81
    .line 82
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->n0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 83
    .line 84
    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 85
    .line 86
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->o0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 87
    .line 88
    const/16 v1, 0x107

    .line 89
    .line 90
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 91
    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->q0:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->r0:Z

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final A(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    move v5, v4

    .line 17
    :goto_0
    const/4 v6, 0x1

    .line 18
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 27
    .line 28
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:[Z

    .line 29
    .line 30
    aput-boolean v3, v8, v3

    .line 31
    .line 32
    aput-boolean v3, v8, v6

    .line 33
    .line 34
    instance-of v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    move v5, v6

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v4, 0x2

    .line 43
    if-eqz v5, :cond_7

    .line 44
    .line 45
    move v5, v3

    .line 46
    :goto_1
    if-ge v5, v2, :cond_7

    .line 47
    .line 48
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 55
    .line 56
    instance-of v8, v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 57
    .line 58
    if-eqz v8, :cond_6

    .line 59
    .line 60
    check-cast v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 61
    .line 62
    move v8, v3

    .line 63
    :goto_2
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 64
    .line 65
    if-ge v8, v9, :cond_6

    .line 66
    .line 67
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 68
    .line 69
    aget-object v9, v9, v8

    .line 70
    .line 71
    iget v10, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 72
    .line 73
    if-eqz v10, :cond_4

    .line 74
    .line 75
    if-ne v10, v6, :cond_2

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    if-eq v10, v4, :cond_3

    .line 79
    .line 80
    const/4 v11, 0x3

    .line 81
    if-ne v10, v11, :cond_5

    .line 82
    .line 83
    :cond_3
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:[Z

    .line 84
    .line 85
    aput-boolean v6, v9, v6

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_4
    :goto_3
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:[Z

    .line 89
    .line 90
    aput-boolean v6, v9, v3

    .line 91
    .line 92
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    move v5, v3

    .line 99
    :goto_5
    if-ge v5, v2, :cond_9

    .line 100
    .line 101
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    instance-of v8, v7, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 113
    .line 114
    if-eqz v8, :cond_8

    .line 115
    .line 116
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 117
    .line 118
    .line 119
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_9
    move v5, v3

    .line 123
    :goto_6
    if-ge v5, v2, :cond_16

    .line 124
    .line 125
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 132
    .line 133
    instance-of v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 134
    .line 135
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 136
    .line 137
    if-eqz v8, :cond_e

    .line 138
    .line 139
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 140
    .line 141
    aget-object v10, v8, v3

    .line 142
    .line 143
    aget-object v8, v8, v6

    .line 144
    .line 145
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    .line 147
    if-ne v10, v9, :cond_a

    .line 148
    .line 149
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 150
    .line 151
    .line 152
    :cond_a
    if-ne v8, v9, :cond_b

    .line 153
    .line 154
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 158
    .line 159
    .line 160
    if-ne v10, v9, :cond_c

    .line 161
    .line 162
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 163
    .line 164
    .line 165
    :cond_c
    if-ne v8, v9, :cond_d

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 168
    .line 169
    .line 170
    :cond_d
    move/from16 v18, v2

    .line 171
    .line 172
    move/from16 v17, v3

    .line 173
    .line 174
    move/from16 v16, v6

    .line 175
    .line 176
    goto/16 :goto_c

    .line 177
    .line 178
    :cond_e
    const/4 v8, -0x1

    .line 179
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    .line 180
    .line 181
    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 182
    .line 183
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    .line 185
    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 186
    .line 187
    iget-object v13, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 188
    .line 189
    iget-object v14, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 190
    .line 191
    iget-object v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 192
    .line 193
    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    .line 194
    .line 195
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 196
    .line 197
    move/from16 v16, v6

    .line 198
    .line 199
    aget-object v6, v8, v3

    .line 200
    .line 201
    move/from16 v17, v3

    .line 202
    .line 203
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 204
    .line 205
    if-eq v6, v9, :cond_f

    .line 206
    .line 207
    aget-object v6, v11, v17

    .line 208
    .line 209
    if-ne v6, v3, :cond_f

    .line 210
    .line 211
    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 214
    .line 215
    .line 216
    move-result v18

    .line 217
    iget v4, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 218
    .line 219
    sub-int v4, v18, v4

    .line 220
    .line 221
    move/from16 v18, v2

    .line 222
    .line 223
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iput-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 228
    .line 229
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iput-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 234
    .line 235
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 236
    .line 237
    invoke-virtual {v1, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 241
    .line 242
    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 243
    .line 244
    .line 245
    const/4 v2, 0x2

    .line 246
    iput v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    .line 247
    .line 248
    iput v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 249
    .line 250
    sub-int/2addr v4, v6

    .line 251
    iput v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 252
    .line 253
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 254
    .line 255
    if-ge v4, v2, :cond_10

    .line 256
    .line 257
    iput v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_f
    move/from16 v18, v2

    .line 261
    .line 262
    :cond_10
    :goto_7
    aget-object v2, v8, v16

    .line 263
    .line 264
    if-eq v2, v9, :cond_13

    .line 265
    .line 266
    aget-object v2, v11, v16

    .line 267
    .line 268
    if-ne v2, v3, :cond_13

    .line 269
    .line 270
    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    iget v4, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 277
    .line 278
    sub-int/2addr v3, v4

    .line 279
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    iput-object v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 284
    .line 285
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    iput-object v4, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 290
    .line 291
    iget-object v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 292
    .line 293
    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 294
    .line 295
    .line 296
    iget-object v4, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 297
    .line 298
    invoke-virtual {v1, v4, v3}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 299
    .line 300
    .line 301
    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 302
    .line 303
    if-gtz v4, :cond_12

    .line 304
    .line 305
    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 306
    .line 307
    const/16 v6, 0x8

    .line 308
    .line 309
    if-ne v4, v6, :cond_11

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_11
    :goto_8
    const/4 v4, 0x2

    .line 313
    goto :goto_a

    .line 314
    :cond_12
    :goto_9
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    iput-object v4, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 319
    .line 320
    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 321
    .line 322
    add-int/2addr v6, v2

    .line 323
    invoke-virtual {v1, v4, v6}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 324
    .line 325
    .line 326
    goto :goto_8

    .line 327
    :goto_a
    iput v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    .line 328
    .line 329
    iput v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 330
    .line 331
    sub-int/2addr v3, v2

    .line 332
    iput v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 333
    .line 334
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 335
    .line 336
    if-ge v3, v2, :cond_14

    .line 337
    .line 338
    iput v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_13
    const/4 v4, 0x2

    .line 342
    :cond_14
    :goto_b
    instance-of v2, v7, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 343
    .line 344
    if-nez v2, :cond_15

    .line 345
    .line 346
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 347
    .line 348
    .line 349
    :cond_15
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 350
    .line 351
    move/from16 v6, v16

    .line 352
    .line 353
    move/from16 v3, v17

    .line 354
    .line 355
    move/from16 v2, v18

    .line 356
    .line 357
    goto/16 :goto_6

    .line 358
    .line 359
    :cond_16
    move/from16 v17, v3

    .line 360
    .line 361
    move/from16 v16, v6

    .line 362
    .line 363
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 364
    .line 365
    if-lez v2, :cond_17

    .line 366
    .line 367
    move/from16 v2, v17

    .line 368
    .line 369
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/Chain;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 370
    .line 371
    .line 372
    :cond_17
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 373
    .line 374
    if-lez v2, :cond_18

    .line 375
    .line 376
    move/from16 v2, v16

    .line 377
    .line 378
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/Chain;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 379
    .line 380
    .line 381
    :cond_18
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->i0:Landroidx/constraintlayout/solver/LinearSystem;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->r()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->j0:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->k0:I

    .line 10
    .line 11
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->q()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final w(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w(ZZ)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 5
    .line 6
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->q0:Z

    .line 25
    .line 26
    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->r0:Z

    .line 27
    .line 28
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 29
    .line 30
    and-int/lit8 v5, v0, 0x40

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    const/16 v7, 0x40

    .line 34
    .line 35
    if-ne v5, v7, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v5, 0x80

    .line 39
    .line 40
    and-int/2addr v0, v5

    .line 41
    if-ne v0, v5, :cond_1

    .line 42
    .line 43
    :goto_0
    move v0, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v0, v2

    .line 46
    :goto_1
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->i0:Landroidx/constraintlayout/solver/LinearSystem;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iput-boolean v2, v5, Landroidx/constraintlayout/solver/LinearSystem;->f:Z

    .line 52
    .line 53
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->p0:I

    .line 54
    .line 55
    if-eqz v7, :cond_2

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iput-boolean v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->f:Z

    .line 60
    .line 61
    :cond_2
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 62
    .line 63
    aget-object v8, v7, v6

    .line 64
    .line 65
    aget-object v9, v7, v2

    .line 66
    .line 67
    iget-object v10, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 68
    .line 69
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 70
    .line 71
    if-eq v9, v11, :cond_4

    .line 72
    .line 73
    if-ne v8, v11, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v12, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    :goto_2
    move v12, v6

    .line 79
    :goto_3
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 80
    .line 81
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    move v0, v2

    .line 88
    :goto_4
    if-ge v0, v13, :cond_6

    .line 89
    .line 90
    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 97
    .line 98
    instance-of v15, v14, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .line 99
    .line 100
    if-eqz v15, :cond_5

    .line 101
    .line 102
    check-cast v14, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .line 103
    .line 104
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->y()V

    .line 105
    .line 106
    .line 107
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    move v0, v2

    .line 111
    move v15, v0

    .line 112
    move v14, v6

    .line 113
    :goto_5
    if-eqz v14, :cond_16

    .line 114
    .line 115
    move/from16 v16, v6

    .line 116
    .line 117
    add-int/lit8 v6, v0, 0x1

    .line 118
    .line 119
    :try_start_0
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/LinearSystem;->r()V

    .line 120
    .line 121
    .line 122
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 123
    .line 124
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d(Landroidx/constraintlayout/solver/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    .line 128
    .line 129
    move v0, v2

    .line 130
    :goto_6
    if-ge v0, v13, :cond_7

    .line 131
    .line 132
    move/from16 v17, v2

    .line 133
    .line 134
    :try_start_1
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 141
    .line 142
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    move/from16 v2, v17

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_a

    .line 152
    :cond_7
    move/from16 v17, v2

    .line 153
    .line 154
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->A(Landroidx/constraintlayout/solver/LinearSystem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    .line 157
    :try_start_2
    iget-object v0, v5, Landroidx/constraintlayout/solver/LinearSystem;->b:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 158
    .line 159
    iget-boolean v2, v5, Landroidx/constraintlayout/solver/LinearSystem;->f:Z

    .line 160
    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    move/from16 v2, v17

    .line 164
    .line 165
    :goto_7
    iget v14, v5, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 166
    .line 167
    if-ge v2, v14, :cond_9

    .line 168
    .line 169
    iget-object v14, v5, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 170
    .line 171
    aget-object v14, v14, v2

    .line 172
    .line 173
    iget-boolean v14, v14, Landroidx/constraintlayout/solver/ArrayRow;->e:Z

    .line 174
    .line 175
    if-nez v14, :cond_8

    .line 176
    .line 177
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/LinearSystem;->o(Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    .line 178
    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_9
    move/from16 v0, v17

    .line 185
    .line 186
    :goto_8
    iget v2, v5, Landroidx/constraintlayout/solver/LinearSystem;->i:I

    .line 187
    .line 188
    if-ge v0, v2, :cond_b

    .line 189
    .line 190
    iget-object v2, v5, Landroidx/constraintlayout/solver/LinearSystem;->e:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 191
    .line 192
    aget-object v2, v2, v0

    .line 193
    .line 194
    iget-object v14, v2, Landroidx/constraintlayout/solver/ArrayRow;->a:Landroidx/constraintlayout/solver/SolverVariable;

    .line 195
    .line 196
    iget v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 197
    .line 198
    iput v2, v14, Landroidx/constraintlayout/solver/SolverVariable;->e:F

    .line 199
    .line 200
    add-int/lit8 v0, v0, 0x1

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_a
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/LinearSystem;->o(Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_9
    move-object/from16 v18, v7

    .line 207
    .line 208
    move/from16 v19, v12

    .line 209
    .line 210
    move/from16 v14, v16

    .line 211
    .line 212
    goto :goto_b

    .line 213
    :catch_1
    move-exception v0

    .line 214
    move/from16 v14, v16

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :catch_2
    move-exception v0

    .line 218
    move/from16 v17, v2

    .line 219
    .line 220
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 224
    .line 225
    move-object/from16 v18, v7

    .line 226
    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    move/from16 v19, v12

    .line 230
    .line 231
    const-string v12, "EXCEPTION : "

    .line 232
    .line 233
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_b
    const/4 v0, 0x2

    .line 247
    sget-object v2, Landroidx/constraintlayout/solver/widgets/Optimizer;->a:[Z

    .line 248
    .line 249
    if-eqz v14, :cond_c

    .line 250
    .line 251
    aput-boolean v17, v2, v0

    .line 252
    .line 253
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 254
    .line 255
    .line 256
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    move/from16 v12, v17

    .line 263
    .line 264
    :goto_c
    if-ge v12, v7, :cond_d

    .line 265
    .line 266
    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v14

    .line 272
    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 273
    .line 274
    invoke-virtual {v14, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v12, v12, 0x1

    .line 278
    .line 279
    goto :goto_c

    .line 280
    :cond_c
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 281
    .line 282
    .line 283
    move/from16 v7, v17

    .line 284
    .line 285
    :goto_d
    if-ge v7, v13, :cond_d

    .line 286
    .line 287
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 294
    .line 295
    invoke-virtual {v12, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 296
    .line 297
    .line 298
    add-int/lit8 v7, v7, 0x1

    .line 299
    .line 300
    goto :goto_d

    .line 301
    :cond_d
    if-eqz v19, :cond_10

    .line 302
    .line 303
    const/16 v7, 0x8

    .line 304
    .line 305
    if-ge v6, v7, :cond_10

    .line 306
    .line 307
    aget-boolean v0, v2, v0

    .line 308
    .line 309
    if-eqz v0, :cond_10

    .line 310
    .line 311
    move/from16 v0, v17

    .line 312
    .line 313
    move v2, v0

    .line 314
    move v7, v2

    .line 315
    :goto_e
    if-ge v0, v13, :cond_e

    .line 316
    .line 317
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 324
    .line 325
    iget v14, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 326
    .line 327
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 328
    .line 329
    .line 330
    move-result v20

    .line 331
    add-int v14, v20, v14

    .line 332
    .line 333
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    iget v14, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 338
    .line 339
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    add-int/2addr v12, v14

    .line 344
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    add-int/lit8 v0, v0, 0x1

    .line 349
    .line 350
    goto :goto_e

    .line 351
    :cond_e
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 352
    .line 353
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 358
    .line 359
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-ne v9, v11, :cond_f

    .line 364
    .line 365
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    if-ge v7, v0, :cond_f

    .line 370
    .line 371
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 372
    .line 373
    .line 374
    aput-object v11, v18, v17

    .line 375
    .line 376
    move/from16 v0, v16

    .line 377
    .line 378
    move v15, v0

    .line 379
    goto :goto_f

    .line 380
    :cond_f
    move/from16 v0, v17

    .line 381
    .line 382
    :goto_f
    if-ne v8, v11, :cond_11

    .line 383
    .line 384
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-ge v7, v2, :cond_11

    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 391
    .line 392
    .line 393
    aput-object v11, v18, v16

    .line 394
    .line 395
    move/from16 v0, v16

    .line 396
    .line 397
    move v15, v0

    .line 398
    goto :goto_10

    .line 399
    :cond_10
    move/from16 v0, v17

    .line 400
    .line 401
    :cond_11
    :goto_10
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 402
    .line 403
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 416
    .line 417
    if-le v2, v7, :cond_12

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 420
    .line 421
    .line 422
    aput-object v12, v18, v17

    .line 423
    .line 424
    move/from16 v0, v16

    .line 425
    .line 426
    move v15, v0

    .line 427
    :cond_12
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 428
    .line 429
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    if-le v2, v7, :cond_13

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 444
    .line 445
    .line 446
    aput-object v12, v18, v16

    .line 447
    .line 448
    move/from16 v0, v16

    .line 449
    .line 450
    move v15, v0

    .line 451
    :cond_13
    if-nez v15, :cond_15

    .line 452
    .line 453
    aget-object v2, v18, v17

    .line 454
    .line 455
    if-ne v2, v11, :cond_14

    .line 456
    .line 457
    if-lez v3, :cond_14

    .line 458
    .line 459
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-le v2, v3, :cond_14

    .line 464
    .line 465
    move/from16 v2, v16

    .line 466
    .line 467
    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->q0:Z

    .line 468
    .line 469
    aput-object v12, v18, v17

    .line 470
    .line 471
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 472
    .line 473
    .line 474
    move v0, v2

    .line 475
    move v15, v0

    .line 476
    goto :goto_11

    .line 477
    :cond_14
    move/from16 v2, v16

    .line 478
    .line 479
    :goto_11
    aget-object v7, v18, v2

    .line 480
    .line 481
    if-ne v7, v11, :cond_15

    .line 482
    .line 483
    if-lez v4, :cond_15

    .line 484
    .line 485
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-le v7, v4, :cond_15

    .line 490
    .line 491
    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->r0:Z

    .line 492
    .line 493
    aput-object v12, v18, v2

    .line 494
    .line 495
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 496
    .line 497
    .line 498
    const/4 v14, 0x1

    .line 499
    const/4 v15, 0x1

    .line 500
    goto :goto_12

    .line 501
    :cond_15
    move v14, v0

    .line 502
    :goto_12
    move v0, v6

    .line 503
    move/from16 v2, v17

    .line 504
    .line 505
    move-object/from16 v7, v18

    .line 506
    .line 507
    move/from16 v12, v19

    .line 508
    .line 509
    const/4 v6, 0x1

    .line 510
    goto/16 :goto_5

    .line 511
    .line 512
    :cond_16
    move/from16 v17, v2

    .line 513
    .line 514
    move-object/from16 v18, v7

    .line 515
    .line 516
    iput-object v10, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 517
    .line 518
    if-eqz v15, :cond_17

    .line 519
    .line 520
    aput-object v9, v18, v17

    .line 521
    .line 522
    const/16 v16, 0x1

    .line 523
    .line 524
    aput-object v8, v18, v16

    .line 525
    .line 526
    :cond_17
    iget-object v0, v5, Landroidx/constraintlayout/solver/LinearSystem;->k:Landroidx/constraintlayout/solver/Cache;

    .line 527
    .line 528
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->r(Landroidx/constraintlayout/solver/Cache;)V

    .line 529
    .line 530
    .line 531
    return-void
.end method

.method public final z(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 5
    .line 6
    add-int/2addr p2, v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->o0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt p2, v2, :cond_0

    .line 11
    .line 12
    array-length p2, v1

    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->o0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->o0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 24
    .line 25
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 26
    .line 27
    new-instance v2, Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iget-boolean v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 31
    .line 32
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    .line 33
    .line 34
    .line 35
    aput-object v2, p2, v1

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->l0:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    if-ne p2, v0, :cond_3

    .line 42
    .line 43
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 44
    .line 45
    add-int/2addr p2, v0

    .line 46
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->n0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 47
    .line 48
    array-length v2, v1

    .line 49
    if-lt p2, v2, :cond_2

    .line 50
    .line 51
    array-length p2, v1

    .line 52
    mul-int/lit8 p2, p2, 0x2

    .line 53
    .line 54
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 59
    .line 60
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->n0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 61
    .line 62
    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->n0:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 63
    .line 64
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 65
    .line 66
    new-instance v2, Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 67
    .line 68
    iget-boolean v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 69
    .line 70
    invoke-direct {v2, p1, v0, v3}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    .line 71
    .line 72
    .line 73
    aput-object v2, p2, v1

    .line 74
    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->m0:I

    .line 77
    .line 78
    :cond_3
    return-void
.end method
