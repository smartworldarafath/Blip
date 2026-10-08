.class public Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field public b:Z

.field public c:Z

.field public d:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field public e:Ljava/util/ArrayList;

.field public f:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field public g:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V
    .locals 6

    .line 1
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 8
    .line 9
    if-nez v0, :cond_a

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 12
    .line 13
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 14
    .line 15
    if-eq p1, v3, :cond_a

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    if-nez p4, :cond_1

    .line 24
    .line 25
    new-instance p4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 26
    .line 27
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    iput-object p1, p4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 41
    .line 42
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-object p4, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->c:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 46
    .line 47
    iget-object v0, p4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 69
    .line 70
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 75
    .line 76
    invoke-virtual {p0, v3, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 97
    .line 98
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 99
    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 103
    .line 104
    invoke-virtual {p0, v3, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 v0, 0x1

    .line 109
    if-ne p2, v0, :cond_7

    .line 110
    .line 111
    instance-of v3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    move-object v3, p1

    .line 116
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 117
    .line 118
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 119
    .line 120
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 137
    .line 138
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 143
    .line 144
    invoke-virtual {p0, v4, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 165
    .line 166
    invoke-virtual {p0, v3, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_9

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 187
    .line 188
    invoke-virtual {p0, v2, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    if-ne p2, v0, :cond_a

    .line 193
    .line 194
    instance-of v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 195
    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 199
    .line 200
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 201
    .line 202
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 219
    .line 220
    invoke-virtual {p0, v0, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_2e

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    move-object v5, v3

    .line 22
    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 23
    .line 24
    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 25
    .line 26
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 27
    .line 28
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 29
    .line 30
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 31
    .line 32
    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 33
    .line 34
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 35
    .line 36
    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 37
    .line 38
    iget-object v11, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    aget-object v13, v3, v12

    .line 42
    .line 43
    const/4 v14, 0x1

    .line 44
    aget-object v3, v3, v14

    .line 45
    .line 46
    iget v15, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 47
    .line 48
    move/from16 v16, v12

    .line 49
    .line 50
    const/16 v12, 0x8

    .line 51
    .line 52
    if-ne v15, v12, :cond_0

    .line 53
    .line 54
    iput-boolean v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 58
    .line 59
    const/high16 v15, 0x3f800000    # 1.0f

    .line 60
    .line 61
    cmpg-float v17, v12, v15

    .line 62
    .line 63
    move/from16 v18, v15

    .line 64
    .line 65
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 66
    .line 67
    const/4 v14, 0x2

    .line 68
    if-gez v17, :cond_1

    .line 69
    .line 70
    if-ne v13, v15, :cond_1

    .line 71
    .line 72
    iput v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 73
    .line 74
    :cond_1
    iget v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    .line 75
    .line 76
    cmpg-float v19, v14, v18

    .line 77
    .line 78
    if-gez v19, :cond_2

    .line 79
    .line 80
    if-ne v3, v15, :cond_2

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    iput v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 84
    .line 85
    :cond_2
    iget v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 86
    .line 87
    const/16 v19, 0x0

    .line 88
    .line 89
    cmpl-float v0, v0, v19

    .line 90
    .line 91
    move/from16 v19, v0

    .line 92
    .line 93
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 94
    .line 95
    move-object/from16 v21, v1

    .line 96
    .line 97
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 98
    .line 99
    if-lez v19, :cond_9

    .line 100
    .line 101
    if-ne v13, v15, :cond_4

    .line 102
    .line 103
    if-eq v3, v0, :cond_3

    .line 104
    .line 105
    if-ne v3, v1, :cond_4

    .line 106
    .line 107
    :cond_3
    move-object/from16 v19, v2

    .line 108
    .line 109
    const/4 v2, 0x3

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move-object/from16 v19, v2

    .line 112
    .line 113
    const/4 v2, 0x3

    .line 114
    goto :goto_3

    .line 115
    :goto_1
    iput v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 116
    .line 117
    :cond_5
    :goto_2
    move-object/from16 v22, v4

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :goto_3
    if-ne v3, v15, :cond_7

    .line 121
    .line 122
    if-eq v13, v0, :cond_6

    .line 123
    .line 124
    if-ne v13, v1, :cond_7

    .line 125
    .line 126
    :cond_6
    iput v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    if-ne v13, v15, :cond_5

    .line 130
    .line 131
    if-ne v3, v15, :cond_5

    .line 132
    .line 133
    move-object/from16 v22, v4

    .line 134
    .line 135
    iget v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 136
    .line 137
    if-nez v4, :cond_8

    .line 138
    .line 139
    iput v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 140
    .line 141
    :cond_8
    iget v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 142
    .line 143
    if-nez v4, :cond_a

    .line 144
    .line 145
    iput v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    move-object/from16 v19, v2

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_a
    :goto_4
    if-ne v13, v15, :cond_c

    .line 152
    .line 153
    iget v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 154
    .line 155
    const/4 v4, 0x1

    .line 156
    if-ne v2, v4, :cond_c

    .line 157
    .line 158
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 159
    .line 160
    if-eqz v2, :cond_b

    .line 161
    .line 162
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 163
    .line 164
    if-nez v2, :cond_c

    .line 165
    .line 166
    :cond_b
    move-object v13, v0

    .line 167
    :cond_c
    if-ne v3, v15, :cond_e

    .line 168
    .line 169
    iget v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 170
    .line 171
    const/4 v4, 0x1

    .line 172
    if-ne v2, v4, :cond_e

    .line 173
    .line 174
    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 175
    .line 176
    if-eqz v2, :cond_d

    .line 177
    .line 178
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 179
    .line 180
    if-nez v2, :cond_e

    .line 181
    .line 182
    :cond_d
    move-object v3, v0

    .line 183
    :cond_e
    iput-object v13, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    .line 185
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 186
    .line 187
    iget v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 188
    .line 189
    iput v4, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 190
    .line 191
    iput-object v3, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 192
    .line 193
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 194
    .line 195
    move/from16 v23, v12

    .line 196
    .line 197
    iget v12, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 198
    .line 199
    iput v12, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->a:I

    .line 200
    .line 201
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 202
    .line 203
    if-eq v13, v10, :cond_f

    .line 204
    .line 205
    if-eq v13, v1, :cond_f

    .line 206
    .line 207
    if-ne v13, v0, :cond_11

    .line 208
    .line 209
    :cond_f
    if-eq v3, v10, :cond_10

    .line 210
    .line 211
    if-eq v3, v1, :cond_10

    .line 212
    .line 213
    if-ne v3, v0, :cond_11

    .line 214
    .line 215
    :cond_10
    move-object v0, v1

    .line 216
    move-object v1, v13

    .line 217
    goto/16 :goto_d

    .line 218
    .line 219
    :cond_11
    const/high16 v24, 0x3f000000    # 0.5f

    .line 220
    .line 221
    if-ne v13, v15, :cond_13

    .line 222
    .line 223
    if-eq v3, v0, :cond_12

    .line 224
    .line 225
    if-ne v3, v1, :cond_13

    .line 226
    .line 227
    :cond_12
    const/4 v6, 0x3

    .line 228
    goto :goto_5

    .line 229
    :cond_13
    move-object v6, v0

    .line 230
    move-object v8, v3

    .line 231
    goto/16 :goto_8

    .line 232
    .line 233
    :goto_5
    if-ne v4, v6, :cond_16

    .line 234
    .line 235
    if-ne v3, v0, :cond_14

    .line 236
    .line 237
    const/4 v7, 0x0

    .line 238
    const/4 v9, 0x0

    .line 239
    move-object v8, v0

    .line 240
    move-object/from16 v4, p0

    .line 241
    .line 242
    move-object v6, v0

    .line 243
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 244
    .line 245
    .line 246
    :cond_14
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    int-to-float v0, v9

    .line 251
    iget v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 252
    .line 253
    mul-float/2addr v0, v3

    .line 254
    add-float v0, v0, v24

    .line 255
    .line 256
    float-to-int v7, v0

    .line 257
    move-object v8, v1

    .line 258
    move-object/from16 v4, p0

    .line 259
    .line 260
    move-object v6, v1

    .line 261
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 276
    .line 277
    .line 278
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 280
    .line 281
    :cond_15
    :goto_6
    move-object/from16 v0, p1

    .line 282
    .line 283
    move-object/from16 v2, v19

    .line 284
    .line 285
    move-object/from16 v1, v21

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_16
    move-object v6, v0

    .line 290
    move-object v8, v1

    .line 291
    const/4 v0, 0x1

    .line 292
    if-ne v4, v0, :cond_17

    .line 293
    .line 294
    const/4 v7, 0x0

    .line 295
    const/4 v9, 0x0

    .line 296
    move-object/from16 v4, p0

    .line 297
    .line 298
    move-object v8, v3

    .line 299
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_17
    move-object v0, v3

    .line 310
    const/4 v1, 0x2

    .line 311
    if-ne v4, v1, :cond_1a

    .line 312
    .line 313
    aget-object v1, v19, v16

    .line 314
    .line 315
    if-eq v1, v8, :cond_19

    .line 316
    .line 317
    if-ne v1, v10, :cond_18

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_18
    move-object v1, v8

    .line 321
    move-object v8, v0

    .line 322
    goto :goto_8

    .line 323
    :cond_19
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    int-to-float v1, v1

    .line 328
    mul-float v12, v23, v1

    .line 329
    .line 330
    add-float v12, v12, v24

    .line 331
    .line 332
    float-to-int v7, v12

    .line 333
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    move-object/from16 v4, p0

    .line 338
    .line 339
    move-object v6, v8

    .line 340
    move-object v8, v0

    .line 341
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 356
    .line 357
    .line 358
    const/4 v0, 0x1

    .line 359
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_1a
    move-object v1, v8

    .line 363
    move-object v8, v0

    .line 364
    const/4 v0, 0x1

    .line 365
    aget-object v3, v22, v16

    .line 366
    .line 367
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 368
    .line 369
    if-eqz v3, :cond_1b

    .line 370
    .line 371
    aget-object v3, v22, v0

    .line 372
    .line 373
    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 374
    .line 375
    if-nez v0, :cond_1c

    .line 376
    .line 377
    :cond_1b
    const/4 v7, 0x0

    .line 378
    const/4 v9, 0x0

    .line 379
    move-object/from16 v4, p0

    .line 380
    .line 381
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 396
    .line 397
    .line 398
    const/4 v0, 0x1

    .line 399
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 400
    .line 401
    goto :goto_6

    .line 402
    :cond_1c
    :goto_8
    if-ne v8, v15, :cond_1e

    .line 403
    .line 404
    if-eq v13, v6, :cond_1d

    .line 405
    .line 406
    if-ne v13, v1, :cond_1e

    .line 407
    .line 408
    :cond_1d
    const/4 v0, 0x3

    .line 409
    goto :goto_9

    .line 410
    :cond_1e
    move-object v7, v6

    .line 411
    move-object v3, v8

    .line 412
    const/4 v0, 0x1

    .line 413
    move-object v6, v1

    .line 414
    move-object v1, v13

    .line 415
    goto/16 :goto_b

    .line 416
    .line 417
    :goto_9
    if-ne v12, v0, :cond_21

    .line 418
    .line 419
    if-ne v13, v6, :cond_1f

    .line 420
    .line 421
    const/4 v7, 0x0

    .line 422
    const/4 v9, 0x0

    .line 423
    move-object v8, v6

    .line 424
    move-object/from16 v4, p0

    .line 425
    .line 426
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 427
    .line 428
    .line 429
    :cond_1f
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    iget v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 434
    .line 435
    iget v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 436
    .line 437
    const/4 v4, -0x1

    .line 438
    if-ne v3, v4, :cond_20

    .line 439
    .line 440
    div-float v0, v18, v0

    .line 441
    .line 442
    :cond_20
    int-to-float v3, v7

    .line 443
    mul-float/2addr v3, v0

    .line 444
    add-float v3, v3, v24

    .line 445
    .line 446
    float-to-int v9, v3

    .line 447
    move-object v8, v1

    .line 448
    move-object/from16 v4, p0

    .line 449
    .line 450
    move-object v6, v1

    .line 451
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 466
    .line 467
    .line 468
    const/4 v0, 0x1

    .line 469
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 470
    .line 471
    goto/16 :goto_6

    .line 472
    .line 473
    :cond_21
    const/4 v0, 0x1

    .line 474
    if-ne v12, v0, :cond_22

    .line 475
    .line 476
    const/4 v7, 0x0

    .line 477
    const/4 v9, 0x0

    .line 478
    move-object/from16 v4, p0

    .line 479
    .line 480
    move-object v8, v6

    .line 481
    move-object v6, v13

    .line 482
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    iput v0, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 490
    .line 491
    goto/16 :goto_6

    .line 492
    .line 493
    :cond_22
    move-object v7, v6

    .line 494
    move-object v6, v13

    .line 495
    const/4 v3, 0x2

    .line 496
    if-ne v12, v3, :cond_26

    .line 497
    .line 498
    aget-object v3, v19, v0

    .line 499
    .line 500
    if-eq v3, v1, :cond_25

    .line 501
    .line 502
    if-ne v3, v10, :cond_23

    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_23
    move-object v0, v6

    .line 506
    move-object v6, v1

    .line 507
    move-object v1, v0

    .line 508
    :cond_24
    move-object v3, v8

    .line 509
    const/4 v0, 0x1

    .line 510
    goto :goto_b

    .line 511
    :cond_25
    :goto_a
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 512
    .line 513
    .line 514
    move-result v7

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    int-to-float v0, v0

    .line 520
    mul-float/2addr v14, v0

    .line 521
    add-float v14, v14, v24

    .line 522
    .line 523
    float-to-int v9, v14

    .line 524
    move-object/from16 v4, p0

    .line 525
    .line 526
    move-object v8, v1

    .line 527
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 542
    .line 543
    .line 544
    const/4 v0, 0x1

    .line 545
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 546
    .line 547
    goto/16 :goto_6

    .line 548
    .line 549
    :cond_26
    move-object/from16 v17, v6

    .line 550
    .line 551
    move-object v6, v1

    .line 552
    move-object/from16 v1, v17

    .line 553
    .line 554
    move/from16 v17, v3

    .line 555
    .line 556
    aget-object v0, v22, v17

    .line 557
    .line 558
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 559
    .line 560
    if-eqz v0, :cond_27

    .line 561
    .line 562
    const/16 v20, 0x3

    .line 563
    .line 564
    aget-object v0, v22, v20

    .line 565
    .line 566
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 567
    .line 568
    if-nez v0, :cond_24

    .line 569
    .line 570
    :cond_27
    move-object v6, v7

    .line 571
    const/4 v7, 0x0

    .line 572
    const/4 v9, 0x0

    .line 573
    move-object/from16 v4, p0

    .line 574
    .line 575
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 590
    .line 591
    .line 592
    const/4 v0, 0x1

    .line 593
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 594
    .line 595
    goto/16 :goto_6

    .line 596
    .line 597
    :goto_b
    if-ne v1, v15, :cond_15

    .line 598
    .line 599
    if-ne v3, v15, :cond_15

    .line 600
    .line 601
    if-eq v4, v0, :cond_28

    .line 602
    .line 603
    if-ne v12, v0, :cond_29

    .line 604
    .line 605
    :cond_28
    move-object v6, v7

    .line 606
    goto :goto_c

    .line 607
    :cond_29
    const/4 v1, 0x2

    .line 608
    if-ne v12, v1, :cond_15

    .line 609
    .line 610
    if-ne v4, v1, :cond_15

    .line 611
    .line 612
    aget-object v1, v19, v16

    .line 613
    .line 614
    if-eq v1, v6, :cond_2a

    .line 615
    .line 616
    if-ne v1, v6, :cond_15

    .line 617
    .line 618
    :cond_2a
    aget-object v1, v19, v0

    .line 619
    .line 620
    if-eq v1, v6, :cond_2b

    .line 621
    .line 622
    if-ne v1, v6, :cond_15

    .line 623
    .line 624
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    int-to-float v0, v0

    .line 629
    mul-float v12, v23, v0

    .line 630
    .line 631
    add-float v12, v12, v24

    .line 632
    .line 633
    float-to-int v7, v12

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    int-to-float v0, v0

    .line 639
    mul-float/2addr v14, v0

    .line 640
    add-float v14, v14, v24

    .line 641
    .line 642
    float-to-int v9, v14

    .line 643
    move-object v8, v6

    .line 644
    move-object/from16 v4, p0

    .line 645
    .line 646
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 661
    .line 662
    .line 663
    const/4 v0, 0x1

    .line 664
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 665
    .line 666
    goto/16 :goto_6

    .line 667
    .line 668
    :goto_c
    const/4 v7, 0x0

    .line 669
    const/4 v9, 0x0

    .line 670
    move-object v8, v6

    .line 671
    move-object/from16 v4, p0

    .line 672
    .line 673
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 681
    .line 682
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    iput v0, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 687
    .line 688
    goto/16 :goto_6

    .line 689
    .line 690
    :goto_d
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    if-ne v1, v10, :cond_2c

    .line 695
    .line 696
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    iget v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 701
    .line 702
    sub-int/2addr v1, v4

    .line 703
    iget v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 704
    .line 705
    sub-int v4, v1, v4

    .line 706
    .line 707
    move-object v1, v0

    .line 708
    :cond_2c
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 709
    .line 710
    .line 711
    move-result v8

    .line 712
    if-ne v3, v10, :cond_2d

    .line 713
    .line 714
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 719
    .line 720
    sub-int/2addr v3, v7

    .line 721
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 722
    .line 723
    sub-int v8, v3, v6

    .line 724
    .line 725
    move v9, v8

    .line 726
    move-object v8, v0

    .line 727
    :goto_e
    move-object v6, v1

    .line 728
    move v7, v4

    .line 729
    move-object/from16 v4, p0

    .line 730
    .line 731
    goto :goto_f

    .line 732
    :cond_2d
    move v9, v8

    .line 733
    move-object v8, v3

    .line 734
    goto :goto_e

    .line 735
    :goto_f
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 750
    .line 751
    .line 752
    const/4 v0, 0x1

    .line 753
    iput-boolean v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 754
    .line 755
    goto/16 :goto_6

    .line 756
    .line 757
    :cond_2e
    return-void
.end method

.method public final c()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 11
    .line 12
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 23
    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x0

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eqz v6, :cond_8

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 50
    .line 51
    instance-of v9, v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 52
    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    new-instance v7, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;

    .line 56
    .line 57
    invoke-direct {v7, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 58
    .line 59
    .line 60
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 61
    .line 62
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->f()V

    .line 63
    .line 64
    .line 65
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 66
    .line 67
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->f()V

    .line 68
    .line 69
    .line 70
    check-cast v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 71
    .line 72
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->h0:I

    .line 73
    .line 74
    iput v6, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_4

    .line 85
    .line 86
    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 87
    .line 88
    if-nez v9, :cond_2

    .line 89
    .line 90
    new-instance v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 91
    .line 92
    invoke-direct {v9, v6, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 93
    .line 94
    .line 95
    iput-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 96
    .line 97
    :cond_2
    if-nez v5, :cond_3

    .line 98
    .line 99
    new-instance v5, Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 105
    .line 106
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 111
    .line 112
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_7

    .line 120
    .line 121
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 122
    .line 123
    if-nez v8, :cond_5

    .line 124
    .line 125
    new-instance v8, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 126
    .line 127
    invoke-direct {v8, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 128
    .line 129
    .line 130
    iput-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 131
    .line 132
    :cond_5
    if-nez v5, :cond_6

    .line 133
    .line 134
    new-instance v5, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 140
    .line 141
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 146
    .line 147
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :goto_2
    instance-of v7, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 151
    .line 152
    if-eqz v7, :cond_0

    .line 153
    .line 154
    new-instance v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    .line 155
    .line 156
    invoke-direct {v7, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_8
    if-eqz v5, :cond_9

    .line 164
    .line 165
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 183
    .line 184
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f()V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_c

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 203
    .line 204
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 205
    .line 206
    if-ne v5, v3, :cond_b

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_b
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->d()V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 214
    .line 215
    .line 216
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 217
    .line 218
    invoke-virtual {p0, v2, v8, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->g(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 222
    .line 223
    invoke-virtual {p0, v0, v7, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->g(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 224
    .line 225
    .line 226
    iput-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 227
    .line 228
    return-void
.end method

.method public final d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move-wide v7, v4

    .line 17
    :goto_0
    if-ge v6, v3, :cond_d

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 24
    .line 25
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 26
    .line 27
    instance-of v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 28
    .line 29
    if-eqz v10, :cond_0

    .line 30
    .line 31
    move-object v10, v9

    .line 32
    check-cast v10, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 33
    .line 34
    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 35
    .line 36
    if-eq v10, v2, :cond_2

    .line 37
    .line 38
    :goto_1
    move-object/from16 p0, v1

    .line 39
    .line 40
    move-wide v0, v4

    .line 41
    move/from16 v16, v6

    .line 42
    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_0
    if-nez v2, :cond_1

    .line 46
    .line 47
    instance-of v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 48
    .line 49
    if-nez v10, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    instance-of v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 53
    .line 54
    if-nez v10, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 60
    .line 61
    :goto_2
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    if-nez v2, :cond_4

    .line 68
    .line 69
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 70
    .line 71
    :goto_4
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_4
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :goto_5
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 78
    .line 79
    iget-object v13, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 80
    .line 81
    iget-object v14, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j()J

    .line 94
    .line 95
    .line 96
    move-result-wide v14

    .line 97
    if-eqz v10, :cond_a

    .line 98
    .line 99
    if-eqz v11, :cond_a

    .line 100
    .line 101
    invoke-static {v12, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v10

    .line 105
    move-object/from16 p0, v1

    .line 106
    .line 107
    invoke-static {v13, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    sub-long/2addr v10, v14

    .line 112
    iget v4, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 113
    .line 114
    neg-int v5, v4

    .line 115
    move/from16 v16, v6

    .line 116
    .line 117
    int-to-long v5, v5

    .line 118
    cmp-long v5, v10, v5

    .line 119
    .line 120
    if-ltz v5, :cond_5

    .line 121
    .line 122
    int-to-long v4, v4

    .line 123
    add-long/2addr v10, v4

    .line 124
    :cond_5
    neg-long v0, v0

    .line 125
    sub-long/2addr v0, v14

    .line 126
    iget v4, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 127
    .line 128
    int-to-long v4, v4

    .line 129
    sub-long/2addr v0, v4

    .line 130
    cmp-long v6, v0, v4

    .line 131
    .line 132
    if-ltz v6, :cond_6

    .line 133
    .line 134
    sub-long/2addr v0, v4

    .line 135
    :cond_6
    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 136
    .line 137
    if-nez v2, :cond_7

    .line 138
    .line 139
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_7
    const/4 v5, 0x1

    .line 143
    if-ne v2, v5, :cond_8

    .line 144
    .line 145
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const/high16 v4, -0x40800000    # -1.0f

    .line 152
    .line 153
    :goto_6
    const/4 v5, 0x0

    .line 154
    cmpl-float v5, v4, v5

    .line 155
    .line 156
    const/high16 v6, 0x3f800000    # 1.0f

    .line 157
    .line 158
    if-lez v5, :cond_9

    .line 159
    .line 160
    long-to-float v0, v0

    .line 161
    div-float/2addr v0, v4

    .line 162
    long-to-float v1, v10

    .line 163
    sub-float v5, v6, v4

    .line 164
    .line 165
    div-float/2addr v1, v5

    .line 166
    add-float/2addr v1, v0

    .line 167
    float-to-long v0, v1

    .line 168
    goto :goto_7

    .line 169
    :cond_9
    const-wide/16 v0, 0x0

    .line 170
    .line 171
    :goto_7
    long-to-float v0, v0

    .line 172
    mul-float v1, v0, v4

    .line 173
    .line 174
    const/high16 v5, 0x3f000000    # 0.5f

    .line 175
    .line 176
    add-float/2addr v1, v5

    .line 177
    float-to-long v9, v1

    .line 178
    sub-float/2addr v6, v4

    .line 179
    mul-float/2addr v6, v0

    .line 180
    add-float/2addr v6, v5

    .line 181
    float-to-long v0, v6

    .line 182
    add-long/2addr v9, v14

    .line 183
    add-long/2addr v9, v0

    .line 184
    iget v0, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 185
    .line 186
    int-to-long v0, v0

    .line 187
    add-long/2addr v0, v9

    .line 188
    iget v4, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 189
    .line 190
    int-to-long v4, v4

    .line 191
    sub-long/2addr v0, v4

    .line 192
    goto :goto_8

    .line 193
    :cond_a
    move-object/from16 p0, v1

    .line 194
    .line 195
    move/from16 v16, v6

    .line 196
    .line 197
    if-eqz v10, :cond_b

    .line 198
    .line 199
    iget v0, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 200
    .line 201
    int-to-long v0, v0

    .line 202
    invoke-static {v12, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->b(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    iget v4, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 207
    .line 208
    int-to-long v4, v4

    .line 209
    add-long/2addr v4, v14

    .line 210
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    goto :goto_8

    .line 215
    :cond_b
    if-eqz v11, :cond_c

    .line 216
    .line 217
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 218
    .line 219
    int-to-long v0, v0

    .line 220
    invoke-static {v13, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v0

    .line 224
    iget v4, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 225
    .line 226
    neg-int v4, v4

    .line 227
    int-to-long v4, v4

    .line 228
    add-long/2addr v4, v14

    .line 229
    neg-long v0, v0

    .line 230
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    goto :goto_8

    .line 235
    :cond_c
    iget v0, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 236
    .line 237
    int-to-long v0, v0

    .line 238
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->j()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    add-long/2addr v4, v0

    .line 243
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->f:I

    .line 244
    .line 245
    int-to-long v0, v0

    .line 246
    sub-long v0, v4, v0

    .line 247
    .line 248
    :goto_8
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 249
    .line 250
    .line 251
    move-result-wide v7

    .line 252
    add-int/lit8 v6, v16, 0x1

    .line 253
    .line 254
    move-object/from16 v1, p0

    .line 255
    .line 256
    move-object/from16 v0, p1

    .line 257
    .line 258
    const-wide/16 v4, 0x0

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_d
    long-to-int v0, v7

    .line 263
    return v0
.end method

.method public final e(Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    iget-boolean v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget-boolean v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->c:Z

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    :cond_0
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 33
    .line 34
    iput-boolean v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 35
    .line 36
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 39
    .line 40
    .line 41
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 48
    .line 49
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 52
    .line 53
    .line 54
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 57
    .line 58
    .line 59
    iput-boolean v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->c:Z

    .line 60
    .line 61
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 64
    .line 65
    .line 66
    iput v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 67
    .line 68
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 69
    .line 70
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 71
    .line 72
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 73
    .line 74
    iput v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const/4 v8, 0x1

    .line 81
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget-boolean v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->b:Z

    .line 86
    .line 87
    if-eqz v10, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->c()V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 101
    .line 102
    invoke-virtual {v12, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 103
    .line 104
    .line 105
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 106
    .line 107
    invoke-virtual {v12, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->i()V

    .line 111
    .line 112
    .line 113
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 114
    .line 115
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    .line 117
    if-eq v7, v13, :cond_5

    .line 118
    .line 119
    if-ne v9, v13, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    move/from16 v16, v4

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    :goto_1
    if-eqz p1, :cond_7

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    if-eqz v15, :cond_7

    .line 136
    .line 137
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    check-cast v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 142
    .line 143
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->k()Z

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    if-nez v15, :cond_6

    .line 148
    .line 149
    move v14, v4

    .line 150
    goto :goto_2

    .line 151
    :cond_7
    move/from16 v14, p1

    .line 152
    .line 153
    :goto_2
    if-eqz v14, :cond_8

    .line 154
    .line 155
    if-ne v7, v13, :cond_8

    .line 156
    .line 157
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 165
    .line 166
    .line 167
    iget-object v15, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 168
    .line 169
    move/from16 v16, v4

    .line 170
    .line 171
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_8
    move/from16 v16, v4

    .line 180
    .line 181
    :goto_3
    if-eqz v14, :cond_9

    .line 182
    .line 183
    if-ne v9, v13, :cond_9

    .line 184
    .line 185
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 193
    .line 194
    .line 195
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 196
    .line 197
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    invoke-virtual {v4, v13}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 202
    .line 203
    .line 204
    :cond_9
    :goto_4
    aget-object v4, v3, v16

    .line 205
    .line 206
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 207
    .line 208
    if-eq v4, v12, :cond_b

    .line 209
    .line 210
    if-ne v4, v13, :cond_a

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_a
    move/from16 v0, v16

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_b
    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    add-int/2addr v4, v10

    .line 221
    iget-object v14, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 222
    .line 223
    invoke-virtual {v14, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 224
    .line 225
    .line 226
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 227
    .line 228
    sub-int/2addr v4, v10

    .line 229
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->i()V

    .line 233
    .line 234
    .line 235
    aget-object v3, v3, v8

    .line 236
    .line 237
    if-eq v3, v12, :cond_c

    .line 238
    .line 239
    if-ne v3, v13, :cond_d

    .line 240
    .line 241
    :cond_c
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    add-int/2addr v3, v11

    .line 246
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 247
    .line 248
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 249
    .line 250
    .line 251
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 252
    .line 253
    sub-int/2addr v3, v11

    .line 254
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 255
    .line 256
    .line 257
    :cond_d
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->i()V

    .line 258
    .line 259
    .line 260
    move v0, v8

    .line 261
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_f

    .line 270
    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 276
    .line 277
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 278
    .line 279
    if-ne v5, v2, :cond_e

    .line 280
    .line 281
    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 282
    .line 283
    if-nez v5, :cond_e

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_e
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e()V

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :cond_10
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_14

    .line 299
    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 305
    .line 306
    if-nez v0, :cond_11

    .line 307
    .line 308
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 309
    .line 310
    if-ne v4, v2, :cond_11

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_11
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 314
    .line 315
    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 316
    .line 317
    if-nez v4, :cond_12

    .line 318
    .line 319
    :goto_9
    move/from16 v4, v16

    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_12
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 323
    .line 324
    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 325
    .line 326
    if-nez v4, :cond_13

    .line 327
    .line 328
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;

    .line 329
    .line 330
    if-nez v4, :cond_13

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_13
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 334
    .line 335
    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 336
    .line 337
    if-nez v4, :cond_10

    .line 338
    .line 339
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 340
    .line 341
    if-nez v4, :cond_10

    .line 342
    .line 343
    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/GuidelineReference;

    .line 344
    .line 345
    if-nez v3, :cond_10

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_14
    move v4, v8

    .line 349
    :goto_a
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 353
    .line 354
    .line 355
    return v4
.end method

.method public final f(IZ)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    iget-object v6, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 15
    .line 16
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()I

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    if-eq v5, v13, :cond_0

    .line 38
    .line 39
    if-ne v9, v13, :cond_4

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    if-eqz v15, :cond_2

    .line 50
    .line 51
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    check-cast v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 56
    .line 57
    iget v8, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 58
    .line 59
    if-ne v8, v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->k()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-nez v8, :cond_1

    .line 66
    .line 67
    move v8, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v8, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move/from16 v8, p2

    .line 72
    .line 73
    :goto_1
    if-nez v1, :cond_3

    .line 74
    .line 75
    if-eqz v8, :cond_4

    .line 76
    .line 77
    if-ne v5, v13, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 87
    .line 88
    .line 89
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    if-eqz v8, :cond_4

    .line 100
    .line 101
    if-ne v9, v13, :cond_4

    .line 102
    .line 103
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 104
    .line 105
    .line 106
    const/4 v8, 0x1

    .line 107
    invoke-virtual {v0, v3, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-virtual {v3, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 112
    .line 113
    .line 114
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_2
    iget-object v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 124
    .line 125
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 126
    .line 127
    if-nez v1, :cond_7

    .line 128
    .line 129
    aget-object v6, v8, v4

    .line 130
    .line 131
    if-eq v6, v12, :cond_6

    .line 132
    .line 133
    if-ne v6, v13, :cond_5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    const/16 v16, 0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    :goto_3
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    add-int/2addr v6, v10

    .line 144
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 145
    .line 146
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 147
    .line 148
    .line 149
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 150
    .line 151
    sub-int/2addr v6, v10

    .line 152
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 153
    .line 154
    .line 155
    const/4 v8, 0x1

    .line 156
    const/16 v16, 0x1

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_7
    const/16 v16, 0x1

    .line 160
    .line 161
    aget-object v7, v8, v16

    .line 162
    .line 163
    if-eq v7, v12, :cond_9

    .line 164
    .line 165
    if-ne v7, v13, :cond_8

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_8
    :goto_4
    move v8, v4

    .line 169
    goto :goto_6

    .line 170
    :cond_9
    :goto_5
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    add-int/2addr v7, v11

    .line 175
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 176
    .line 177
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->d(I)V

    .line 178
    .line 179
    .line 180
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 181
    .line 182
    sub-int/2addr v7, v11

    .line 183
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 184
    .line 185
    .line 186
    move/from16 v8, v16

    .line 187
    .line 188
    :goto_6
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->i()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_c

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 206
    .line 207
    iget v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 208
    .line 209
    if-eq v7, v1, :cond_a

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_a
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 213
    .line 214
    if-ne v7, v3, :cond_b

    .line 215
    .line 216
    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 217
    .line 218
    if-nez v7, :cond_b

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_b
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e()V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :cond_d
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_12

    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 240
    .line 241
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->f:I

    .line 242
    .line 243
    if-eq v6, v1, :cond_e

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_e
    if-nez v8, :cond_f

    .line 247
    .line 248
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 249
    .line 250
    if-ne v6, v3, :cond_f

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_f
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 254
    .line 255
    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 256
    .line 257
    if-nez v6, :cond_10

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_10
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 261
    .line 262
    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 263
    .line 264
    if-nez v6, :cond_11

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :cond_11
    instance-of v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 268
    .line 269
    if-nez v6, :cond_d

    .line 270
    .line 271
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 272
    .line 273
    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 274
    .line 275
    if-nez v2, :cond_d

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_12
    move/from16 v4, v16

    .line 279
    .line 280
    :goto_9
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 284
    .line 285
    .line 286
    return v4
.end method

.method public final g(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 23
    .line 24
    instance-of v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 29
    .line 30
    invoke-virtual {p0, v2, p2, p3, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 41
    .line 42
    invoke-virtual {p0, v2, p2, p3, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 63
    .line 64
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 69
    .line 70
    invoke-virtual {p0, v1, p2, p3, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 81
    .line 82
    invoke-virtual {p0, v1, p2, p3, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 87
    if-ne p2, v0, :cond_7

    .line 88
    .line 89
    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 90
    .line 91
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 92
    .line 93
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 110
    .line 111
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 116
    .line 117
    invoke-virtual {p0, v0, p2, p3, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    return-void
.end method

.method public final h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->g:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 2
    .line 3
    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    iput-object p4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 8
    .line 9
    iput p5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->f:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 12
    .line 13
    invoke-interface {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 14
    .line 15
    .line 16
    iget p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)V

    .line 19
    .line 20
    .line 21
    iget p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->h:Z

    .line 27
    .line 28
    iput-boolean p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 29
    .line 30
    iget p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 31
    .line 32
    iput p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 33
    .line 34
    if-lez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    iput-boolean p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 40
    .line 41
    return-void
.end method

.method public final i()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->d0:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_b

    .line 16
    .line 17
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 22
    .line 23
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 24
    .line 25
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 26
    .line 27
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aget-object v9, v2, v3

    .line 36
    .line 37
    const/4 v10, 0x1

    .line 38
    aget-object v11, v2, v10

    .line 39
    .line 40
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 41
    .line 42
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 43
    .line 44
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    .line 46
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 47
    .line 48
    if-eq v9, v5, :cond_2

    .line 49
    .line 50
    if-ne v9, v12, :cond_1

    .line 51
    .line 52
    if-ne v2, v10, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v2, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    move v2, v10

    .line 58
    :goto_2
    if-eq v11, v5, :cond_3

    .line 59
    .line 60
    if-ne v11, v12, :cond_4

    .line 61
    .line 62
    if-ne v4, v10, :cond_4

    .line 63
    .line 64
    :cond_3
    move v3, v10

    .line 65
    :cond_4
    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 66
    .line 67
    iget-boolean v13, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 68
    .line 69
    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 70
    .line 71
    iget-boolean v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 72
    .line 73
    move/from16 v16, v2

    .line 74
    .line 75
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    if-eqz v13, :cond_5

    .line 78
    .line 79
    if-eqz v15, :cond_5

    .line 80
    .line 81
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 82
    .line 83
    iget v5, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 84
    .line 85
    move-object v4, v2

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 87
    .line 88
    .line 89
    iput-boolean v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    if-eqz v13, :cond_7

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 97
    .line 98
    move-object v4, v5

    .line 99
    iget v5, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 100
    .line 101
    move-object/from16 v0, p0

    .line 102
    .line 103
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 107
    .line 108
    if-ne v11, v12, :cond_6

    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 122
    .line 123
    .line 124
    iput-boolean v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move-object v0, v5

    .line 128
    if-eqz v15, :cond_9

    .line 129
    .line 130
    if-eqz v16, :cond_9

    .line 131
    .line 132
    iget v3, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 133
    .line 134
    iget v5, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 135
    .line 136
    move-object v4, v2

    .line 137
    move-object v2, v0

    .line 138
    move-object/from16 v0, p0

    .line 139
    .line 140
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 144
    .line 145
    if-ne v9, v12, :cond_8

    .line 146
    .line 147
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->m:I

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 159
    .line 160
    .line 161
    iput-boolean v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 162
    .line 163
    :cond_9
    :goto_3
    iget-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 164
    .line 165
    if-eqz v0, :cond_a

    .line 166
    .line 167
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->l:Landroidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency;

    .line 168
    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->d(I)V

    .line 174
    .line 175
    .line 176
    :cond_a
    move-object/from16 v0, p0

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_b
    return-void
.end method
