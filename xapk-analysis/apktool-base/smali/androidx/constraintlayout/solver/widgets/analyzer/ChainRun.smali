.class public Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v3, v0

    .line 20
    move-object v0, p2

    .line 21
    move-object p2, v3

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 32
    .line 33
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :goto_2
    if-eqz p2, :cond_5

    .line 58
    .line 59
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    move-object v0, v1

    .line 72
    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 97
    .line 98
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 99
    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 103
    .line 104
    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    if-ne v1, v2, :cond_6

    .line 108
    .line 109
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 110
    .line 111
    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 115
    .line 116
    if-nez p2, :cond_9

    .line 117
    .line 118
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 119
    .line 120
    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 121
    .line 122
    check-cast p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 123
    .line 124
    iget-boolean p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 125
    .line 126
    if-eqz p2, :cond_9

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-le p2, v2, :cond_9

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    sub-int/2addr p2, v2

    .line 139
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 144
    .line 145
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 146
    .line 147
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 148
    .line 149
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 150
    .line 151
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 152
    .line 153
    if-nez p1, :cond_a

    .line 154
    .line 155
    iget p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    iget p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    .line 159
    .line 160
    :goto_5
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->l:I

    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 6
    .line 7
    if-eqz v2, :cond_58

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 10
    .line 11
    iget-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_33

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    instance-of v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 28
    .line 29
    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->h0:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_0
    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 34
    .line 35
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 36
    .line 37
    sub-int/2addr v5, v6

    .line 38
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v8, 0x0

    .line 45
    :goto_1
    const/4 v9, -0x1

    .line 46
    const/16 v10, 0x8

    .line 47
    .line 48
    if-ge v8, v7, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 55
    .line 56
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 57
    .line 58
    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 59
    .line 60
    if-ne v11, v10, :cond_3

    .line 61
    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v8, v9

    .line 66
    :cond_3
    add-int/lit8 v11, v7, -0x1

    .line 67
    .line 68
    move v12, v11

    .line 69
    :goto_2
    if-ltz v12, :cond_5

    .line 70
    .line 71
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    check-cast v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 76
    .line 77
    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    .line 79
    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 80
    .line 81
    if-ne v13, v10, :cond_4

    .line 82
    .line 83
    add-int/lit8 v12, v12, -0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move v9, v12

    .line 87
    :cond_5
    const/4 v12, 0x0

    .line 88
    :goto_3
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 89
    .line 90
    const/4 v15, 0x2

    .line 91
    const/16 p1, 0x0

    .line 92
    .line 93
    if-ge v12, v15, :cond_14

    .line 94
    .line 95
    move/from16 v19, p1

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v15, 0x0

    .line 99
    const/16 v17, 0x0

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    :goto_4
    if-ge v4, v7, :cond_11

    .line 104
    .line 105
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v20

    .line 109
    move-object/from16 v13, v20

    .line 110
    .line 111
    check-cast v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 112
    .line 113
    move/from16 v20, v3

    .line 114
    .line 115
    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 116
    .line 117
    move/from16 v22, v12

    .line 118
    .line 119
    iget v12, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 120
    .line 121
    if-ne v12, v10, :cond_6

    .line 122
    .line 123
    goto/16 :goto_a

    .line 124
    .line 125
    :cond_6
    add-int/lit8 v18, v18, 0x1

    .line 126
    .line 127
    if-lez v4, :cond_7

    .line 128
    .line 129
    if-lt v4, v8, :cond_7

    .line 130
    .line 131
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 132
    .line 133
    iget v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 134
    .line 135
    add-int/2addr v15, v12

    .line 136
    :cond_7
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 137
    .line 138
    iget v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 139
    .line 140
    move/from16 v23, v10

    .line 141
    .line 142
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    .line 144
    if-eq v10, v14, :cond_8

    .line 145
    .line 146
    const/4 v10, 0x1

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    const/4 v10, 0x0

    .line 149
    :goto_5
    if-eqz v10, :cond_b

    .line 150
    .line 151
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 152
    .line 153
    move/from16 v24, v10

    .line 154
    .line 155
    if-nez v12, :cond_9

    .line 156
    .line 157
    iget-object v10, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 158
    .line 159
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 160
    .line 161
    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 162
    .line 163
    if-nez v10, :cond_9

    .line 164
    .line 165
    goto/16 :goto_33

    .line 166
    .line 167
    :cond_9
    const/4 v10, 0x1

    .line 168
    if-ne v12, v10, :cond_a

    .line 169
    .line 170
    iget-object v12, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 171
    .line 172
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 173
    .line 174
    iget-boolean v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 175
    .line 176
    if-nez v12, :cond_a

    .line 177
    .line 178
    goto/16 :goto_33

    .line 179
    .line 180
    :cond_a
    move/from16 v25, v15

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_b
    move/from16 v24, v10

    .line 184
    .line 185
    move/from16 v25, v15

    .line 186
    .line 187
    const/4 v10, 0x1

    .line 188
    iget v15, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 189
    .line 190
    if-ne v15, v10, :cond_c

    .line 191
    .line 192
    if-nez v22, :cond_c

    .line 193
    .line 194
    iget v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 195
    .line 196
    add-int/lit8 v17, v17, 0x1

    .line 197
    .line 198
    :goto_6
    const/16 v24, 0x1

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_c
    iget-boolean v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 202
    .line 203
    if-eqz v10, :cond_d

    .line 204
    .line 205
    move/from16 v10, v23

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    :goto_7
    move/from16 v10, v23

    .line 209
    .line 210
    :goto_8
    if-nez v24, :cond_f

    .line 211
    .line 212
    add-int/lit8 v17, v17, 0x1

    .line 213
    .line 214
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:[F

    .line 215
    .line 216
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 217
    .line 218
    aget v3, v3, v10

    .line 219
    .line 220
    cmpl-float v10, v3, p1

    .line 221
    .line 222
    if-ltz v10, :cond_e

    .line 223
    .line 224
    add-float v19, v19, v3

    .line 225
    .line 226
    :cond_e
    move/from16 v15, v25

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_f
    add-int v15, v25, v10

    .line 230
    .line 231
    :goto_9
    if-ge v4, v11, :cond_10

    .line 232
    .line 233
    if-ge v4, v9, :cond_10

    .line 234
    .line 235
    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 236
    .line 237
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 238
    .line 239
    neg-int v3, v3

    .line 240
    add-int/2addr v15, v3

    .line 241
    :cond_10
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 242
    .line 243
    move/from16 v3, v20

    .line 244
    .line 245
    move/from16 v12, v22

    .line 246
    .line 247
    const/16 v10, 0x8

    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_11
    move/from16 v20, v3

    .line 252
    .line 253
    move/from16 v22, v12

    .line 254
    .line 255
    if-lt v15, v5, :cond_13

    .line 256
    .line 257
    if-nez v17, :cond_12

    .line 258
    .line 259
    goto :goto_b

    .line 260
    :cond_12
    add-int/lit8 v12, v22, 0x1

    .line 261
    .line 262
    move/from16 v3, v20

    .line 263
    .line 264
    const/16 v10, 0x8

    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_13
    :goto_b
    move/from16 v3, v17

    .line 269
    .line 270
    move/from16 v4, v18

    .line 271
    .line 272
    goto :goto_c

    .line 273
    :cond_14
    move/from16 v20, v3

    .line 274
    .line 275
    move/from16 v19, p1

    .line 276
    .line 277
    const/4 v3, 0x0

    .line 278
    const/4 v4, 0x0

    .line 279
    const/4 v15, 0x0

    .line 280
    :goto_c
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 281
    .line 282
    if-eqz v20, :cond_15

    .line 283
    .line 284
    iget v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 285
    .line 286
    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 287
    .line 288
    if-le v15, v5, :cond_17

    .line 289
    .line 290
    const/high16 v10, 0x40000000    # 2.0f

    .line 291
    .line 292
    if-eqz v20, :cond_16

    .line 293
    .line 294
    sub-int v12, v15, v5

    .line 295
    .line 296
    int-to-float v12, v12

    .line 297
    div-float/2addr v12, v10

    .line 298
    add-float/2addr v12, v2

    .line 299
    float-to-int v10, v12

    .line 300
    add-int/2addr v1, v10

    .line 301
    goto :goto_d

    .line 302
    :cond_16
    sub-int v12, v15, v5

    .line 303
    .line 304
    int-to-float v12, v12

    .line 305
    div-float/2addr v12, v10

    .line 306
    add-float/2addr v12, v2

    .line 307
    float-to-int v10, v12

    .line 308
    sub-int/2addr v1, v10

    .line 309
    :cond_17
    :goto_d
    if-lez v3, :cond_28

    .line 310
    .line 311
    sub-int v10, v5, v15

    .line 312
    .line 313
    int-to-float v10, v10

    .line 314
    int-to-float v12, v3

    .line 315
    div-float v12, v10, v12

    .line 316
    .line 317
    add-float/2addr v12, v2

    .line 318
    float-to-int v12, v12

    .line 319
    const/4 v13, 0x0

    .line 320
    const/16 v17, 0x0

    .line 321
    .line 322
    :goto_e
    if-ge v13, v7, :cond_21

    .line 323
    .line 324
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v18

    .line 328
    move/from16 v22, v2

    .line 329
    .line 330
    move-object/from16 v2, v18

    .line 331
    .line 332
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 333
    .line 334
    move/from16 v18, v1

    .line 335
    .line 336
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 337
    .line 338
    move/from16 v23, v3

    .line 339
    .line 340
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 341
    .line 342
    move/from16 v24, v10

    .line 343
    .line 344
    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 345
    .line 346
    move/from16 v25, v12

    .line 347
    .line 348
    const/16 v12, 0x8

    .line 349
    .line 350
    if-ne v10, v12, :cond_19

    .line 351
    .line 352
    :cond_18
    move/from16 v26, v13

    .line 353
    .line 354
    goto/16 :goto_13

    .line 355
    .line 356
    :cond_19
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 357
    .line 358
    if-ne v10, v14, :cond_18

    .line 359
    .line 360
    iget-boolean v10, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 361
    .line 362
    if-nez v10, :cond_18

    .line 363
    .line 364
    cmpl-float v10, v19, p1

    .line 365
    .line 366
    if-lez v10, :cond_1a

    .line 367
    .line 368
    iget-object v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:[F

    .line 369
    .line 370
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 371
    .line 372
    aget v10, v10, v12

    .line 373
    .line 374
    mul-float v10, v10, v24

    .line 375
    .line 376
    div-float v10, v10, v19

    .line 377
    .line 378
    add-float v10, v10, v22

    .line 379
    .line 380
    float-to-int v10, v10

    .line 381
    goto :goto_f

    .line 382
    :cond_1a
    move/from16 v10, v25

    .line 383
    .line 384
    :goto_f
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 385
    .line 386
    if-nez v12, :cond_1d

    .line 387
    .line 388
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 389
    .line 390
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 391
    .line 392
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 393
    .line 394
    move/from16 v26, v13

    .line 395
    .line 396
    const/4 v13, 0x1

    .line 397
    if-ne v2, v13, :cond_1b

    .line 398
    .line 399
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 400
    .line 401
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    goto :goto_10

    .line 406
    :cond_1b
    move v2, v10

    .line 407
    :goto_10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-lez v12, :cond_1c

    .line 412
    .line 413
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    :cond_1c
    if-eq v1, v10, :cond_20

    .line 418
    .line 419
    goto :goto_12

    .line 420
    :cond_1d
    move/from16 v26, v13

    .line 421
    .line 422
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 423
    .line 424
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 425
    .line 426
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 427
    .line 428
    const/4 v13, 0x1

    .line 429
    if-ne v2, v13, :cond_1e

    .line 430
    .line 431
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 432
    .line 433
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    goto :goto_11

    .line 438
    :cond_1e
    move v2, v10

    .line 439
    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-lez v12, :cond_1f

    .line 444
    .line 445
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    :cond_1f
    if-eq v1, v10, :cond_20

    .line 450
    .line 451
    :goto_12
    add-int/lit8 v17, v17, 0x1

    .line 452
    .line 453
    move v10, v1

    .line 454
    :cond_20
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 455
    .line 456
    .line 457
    :goto_13
    add-int/lit8 v13, v26, 0x1

    .line 458
    .line 459
    move/from16 v1, v18

    .line 460
    .line 461
    move/from16 v2, v22

    .line 462
    .line 463
    move/from16 v3, v23

    .line 464
    .line 465
    move/from16 v10, v24

    .line 466
    .line 467
    move/from16 v12, v25

    .line 468
    .line 469
    goto/16 :goto_e

    .line 470
    .line 471
    :cond_21
    move/from16 v18, v1

    .line 472
    .line 473
    move/from16 v22, v2

    .line 474
    .line 475
    move/from16 v23, v3

    .line 476
    .line 477
    if-lez v17, :cond_25

    .line 478
    .line 479
    sub-int v3, v23, v17

    .line 480
    .line 481
    const/4 v1, 0x0

    .line 482
    const/4 v15, 0x0

    .line 483
    :goto_14
    if-ge v1, v7, :cond_26

    .line 484
    .line 485
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 490
    .line 491
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 492
    .line 493
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 494
    .line 495
    const/16 v12, 0x8

    .line 496
    .line 497
    if-ne v10, v12, :cond_22

    .line 498
    .line 499
    goto :goto_15

    .line 500
    :cond_22
    if-lez v1, :cond_23

    .line 501
    .line 502
    if-lt v1, v8, :cond_23

    .line 503
    .line 504
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 505
    .line 506
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 507
    .line 508
    add-int/2addr v15, v10

    .line 509
    :cond_23
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 510
    .line 511
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 512
    .line 513
    add-int/2addr v15, v10

    .line 514
    if-ge v1, v11, :cond_24

    .line 515
    .line 516
    if-ge v1, v9, :cond_24

    .line 517
    .line 518
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 519
    .line 520
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 521
    .line 522
    neg-int v2, v2

    .line 523
    add-int/2addr v15, v2

    .line 524
    :cond_24
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 525
    .line 526
    goto :goto_14

    .line 527
    :cond_25
    move/from16 v3, v23

    .line 528
    .line 529
    :cond_26
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->l:I

    .line 530
    .line 531
    const/4 v2, 0x2

    .line 532
    if-ne v1, v2, :cond_27

    .line 533
    .line 534
    if-nez v17, :cond_27

    .line 535
    .line 536
    const/4 v1, 0x0

    .line 537
    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->l:I

    .line 538
    .line 539
    goto :goto_16

    .line 540
    :cond_27
    const/4 v1, 0x0

    .line 541
    goto :goto_16

    .line 542
    :cond_28
    move/from16 v18, v1

    .line 543
    .line 544
    move/from16 v22, v2

    .line 545
    .line 546
    move/from16 v23, v3

    .line 547
    .line 548
    const/4 v1, 0x0

    .line 549
    const/4 v2, 0x2

    .line 550
    :goto_16
    if-le v15, v5, :cond_29

    .line 551
    .line 552
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->l:I

    .line 553
    .line 554
    :cond_29
    if-lez v4, :cond_2a

    .line 555
    .line 556
    if-nez v3, :cond_2a

    .line 557
    .line 558
    if-ne v8, v9, :cond_2a

    .line 559
    .line 560
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->l:I

    .line 561
    .line 562
    :cond_2a
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->l:I

    .line 563
    .line 564
    const/4 v13, 0x1

    .line 565
    if-ne v2, v13, :cond_3a

    .line 566
    .line 567
    if-le v4, v13, :cond_2b

    .line 568
    .line 569
    sub-int/2addr v5, v15

    .line 570
    sub-int/2addr v4, v13

    .line 571
    div-int/2addr v5, v4

    .line 572
    goto :goto_17

    .line 573
    :cond_2b
    if-ne v4, v13, :cond_2c

    .line 574
    .line 575
    sub-int/2addr v5, v15

    .line 576
    const/16 v16, 0x2

    .line 577
    .line 578
    div-int/lit8 v5, v5, 0x2

    .line 579
    .line 580
    goto :goto_17

    .line 581
    :cond_2c
    move v5, v1

    .line 582
    :goto_17
    if-lez v3, :cond_2d

    .line 583
    .line 584
    move v5, v1

    .line 585
    :cond_2d
    move v4, v1

    .line 586
    move/from16 v1, v18

    .line 587
    .line 588
    :goto_18
    if-ge v4, v7, :cond_58

    .line 589
    .line 590
    if-eqz v20, :cond_2e

    .line 591
    .line 592
    add-int/lit8 v0, v4, 0x1

    .line 593
    .line 594
    sub-int v0, v7, v0

    .line 595
    .line 596
    goto :goto_19

    .line 597
    :cond_2e
    move v0, v4

    .line 598
    :goto_19
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 603
    .line 604
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 605
    .line 606
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 607
    .line 608
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 609
    .line 610
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 611
    .line 612
    const/16 v12, 0x8

    .line 613
    .line 614
    if-ne v2, v12, :cond_2f

    .line 615
    .line 616
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 620
    .line 621
    .line 622
    goto :goto_20

    .line 623
    :cond_2f
    if-lez v4, :cond_31

    .line 624
    .line 625
    if-eqz v20, :cond_30

    .line 626
    .line 627
    sub-int/2addr v1, v5

    .line 628
    goto :goto_1a

    .line 629
    :cond_30
    add-int/2addr v1, v5

    .line 630
    :cond_31
    :goto_1a
    if-lez v4, :cond_33

    .line 631
    .line 632
    if-lt v4, v8, :cond_33

    .line 633
    .line 634
    if-eqz v20, :cond_32

    .line 635
    .line 636
    iget v2, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 637
    .line 638
    sub-int/2addr v1, v2

    .line 639
    goto :goto_1b

    .line 640
    :cond_32
    iget v2, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 641
    .line 642
    add-int/2addr v1, v2

    .line 643
    :cond_33
    :goto_1b
    if-eqz v20, :cond_34

    .line 644
    .line 645
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 646
    .line 647
    .line 648
    goto :goto_1c

    .line 649
    :cond_34
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 650
    .line 651
    .line 652
    :goto_1c
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 653
    .line 654
    iget v12, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 655
    .line 656
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 657
    .line 658
    if-ne v13, v14, :cond_35

    .line 659
    .line 660
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 661
    .line 662
    const/4 v15, 0x1

    .line 663
    if-ne v13, v15, :cond_35

    .line 664
    .line 665
    iget v12, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 666
    .line 667
    :cond_35
    if-eqz v20, :cond_36

    .line 668
    .line 669
    sub-int/2addr v1, v12

    .line 670
    goto :goto_1d

    .line 671
    :cond_36
    add-int/2addr v1, v12

    .line 672
    :goto_1d
    if-eqz v20, :cond_37

    .line 673
    .line 674
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 675
    .line 676
    .line 677
    :goto_1e
    const/4 v13, 0x1

    .line 678
    goto :goto_1f

    .line 679
    :cond_37
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 680
    .line 681
    .line 682
    goto :goto_1e

    .line 683
    :goto_1f
    iput-boolean v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 684
    .line 685
    if-ge v4, v11, :cond_39

    .line 686
    .line 687
    if-ge v4, v9, :cond_39

    .line 688
    .line 689
    if-eqz v20, :cond_38

    .line 690
    .line 691
    iget v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 692
    .line 693
    neg-int v0, v0

    .line 694
    sub-int/2addr v1, v0

    .line 695
    goto :goto_20

    .line 696
    :cond_38
    iget v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 697
    .line 698
    neg-int v0, v0

    .line 699
    add-int/2addr v1, v0

    .line 700
    :cond_39
    :goto_20
    add-int/lit8 v4, v4, 0x1

    .line 701
    .line 702
    goto :goto_18

    .line 703
    :cond_3a
    if-nez v2, :cond_47

    .line 704
    .line 705
    sub-int/2addr v5, v15

    .line 706
    const/16 v21, 0x1

    .line 707
    .line 708
    add-int/lit8 v4, v4, 0x1

    .line 709
    .line 710
    div-int/2addr v5, v4

    .line 711
    if-lez v3, :cond_3b

    .line 712
    .line 713
    move v5, v1

    .line 714
    :cond_3b
    move v4, v1

    .line 715
    move/from16 v1, v18

    .line 716
    .line 717
    :goto_21
    if-ge v4, v7, :cond_58

    .line 718
    .line 719
    if-eqz v20, :cond_3c

    .line 720
    .line 721
    add-int/lit8 v0, v4, 0x1

    .line 722
    .line 723
    sub-int v0, v7, v0

    .line 724
    .line 725
    goto :goto_22

    .line 726
    :cond_3c
    move v0, v4

    .line 727
    :goto_22
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 732
    .line 733
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 734
    .line 735
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 736
    .line 737
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 738
    .line 739
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 740
    .line 741
    const/16 v12, 0x8

    .line 742
    .line 743
    if-ne v2, v12, :cond_3d

    .line 744
    .line 745
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 749
    .line 750
    .line 751
    goto :goto_28

    .line 752
    :cond_3d
    if-eqz v20, :cond_3e

    .line 753
    .line 754
    sub-int/2addr v1, v5

    .line 755
    goto :goto_23

    .line 756
    :cond_3e
    add-int/2addr v1, v5

    .line 757
    :goto_23
    if-lez v4, :cond_40

    .line 758
    .line 759
    if-lt v4, v8, :cond_40

    .line 760
    .line 761
    if-eqz v20, :cond_3f

    .line 762
    .line 763
    iget v2, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 764
    .line 765
    sub-int/2addr v1, v2

    .line 766
    goto :goto_24

    .line 767
    :cond_3f
    iget v2, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 768
    .line 769
    add-int/2addr v1, v2

    .line 770
    :cond_40
    :goto_24
    if-eqz v20, :cond_41

    .line 771
    .line 772
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 773
    .line 774
    .line 775
    goto :goto_25

    .line 776
    :cond_41
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 777
    .line 778
    .line 779
    :goto_25
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 780
    .line 781
    iget v12, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 782
    .line 783
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 784
    .line 785
    if-ne v13, v14, :cond_42

    .line 786
    .line 787
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 788
    .line 789
    const/4 v13, 0x1

    .line 790
    if-ne v0, v13, :cond_42

    .line 791
    .line 792
    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 793
    .line 794
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    .line 795
    .line 796
    .line 797
    move-result v12

    .line 798
    :cond_42
    if-eqz v20, :cond_43

    .line 799
    .line 800
    sub-int/2addr v1, v12

    .line 801
    goto :goto_26

    .line 802
    :cond_43
    add-int/2addr v1, v12

    .line 803
    :goto_26
    if-eqz v20, :cond_44

    .line 804
    .line 805
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 806
    .line 807
    .line 808
    goto :goto_27

    .line 809
    :cond_44
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 810
    .line 811
    .line 812
    :goto_27
    if-ge v4, v11, :cond_46

    .line 813
    .line 814
    if-ge v4, v9, :cond_46

    .line 815
    .line 816
    if-eqz v20, :cond_45

    .line 817
    .line 818
    iget v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 819
    .line 820
    neg-int v0, v0

    .line 821
    sub-int/2addr v1, v0

    .line 822
    goto :goto_28

    .line 823
    :cond_45
    iget v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 824
    .line 825
    neg-int v0, v0

    .line 826
    add-int/2addr v1, v0

    .line 827
    :cond_46
    :goto_28
    add-int/lit8 v4, v4, 0x1

    .line 828
    .line 829
    goto :goto_21

    .line 830
    :cond_47
    const/4 v4, 0x2

    .line 831
    if-ne v2, v4, :cond_58

    .line 832
    .line 833
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 834
    .line 835
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 836
    .line 837
    if-nez v2, :cond_48

    .line 838
    .line 839
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 840
    .line 841
    goto :goto_29

    .line 842
    :cond_48
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 843
    .line 844
    :goto_29
    if-eqz v20, :cond_49

    .line 845
    .line 846
    const/high16 v2, 0x3f800000    # 1.0f

    .line 847
    .line 848
    sub-float v0, v2, v0

    .line 849
    .line 850
    :cond_49
    sub-int/2addr v5, v15

    .line 851
    int-to-float v2, v5

    .line 852
    mul-float/2addr v2, v0

    .line 853
    add-float v2, v2, v22

    .line 854
    .line 855
    float-to-int v0, v2

    .line 856
    if-ltz v0, :cond_4a

    .line 857
    .line 858
    if-lez v3, :cond_4b

    .line 859
    .line 860
    :cond_4a
    move v0, v1

    .line 861
    :cond_4b
    if-eqz v20, :cond_4c

    .line 862
    .line 863
    sub-int v0, v18, v0

    .line 864
    .line 865
    goto :goto_2a

    .line 866
    :cond_4c
    add-int v0, v18, v0

    .line 867
    .line 868
    :goto_2a
    move v4, v1

    .line 869
    :goto_2b
    if-ge v4, v7, :cond_58

    .line 870
    .line 871
    if-eqz v20, :cond_4d

    .line 872
    .line 873
    add-int/lit8 v1, v4, 0x1

    .line 874
    .line 875
    sub-int v1, v7, v1

    .line 876
    .line 877
    goto :goto_2c

    .line 878
    :cond_4d
    move v1, v4

    .line 879
    :goto_2c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 884
    .line 885
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 886
    .line 887
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 888
    .line 889
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 890
    .line 891
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 892
    .line 893
    const/16 v12, 0x8

    .line 894
    .line 895
    if-ne v2, v12, :cond_4e

    .line 896
    .line 897
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 901
    .line 902
    .line 903
    const/4 v13, 0x1

    .line 904
    goto :goto_32

    .line 905
    :cond_4e
    if-lez v4, :cond_50

    .line 906
    .line 907
    if-lt v4, v8, :cond_50

    .line 908
    .line 909
    if-eqz v20, :cond_4f

    .line 910
    .line 911
    iget v2, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 912
    .line 913
    sub-int/2addr v0, v2

    .line 914
    goto :goto_2d

    .line 915
    :cond_4f
    iget v2, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 916
    .line 917
    add-int/2addr v0, v2

    .line 918
    :cond_50
    :goto_2d
    if-eqz v20, :cond_51

    .line 919
    .line 920
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 921
    .line 922
    .line 923
    goto :goto_2e

    .line 924
    :cond_51
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 925
    .line 926
    .line 927
    :goto_2e
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 928
    .line 929
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 930
    .line 931
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 932
    .line 933
    if-ne v13, v14, :cond_52

    .line 934
    .line 935
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 936
    .line 937
    const/4 v13, 0x1

    .line 938
    if-ne v1, v13, :cond_53

    .line 939
    .line 940
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 941
    .line 942
    goto :goto_2f

    .line 943
    :cond_52
    const/4 v13, 0x1

    .line 944
    :cond_53
    :goto_2f
    if-eqz v20, :cond_54

    .line 945
    .line 946
    sub-int/2addr v0, v10

    .line 947
    goto :goto_30

    .line 948
    :cond_54
    add-int/2addr v0, v10

    .line 949
    :goto_30
    if-eqz v20, :cond_55

    .line 950
    .line 951
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 952
    .line 953
    .line 954
    goto :goto_31

    .line 955
    :cond_55
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 956
    .line 957
    .line 958
    :goto_31
    if-ge v4, v11, :cond_57

    .line 959
    .line 960
    if-ge v4, v9, :cond_57

    .line 961
    .line 962
    if-eqz v20, :cond_56

    .line 963
    .line 964
    iget v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 965
    .line 966
    neg-int v1, v1

    .line 967
    sub-int/2addr v0, v1

    .line 968
    goto :goto_32

    .line 969
    :cond_56
    iget v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 970
    .line 971
    neg-int v1, v1

    .line 972
    add-int/2addr v0, v1

    .line 973
    :cond_57
    :goto_32
    add-int/lit8 v4, v4, 0x1

    .line 974
    .line 975
    goto :goto_2b

    .line 976
    :cond_58
    :goto_33
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 37
    .line 38
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 39
    .line 40
    sub-int/2addr v1, v2

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 48
    .line 49
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 52
    .line 53
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 58
    .line 59
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 60
    .line 61
    invoke-static {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-static {v6, v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {v0, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->n()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    :cond_4
    if-eqz v1, :cond_9

    .line 107
    .line 108
    neg-int v0, v0

    .line 109
    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 114
    .line 115
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 116
    .line 117
    invoke-static {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    :cond_6
    if-eqz v3, :cond_7

    .line 138
    .line 139
    invoke-static {v6, v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    invoke-static {v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->n()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    :cond_8
    if-eqz v1, :cond_9

    .line 163
    .line 164
    neg-int v0, v0

    .line 165
    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_1
    iput-object p0, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 169
    .line 170
    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 171
    .line 172
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
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
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final j()J
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 17
    .line 18
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 19
    .line 20
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    add-long/2addr v1, v5

    .line 24
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    add-long/2addr v5, v1

    .line 29
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 30
    .line 31
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 32
    .line 33
    int-to-long v1, v1

    .line 34
    add-long/2addr v1, v5

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v1
.end method

.method public final k()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public final m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 17
    .line 18
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final n()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 18
    .line 19
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "horizontal : "

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "vertical : "

    .line 9
    .line 10
    :goto_0
    const-string v1, "ChainRun "

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 33
    .line 34
    const-string v2, "<"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "> "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-object v0
.end method
