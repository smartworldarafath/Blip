.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# instance fields
.field public final A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final G:Ljava/util/ArrayList;

.field public final H:[Z

.field public final I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public K:I

.field public L:I

.field public M:F

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:F

.field public U:F

.field public V:Landroid/view/View;

.field public W:I

.field public X:Ljava/lang/String;

.field public Y:I

.field public Z:I

.field public a:Z

.field public final a0:[F

.field public b:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public final b0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public c:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public final c0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public final d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

.field public final e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

.field public final f:[Z

.field public final g:[I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final l:[I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:F

.field public final u:[I

.field public v:F

.field public w:Z

.field public final x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public final z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    .line 6
    .line 7
    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 13
    .line 14
    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v2, v1, [Z

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    .line 28
    .line 29
    filled-new-array {v0, v0, v0, v0}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    .line 37
    .line 38
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 41
    .line 42
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 43
    .line 44
    new-array v3, v1, [I

    .line 45
    .line 46
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    .line 47
    .line 48
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 49
    .line 50
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 51
    .line 52
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 55
    .line 56
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 57
    .line 58
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 59
    .line 60
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    .line 61
    .line 62
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 63
    .line 64
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 65
    .line 66
    const v3, 0x7fffffff

    .line 67
    .line 68
    .line 69
    filled-new-array {v3, v3}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:[I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    .line 77
    .line 78
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Z

    .line 79
    .line 80
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 81
    .line 82
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 83
    .line 84
    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 85
    .line 86
    .line 87
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 88
    .line 89
    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 90
    .line 91
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 92
    .line 93
    invoke-direct {v6, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 94
    .line 95
    .line 96
    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 97
    .line 98
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 99
    .line 100
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->l:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 101
    .line 102
    invoke-direct {v5, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 103
    .line 104
    .line 105
    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 106
    .line 107
    new-instance v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 108
    .line 109
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 110
    .line 111
    invoke-direct {v7, p0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 112
    .line 113
    .line 114
    iput-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 115
    .line 116
    new-instance v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 117
    .line 118
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 119
    .line 120
    invoke-direct {v8, p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 121
    .line 122
    .line 123
    iput-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 124
    .line 125
    new-instance v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 126
    .line 127
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->p:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 128
    .line 129
    invoke-direct {v10, p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 130
    .line 131
    .line 132
    iput-object v10, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 133
    .line 134
    new-instance v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 135
    .line 136
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 137
    .line 138
    invoke-direct {v11, p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 139
    .line 140
    .line 141
    iput-object v11, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 142
    .line 143
    new-instance v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 144
    .line 145
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->o:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 146
    .line 147
    invoke-direct {v9, p0, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 148
    .line 149
    .line 150
    iput-object v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 151
    .line 152
    filled-new-array/range {v4 .. v9}, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    iput-object v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 157
    .line 158
    new-instance v12, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Ljava/util/ArrayList;

    .line 164
    .line 165
    new-array v13, v1, [Z

    .line 166
    .line 167
    iput-object v13, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:[Z

    .line 168
    .line 169
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 170
    .line 171
    filled-new-array {v13, v13}, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    iput-object v13, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 176
    .line 177
    const/4 v13, 0x0

    .line 178
    iput-object v13, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 179
    .line 180
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 181
    .line 182
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 183
    .line 184
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 185
    .line 186
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 187
    .line 188
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 189
    .line 190
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 191
    .line 192
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 193
    .line 194
    const/high16 v2, 0x3f000000    # 0.5f

    .line 195
    .line 196
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 197
    .line 198
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 199
    .line 200
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 201
    .line 202
    iput-object v13, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;

    .line 203
    .line 204
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 205
    .line 206
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    .line 207
    .line 208
    new-array v0, v1, [F

    .line 209
    .line 210
    fill-array-data v0, :array_1

    .line 211
    .line 212
    .line 213
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:[F

    .line 214
    .line 215
    filled-new-array {v13, v13}, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 220
    .line 221
    filled-new-array {v13, v13}, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 226
    .line 227
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    nop

    .line 253
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    nop

    .line 259
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 61

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 24
    .line 25
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 30
    .line 31
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 36
    .line 37
    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 38
    .line 39
    iget-object v14, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 40
    .line 41
    iget-boolean v15, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 42
    .line 43
    move-object/from16 v16, v10

    .line 44
    .line 45
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->k:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    .line 47
    move/from16 v17, v15

    .line 48
    .line 49
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    .line 50
    .line 51
    move-object/from16 v18, v15

    .line 52
    .line 53
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 54
    .line 55
    move-object/from16 v19, v12

    .line 56
    .line 57
    const/16 v21, 0x1

    .line 58
    .line 59
    if-eqz v17, :cond_3

    .line 60
    .line 61
    const/16 v17, 0x0

    .line 62
    .line 63
    iget-boolean v12, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 64
    .line 65
    if-eqz v12, :cond_3

    .line 66
    .line 67
    iget-object v12, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 68
    .line 69
    move-object/from16 v22, v8

    .line 70
    .line 71
    iget-object v8, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 72
    .line 73
    iget-boolean v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 74
    .line 75
    if-eqz v12, :cond_4

    .line 76
    .line 77
    iget-boolean v12, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 78
    .line 79
    if-eqz v12, :cond_4

    .line 80
    .line 81
    iget v2, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 82
    .line 83
    invoke-virtual {v1, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 84
    .line 85
    .line 86
    iget v2, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 87
    .line 88
    invoke-virtual {v1, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 92
    .line 93
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 94
    .line 95
    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 96
    .line 97
    .line 98
    iget v2, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 99
    .line 100
    invoke-virtual {v1, v9, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 104
    .line 105
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 106
    .line 107
    invoke-virtual {v1, v11, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 111
    .line 112
    if-eqz v2, :cond_42

    .line 113
    .line 114
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 115
    .line 116
    aget-object v3, v2, v17

    .line 117
    .line 118
    if-ne v3, v10, :cond_0

    .line 119
    .line 120
    move/from16 v3, v21

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move/from16 v3, v17

    .line 124
    .line 125
    :goto_0
    aget-object v2, v2, v21

    .line 126
    .line 127
    if-ne v2, v10, :cond_1

    .line 128
    .line 129
    move/from16 v2, v21

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    move/from16 v2, v17

    .line 133
    .line 134
    :goto_1
    if-eqz v3, :cond_2

    .line 135
    .line 136
    aget-boolean v3, v18, v17

    .line 137
    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_2

    .line 145
    .line 146
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 147
    .line 148
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    move/from16 v6, v17

    .line 155
    .line 156
    const/16 v4, 0x8

    .line 157
    .line 158
    invoke-virtual {v1, v3, v5, v6, v4}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 159
    .line 160
    .line 161
    :cond_2
    if-eqz v2, :cond_42

    .line 162
    .line 163
    aget-boolean v2, v18, v21

    .line 164
    .line 165
    if-eqz v2, :cond_42

    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_42

    .line 172
    .line 173
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 174
    .line 175
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/16 v4, 0x8

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    invoke-virtual {v1, v0, v9, v6, v4}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    move-object/from16 v22, v8

    .line 189
    .line 190
    :cond_4
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 191
    .line 192
    if-eqz v8, :cond_d

    .line 193
    .line 194
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 195
    .line 196
    const/4 v12, 0x0

    .line 197
    aget-object v13, v8, v12

    .line 198
    .line 199
    if-ne v13, v10, :cond_5

    .line 200
    .line 201
    move/from16 v13, v21

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    move v13, v12

    .line 205
    :goto_2
    aget-object v8, v8, v21

    .line 206
    .line 207
    if-ne v8, v10, :cond_6

    .line 208
    .line 209
    move/from16 v8, v21

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_6
    move v8, v12

    .line 213
    :goto_3
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(I)Z

    .line 214
    .line 215
    .line 216
    move-result v17

    .line 217
    if-eqz v17, :cond_7

    .line 218
    .line 219
    move-object/from16 v23, v7

    .line 220
    .line 221
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 222
    .line 223
    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 224
    .line 225
    invoke-virtual {v7, v0, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->z(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 226
    .line 227
    .line 228
    move/from16 v7, v21

    .line 229
    .line 230
    move v12, v7

    .line 231
    goto :goto_4

    .line 232
    :cond_7
    move-object/from16 v23, v7

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    move/from16 v12, v21

    .line 239
    .line 240
    :goto_4
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(I)Z

    .line 241
    .line 242
    .line 243
    move-result v21

    .line 244
    if-eqz v21, :cond_8

    .line 245
    .line 246
    move/from16 v24, v7

    .line 247
    .line 248
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 249
    .line 250
    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 251
    .line 252
    invoke-virtual {v7, v0, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->z(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 253
    .line 254
    .line 255
    const/4 v7, 0x1

    .line 256
    goto :goto_5

    .line 257
    :cond_8
    move/from16 v24, v7

    .line 258
    .line 259
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    :goto_5
    if-nez v24, :cond_a

    .line 264
    .line 265
    if-eqz v13, :cond_a

    .line 266
    .line 267
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 268
    .line 269
    move/from16 v25, v7

    .line 270
    .line 271
    const/16 v7, 0x8

    .line 272
    .line 273
    if-eq v12, v7, :cond_9

    .line 274
    .line 275
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 276
    .line 277
    if-nez v7, :cond_9

    .line 278
    .line 279
    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 280
    .line 281
    if-nez v7, :cond_9

    .line 282
    .line 283
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 284
    .line 285
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 286
    .line 287
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    move-object/from16 v26, v2

    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    const/4 v12, 0x1

    .line 295
    invoke-virtual {v1, v7, v5, v2, v12}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_9
    move-object/from16 v26, v2

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_a
    move-object/from16 v26, v2

    .line 303
    .line 304
    move/from16 v25, v7

    .line 305
    .line 306
    :goto_6
    if-nez v25, :cond_c

    .line 307
    .line 308
    if-eqz v8, :cond_c

    .line 309
    .line 310
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 311
    .line 312
    const/16 v7, 0x8

    .line 313
    .line 314
    if-eq v2, v7, :cond_c

    .line 315
    .line 316
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 317
    .line 318
    if-nez v2, :cond_c

    .line 319
    .line 320
    move-object/from16 v2, v22

    .line 321
    .line 322
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 323
    .line 324
    if-nez v7, :cond_b

    .line 325
    .line 326
    if-nez v16, :cond_b

    .line 327
    .line 328
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 329
    .line 330
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 331
    .line 332
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    move-object/from16 v22, v2

    .line 337
    .line 338
    const/4 v2, 0x0

    .line 339
    const/4 v12, 0x1

    .line 340
    invoke-virtual {v1, v7, v9, v2, v12}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_b
    move-object/from16 v22, v2

    .line 345
    .line 346
    :cond_c
    :goto_7
    move-object v7, v4

    .line 347
    move v4, v8

    .line 348
    move-object/from16 v2, v18

    .line 349
    .line 350
    move-object/from16 v8, v19

    .line 351
    .line 352
    move/from16 v18, v24

    .line 353
    .line 354
    move/from16 v19, v25

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_d
    move-object/from16 v26, v2

    .line 358
    .line 359
    move-object/from16 v23, v7

    .line 360
    .line 361
    move-object v7, v4

    .line 362
    move-object/from16 v2, v18

    .line 363
    .line 364
    move-object/from16 v8, v19

    .line 365
    .line 366
    const/4 v4, 0x0

    .line 367
    const/4 v13, 0x0

    .line 368
    const/16 v18, 0x0

    .line 369
    .line 370
    const/16 v19, 0x0

    .line 371
    .line 372
    :goto_8
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 373
    .line 374
    move-object/from16 v24, v2

    .line 375
    .line 376
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 377
    .line 378
    if-ge v12, v2, :cond_e

    .line 379
    .line 380
    move/from16 v25, v2

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_e
    move/from16 v25, v12

    .line 384
    .line 385
    :goto_9
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 386
    .line 387
    move/from16 v27, v4

    .line 388
    .line 389
    iget v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 390
    .line 391
    if-ge v2, v4, :cond_f

    .line 392
    .line 393
    move/from16 v28, v4

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_f
    move/from16 v28, v2

    .line 397
    .line 398
    :goto_a
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 399
    .line 400
    move-object/from16 v29, v4

    .line 401
    .line 402
    const/16 v17, 0x0

    .line 403
    .line 404
    aget-object v4, v29, v17

    .line 405
    .line 406
    move-object/from16 v30, v6

    .line 407
    .line 408
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 409
    .line 410
    if-eq v4, v6, :cond_10

    .line 411
    .line 412
    const/16 v31, 0x1

    .line 413
    .line 414
    :goto_b
    move-object/from16 v32, v7

    .line 415
    .line 416
    const/16 v21, 0x1

    .line 417
    .line 418
    goto :goto_c

    .line 419
    :cond_10
    const/16 v31, 0x0

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :goto_c
    aget-object v7, v29, v21

    .line 423
    .line 424
    if-eq v7, v6, :cond_11

    .line 425
    .line 426
    const/16 v33, 0x1

    .line 427
    .line 428
    :goto_d
    move-object/from16 v34, v8

    .line 429
    .line 430
    goto :goto_e

    .line 431
    :cond_11
    const/16 v33, 0x0

    .line 432
    .line 433
    goto :goto_d

    .line 434
    :goto_e
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 435
    .line 436
    iput v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 437
    .line 438
    move-object/from16 v35, v9

    .line 439
    .line 440
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 441
    .line 442
    iput v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 443
    .line 444
    move/from16 v36, v9

    .line 445
    .line 446
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 447
    .line 448
    move/from16 v37, v9

    .line 449
    .line 450
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 451
    .line 452
    const/16 v38, 0x0

    .line 453
    .line 454
    cmpl-float v38, v36, v38

    .line 455
    .line 456
    move/from16 v39, v9

    .line 457
    .line 458
    const/high16 v40, 0x3f800000    # 1.0f

    .line 459
    .line 460
    if-lez v38, :cond_25

    .line 461
    .line 462
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 463
    .line 464
    move-object/from16 v41, v11

    .line 465
    .line 466
    const/16 v11, 0x8

    .line 467
    .line 468
    if-eq v9, v11, :cond_24

    .line 469
    .line 470
    const/4 v9, 0x3

    .line 471
    if-ne v4, v6, :cond_12

    .line 472
    .line 473
    if-nez v37, :cond_12

    .line 474
    .line 475
    move v11, v9

    .line 476
    goto :goto_f

    .line 477
    :cond_12
    move/from16 v11, v37

    .line 478
    .line 479
    :goto_f
    if-ne v7, v6, :cond_13

    .line 480
    .line 481
    if-nez v39, :cond_13

    .line 482
    .line 483
    move/from16 v42, v9

    .line 484
    .line 485
    goto :goto_10

    .line 486
    :cond_13
    move/from16 v42, v39

    .line 487
    .line 488
    :goto_10
    if-ne v4, v6, :cond_1e

    .line 489
    .line 490
    if-ne v7, v6, :cond_1e

    .line 491
    .line 492
    if-ne v11, v9, :cond_1e

    .line 493
    .line 494
    move/from16 v43, v13

    .line 495
    .line 496
    move/from16 v13, v42

    .line 497
    .line 498
    if-ne v13, v9, :cond_1f

    .line 499
    .line 500
    const/4 v9, -0x1

    .line 501
    if-ne v8, v9, :cond_15

    .line 502
    .line 503
    if-eqz v31, :cond_14

    .line 504
    .line 505
    if-nez v33, :cond_14

    .line 506
    .line 507
    const/4 v2, 0x0

    .line 508
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_14
    if-nez v31, :cond_15

    .line 512
    .line 513
    if-eqz v33, :cond_15

    .line 514
    .line 515
    const/4 v12, 0x1

    .line 516
    iput v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 517
    .line 518
    if-ne v8, v9, :cond_15

    .line 519
    .line 520
    div-float v9, v40, v36

    .line 521
    .line 522
    iput v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 523
    .line 524
    :cond_15
    :goto_11
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 525
    .line 526
    if-nez v2, :cond_17

    .line 527
    .line 528
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    if-eqz v2, :cond_16

    .line 533
    .line 534
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-nez v2, :cond_17

    .line 539
    .line 540
    :cond_16
    const/4 v12, 0x1

    .line 541
    goto :goto_12

    .line 542
    :cond_17
    const/4 v12, 0x1

    .line 543
    goto :goto_13

    .line 544
    :goto_12
    iput v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 545
    .line 546
    goto :goto_14

    .line 547
    :goto_13
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 548
    .line 549
    if-ne v2, v12, :cond_19

    .line 550
    .line 551
    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_18

    .line 556
    .line 557
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    if-nez v2, :cond_19

    .line 562
    .line 563
    :cond_18
    const/4 v2, 0x0

    .line 564
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 565
    .line 566
    :cond_19
    :goto_14
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 567
    .line 568
    const/4 v9, -0x1

    .line 569
    if-ne v2, v9, :cond_1c

    .line 570
    .line 571
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_1a

    .line 576
    .line 577
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-eqz v2, :cond_1a

    .line 582
    .line 583
    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    if-eqz v2, :cond_1a

    .line 588
    .line 589
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-nez v2, :cond_1c

    .line 594
    .line 595
    :cond_1a
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_1b

    .line 600
    .line 601
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    if-eqz v2, :cond_1b

    .line 606
    .line 607
    const/4 v2, 0x0

    .line 608
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 609
    .line 610
    goto :goto_15

    .line 611
    :cond_1b
    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_1c

    .line 616
    .line 617
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_1c

    .line 622
    .line 623
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 624
    .line 625
    div-float v9, v40, v2

    .line 626
    .line 627
    iput v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 628
    .line 629
    const/4 v12, 0x1

    .line 630
    iput v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 631
    .line 632
    :cond_1c
    :goto_15
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 633
    .line 634
    const/4 v9, -0x1

    .line 635
    if-ne v2, v9, :cond_20

    .line 636
    .line 637
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 638
    .line 639
    if-lez v2, :cond_1d

    .line 640
    .line 641
    iget v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 642
    .line 643
    if-nez v4, :cond_1d

    .line 644
    .line 645
    const/4 v6, 0x0

    .line 646
    iput v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 647
    .line 648
    goto :goto_17

    .line 649
    :cond_1d
    if-nez v2, :cond_20

    .line 650
    .line 651
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 652
    .line 653
    if-lez v2, :cond_20

    .line 654
    .line 655
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 656
    .line 657
    div-float v9, v40, v2

    .line 658
    .line 659
    iput v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 660
    .line 661
    const/4 v12, 0x1

    .line 662
    iput v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 663
    .line 664
    goto :goto_17

    .line 665
    :cond_1e
    move/from16 v43, v13

    .line 666
    .line 667
    move/from16 v13, v42

    .line 668
    .line 669
    :cond_1f
    if-ne v4, v6, :cond_22

    .line 670
    .line 671
    const/4 v9, 0x3

    .line 672
    if-ne v11, v9, :cond_22

    .line 673
    .line 674
    const/4 v9, 0x0

    .line 675
    iput v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 676
    .line 677
    int-to-float v2, v2

    .line 678
    mul-float v9, v36, v2

    .line 679
    .line 680
    float-to-int v2, v9

    .line 681
    move/from16 v25, v2

    .line 682
    .line 683
    if-eq v7, v6, :cond_20

    .line 684
    .line 685
    move-object/from16 v2, v22

    .line 686
    .line 687
    const/4 v9, 0x4

    .line 688
    const/16 v30, 0x0

    .line 689
    .line 690
    :goto_16
    move/from16 v22, v13

    .line 691
    .line 692
    goto :goto_1b

    .line 693
    :cond_20
    :goto_17
    move v9, v11

    .line 694
    move-object/from16 v2, v22

    .line 695
    .line 696
    :cond_21
    const/16 v30, 0x1

    .line 697
    .line 698
    goto :goto_16

    .line 699
    :cond_22
    if-ne v7, v6, :cond_20

    .line 700
    .line 701
    const/4 v9, 0x3

    .line 702
    if-ne v13, v9, :cond_20

    .line 703
    .line 704
    const/4 v2, 0x1

    .line 705
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 706
    .line 707
    const/4 v9, -0x1

    .line 708
    if-ne v8, v9, :cond_23

    .line 709
    .line 710
    div-float v9, v40, v36

    .line 711
    .line 712
    iput v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 713
    .line 714
    :cond_23
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 715
    .line 716
    int-to-float v7, v12

    .line 717
    mul-float/2addr v2, v7

    .line 718
    float-to-int v2, v2

    .line 719
    move/from16 v28, v2

    .line 720
    .line 721
    move v9, v11

    .line 722
    move-object/from16 v2, v22

    .line 723
    .line 724
    if-eq v4, v6, :cond_21

    .line 725
    .line 726
    const/16 v22, 0x4

    .line 727
    .line 728
    :goto_18
    const/16 v30, 0x0

    .line 729
    .line 730
    goto :goto_1b

    .line 731
    :cond_24
    :goto_19
    move/from16 v43, v13

    .line 732
    .line 733
    goto :goto_1a

    .line 734
    :cond_25
    move-object/from16 v41, v11

    .line 735
    .line 736
    goto :goto_19

    .line 737
    :goto_1a
    move-object/from16 v2, v22

    .line 738
    .line 739
    move/from16 v9, v37

    .line 740
    .line 741
    move/from16 v22, v39

    .line 742
    .line 743
    goto :goto_18

    .line 744
    :goto_1b
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    .line 745
    .line 746
    const/16 v17, 0x0

    .line 747
    .line 748
    aput v9, v4, v17

    .line 749
    .line 750
    const/16 v21, 0x1

    .line 751
    .line 752
    aput v22, v4, v21

    .line 753
    .line 754
    if-eqz v30, :cond_27

    .line 755
    .line 756
    iget v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 757
    .line 758
    const/4 v6, -0x1

    .line 759
    if-eqz v4, :cond_26

    .line 760
    .line 761
    if-ne v4, v6, :cond_28

    .line 762
    .line 763
    :cond_26
    const/4 v4, 0x1

    .line 764
    :goto_1c
    const/16 v17, 0x0

    .line 765
    .line 766
    goto :goto_1d

    .line 767
    :cond_27
    const/4 v6, -0x1

    .line 768
    :cond_28
    const/4 v4, 0x0

    .line 769
    goto :goto_1c

    .line 770
    :goto_1d
    aget-object v7, v29, v17

    .line 771
    .line 772
    if-ne v7, v10, :cond_29

    .line 773
    .line 774
    instance-of v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 775
    .line 776
    if-eqz v7, :cond_29

    .line 777
    .line 778
    move/from16 v21, v9

    .line 779
    .line 780
    const/4 v9, 0x1

    .line 781
    :goto_1e
    const/4 v12, 0x1

    .line 782
    goto :goto_1f

    .line 783
    :cond_29
    move/from16 v21, v9

    .line 784
    .line 785
    const/4 v9, 0x0

    .line 786
    goto :goto_1e

    .line 787
    :goto_1f
    if-eqz v9, :cond_2a

    .line 788
    .line 789
    const/4 v13, 0x0

    .line 790
    goto :goto_20

    .line 791
    :cond_2a
    move/from16 v13, v25

    .line 792
    .line 793
    :goto_20
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 794
    .line 795
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 796
    .line 797
    .line 798
    move-result v8

    .line 799
    xor-int/lit8 v26, v8, 0x1

    .line 800
    .line 801
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:[Z

    .line 802
    .line 803
    const/16 v11, 0x8

    .line 804
    .line 805
    const/16 v17, 0x0

    .line 806
    .line 807
    aget-boolean v20, v8, v17

    .line 808
    .line 809
    aget-boolean v31, v8, v12

    .line 810
    .line 811
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    .line 812
    .line 813
    move-object/from16 v25, v2

    .line 814
    .line 815
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:[I

    .line 816
    .line 817
    move-object/from16 v32, v2

    .line 818
    .line 819
    const/4 v2, 0x2

    .line 820
    const/16 v33, 0x0

    .line 821
    .line 822
    if-eq v8, v2, :cond_30

    .line 823
    .line 824
    move-object/from16 v8, v34

    .line 825
    .line 826
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 827
    .line 828
    iget-boolean v2, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 829
    .line 830
    if-eqz v2, :cond_2d

    .line 831
    .line 832
    iget-boolean v2, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 833
    .line 834
    if-nez v2, :cond_2b

    .line 835
    .line 836
    goto :goto_21

    .line 837
    :cond_2b
    iget v2, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 838
    .line 839
    invoke-virtual {v1, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 840
    .line 841
    .line 842
    iget v2, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 843
    .line 844
    invoke-virtual {v1, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 845
    .line 846
    .line 847
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 848
    .line 849
    if-eqz v2, :cond_2c

    .line 850
    .line 851
    if-eqz v43, :cond_2c

    .line 852
    .line 853
    const/4 v2, 0x0

    .line 854
    aget-boolean v4, v24, v2

    .line 855
    .line 856
    if-eqz v4, :cond_2c

    .line 857
    .line 858
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()Z

    .line 859
    .line 860
    .line 861
    move-result v4

    .line 862
    if-nez v4, :cond_2c

    .line 863
    .line 864
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 865
    .line 866
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 867
    .line 868
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-virtual {v1, v4, v5, v2, v11}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 873
    .line 874
    .line 875
    :cond_2c
    move-object/from16 v50, v3

    .line 876
    .line 877
    move-object/from16 v51, v5

    .line 878
    .line 879
    move-object/from16 v46, v7

    .line 880
    .line 881
    move-object/from16 v55, v10

    .line 882
    .line 883
    move-object v2, v15

    .line 884
    move-object/from16 v58, v16

    .line 885
    .line 886
    move-object/from16 v52, v23

    .line 887
    .line 888
    move-object/from16 v57, v25

    .line 889
    .line 890
    move/from16 v4, v27

    .line 891
    .line 892
    move-object/from16 v53, v35

    .line 893
    .line 894
    move-object/from16 v54, v41

    .line 895
    .line 896
    move/from16 v3, v43

    .line 897
    .line 898
    move-object/from16 v27, v24

    .line 899
    .line 900
    goto/16 :goto_25

    .line 901
    .line 902
    :cond_2d
    :goto_21
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 903
    .line 904
    if-eqz v2, :cond_2e

    .line 905
    .line 906
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 907
    .line 908
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    goto :goto_22

    .line 913
    :cond_2e
    move-object/from16 v2, v33

    .line 914
    .line 915
    :goto_22
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 916
    .line 917
    if-eqz v8, :cond_2f

    .line 918
    .line 919
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 920
    .line 921
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 922
    .line 923
    .line 924
    move-result-object v8

    .line 925
    :goto_23
    move-object v14, v5

    .line 926
    const/16 v17, 0x0

    .line 927
    .line 928
    goto :goto_24

    .line 929
    :cond_2f
    move-object/from16 v8, v33

    .line 930
    .line 931
    goto :goto_23

    .line 932
    :goto_24
    aget-boolean v5, v24, v17

    .line 933
    .line 934
    move/from16 v38, v6

    .line 935
    .line 936
    move-object v6, v8

    .line 937
    aget-object v8, v29, v17

    .line 938
    .line 939
    move/from16 v36, v12

    .line 940
    .line 941
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 942
    .line 943
    move-object/from16 v37, v14

    .line 944
    .line 945
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 946
    .line 947
    move-object/from16 v39, v15

    .line 948
    .line 949
    aget v15, v32, v17

    .line 950
    .line 951
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 952
    .line 953
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 954
    .line 955
    move/from16 v44, v1

    .line 956
    .line 957
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 958
    .line 959
    move/from16 v45, v1

    .line 960
    .line 961
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 962
    .line 963
    move-object/from16 v46, v7

    .line 964
    .line 965
    move-object v7, v2

    .line 966
    const/4 v2, 0x1

    .line 967
    move-object/from16 v47, v10

    .line 968
    .line 969
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 970
    .line 971
    move-object/from16 v48, v16

    .line 972
    .line 973
    move/from16 v16, v11

    .line 974
    .line 975
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 976
    .line 977
    move-object/from16 v50, v3

    .line 978
    .line 979
    move/from16 v17, v4

    .line 980
    .line 981
    move-object/from16 v52, v23

    .line 982
    .line 983
    move-object/from16 v57, v25

    .line 984
    .line 985
    move/from16 v4, v27

    .line 986
    .line 987
    move-object/from16 v53, v35

    .line 988
    .line 989
    move-object/from16 v51, v37

    .line 990
    .line 991
    move-object/from16 v56, v39

    .line 992
    .line 993
    move-object/from16 v54, v41

    .line 994
    .line 995
    move/from16 v3, v43

    .line 996
    .line 997
    move/from16 v23, v44

    .line 998
    .line 999
    move-object/from16 v55, v47

    .line 1000
    .line 1001
    move-object/from16 v58, v48

    .line 1002
    .line 1003
    move/from16 v25, v1

    .line 1004
    .line 1005
    move-object/from16 v27, v24

    .line 1006
    .line 1007
    move/from16 v24, v45

    .line 1008
    .line 1009
    move-object/from16 v1, p1

    .line 1010
    .line 1011
    invoke-virtual/range {v0 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V

    .line 1012
    .line 1013
    .line 1014
    move-object/from16 v2, v56

    .line 1015
    .line 1016
    goto :goto_25

    .line 1017
    :cond_30
    move-object/from16 v50, v3

    .line 1018
    .line 1019
    move-object/from16 v51, v5

    .line 1020
    .line 1021
    move-object/from16 v46, v7

    .line 1022
    .line 1023
    move-object/from16 v55, v10

    .line 1024
    .line 1025
    move-object/from16 v58, v16

    .line 1026
    .line 1027
    move-object/from16 v52, v23

    .line 1028
    .line 1029
    move-object/from16 v57, v25

    .line 1030
    .line 1031
    move/from16 v4, v27

    .line 1032
    .line 1033
    move-object/from16 v53, v35

    .line 1034
    .line 1035
    move-object/from16 v54, v41

    .line 1036
    .line 1037
    move/from16 v3, v43

    .line 1038
    .line 1039
    move-object/from16 v27, v24

    .line 1040
    .line 1041
    move-object v2, v15

    .line 1042
    :goto_25
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 1043
    .line 1044
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 1045
    .line 1046
    iget-boolean v7, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 1047
    .line 1048
    if-eqz v7, :cond_33

    .line 1049
    .line 1050
    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 1051
    .line 1052
    if-eqz v7, :cond_33

    .line 1053
    .line 1054
    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 1055
    .line 1056
    move-object/from16 v7, v52

    .line 1057
    .line 1058
    invoke-virtual {v1, v7, v5}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1059
    .line 1060
    .line 1061
    iget v5, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 1062
    .line 1063
    move-object/from16 v6, v53

    .line 1064
    .line 1065
    invoke-virtual {v1, v6, v5}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1066
    .line 1067
    .line 1068
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 1069
    .line 1070
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 1071
    .line 1072
    move-object/from16 v5, v54

    .line 1073
    .line 1074
    invoke-virtual {v1, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1075
    .line 1076
    .line 1077
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1078
    .line 1079
    if-eqz v2, :cond_32

    .line 1080
    .line 1081
    if-nez v19, :cond_32

    .line 1082
    .line 1083
    if-eqz v4, :cond_32

    .line 1084
    .line 1085
    const/4 v8, 0x1

    .line 1086
    aget-boolean v9, v27, v8

    .line 1087
    .line 1088
    if-eqz v9, :cond_31

    .line 1089
    .line 1090
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1091
    .line 1092
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    const/4 v9, 0x0

    .line 1097
    const/16 v11, 0x8

    .line 1098
    .line 1099
    invoke-virtual {v1, v2, v6, v9, v11}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 1100
    .line 1101
    .line 1102
    goto :goto_27

    .line 1103
    :cond_31
    :goto_26
    const/4 v9, 0x0

    .line 1104
    const/16 v11, 0x8

    .line 1105
    .line 1106
    goto :goto_27

    .line 1107
    :cond_32
    const/4 v8, 0x1

    .line 1108
    goto :goto_26

    .line 1109
    :goto_27
    move v12, v9

    .line 1110
    goto :goto_28

    .line 1111
    :cond_33
    move-object/from16 v7, v52

    .line 1112
    .line 1113
    move-object/from16 v6, v53

    .line 1114
    .line 1115
    move-object/from16 v5, v54

    .line 1116
    .line 1117
    const/4 v8, 0x1

    .line 1118
    const/4 v9, 0x0

    .line 1119
    const/16 v11, 0x8

    .line 1120
    .line 1121
    move v12, v8

    .line 1122
    :goto_28
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    .line 1123
    .line 1124
    const/4 v10, 0x2

    .line 1125
    if-ne v2, v10, :cond_34

    .line 1126
    .line 1127
    move v12, v9

    .line 1128
    :cond_34
    if-eqz v12, :cond_3f

    .line 1129
    .line 1130
    aget-object v2, v29, v8

    .line 1131
    .line 1132
    move-object/from16 v10, v55

    .line 1133
    .line 1134
    if-ne v2, v10, :cond_35

    .line 1135
    .line 1136
    instance-of v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1137
    .line 1138
    if-eqz v2, :cond_35

    .line 1139
    .line 1140
    move v12, v8

    .line 1141
    goto :goto_29

    .line 1142
    :cond_35
    move v12, v9

    .line 1143
    :goto_29
    if-eqz v12, :cond_36

    .line 1144
    .line 1145
    move v13, v9

    .line 1146
    goto :goto_2a

    .line 1147
    :cond_36
    move/from16 v13, v28

    .line 1148
    .line 1149
    :goto_2a
    if-eqz v30, :cond_38

    .line 1150
    .line 1151
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 1152
    .line 1153
    if-eq v2, v8, :cond_37

    .line 1154
    .line 1155
    const/4 v10, -0x1

    .line 1156
    if-ne v2, v10, :cond_38

    .line 1157
    .line 1158
    :cond_37
    move/from16 v17, v8

    .line 1159
    .line 1160
    goto :goto_2b

    .line 1161
    :cond_38
    move/from16 v17, v9

    .line 1162
    .line 1163
    :goto_2b
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1164
    .line 1165
    if-eqz v2, :cond_39

    .line 1166
    .line 1167
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1168
    .line 1169
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    goto :goto_2c

    .line 1174
    :cond_39
    move-object/from16 v2, v33

    .line 1175
    .line 1176
    :goto_2c
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1177
    .line 1178
    if-eqz v10, :cond_3a

    .line 1179
    .line 1180
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1181
    .line 1182
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v33

    .line 1186
    :cond_3a
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 1187
    .line 1188
    if-gtz v10, :cond_3b

    .line 1189
    .line 1190
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 1191
    .line 1192
    if-ne v14, v11, :cond_3e

    .line 1193
    .line 1194
    :cond_3b
    invoke-virtual {v1, v5, v7, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 1195
    .line 1196
    .line 1197
    move-object/from16 v10, v58

    .line 1198
    .line 1199
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1200
    .line 1201
    if-eqz v10, :cond_3d

    .line 1202
    .line 1203
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v10

    .line 1207
    invoke-virtual {v1, v5, v10, v9, v11}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 1208
    .line 1209
    .line 1210
    if-eqz v4, :cond_3c

    .line 1211
    .line 1212
    move-object/from16 v5, v57

    .line 1213
    .line 1214
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v5

    .line 1218
    const/4 v10, 0x5

    .line 1219
    invoke-virtual {v1, v2, v5, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 1220
    .line 1221
    .line 1222
    :cond_3c
    move/from16 v26, v9

    .line 1223
    .line 1224
    goto :goto_2d

    .line 1225
    :cond_3d
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 1226
    .line 1227
    if-ne v10, v11, :cond_3e

    .line 1228
    .line 1229
    invoke-virtual {v1, v5, v7, v9, v11}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 1230
    .line 1231
    .line 1232
    :cond_3e
    :goto_2d
    aget-boolean v5, v27, v8

    .line 1233
    .line 1234
    aget-object v9, v29, v8

    .line 1235
    .line 1236
    move/from16 v49, v8

    .line 1237
    .line 1238
    move-object v8, v9

    .line 1239
    move v9, v12

    .line 1240
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 1241
    .line 1242
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 1243
    .line 1244
    aget v15, v32, v49

    .line 1245
    .line 1246
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 1247
    .line 1248
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 1249
    .line 1250
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 1251
    .line 1252
    move/from16 v24, v1

    .line 1253
    .line 1254
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    .line 1255
    .line 1256
    move-object/from16 v52, v7

    .line 1257
    .line 1258
    move-object v7, v2

    .line 1259
    const/4 v2, 0x0

    .line 1260
    move/from16 v16, v10

    .line 1261
    .line 1262
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1263
    .line 1264
    move/from16 v23, v11

    .line 1265
    .line 1266
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1267
    .line 1268
    move/from16 v20, v4

    .line 1269
    .line 1270
    move v4, v3

    .line 1271
    move/from16 v3, v20

    .line 1272
    .line 1273
    move/from16 v20, v19

    .line 1274
    .line 1275
    move/from16 v19, v18

    .line 1276
    .line 1277
    move/from16 v18, v20

    .line 1278
    .line 1279
    move/from16 v20, v22

    .line 1280
    .line 1281
    move/from16 v22, v21

    .line 1282
    .line 1283
    move/from16 v21, v20

    .line 1284
    .line 1285
    move/from16 v25, v1

    .line 1286
    .line 1287
    move-object/from16 v60, v6

    .line 1288
    .line 1289
    move/from16 v20, v31

    .line 1290
    .line 1291
    move-object/from16 v6, v33

    .line 1292
    .line 1293
    move-object/from16 v59, v52

    .line 1294
    .line 1295
    move-object/from16 v1, p1

    .line 1296
    .line 1297
    invoke-virtual/range {v0 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V

    .line 1298
    .line 1299
    .line 1300
    goto :goto_2e

    .line 1301
    :cond_3f
    move-object/from16 v60, v6

    .line 1302
    .line 1303
    move-object/from16 v59, v7

    .line 1304
    .line 1305
    :goto_2e
    if-eqz v30, :cond_41

    .line 1306
    .line 1307
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 1308
    .line 1309
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 1310
    .line 1311
    const/high16 v4, -0x40800000    # -1.0f

    .line 1312
    .line 1313
    const/4 v12, 0x1

    .line 1314
    if-ne v2, v12, :cond_40

    .line 1315
    .line 1316
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    iget-object v5, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1321
    .line 1322
    move-object/from16 v6, v60

    .line 1323
    .line 1324
    invoke-interface {v5, v6, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1325
    .line 1326
    .line 1327
    iget-object v4, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1328
    .line 1329
    move-object/from16 v7, v59

    .line 1330
    .line 1331
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1332
    .line 1333
    invoke-interface {v4, v7, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1334
    .line 1335
    .line 1336
    iget-object v4, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1337
    .line 1338
    move-object/from16 v14, v51

    .line 1339
    .line 1340
    invoke-interface {v4, v14, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1341
    .line 1342
    .line 1343
    iget-object v4, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1344
    .line 1345
    neg-float v3, v3

    .line 1346
    move-object/from16 v8, v50

    .line 1347
    .line 1348
    invoke-interface {v4, v8, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1352
    .line 1353
    .line 1354
    goto :goto_2f

    .line 1355
    :cond_40
    move-object/from16 v8, v50

    .line 1356
    .line 1357
    move-object/from16 v14, v51

    .line 1358
    .line 1359
    move-object/from16 v7, v59

    .line 1360
    .line 1361
    move-object/from16 v6, v60

    .line 1362
    .line 1363
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1364
    .line 1365
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v2

    .line 1369
    iget-object v9, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1370
    .line 1371
    invoke-interface {v9, v14, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v4, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1375
    .line 1376
    invoke-interface {v4, v8, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1377
    .line 1378
    .line 1379
    iget-object v4, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1380
    .line 1381
    invoke-interface {v4, v6, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1382
    .line 1383
    .line 1384
    iget-object v4, v2, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1385
    .line 1386
    neg-float v3, v3

    .line 1387
    invoke-interface {v4, v7, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1391
    .line 1392
    .line 1393
    :cond_41
    :goto_2f
    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v2

    .line 1397
    if-eqz v2, :cond_42

    .line 1398
    .line 1399
    move-object/from16 v2, v46

    .line 1400
    .line 1401
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1402
    .line 1403
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1404
    .line 1405
    iget v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    .line 1406
    .line 1407
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1408
    .line 1409
    add-float/2addr v4, v5

    .line 1410
    float-to-double v4, v4

    .line 1411
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 1412
    .line 1413
    .line 1414
    move-result-wide v4

    .line 1415
    double-to-float v4, v4

    .line 1416
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    .line 1417
    .line 1418
    .line 1419
    move-result v2

    .line 1420
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1421
    .line 1422
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v6

    .line 1426
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6

    .line 1430
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1431
    .line 1432
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v8

    .line 1436
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v8

    .line 1440
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->l:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1441
    .line 1442
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v10

    .line 1446
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v10

    .line 1450
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1451
    .line 1452
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v5

    .line 1464
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v5

    .line 1468
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v7

    .line 1472
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v7

    .line 1476
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v9

    .line 1480
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v9

    .line 1484
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v3

    .line 1488
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v3

    .line 1492
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v11

    .line 1496
    float-to-double v12, v4

    .line 1497
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 1498
    .line 1499
    .line 1500
    move-result-wide v14

    .line 1501
    move-wide/from16 v16, v12

    .line 1502
    .line 1503
    int-to-double v12, v2

    .line 1504
    mul-double/2addr v14, v12

    .line 1505
    double-to-float v2, v14

    .line 1506
    iget-object v4, v11, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1507
    .line 1508
    const/high16 v14, 0x3f000000    # 0.5f

    .line 1509
    .line 1510
    invoke-interface {v4, v7, v14}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1511
    .line 1512
    .line 1513
    iget-object v4, v11, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1514
    .line 1515
    invoke-interface {v4, v3, v14}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1516
    .line 1517
    .line 1518
    iget-object v3, v11, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1519
    .line 1520
    const/high16 v4, -0x41000000    # -0.5f

    .line 1521
    .line 1522
    invoke-interface {v3, v8, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1523
    .line 1524
    .line 1525
    iget-object v3, v11, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1526
    .line 1527
    invoke-interface {v3, v0, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1528
    .line 1529
    .line 1530
    neg-float v0, v2

    .line 1531
    iput v0, v11, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 1532
    .line 1533
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    .line 1541
    .line 1542
    .line 1543
    move-result-wide v2

    .line 1544
    mul-double/2addr v2, v12

    .line 1545
    double-to-float v2, v2

    .line 1546
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1547
    .line 1548
    invoke-interface {v3, v5, v14}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1549
    .line 1550
    .line 1551
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1552
    .line 1553
    invoke-interface {v3, v9, v14}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1554
    .line 1555
    .line 1556
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1557
    .line 1558
    invoke-interface {v3, v6, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1559
    .line 1560
    .line 1561
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 1562
    .line 1563
    invoke-interface {v3, v10, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 1564
    .line 1565
    .line 1566
    neg-float v2, v2

    .line 1567
    iput v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->b:F

    .line 1568
    .line 1569
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1570
    .line 1571
    .line 1572
    :cond_42
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final c(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p14

    move/from16 v2, p15

    move/from16 v4, p23

    move/from16 v5, p24

    move/from16 v6, p25

    .line 1
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 2
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 3
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 4
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 5
    iget-object v15, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v15

    .line 7
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    move-result v16

    .line 8
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    move-result v17

    .line 9
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Z

    move-result v11

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v11, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v19, v11

    move/from16 v11, v18

    if-eqz p17, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    move/from16 v3, p21

    .line 10
    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v10, 0x1

    move-object/from16 v20, v15

    if-eqz v13, :cond_3

    if-eq v13, v10, :cond_3

    const/4 v10, 0x2

    if-eq v13, v10, :cond_4

    :cond_3
    :goto_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    const/4 v10, 0x4

    if-ne v3, v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v13, 0x1

    .line 11
    :goto_3
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    const/16 v15, 0x8

    if-ne v10, v15, :cond_6

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :cond_6
    move/from16 v10, p13

    :goto_4
    if-eqz p26, :cond_9

    if-nez v16, :cond_8

    if-nez v17, :cond_8

    if-nez v19, :cond_8

    move/from16 v15, p12

    .line 12
    invoke-virtual {v1, v7, v15}, Landroidx/constraintlayout/solver/LinearSystem;->d(Landroidx/constraintlayout/solver/SolverVariable;I)V

    :cond_7
    move/from16 p13, v13

    const/16 v13, 0x8

    goto :goto_5

    :cond_8
    if-eqz v16, :cond_7

    if-nez v17, :cond_7

    .line 13
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v15

    move/from16 p13, v13

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v15, v13}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_5

    :cond_9
    move/from16 p13, v13

    move v13, v15

    :goto_5
    if-nez p13, :cond_d

    if-eqz p9, :cond_b

    const/4 v6, 0x3

    const/4 v15, 0x0

    .line 14
    invoke-virtual {v1, v8, v7, v15, v6}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    if-lez v14, :cond_a

    .line 15
    invoke-virtual {v1, v8, v7, v14, v13}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_a
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_c

    .line 16
    invoke-virtual {v1, v8, v7, v2, v13}, Landroidx/constraintlayout/solver/LinearSystem;->g(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    .line 17
    :cond_b
    invoke-virtual {v1, v8, v7, v10, v13}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_c
    :goto_6
    move/from16 v10, p5

    move/from16 v15, p13

    move v13, v4

    goto/16 :goto_b

    :cond_d
    const/4 v2, 0x2

    if-eq v11, v2, :cond_10

    if-nez p17, :cond_10

    const/4 v2, 0x1

    if-eq v3, v2, :cond_e

    if-nez v3, :cond_10

    .line 18
    :cond_e
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v5, :cond_f

    .line 19
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_f
    const/16 v13, 0x8

    .line 20
    invoke-virtual {v1, v8, v7, v2, v13}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v10, p5

    move v13, v4

    :goto_7
    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_10
    const/4 v2, -0x2

    if-ne v4, v2, :cond_11

    move v4, v10

    :cond_11
    if-ne v5, v2, :cond_12

    move v5, v10

    :cond_12
    if-lez v10, :cond_13

    const/4 v2, 0x1

    if-eq v3, v2, :cond_13

    const/4 v10, 0x0

    :cond_13
    const/16 v13, 0x8

    if-lez v4, :cond_14

    .line 21
    invoke-virtual {v1, v8, v7, v4, v13}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 22
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_14
    const/4 v2, 0x1

    if-lez v5, :cond_16

    if-eqz p3, :cond_15

    if-ne v3, v2, :cond_15

    goto :goto_8

    .line 23
    :cond_15
    invoke-virtual {v1, v8, v7, v5, v13}, Landroidx/constraintlayout/solver/LinearSystem;->g(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 24
    :goto_8
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_16
    if-ne v3, v2, :cond_19

    if-eqz p3, :cond_17

    .line 25
    invoke-virtual {v1, v8, v7, v10, v13}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    :cond_17
    if-eqz p18, :cond_18

    const/4 v2, 0x5

    .line 26
    invoke-virtual {v1, v8, v7, v10, v2}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 27
    invoke-virtual {v1, v8, v7, v10, v13}, Landroidx/constraintlayout/solver/LinearSystem;->g(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    :cond_18
    const/4 v2, 0x5

    .line 28
    invoke-virtual {v1, v8, v7, v10, v2}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 29
    invoke-virtual {v1, v8, v7, v10, v13}, Landroidx/constraintlayout/solver/LinearSystem;->g(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    :cond_19
    const/4 v10, 0x2

    if-ne v3, v10, :cond_1c

    .line 30
    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 31
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v13, :cond_1b

    if-ne v2, v10, :cond_1a

    goto :goto_9

    .line 32
    :cond_1a
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 33
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->l:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    goto :goto_a

    .line 34
    :cond_1b
    :goto_9
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 35
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v13, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 36
    :goto_a
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v13

    .line 37
    iget-object v15, v13, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move/from16 p9, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {v15, v8, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 38
    iget-object v4, v13, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-interface {v4, v7, v15}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 39
    iget-object v4, v13, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v4, v10, v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 40
    iget-object v4, v13, Landroidx/constraintlayout/solver/ArrayRow;->d:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    neg-float v6, v6

    invoke-interface {v4, v2, v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->i(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 41
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    move/from16 v10, p5

    move/from16 v13, p9

    goto/16 :goto_7

    :cond_1c
    move/from16 p9, v4

    move/from16 v13, p9

    move/from16 v15, p13

    const/4 v10, 0x1

    :goto_b
    if-eqz p26, :cond_4c

    if-eqz p18, :cond_1d

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move/from16 p5, v10

    const/4 v4, 0x2

    move-object/from16 v10, p6

    goto/16 :goto_24

    :cond_1d
    if-nez v16, :cond_1e

    if-nez v17, :cond_1e

    if-nez v19, :cond_1e

    :goto_c
    move-object v7, v8

    move/from16 p5, v10

    move-object/from16 v6, v20

    goto/16 :goto_21

    :cond_1e
    if-eqz v16, :cond_1f

    if-nez v17, :cond_1f

    goto :goto_c

    :cond_1f
    if-nez v16, :cond_21

    if-eqz v17, :cond_21

    .line 42
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v6, v20

    const/16 v13, 0x8

    invoke-virtual {v1, v8, v6, v0, v13}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    if-eqz p3, :cond_20

    move-object/from16 v11, p6

    const/4 v2, 0x5

    const/4 v15, 0x0

    .line 43
    invoke-virtual {v1, v7, v11, v15, v2}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_20
    move-object v7, v8

    move/from16 p5, v10

    goto/16 :goto_21

    :cond_21
    move-object/from16 v11, p6

    move-object/from16 v6, v20

    if-eqz v16, :cond_20

    if-eqz v17, :cond_20

    .line 44
    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v4, p11

    .line 45
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move/from16 p5, v10

    .line 46
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v16, 0x6

    if-eqz v15, :cond_32

    if-nez v3, :cond_25

    if-nez v5, :cond_22

    if-nez v13, :cond_22

    const/4 v5, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x8

    const/16 v20, 0x8

    goto :goto_d

    :cond_22
    const/4 v5, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x5

    const/16 v20, 0x5

    .line 47
    :goto_d
    instance-of v4, v2, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v4, :cond_24

    instance-of v4, v1, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v4, :cond_23

    goto :goto_f

    :cond_23
    move/from16 v4, v16

    move/from16 v24, v19

    :goto_e
    move/from16 v19, v17

    move/from16 v17, v3

    const/4 v3, 0x0

    goto/16 :goto_18

    :cond_24
    :goto_f
    move/from16 v4, v16

    move/from16 v24, v19

    const/16 v20, 0x4

    goto :goto_e

    :cond_25
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    move/from16 v17, v3

    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x4

    :goto_10
    const/16 v24, 0x8

    goto/16 :goto_18

    :cond_26
    const/4 v4, 0x3

    if-ne v3, v4, :cond_31

    .line 48
    iget v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    move/from16 v17, v3

    const/4 v3, -0x1

    if-ne v4, v3, :cond_29

    if-eqz p19, :cond_28

    const/4 v3, 0x1

    if-eqz p3, :cond_27

    const/4 v4, 0x5

    :goto_11
    const/4 v5, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x5

    goto :goto_10

    :cond_27
    const/4 v4, 0x4

    goto :goto_11

    :cond_28
    const/4 v3, 0x1

    const/16 v4, 0x8

    goto :goto_11

    :cond_29
    if-eqz p17, :cond_2c

    move/from16 v3, p22

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    goto :goto_12

    :cond_2a
    const/16 v3, 0x8

    const/4 v4, 0x5

    goto :goto_13

    :cond_2b
    :goto_12
    const/4 v3, 0x5

    const/4 v4, 0x4

    :goto_13
    move/from16 v24, v3

    move/from16 v20, v4

    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v19, 0x1

    goto :goto_18

    :cond_2c
    if-lez v5, :cond_2d

    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x5

    :goto_14
    const/16 v24, 0x5

    goto :goto_18

    :cond_2d
    if-nez v5, :cond_30

    if-nez v13, :cond_30

    if-nez p19, :cond_2e

    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x8

    goto :goto_14

    :cond_2e
    if-eq v2, v10, :cond_2f

    if-eq v1, v10, :cond_2f

    const/4 v3, 0x4

    goto :goto_15

    :cond_2f
    const/4 v3, 0x5

    :goto_15
    move/from16 v24, v3

    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x4

    goto :goto_18

    :cond_30
    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/16 v19, 0x1

    :goto_16
    const/16 v20, 0x4

    goto :goto_14

    :cond_31
    move/from16 v17, v3

    move/from16 v4, v16

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_17
    const/16 v19, 0x0

    goto :goto_16

    :cond_32
    move/from16 v17, v3

    move/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_17

    :goto_18
    if-eqz v3, :cond_33

    if-ne v9, v6, :cond_33

    if-eq v2, v10, :cond_33

    const/16 v25, 0x0

    const/16 v26, 0x0

    goto :goto_19

    :cond_33
    move/from16 v25, v3

    const/16 v26, 0x1

    :goto_19
    if-eqz v5, :cond_35

    .line 49
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_34

    const/4 v4, 0x4

    .line 50
    :cond_34
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v3

    move-object/from16 v23, v2

    move-object v2, v7

    move-object v7, v8

    .line 51
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v8

    move/from16 p8, v4

    move v4, v3

    move-object v3, v9

    move/from16 v9, p8

    move v12, v5

    move/from16 p8, v13

    move/from16 p9, v15

    move/from16 v13, v17

    move-object/from16 v14, v23

    move/from16 v5, p16

    move-object v15, v1

    move-object/from16 v1, p1

    .line 52
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1a

    :cond_35
    move-object v14, v2

    move-object v2, v7

    move-object v7, v8

    move-object v3, v9

    move/from16 p8, v13

    move/from16 p9, v15

    move/from16 v13, v17

    const/16 v12, 0x8

    move-object v15, v1

    move-object/from16 v1, p1

    .line 53
    :goto_1a
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    if-ne v0, v12, :cond_36

    goto/16 :goto_28

    :cond_36
    if-eqz v25, :cond_39

    if-eqz p3, :cond_38

    if-eq v3, v6, :cond_38

    if-nez p9, :cond_38

    .line 54
    instance-of v0, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v0, :cond_37

    instance-of v0, v15, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v0, :cond_38

    :cond_37
    move/from16 v0, v16

    goto :goto_1b

    :cond_38
    move/from16 v0, v24

    .line 55
    :goto_1b
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 56
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v7, v6, v4, v0}, Landroidx/constraintlayout/solver/LinearSystem;->g(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v24, v0

    :cond_39
    if-eqz p3, :cond_3a

    if-eqz p20, :cond_3a

    .line 57
    instance-of v0, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v0, :cond_3a

    instance-of v0, v15, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v0, :cond_3a

    move/from16 v0, v16

    move v4, v0

    const/16 v21, 0x1

    goto :goto_1c

    :cond_3a
    move/from16 v0, v20

    move/from16 v4, v24

    move/from16 v21, v26

    :goto_1c
    if-eqz v21, :cond_46

    if-eqz v19, :cond_43

    if-eqz p19, :cond_3b

    if-eqz p4, :cond_43

    :cond_3b
    if-eq v14, v10, :cond_3d

    if-ne v15, v10, :cond_3c

    goto :goto_1d

    :cond_3c
    move/from16 v16, v0

    .line 58
    :cond_3d
    :goto_1d
    instance-of v5, v14, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v5, :cond_3e

    instance-of v5, v15, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v5, :cond_3f

    :cond_3e
    const/16 v16, 0x5

    .line 59
    :cond_3f
    instance-of v5, v14, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v5, :cond_40

    instance-of v5, v15, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v5, :cond_41

    :cond_40
    const/16 v16, 0x5

    :cond_41
    if-eqz p19, :cond_42

    const/4 v5, 0x5

    goto :goto_1e

    :cond_42
    move/from16 v5, v16

    .line 60
    :goto_1e
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_43
    if-eqz p3, :cond_45

    .line 61
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p17, :cond_45

    if-nez p19, :cond_45

    if-eq v14, v10, :cond_44

    if-ne v15, v10, :cond_45

    :cond_44
    const/4 v10, 0x4

    goto :goto_1f

    :cond_45
    move v10, v0

    .line 62
    :goto_1f
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0, v10}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 63
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v7, v6, v0, v10}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_46
    if-eqz p3, :cond_48

    if-ne v11, v3, :cond_47

    .line 64
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    goto :goto_20

    :cond_47
    const/4 v0, 0x0

    :goto_20
    if-eq v3, v11, :cond_48

    const/4 v3, 0x5

    .line 65
    invoke-virtual {v1, v2, v11, v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_48
    if-eqz p3, :cond_4a

    if-eqz p9, :cond_4a

    if-nez p14, :cond_4a

    if-nez p8, :cond_4a

    if-eqz p9, :cond_49

    const/4 v4, 0x3

    if-ne v13, v4, :cond_49

    const/16 v13, 0x8

    const/4 v15, 0x0

    .line 66
    invoke-virtual {v1, v7, v2, v15, v13}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_21

    :cond_49
    const/4 v15, 0x0

    const/4 v3, 0x5

    .line 67
    invoke-virtual {v1, v7, v2, v15, v3}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_4a
    :goto_21
    if-eqz p3, :cond_51

    if-eqz p5, :cond_51

    move-object/from16 v13, p11

    .line 68
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_4b

    .line 69
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v15

    :goto_22
    move-object/from16 v3, p7

    goto :goto_23

    :cond_4b
    const/4 v15, 0x0

    goto :goto_22

    :goto_23
    if-eq v6, v3, :cond_51

    const/4 v2, 0x5

    .line 70
    invoke-virtual {v1, v3, v7, v15, v2}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    return-void

    :cond_4c
    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move/from16 p5, v10

    move-object/from16 v10, p6

    const/4 v4, 0x2

    :goto_24
    if-ge v11, v4, :cond_51

    if-eqz p3, :cond_51

    if-eqz p5, :cond_51

    const/16 v13, 0x8

    const/4 v15, 0x0

    .line 71
    invoke-virtual {v1, v2, v10, v15, v13}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 72
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez p2, :cond_4e

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v2, :cond_4d

    goto :goto_25

    :cond_4d
    const/4 v15, 0x0

    goto :goto_26

    :cond_4e
    :goto_25
    const/4 v15, 0x1

    :goto_26
    if-nez p2, :cond_50

    .line 73
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_50

    .line 74
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 75
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4f

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v22, 0x0

    aget-object v2, v0, v22

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_4f

    const/16 v21, 0x1

    aget-object v0, v0, v21

    if-ne v0, v4, :cond_4f

    move/from16 v10, v21

    goto :goto_27

    :cond_4f
    const/4 v10, 0x0

    goto :goto_27

    :cond_50
    move v10, v15

    :goto_27
    if-eqz v10, :cond_51

    const/16 v13, 0x8

    const/4 v15, 0x0

    .line 76
    invoke-virtual {v1, v3, v7, v15, v13}, Landroidx/constraintlayout/solver/LinearSystem;->f(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_51
    :goto_28
    return-void
.end method

.method public final d(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/lang/AssertionError;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_3
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_4
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_5
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_6
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_7
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_8
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    aget-object p0, p0, p1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    aget-object p0, p0, v0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final g()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 10
    .line 11
    return p0
.end method

.method public final h(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 10
    .line 11
    if-ne v0, p0, :cond_1

    .line 12
    .line 13
    iget-object p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 26
    .line 27
    if-ne v0, p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final i(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 10
    .line 11
    if-ne v0, p0, :cond_1

    .line 12
    .line 13
    iget-object p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 26
    .line 27
    if-ne v0, p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final j()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 10
    .line 11
    return p0
.end method

.method public final k()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->j0:I

    .line 12
    .line 13
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 14
    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0

    .line 17
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 18
    .line 19
    return p0
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->k0:I

    .line 12
    .line 13
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 14
    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0

    .line 17
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 18
    .line 19
    return p0
.end method

.method public final m(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p4, p5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(I)Z
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 4
    .line 5
    aget-object v0, p0, p1

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    add-int/2addr p1, v0

    .line 17
    aget-object p0, p0, p1

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 24
    .line 25
    if-ne p1, p0, :cond_0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-ne v0, p0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-ne v0, p0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public q()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 49
    .line 50
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    .line 56
    .line 57
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 58
    .line 59
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 60
    .line 61
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 62
    .line 63
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 64
    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 66
    .line 67
    const/high16 v3, 0x3f000000    # 0.5f

    .line 68
    .line 69
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:F

    .line 70
    .line 71
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    aput-object v4, v3, v2

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    aput-object v4, v3, v5

    .line 81
    .line 82
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:Landroid/view/View;

    .line 83
    .line 84
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 85
    .line 86
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    .line 87
    .line 88
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:[F

    .line 91
    .line 92
    const/high16 v3, -0x40800000    # -1.0f

    .line 93
    .line 94
    aput v3, v0, v2

    .line 95
    .line 96
    aput v3, v0, v5

    .line 97
    .line 98
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    .line 99
    .line 100
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    .line 101
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:[I

    .line 103
    .line 104
    const v3, 0x7fffffff

    .line 105
    .line 106
    .line 107
    aput v3, v0, v2

    .line 108
    .line 109
    aput v3, v0, v5

    .line 110
    .line 111
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 112
    .line 113
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 114
    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    .line 116
    .line 117
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    .line 118
    .line 119
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    .line 120
    .line 121
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 122
    .line 123
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 124
    .line 125
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 126
    .line 127
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 128
    .line 129
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:I

    .line 130
    .line 131
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:F

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    .line 134
    .line 135
    aput-boolean v5, v0, v2

    .line 136
    .line 137
    aput-boolean v5, v0, v5

    .line 138
    .line 139
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:[Z

    .line 140
    .line 141
    aput-boolean v2, p0, v2

    .line 142
    .line 143
    aput-boolean v2, p0, v5

    .line 144
    .line 145
    return-void
.end method

.method public r(Landroidx/constraintlayout/solver/Cache;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final t(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aput-object p1, p0, v0

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "id: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, " "

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ") - ("

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " x "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 69
    .line 70
    const-string v1, ")"

    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Ljb;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public final u(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    aput-object p1, p0, v0

    .line 5
    .line 6
    return-void
.end method

.method public final v(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public w(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 4
    .line 5
    and-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 7
    .line 8
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->g:Z

    .line 9
    .line 10
    and-int/2addr p2, v2

    .line 11
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 12
    .line 13
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 16
    .line 17
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 20
    .line 21
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 24
    .line 25
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 26
    .line 27
    sub-int v4, v0, v2

    .line 28
    .line 29
    sub-int v5, v1, v3

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-ltz v4, :cond_0

    .line 33
    .line 34
    if-ltz v5, :cond_0

    .line 35
    .line 36
    const/high16 v4, -0x80000000

    .line 37
    .line 38
    if-eq v2, v4, :cond_0

    .line 39
    .line 40
    const v5, 0x7fffffff

    .line 41
    .line 42
    .line 43
    if-eq v2, v5, :cond_0

    .line 44
    .line 45
    if-eq v3, v4, :cond_0

    .line 46
    .line 47
    if-eq v3, v5, :cond_0

    .line 48
    .line 49
    if-eq v0, v4, :cond_0

    .line 50
    .line 51
    if-eq v0, v5, :cond_0

    .line 52
    .line 53
    if-eq v1, v4, :cond_0

    .line 54
    .line 55
    if-ne v1, v5, :cond_1

    .line 56
    .line 57
    :cond_0
    move v0, v6

    .line 58
    move v1, v0

    .line 59
    move v2, v1

    .line 60
    move v3, v2

    .line 61
    :cond_1
    sub-int/2addr v0, v2

    .line 62
    sub-int/2addr v1, v3

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 66
    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 68
    .line 69
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 70
    .line 71
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 72
    .line 73
    const/16 v3, 0x8

    .line 74
    .line 75
    if-ne v2, v3, :cond_4

    .line 76
    .line 77
    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 78
    .line 79
    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    aget-object p1, v3, v6

    .line 89
    .line 90
    if-ne p1, v2, :cond_5

    .line 91
    .line 92
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 93
    .line 94
    if-ge v0, p1, :cond_5

    .line 95
    .line 96
    move v0, p1

    .line 97
    :cond_5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 98
    .line 99
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 100
    .line 101
    if-ge v0, p1, :cond_6

    .line 102
    .line 103
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 104
    .line 105
    :cond_6
    if-eqz p2, :cond_8

    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    aget-object p1, v3, p1

    .line 109
    .line 110
    if-ne p1, v2, :cond_7

    .line 111
    .line 112
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 113
    .line 114
    if-ge v1, p1, :cond_7

    .line 115
    .line 116
    move v1, p1

    .line 117
    :cond_7
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 118
    .line 119
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 120
    .line 121
    if-ge v1, p1, :cond_8

    .line 122
    .line 123
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 124
    .line 125
    :cond_8
    return-void
.end method

.method public x(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/constraintlayout/solver/LinearSystem;->m(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/constraintlayout/solver/LinearSystem;->m(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/constraintlayout/solver/LinearSystem;->m(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 23
    .line 24
    invoke-static {v2}, Landroidx/constraintlayout/solver/LinearSystem;->m(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 29
    .line 30
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 31
    .line 32
    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 37
    .line 38
    iget-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    iget p1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 43
    .line 44
    iget v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 45
    .line 46
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 47
    .line 48
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 49
    .line 50
    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 55
    .line 56
    iget-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    iget v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 61
    .line 62
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    .line 63
    .line 64
    :cond_1
    sub-int v3, v1, p1

    .line 65
    .line 66
    sub-int v4, v2, v0

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    if-ltz v3, :cond_2

    .line 70
    .line 71
    if-ltz v4, :cond_2

    .line 72
    .line 73
    const/high16 v3, -0x80000000

    .line 74
    .line 75
    if-eq p1, v3, :cond_2

    .line 76
    .line 77
    const v4, 0x7fffffff

    .line 78
    .line 79
    .line 80
    if-eq p1, v4, :cond_2

    .line 81
    .line 82
    if-eq v0, v3, :cond_2

    .line 83
    .line 84
    if-eq v0, v4, :cond_2

    .line 85
    .line 86
    if-eq v1, v3, :cond_2

    .line 87
    .line 88
    if-eq v1, v4, :cond_2

    .line 89
    .line 90
    if-eq v2, v3, :cond_2

    .line 91
    .line 92
    if-ne v2, v4, :cond_3

    .line 93
    .line 94
    :cond_2
    move p1, v5

    .line 95
    move v0, p1

    .line 96
    move v1, v0

    .line 97
    move v2, v1

    .line 98
    :cond_3
    sub-int/2addr v1, p1

    .line 99
    sub-int/2addr v2, v0

    .line 100
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    .line 101
    .line 102
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:I

    .line 103
    .line 104
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 105
    .line 106
    const/16 v0, 0x8

    .line 107
    .line 108
    if-ne p1, v0, :cond_4

    .line 109
    .line 110
    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 111
    .line 112
    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    .line 117
    aget-object v0, p1, v5

    .line 118
    .line 119
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 120
    .line 121
    if-ne v0, v3, :cond_5

    .line 122
    .line 123
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 124
    .line 125
    if-ge v1, v0, :cond_5

    .line 126
    .line 127
    move v1, v0

    .line 128
    :cond_5
    const/4 v0, 0x1

    .line 129
    aget-object p1, p1, v0

    .line 130
    .line 131
    if-ne p1, v3, :cond_6

    .line 132
    .line 133
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 134
    .line 135
    if-ge v2, p1, :cond_6

    .line 136
    .line 137
    move v2, p1

    .line 138
    :cond_6
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 139
    .line 140
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 141
    .line 142
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    .line 143
    .line 144
    if-ge v2, p1, :cond_7

    .line 145
    .line 146
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:I

    .line 147
    .line 148
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    .line 149
    .line 150
    if-ge v1, p1, :cond_8

    .line 151
    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:I

    .line 153
    .line 154
    :cond_8
    return-void
.end method
