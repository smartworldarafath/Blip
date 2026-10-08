.class public final Landroidx/compose/ui/spatial/RectManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/collection/IntObjectMap;

.field public final b:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final c:Landroidx/compose/ui/spatial/RectList;

.field public final d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

.field public final e:Landroidx/collection/MutableObjectList;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lq0;

.field public j:J

.field public final k:Lkb;

.field public final l:Landroidx/compose/ui/geometry/MutableRect;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->a:Landroidx/collection/IntObjectMap;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 7
    .line 8
    new-instance p1, Landroidx/compose/ui/spatial/RectList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0xc0

    .line 14
    .line 15
    new-array v0, p2, [J

    .line 16
    .line 17
    iput-object v0, p1, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 18
    .line 19
    new-array p2, p2, [J

    .line 20
    .line 21
    iput-object p2, p1, Landroidx/compose/ui/spatial/RectList;->b:[J

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 24
    .line 25
    new-instance p1, Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 31
    .line 32
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->e:Landroidx/collection/MutableObjectList;

    .line 38
    .line 39
    const-wide/16 p1, -0x1

    .line 40
    .line 41
    iput-wide p1, p0, Landroidx/compose/ui/spatial/RectManager;->j:J

    .line 42
    .line 43
    new-instance p1, Lkb;

    .line 44
    .line 45
    const/4 p2, 0x6

    .line 46
    invoke-direct {p1, p2, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->k:Lkb;

    .line 50
    .line 51
    new-instance p1, Landroidx/compose/ui/geometry/MutableRect;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/compose/ui/geometry/MutableRect;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->l:Landroidx/compose/ui/geometry/MutableRect;

    .line 57
    .line 58
    return-void
.end method

.method public static c(Landroidx/compose/ui/node/NodeCoordinator;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static d(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 2
    .line 3
    const/4 v0, -0x4

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static g(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-eqz p0, :cond_1

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManager;->c(Landroidx/compose/ui/node/NodeCoordinator;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const-wide v0, 0x7fffffff7fffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_0
    iget-wide v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 26
    .line 27
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-wide v1
.end method

.method public static j(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/spatial/RectManager;->c(Landroidx/compose/ui/node/NodeCoordinator;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManager;->g(Landroidx/compose/ui/node/LayoutNode;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iput-wide v1, p0, Landroidx/compose/ui/node/LayoutNode;->m:J

    .line 27
    .line 28
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    .line 29
    .line 30
    :cond_0
    iget-wide v1, p0, Landroidx/compose/ui/node/LayoutNode;->m:J

    .line 31
    .line 32
    const-wide v3, 0x7fffffff7fffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 48
    .line 49
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 50
    .line 51
    :goto_0
    if-ge v0, p0, :cond_1

    .line 52
    .line 53
    aget-object v2, v1, v0

    .line 54
    .line 55
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 56
    .line 57
    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v11, 0x0

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->g:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v12, v11

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v12, v2

    .line 33
    :goto_1
    iget-object v15, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 34
    .line 35
    move v3, v2

    .line 36
    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 37
    .line 38
    if-eqz v1, :cond_a

    .line 39
    .line 40
    iput-boolean v11, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 41
    .line 42
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->e:Landroidx/collection/MutableObjectList;

    .line 43
    .line 44
    iget-object v4, v1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 45
    .line 46
    iget v1, v1, Landroidx/collection/ObjectList;->b:I

    .line 47
    .line 48
    move v5, v11

    .line 49
    :goto_2
    if-ge v5, v1, :cond_3

    .line 50
    .line 51
    aget-object v6, v4, v5

    .line 52
    .line 53
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object v1, v15, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 62
    .line 63
    iget v4, v15, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 64
    .line 65
    move v5, v11

    .line 66
    :goto_3
    array-length v6, v1

    .line 67
    add-int/lit8 v6, v6, -0x2

    .line 68
    .line 69
    if-ge v5, v6, :cond_9

    .line 70
    .line 71
    if-ge v5, v4, :cond_9

    .line 72
    .line 73
    add-int/lit8 v6, v5, 0x2

    .line 74
    .line 75
    aget-wide v6, v1, v6

    .line 76
    .line 77
    const/16 v8, 0x3c

    .line 78
    .line 79
    move/from16 v16, v3

    .line 80
    .line 81
    move/from16 v17, v4

    .line 82
    .line 83
    shr-long v3, v6, v8

    .line 84
    .line 85
    long-to-int v3, v3

    .line 86
    and-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    if-eqz v3, :cond_8

    .line 89
    .line 90
    aget-wide v3, v1, v5

    .line 91
    .line 92
    add-int/lit8 v8, v5, 0x1

    .line 93
    .line 94
    const-wide/16 v28, 0x0

    .line 95
    .line 96
    aget-wide v13, v1, v8

    .line 97
    .line 98
    long-to-int v6, v6

    .line 99
    const v7, 0x1ffffff

    .line 100
    .line 101
    .line 102
    and-int/2addr v6, v7

    .line 103
    iget-object v7, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    .line 104
    .line 105
    invoke-virtual {v7, v6}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 110
    .line 111
    :goto_4
    if-eqz v6, :cond_7

    .line 112
    .line 113
    iget-object v7, v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 114
    .line 115
    move/from16 v30, v12

    .line 116
    .line 117
    iget-wide v11, v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->g:J

    .line 118
    .line 119
    sub-long v18, v9, v11

    .line 120
    .line 121
    cmp-long v8, v18, v28

    .line 122
    .line 123
    if-gez v8, :cond_5

    .line 124
    .line 125
    const-wide/high16 v18, -0x8000000000000000L

    .line 126
    .line 127
    cmp-long v8, v11, v18

    .line 128
    .line 129
    if-nez v8, :cond_4

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_4
    const/4 v8, 0x0

    .line 133
    goto :goto_6

    .line 134
    :cond_5
    :goto_5
    move/from16 v8, v16

    .line 135
    .line 136
    :goto_6
    iput-wide v3, v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->e:J

    .line 137
    .line 138
    iput-wide v13, v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:J

    .line 139
    .line 140
    if-eqz v8, :cond_6

    .line 141
    .line 142
    iput-wide v9, v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->g:J

    .line 143
    .line 144
    iget-wide v11, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    .line 145
    .line 146
    move-wide/from16 v19, v3

    .line 147
    .line 148
    iget-wide v3, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    .line 149
    .line 150
    iget-object v8, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    .line 151
    .line 152
    move-wide/from16 v25, v3

    .line 153
    .line 154
    move-object/from16 v18, v6

    .line 155
    .line 156
    move-object/from16 v27, v8

    .line 157
    .line 158
    move-wide/from16 v23, v11

    .line 159
    .line 160
    move-wide/from16 v21, v13

    .line 161
    .line 162
    invoke-virtual/range {v18 .. v27}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->a(JJJJ[F)V

    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_6
    move-wide/from16 v19, v3

    .line 167
    .line 168
    move-wide/from16 v21, v13

    .line 169
    .line 170
    :goto_7
    move-object v6, v7

    .line 171
    move-wide/from16 v3, v19

    .line 172
    .line 173
    move-wide/from16 v13, v21

    .line 174
    .line 175
    move/from16 v12, v30

    .line 176
    .line 177
    const/4 v11, 0x0

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    :goto_8
    move/from16 v30, v12

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_8
    const-wide/16 v28, 0x0

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :goto_9
    add-int/lit8 v5, v5, 0x3

    .line 186
    .line 187
    move/from16 v3, v16

    .line 188
    .line 189
    move/from16 v4, v17

    .line 190
    .line 191
    move/from16 v12, v30

    .line 192
    .line 193
    const/4 v11, 0x0

    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_9
    move/from16 v30, v12

    .line 197
    .line 198
    const-wide/16 v28, 0x0

    .line 199
    .line 200
    iget-object v1, v15, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 201
    .line 202
    iget v3, v15, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    :goto_a
    array-length v5, v1

    .line 206
    add-int/lit8 v5, v5, -0x2

    .line 207
    .line 208
    if-ge v4, v5, :cond_b

    .line 209
    .line 210
    if-ge v4, v3, :cond_b

    .line 211
    .line 212
    add-int/lit8 v5, v4, 0x2

    .line 213
    .line 214
    aget-wide v6, v1, v5

    .line 215
    .line 216
    const-wide v11, -0x1000000000000001L    # -3.1050361846014175E231

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    and-long/2addr v6, v11

    .line 222
    aput-wide v6, v1, v5

    .line 223
    .line 224
    add-int/lit8 v4, v4, 0x3

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_a
    move/from16 v30, v12

    .line 228
    .line 229
    const-wide/16 v28, 0x0

    .line 230
    .line 231
    :cond_b
    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->g:Z

    .line 232
    .line 233
    const/16 v16, 0x7

    .line 234
    .line 235
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    if-eqz v1, :cond_10

    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    iput-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->g:Z

    .line 244
    .line 245
    iget-wide v4, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    .line 246
    .line 247
    iget-wide v6, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    .line 248
    .line 249
    iget-object v8, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    .line 250
    .line 251
    iget-object v1, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    .line 252
    .line 253
    const-wide/16 v19, 0x80

    .line 254
    .line 255
    iget-object v11, v1, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 256
    .line 257
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->a:[J

    .line 258
    .line 259
    array-length v12, v1

    .line 260
    add-int/lit8 v12, v12, -0x2

    .line 261
    .line 262
    if-ltz v12, :cond_f

    .line 263
    .line 264
    const/4 v13, 0x0

    .line 265
    const/16 v14, 0x8

    .line 266
    .line 267
    const-wide/16 v21, 0xff

    .line 268
    .line 269
    :goto_b
    move-wide/from16 v23, v4

    .line 270
    .line 271
    aget-wide v3, v1, v13

    .line 272
    .line 273
    move v5, v14

    .line 274
    move-object/from16 v25, v15

    .line 275
    .line 276
    not-long v14, v3

    .line 277
    shl-long v14, v14, v16

    .line 278
    .line 279
    and-long/2addr v14, v3

    .line 280
    and-long v14, v14, v17

    .line 281
    .line 282
    cmp-long v14, v14, v17

    .line 283
    .line 284
    if-eqz v14, :cond_e

    .line 285
    .line 286
    sub-int v14, v13, v12

    .line 287
    .line 288
    not-int v14, v14

    .line 289
    ushr-int/lit8 v14, v14, 0x1f

    .line 290
    .line 291
    rsub-int/lit8 v14, v14, 0x8

    .line 292
    .line 293
    move-wide/from16 v26, v3

    .line 294
    .line 295
    const/4 v15, 0x0

    .line 296
    :goto_c
    if-ge v15, v14, :cond_d

    .line 297
    .line 298
    and-long v3, v26, v21

    .line 299
    .line 300
    cmp-long v3, v3, v19

    .line 301
    .line 302
    if-gez v3, :cond_c

    .line 303
    .line 304
    shl-int/lit8 v3, v13, 0x3

    .line 305
    .line 306
    add-int/2addr v3, v15

    .line 307
    aget-object v3, v11, v3

    .line 308
    .line 309
    check-cast v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 310
    .line 311
    :goto_d
    if-eqz v3, :cond_c

    .line 312
    .line 313
    move-object/from16 v31, v1

    .line 314
    .line 315
    move v1, v5

    .line 316
    move-wide/from16 v4, v23

    .line 317
    .line 318
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    .line 319
    .line 320
    .line 321
    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 322
    .line 323
    move v5, v1

    .line 324
    move-object/from16 v1, v31

    .line 325
    .line 326
    goto :goto_d

    .line 327
    :cond_c
    move-object/from16 v31, v1

    .line 328
    .line 329
    move v1, v5

    .line 330
    move-wide/from16 v4, v23

    .line 331
    .line 332
    shr-long v26, v26, v1

    .line 333
    .line 334
    add-int/lit8 v15, v15, 0x1

    .line 335
    .line 336
    move-wide/from16 v23, v4

    .line 337
    .line 338
    move v5, v1

    .line 339
    move-object/from16 v1, v31

    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_d
    move-object/from16 v31, v1

    .line 343
    .line 344
    move v1, v5

    .line 345
    move-wide/from16 v4, v23

    .line 346
    .line 347
    if-ne v14, v1, :cond_11

    .line 348
    .line 349
    goto :goto_e

    .line 350
    :cond_e
    move-object/from16 v31, v1

    .line 351
    .line 352
    move v1, v5

    .line 353
    move-wide/from16 v4, v23

    .line 354
    .line 355
    :goto_e
    if-eq v13, v12, :cond_11

    .line 356
    .line 357
    add-int/lit8 v13, v13, 0x1

    .line 358
    .line 359
    move v14, v1

    .line 360
    move-object/from16 v15, v25

    .line 361
    .line 362
    move-object/from16 v1, v31

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_f
    move-object/from16 v25, v15

    .line 366
    .line 367
    const/16 v1, 0x8

    .line 368
    .line 369
    goto :goto_f

    .line 370
    :cond_10
    move-object/from16 v25, v15

    .line 371
    .line 372
    const/16 v1, 0x8

    .line 373
    .line 374
    const-wide/16 v19, 0x80

    .line 375
    .line 376
    :goto_f
    const-wide/16 v21, 0xff

    .line 377
    .line 378
    :cond_11
    if-eqz v30, :cond_12

    .line 379
    .line 380
    iget-wide v4, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->d:J

    .line 381
    .line 382
    iget-wide v6, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->e:J

    .line 383
    .line 384
    iget-object v8, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->g:[F

    .line 385
    .line 386
    iget-object v3, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 387
    .line 388
    if-eqz v3, :cond_12

    .line 389
    .line 390
    :goto_10
    if-eqz v3, :cond_12

    .line 391
    .line 392
    iget-object v11, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->b:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 393
    .line 394
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 395
    .line 396
    .line 397
    move-result-object v11

    .line 398
    invoke-static {v11}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    invoke-interface {v12}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 403
    .line 404
    .line 405
    move-result-object v12

    .line 406
    invoke-virtual {v12, v11}, Landroidx/compose/ui/spatial/RectManager;->b(Landroidx/compose/ui/node/LayoutNode;)J

    .line 407
    .line 408
    .line 409
    move-result-wide v12

    .line 410
    iput-wide v12, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->e:J

    .line 411
    .line 412
    const/16 v23, 0x20

    .line 413
    .line 414
    shr-long v14, v12, v23

    .line 415
    .line 416
    long-to-int v14, v14

    .line 417
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 418
    .line 419
    .line 420
    move-result v15

    .line 421
    add-int/2addr v15, v14

    .line 422
    const-wide v26, 0xffffffffL

    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    and-long v12, v12, v26

    .line 428
    .line 429
    long-to-int v12, v12

    .line 430
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    add-int/2addr v11, v12

    .line 435
    int-to-long v12, v15

    .line 436
    shl-long v12, v12, v23

    .line 437
    .line 438
    int-to-long v14, v11

    .line 439
    and-long v14, v14, v26

    .line 440
    .line 441
    or-long v11, v12, v14

    .line 442
    .line 443
    iput-wide v11, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->f:J

    .line 444
    .line 445
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    .line 446
    .line 447
    .line 448
    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 449
    .line 450
    goto :goto_10

    .line 451
    :cond_12
    iget-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->h:Z

    .line 452
    .line 453
    if-eqz v3, :cond_15

    .line 454
    .line 455
    const/4 v3, 0x0

    .line 456
    iput-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->h:Z

    .line 457
    .line 458
    move-object/from16 v4, v25

    .line 459
    .line 460
    iget-object v5, v4, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 461
    .line 462
    iget v6, v4, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 463
    .line 464
    iget-object v7, v4, Landroidx/compose/ui/spatial/RectList;->b:[J

    .line 465
    .line 466
    move v8, v3

    .line 467
    move v11, v8

    .line 468
    :goto_11
    array-length v12, v5

    .line 469
    add-int/lit8 v12, v12, -0x2

    .line 470
    .line 471
    if-ge v8, v12, :cond_14

    .line 472
    .line 473
    array-length v12, v7

    .line 474
    add-int/lit8 v12, v12, -0x2

    .line 475
    .line 476
    if-ge v11, v12, :cond_14

    .line 477
    .line 478
    if-ge v8, v6, :cond_14

    .line 479
    .line 480
    add-int/lit8 v12, v8, 0x2

    .line 481
    .line 482
    aget-wide v13, v5, v12

    .line 483
    .line 484
    sget-wide v23, Landroidx/compose/ui/spatial/RectListKt;->a:J

    .line 485
    .line 486
    cmp-long v13, v13, v23

    .line 487
    .line 488
    if-eqz v13, :cond_13

    .line 489
    .line 490
    aget-wide v13, v5, v8

    .line 491
    .line 492
    aput-wide v13, v7, v11

    .line 493
    .line 494
    add-int/lit8 v13, v11, 0x1

    .line 495
    .line 496
    add-int/lit8 v14, v8, 0x1

    .line 497
    .line 498
    aget-wide v14, v5, v14

    .line 499
    .line 500
    aput-wide v14, v7, v13

    .line 501
    .line 502
    add-int/lit8 v13, v11, 0x2

    .line 503
    .line 504
    aget-wide v14, v5, v12

    .line 505
    .line 506
    aput-wide v14, v7, v13

    .line 507
    .line 508
    add-int/lit8 v11, v11, 0x3

    .line 509
    .line 510
    :cond_13
    add-int/lit8 v8, v8, 0x3

    .line 511
    .line 512
    goto :goto_11

    .line 513
    :cond_14
    iput v11, v4, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 514
    .line 515
    iput-object v7, v4, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 516
    .line 517
    iput-object v5, v4, Landroidx/compose/ui/spatial/RectList;->b:[J

    .line 518
    .line 519
    goto :goto_12

    .line 520
    :cond_15
    const/4 v3, 0x0

    .line 521
    :goto_12
    iget-wide v4, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    .line 522
    .line 523
    cmp-long v4, v4, v9

    .line 524
    .line 525
    if-lez v4, :cond_16

    .line 526
    .line 527
    goto :goto_17

    .line 528
    :cond_16
    iget-object v4, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    .line 529
    .line 530
    iget-object v5, v4, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 531
    .line 532
    iget-object v4, v4, Landroidx/collection/IntObjectMap;->a:[J

    .line 533
    .line 534
    array-length v6, v4

    .line 535
    add-int/lit8 v6, v6, -0x2

    .line 536
    .line 537
    if-ltz v6, :cond_1a

    .line 538
    .line 539
    move v7, v3

    .line 540
    :goto_13
    aget-wide v8, v4, v7

    .line 541
    .line 542
    not-long v10, v8

    .line 543
    shl-long v10, v10, v16

    .line 544
    .line 545
    and-long/2addr v10, v8

    .line 546
    and-long v10, v10, v17

    .line 547
    .line 548
    cmp-long v10, v10, v17

    .line 549
    .line 550
    if-eqz v10, :cond_19

    .line 551
    .line 552
    sub-int v10, v7, v6

    .line 553
    .line 554
    not-int v10, v10

    .line 555
    ushr-int/lit8 v10, v10, 0x1f

    .line 556
    .line 557
    rsub-int/lit8 v10, v10, 0x8

    .line 558
    .line 559
    move-wide v11, v8

    .line 560
    move v8, v3

    .line 561
    :goto_14
    if-ge v8, v10, :cond_18

    .line 562
    .line 563
    and-long v13, v11, v21

    .line 564
    .line 565
    cmp-long v9, v13, v19

    .line 566
    .line 567
    if-gez v9, :cond_17

    .line 568
    .line 569
    shl-int/lit8 v9, v7, 0x3

    .line 570
    .line 571
    add-int/2addr v9, v8

    .line 572
    aget-object v9, v5, v9

    .line 573
    .line 574
    check-cast v9, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 575
    .line 576
    :goto_15
    if-eqz v9, :cond_17

    .line 577
    .line 578
    iget-object v9, v9, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 579
    .line 580
    goto :goto_15

    .line 581
    :cond_17
    shr-long/2addr v11, v1

    .line 582
    add-int/lit8 v8, v8, 0x1

    .line 583
    .line 584
    goto :goto_14

    .line 585
    :cond_18
    if-ne v10, v1, :cond_1a

    .line 586
    .line 587
    :cond_19
    if-eq v7, v6, :cond_1a

    .line 588
    .line 589
    add-int/lit8 v7, v7, 0x1

    .line 590
    .line 591
    goto :goto_13

    .line 592
    :cond_1a
    iget-object v1, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 593
    .line 594
    if-eqz v1, :cond_1b

    .line 595
    .line 596
    :goto_16
    if-eqz v1, :cond_1b

    .line 597
    .line 598
    iget-object v1, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 599
    .line 600
    goto :goto_16

    .line 601
    :cond_1b
    const-wide/16 v3, -0x1

    .line 602
    .line 603
    iput-wide v3, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    .line 604
    .line 605
    :goto_17
    iget-wide v1, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    .line 606
    .line 607
    cmp-long v1, v1, v28

    .line 608
    .line 609
    if-lez v1, :cond_1c

    .line 610
    .line 611
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->k()V

    .line 612
    .line 613
    .line 614
    :cond_1c
    return-void
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/spatial/RectManager;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 14
    .line 15
    aget-wide p0, p0, p1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    shr-long v1, p0, v0

    .line 20
    .line 21
    long-to-int v1, v1

    .line 22
    long-to-int p0, p0

    .line 23
    int-to-long v1, v1

    .line 24
    shl-long v0, v1, v0

    .line 25
    .line 26
    int-to-long p0, p0

    .line 27
    const-wide v2, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr p0, v2

    .line 33
    or-long/2addr p0, v0

    .line 34
    return-wide p0

    .line 35
    :cond_0
    const-wide p0, 0x7fffffff7fffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    return-wide p0
.end method

.method public final e(Landroidx/compose/ui/node/LayoutNode;)I
    .locals 7

    .line 1
    iget v0, p1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 2
    .line 3
    const/4 v1, -0x4

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    :cond_0
    move v0, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_1
    iget v2, p1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 13
    .line 14
    const v4, 0x1ffffff

    .line 15
    .line 16
    .line 17
    if-ltz v0, :cond_2

    .line 18
    .line 19
    iget v5, p0, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 20
    .line 21
    add-int/lit8 v5, v5, -0x2

    .line 22
    .line 23
    if-ge v0, v5, :cond_2

    .line 24
    .line 25
    add-int/lit8 v5, v0, 0x2

    .line 26
    .line 27
    aget-wide v5, v3, v5

    .line 28
    .line 29
    long-to-int v5, v5

    .line 30
    and-int/2addr v5, v4

    .line 31
    and-int v6, v2, v4

    .line 32
    .line 33
    if-ne v5, v6, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    and-int v0, v2, v4

    .line 37
    .line 38
    iget p0, p0, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    add-int/lit8 v5, p0, -0x2

    .line 42
    .line 43
    if-ge v2, v5, :cond_0

    .line 44
    .line 45
    add-int/lit8 v5, v2, 0x2

    .line 46
    .line 47
    aget-wide v5, v3, v5

    .line 48
    .line 49
    long-to-int v5, v5

    .line 50
    and-int/2addr v5, v4

    .line 51
    if-ne v5, v0, :cond_3

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    add-int/lit8 v2, v2, 0x3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    iget p0, p1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "LayoutNode "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, " not found in RectList"

    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    iput v0, p1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 86
    .line 87
    return v0
.end method

.method public final f(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 7
    .line 8
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 9
    .line 10
    iget-object v4, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 11
    .line 12
    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 13
    .line 14
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 15
    .line 16
    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->Z()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->W()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    int-to-float v6, v6

    .line 25
    int-to-float v5, v5

    .line 26
    iget-object v7, v0, Landroidx/compose/ui/spatial/RectManager;->l:Landroidx/compose/ui/geometry/MutableRect;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    iput v8, v7, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 30
    .line 31
    iput v8, v7, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 32
    .line 33
    iput v6, v7, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 34
    .line 35
    iput v5, v7, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 36
    .line 37
    :goto_0
    const-wide v5, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/16 v8, 0x20

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    iget-object v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 47
    .line 48
    iget-object v10, v9, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 49
    .line 50
    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 51
    .line 52
    if-ne v4, v10, :cond_0

    .line 53
    .line 54
    iget-boolean v10, v9, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 55
    .line 56
    if-nez v10, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0, v9}, Landroidx/compose/ui/spatial/RectManager;->b(Landroidx/compose/ui/node/LayoutNode;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v9

    .line 62
    const-wide v11, 0x7fffffff7fffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_0

    .line 72
    .line 73
    shr-long v11, v9, v8

    .line 74
    .line 75
    long-to-int v4, v11

    .line 76
    int-to-float v4, v4

    .line 77
    and-long/2addr v9, v5

    .line 78
    long-to-int v9, v9

    .line 79
    int-to-float v9, v9

    .line 80
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    int-to-long v10, v4

    .line 85
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    int-to-long v12, v4

    .line 90
    shl-long v9, v10, v8

    .line 91
    .line 92
    and-long v11, v12, v5

    .line 93
    .line 94
    or-long/2addr v9, v11

    .line 95
    invoke-virtual {v7, v9, v10}, Landroidx/compose/ui/geometry/MutableRect;->c(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    iget-object v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 100
    .line 101
    if-eqz v9, :cond_1

    .line 102
    .line 103
    check-cast v9, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 104
    .line 105
    invoke-virtual {v9}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v9}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-nez v10, :cond_1

    .line 114
    .line 115
    invoke-static {v9, v7}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-wide v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 119
    .line 120
    shr-long v11, v9, v8

    .line 121
    .line 122
    long-to-int v11, v11

    .line 123
    int-to-float v11, v11

    .line 124
    and-long/2addr v9, v5

    .line 125
    long-to-int v9, v9

    .line 126
    int-to-float v9, v9

    .line 127
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    int-to-long v10, v10

    .line 132
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    int-to-long v12, v9

    .line 137
    shl-long v8, v10, v8

    .line 138
    .line 139
    and-long/2addr v5, v12

    .line 140
    or-long/2addr v5, v8

    .line 141
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/geometry/MutableRect;->c(J)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v4, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    :goto_1
    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 148
    .line 149
    float-to-int v11, v4

    .line 150
    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 151
    .line 152
    float-to-int v12, v4

    .line 153
    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 154
    .line 155
    float-to-int v13, v4

    .line 156
    iget v4, v7, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 157
    .line 158
    float-to-int v14, v4

    .line 159
    iget v10, v1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 160
    .line 161
    iget v4, v1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 162
    .line 163
    iget-object v9, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 164
    .line 165
    const/4 v7, -0x4

    .line 166
    if-eq v4, v7, :cond_3

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iget-object v4, v9, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 173
    .line 174
    int-to-long v9, v11

    .line 175
    shl-long/2addr v9, v8

    .line 176
    int-to-long v11, v12

    .line 177
    and-long/2addr v11, v5

    .line 178
    or-long/2addr v9, v11

    .line 179
    aput-wide v9, v4, v3

    .line 180
    .line 181
    add-int/lit8 v7, v3, 0x1

    .line 182
    .line 183
    int-to-long v9, v13

    .line 184
    shl-long v8, v9, v8

    .line 185
    .line 186
    int-to-long v10, v14

    .line 187
    and-long/2addr v5, v10

    .line 188
    or-long/2addr v5, v8

    .line 189
    aput-wide v5, v4, v7

    .line 190
    .line 191
    add-int/lit8 v3, v3, 0x2

    .line 192
    .line 193
    aget-wide v5, v4, v3

    .line 194
    .line 195
    const/16 v7, 0x3f

    .line 196
    .line 197
    shr-long v7, v5, v7

    .line 198
    .line 199
    const-wide/16 v9, 0x1

    .line 200
    .line 201
    and-long/2addr v7, v9

    .line 202
    const/16 v9, 0x3c

    .line 203
    .line 204
    shl-long/2addr v7, v9

    .line 205
    or-long/2addr v5, v7

    .line 206
    aput-wide v5, v4, v3

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    if-eqz v4, :cond_4

    .line 214
    .line 215
    iget v5, v4, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 216
    .line 217
    :goto_2
    move v15, v5

    .line 218
    goto :goto_3

    .line 219
    :cond_4
    const/4 v5, -0x1

    .line 220
    goto :goto_2

    .line 221
    :goto_3
    if-eqz v4, :cond_5

    .line 222
    .line 223
    invoke-virtual {v0, v4}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    :cond_5
    move/from16 v16, v7

    .line 228
    .line 229
    const/16 v4, 0x400

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 232
    .line 233
    .line 234
    move-result v17

    .line 235
    const/16 v4, 0x10

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 238
    .line 239
    .line 240
    move-result v18

    .line 241
    iget-object v3, v0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 242
    .line 243
    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    .line 244
    .line 245
    invoke-virtual {v3, v10}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 246
    .line 247
    .line 248
    move-result v19

    .line 249
    invoke-virtual/range {v9 .. v19}, Landroidx/compose/ui/spatial/RectList;->a(IIIIIIIZZZ)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    iput v3, v1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 254
    .line 255
    :goto_4
    const/4 v3, 0x0

    .line 256
    iput-boolean v3, v1, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 257
    .line 258
    iput-boolean v2, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 259
    .line 260
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 265
    .line 266
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 267
    .line 268
    :goto_5
    if-ge v3, v1, :cond_7

    .line 269
    .line 270
    aget-object v4, v2, v3

    .line 271
    .line 272
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 273
    .line 274
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_6

    .line 279
    .line 280
    invoke-virtual {v0, v4}, Landroidx/compose/ui/spatial/RectManager;->f(Landroidx/compose/ui/node/LayoutNode;)V

    .line 281
    .line 282
    .line 283
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_7
    return-void
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 10
    .line 11
    if-eqz v2, :cond_d

    .line 12
    .line 13
    iget-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-wide v4, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-boolean v7, v2, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 32
    .line 33
    if-nez v7, :cond_2

    .line 34
    .line 35
    iget-boolean v7, v2, Landroidx/compose/ui/node/LayoutNode;->n:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    iput-boolean v6, v2, Landroidx/compose/ui/node/LayoutNode;->n:Z

    .line 40
    .line 41
    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->g(Landroidx/compose/ui/node/LayoutNode;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    iput-wide v7, v2, Landroidx/compose/ui/node/LayoutNode;->m:J

    .line 46
    .line 47
    :cond_1
    iget-wide v7, v2, Landroidx/compose/ui/node/LayoutNode;->m:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    if-nez v2, :cond_3

    .line 51
    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move-wide v7, v4

    .line 56
    :goto_0
    iget-object v9, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 57
    .line 58
    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_c

    .line 63
    .line 64
    invoke-static {v9}, Landroidx/compose/ui/spatial/RectManager;->c(Landroidx/compose/ui/node/NodeCoordinator;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_c

    .line 69
    .line 70
    iget-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 71
    .line 72
    if-nez v4, :cond_b

    .line 73
    .line 74
    iget-wide v4, v9, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 75
    .line 76
    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-object v7, v1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 81
    .line 82
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroidx/compose/ui/node/MeasurePassDelegate;->Z()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    invoke-virtual {v7}, Landroidx/compose/ui/node/MeasurePassDelegate;->W()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    iget v9, v1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 93
    .line 94
    const/4 v10, -0x4

    .line 95
    iget-object v11, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 96
    .line 97
    const-wide v12, 0xffffffffL

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    const/16 v14, 0x20

    .line 103
    .line 104
    if-eq v9, v10, :cond_8

    .line 105
    .line 106
    move-wide v9, v12

    .line 107
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    const-wide/16 v15, 0x1

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    move-wide/from16 v17, v4

    .line 120
    .line 121
    const/16 v5, 0x3c

    .line 122
    .line 123
    shr-long v3, v17, v14

    .line 124
    .line 125
    long-to-int v3, v3

    .line 126
    move-wide/from16 v19, v9

    .line 127
    .line 128
    and-long v9, v17, v19

    .line 129
    .line 130
    long-to-int v4, v9

    .line 131
    iget-object v9, v11, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 132
    .line 133
    move v10, v14

    .line 134
    const/16 v21, 0x3f

    .line 135
    .line 136
    aget-wide v13, v9, v2

    .line 137
    .line 138
    move/from16 v23, v10

    .line 139
    .line 140
    move-object/from16 v22, v11

    .line 141
    .line 142
    shr-long v10, v13, v23

    .line 143
    .line 144
    long-to-int v2, v10

    .line 145
    long-to-int v10, v13

    .line 146
    add-int/2addr v2, v3

    .line 147
    add-int/2addr v10, v4

    .line 148
    add-int/2addr v8, v2

    .line 149
    add-int/2addr v7, v10

    .line 150
    aget-wide v3, v9, v12

    .line 151
    .line 152
    shr-long v13, v3, v23

    .line 153
    .line 154
    long-to-int v11, v13

    .line 155
    long-to-int v3, v3

    .line 156
    sub-int v13, v2, v11

    .line 157
    .line 158
    sub-int v14, v10, v3

    .line 159
    .line 160
    add-int/lit8 v3, v12, 0x2

    .line 161
    .line 162
    move-wide/from16 v24, v15

    .line 163
    .line 164
    aget-wide v15, v9, v3

    .line 165
    .line 166
    move v11, v5

    .line 167
    int-to-long v5, v2

    .line 168
    shl-long v5, v5, v23

    .line 169
    .line 170
    move-wide/from16 v17, v5

    .line 171
    .line 172
    int-to-long v4, v10

    .line 173
    and-long v4, v4, v19

    .line 174
    .line 175
    or-long v4, v17, v4

    .line 176
    .line 177
    aput-wide v4, v9, v12

    .line 178
    .line 179
    add-int/lit8 v2, v12, 0x1

    .line 180
    .line 181
    int-to-long v4, v8

    .line 182
    shl-long v4, v4, v23

    .line 183
    .line 184
    int-to-long v6, v7

    .line 185
    and-long v6, v6, v19

    .line 186
    .line 187
    or-long/2addr v4, v6

    .line 188
    aput-wide v4, v9, v2

    .line 189
    .line 190
    shr-long v4, v15, v21

    .line 191
    .line 192
    and-long v4, v4, v24

    .line 193
    .line 194
    shl-long/2addr v4, v11

    .line 195
    or-long/2addr v4, v15

    .line 196
    aput-wide v4, v9, v3

    .line 197
    .line 198
    if-nez v13, :cond_4

    .line 199
    .line 200
    if-eqz v14, :cond_5

    .line 201
    .line 202
    :cond_4
    move-object/from16 v11, v22

    .line 203
    .line 204
    invoke-virtual/range {v11 .. v16}, Landroidx/compose/ui/spatial/RectList;->b(IIIJ)V

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_6
    move-wide/from16 v17, v4

    .line 211
    .line 212
    move-wide/from16 v19, v9

    .line 213
    .line 214
    move/from16 v23, v14

    .line 215
    .line 216
    move-wide/from16 v24, v15

    .line 217
    .line 218
    const/16 v5, 0x3c

    .line 219
    .line 220
    const/16 v21, 0x3f

    .line 221
    .line 222
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    shr-long v2, v17, v23

    .line 227
    .line 228
    long-to-int v2, v2

    .line 229
    and-long v3, v17, v19

    .line 230
    .line 231
    long-to-int v3, v3

    .line 232
    add-int/2addr v8, v2

    .line 233
    add-int/2addr v7, v3

    .line 234
    iget-object v4, v11, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 235
    .line 236
    aget-wide v9, v4, v12

    .line 237
    .line 238
    int-to-long v13, v2

    .line 239
    shl-long v13, v13, v23

    .line 240
    .line 241
    move v15, v5

    .line 242
    int-to-long v5, v3

    .line 243
    and-long v5, v5, v19

    .line 244
    .line 245
    or-long/2addr v5, v13

    .line 246
    aput-wide v5, v4, v12

    .line 247
    .line 248
    add-int/lit8 v5, v12, 0x1

    .line 249
    .line 250
    int-to-long v13, v8

    .line 251
    shl-long v13, v13, v23

    .line 252
    .line 253
    int-to-long v6, v7

    .line 254
    and-long v6, v6, v19

    .line 255
    .line 256
    or-long/2addr v6, v13

    .line 257
    aput-wide v6, v4, v5

    .line 258
    .line 259
    add-int/lit8 v5, v12, 0x2

    .line 260
    .line 261
    move v6, v15

    .line 262
    aget-wide v15, v4, v5

    .line 263
    .line 264
    shr-long v7, v15, v21

    .line 265
    .line 266
    and-long v7, v7, v24

    .line 267
    .line 268
    shl-long v6, v7, v6

    .line 269
    .line 270
    or-long/2addr v6, v15

    .line 271
    aput-wide v6, v4, v5

    .line 272
    .line 273
    shr-long v4, v9, v23

    .line 274
    .line 275
    long-to-int v4, v4

    .line 276
    sub-int v13, v2, v4

    .line 277
    .line 278
    long-to-int v2, v9

    .line 279
    sub-int v14, v3, v2

    .line 280
    .line 281
    if-nez v13, :cond_7

    .line 282
    .line 283
    if-eqz v14, :cond_5

    .line 284
    .line 285
    :cond_7
    invoke-virtual/range {v11 .. v16}, Landroidx/compose/ui/spatial/RectList;->b(IIIJ)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_8
    move-wide/from16 v17, v4

    .line 290
    .line 291
    move-wide/from16 v19, v12

    .line 292
    .line 293
    move/from16 v23, v14

    .line 294
    .line 295
    iget v12, v1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 296
    .line 297
    const/16 v4, 0x400

    .line 298
    .line 299
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    const/16 v5, 0x10

    .line 304
    .line 305
    invoke-virtual {v3, v5}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 310
    .line 311
    iget-object v5, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    .line 312
    .line 313
    invoke-virtual {v5, v12}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 314
    .line 315
    .line 316
    move-result v21

    .line 317
    if-eqz v2, :cond_a

    .line 318
    .line 319
    iget v5, v2, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 320
    .line 321
    invoke-virtual {v0, v2}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    shr-long v9, v17, v23

    .line 326
    .line 327
    long-to-int v6, v9

    .line 328
    and-long v9, v17, v19

    .line 329
    .line 330
    long-to-int v9, v9

    .line 331
    const v10, 0x1ffffff

    .line 332
    .line 333
    .line 334
    and-int/2addr v12, v10

    .line 335
    iget-object v13, v11, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 336
    .line 337
    add-int/lit8 v14, v2, 0x2

    .line 338
    .line 339
    aget-wide v14, v13, v14

    .line 340
    .line 341
    long-to-int v14, v14

    .line 342
    and-int/2addr v14, v10

    .line 343
    and-int/2addr v10, v5

    .line 344
    if-ne v14, v10, :cond_9

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v14, "Inserted child "

    .line 350
    .line 351
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v14, " without valid parent index or parent "

    .line 358
    .line 359
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v14, " not found"

    .line 366
    .line 367
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    invoke-static {v10}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :goto_2
    aget-wide v13, v13, v2

    .line 378
    .line 379
    move v15, v2

    .line 380
    move v10, v3

    .line 381
    shr-long v2, v13, v23

    .line 382
    .line 383
    long-to-int v2, v2

    .line 384
    long-to-int v3, v13

    .line 385
    add-int v13, v2, v6

    .line 386
    .line 387
    add-int v14, v3, v9

    .line 388
    .line 389
    add-int/2addr v8, v13

    .line 390
    add-int v16, v14, v7

    .line 391
    .line 392
    move/from16 v19, v4

    .line 393
    .line 394
    move/from16 v17, v5

    .line 395
    .line 396
    move/from16 v20, v10

    .line 397
    .line 398
    move/from16 v18, v15

    .line 399
    .line 400
    move v15, v8

    .line 401
    invoke-virtual/range {v11 .. v21}, Landroidx/compose/ui/spatial/RectList;->a(IIIIIIIZZZ)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    iput v2, v1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :cond_a
    move-wide/from16 v9, v19

    .line 410
    .line 411
    move/from16 v20, v3

    .line 412
    .line 413
    move/from16 v19, v4

    .line 414
    .line 415
    shr-long v2, v17, v23

    .line 416
    .line 417
    long-to-int v13, v2

    .line 418
    and-long v2, v17, v9

    .line 419
    .line 420
    long-to-int v14, v2

    .line 421
    add-int v15, v13, v8

    .line 422
    .line 423
    add-int v16, v14, v7

    .line 424
    .line 425
    const/16 v17, -0x1

    .line 426
    .line 427
    const/16 v18, -0x4

    .line 428
    .line 429
    invoke-virtual/range {v11 .. v21}, Landroidx/compose/ui/spatial/RectList;->a(IIIIIIIZZZ)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    iput v2, v1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 434
    .line 435
    goto/16 :goto_1

    .line 436
    .line 437
    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->f(Landroidx/compose/ui/node/LayoutNode;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v1}, Landroidx/compose/ui/spatial/RectManager;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_1

    .line 444
    .line 445
    :cond_c
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->f(Landroidx/compose/ui/node/LayoutNode;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_1

    .line 449
    .line 450
    :goto_3
    iput-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 451
    .line 452
    const/4 v1, 0x1

    .line 453
    iput-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 454
    .line 455
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->k()V

    .line 456
    .line 457
    .line 458
    :cond_d
    :goto_4
    return-void
.end method

.method public final i(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/spatial/RectManager;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    aput-wide v2, v1, v0

    .line 18
    .line 19
    add-int/lit8 v4, v0, 0x1

    .line 20
    .line 21
    aput-wide v2, v1, v4

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    sget-wide v2, Landroidx/compose/ui/spatial/RectListKt;->a:J

    .line 26
    .line 27
    aput-wide v2, v1, v0

    .line 28
    .line 29
    const/4 v0, -0x4

    .line 30
    iput v0, p1, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/compose/ui/spatial/RectManager;->h:Z

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 10
    .line 11
    iget-wide v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks;->c:J

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v5, v3, v5

    .line 16
    .line 17
    if-gez v5, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-wide v5, p0, Landroidx/compose/ui/spatial/RectManager;->j:J

    .line 23
    .line 24
    cmp-long v5, v5, v3

    .line 25
    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :goto_1
    return-void

    .line 31
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, 0x10

    .line 43
    .line 44
    add-long/2addr v7, v5

    .line 45
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iput-wide v3, p0, Landroidx/compose/ui/spatial/RectManager;->j:J

    .line 50
    .line 51
    sub-long/2addr v3, v5

    .line 52
    new-instance v0, Lq0;

    .line 53
    .line 54
    iget-object v5, p0, Landroidx/compose/ui/spatial/RectManager;->k:Lkb;

    .line 55
    .line 56
    invoke-direct {v0, v1, v5}, Lq0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 63
    .line 64
    return-void
.end method
