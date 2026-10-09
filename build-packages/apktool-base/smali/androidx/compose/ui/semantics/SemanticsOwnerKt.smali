.class public abstract Landroidx/compose/ui/semantics/SemanticsOwnerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x41200000    # 10.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->a:Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Landroidx/compose/ui/semantics/SemanticsOwner;Lkotlin/jvm/functions/Function1;)Landroidx/collection/MutableIntObjectMap;
    .locals 7

    .line 1
    const-string v0, "getAllUncoveredSemanticsNodesToIntObjectMap"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object p0, v2, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->g()Landroidx/compose/ui/geometry/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    .line 30
    .line 31
    const/16 v0, 0x30

    .line 32
    .line 33
    invoke-direct {v1, v0}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 37
    .line 38
    invoke-direct {v5}, Landroidx/compose/ui/semantics/SemanticRegionImpl;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v5, p0}, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a(Landroidx/compose/ui/unit/IntRect;)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 49
    .line 50
    invoke-direct {v4}, Landroidx/compose/ui/semantics/SemanticRegionImpl;-><init>()V

    .line 51
    .line 52
    .line 53
    move-object v3, v2

    .line 54
    move-object v6, p1

    .line 55
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->d(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsRegion;Landroidx/compose/ui/semantics/SemanticsRegion;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static final b(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsRegion;Landroidx/compose/ui/semantics/SemanticsRegion;Lkotlin/jvm/functions/Function1;)V
    .locals 13

    .line 1
    iget-object v1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object v2, p2, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    move-object/from16 v1, p4

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a:Landroid/graphics/Region;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/geometry/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 50
    .line 51
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 52
    .line 53
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3, v2, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    move-object v3, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 64
    .line 65
    iget-object v2, v3, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 66
    .line 67
    iget-object v3, p2, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 68
    .line 69
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 70
    .line 71
    iget-object v3, v3, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 72
    .line 73
    invoke-virtual {v3, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    :cond_2
    if-eqz v3, :cond_3

    .line 81
    .line 82
    move v3, v5

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v3, v4

    .line 85
    :goto_1
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;ZZ)Landroidx/compose/ui/geometry/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    :goto_2
    invoke-static {v3}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    move-object/from16 v9, p3

    .line 95
    .line 96
    check-cast v9, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 97
    .line 98
    iget-object v3, v9, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a:Landroid/graphics/Region;

    .line 99
    .line 100
    invoke-virtual {v9, v2}, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a(Landroidx/compose/ui/unit/IntRect;)V

    .line 101
    .line 102
    .line 103
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 104
    .line 105
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_9

    .line 110
    .line 111
    iget v4, p2, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 112
    .line 113
    iget v6, p1, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 114
    .line 115
    const/4 v12, -0x1

    .line 116
    if-ne v4, v6, :cond_5

    .line 117
    .line 118
    move v4, v12

    .line 119
    :cond_5
    new-instance v6, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-instance v7, Landroidx/compose/ui/unit/IntRect;

    .line 126
    .line 127
    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget v10, v3, Landroid/graphics/Rect;->top:I

    .line 130
    .line 131
    iget v11, v3, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    invoke-direct {v7, v8, v10, v11, v3}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v6, p2, v7}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v4, v6}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const/4 v3, 0x4

    .line 145
    invoke-static {v3, p2}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    sub-int/2addr v4, v5

    .line 154
    :goto_3
    if-ge v12, v4, :cond_7

    .line 155
    .line 156
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    move-object/from16 v11, p5

    .line 161
    .line 162
    invoke-interface {v11, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_6

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    move-object v8, v5

    .line 180
    check-cast v8, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 181
    .line 182
    move-object v6, p0

    .line 183
    move-object v7, p1

    .line 184
    move-object/from16 v10, p4

    .line 185
    .line 186
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->b(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsRegion;Landroidx/compose/ui/semantics/SemanticsRegion;Lkotlin/jvm/functions/Function1;)V

    .line 187
    .line 188
    .line 189
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    invoke-static {p2}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_9

    .line 197
    .line 198
    iget p1, v2, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 199
    .line 200
    iget p0, v2, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 201
    .line 202
    iget v0, v2, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 203
    .line 204
    iget v2, v2, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 205
    .line 206
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 207
    .line 208
    move p2, p0

    .line 209
    move/from16 p3, v0

    .line 210
    .line 211
    move-object p0, v1

    .line 212
    move/from16 p4, v2

    .line 213
    .line 214
    move-object/from16 p5, v3

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_8
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_9

    .line 225
    .line 226
    invoke-static/range {p0 .. p2}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->c(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 227
    .line 228
    .line 229
    :cond_9
    return-void
.end method

.method public static final c(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->g()Landroidx/compose/ui/geometry/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->a:Landroidx/compose/ui/geometry/Rect;

    .line 24
    .line 25
    :goto_0
    iget v1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_1

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    :cond_1
    new-instance p1, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p1, p2, v0}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, p1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final d(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsRegion;Landroidx/compose/ui/semantics/SemanticsRegion;Lkotlin/jvm/functions/Function1;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    iget v2, v1, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 10
    .line 11
    iget-object v3, v6, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    iget-object v4, v6, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 14
    .line 15
    iget-object v7, v6, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    iget v8, v6, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 35
    :goto_1
    move-object/from16 v11, p4

    .line 36
    .line 37
    check-cast v11, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 38
    .line 39
    iget-object v11, v11, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a:Landroid/graphics/Region;

    .line 40
    .line 41
    invoke-virtual {v11}, Landroid/graphics/Region;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    if-eqz v12, :cond_2

    .line 46
    .line 47
    if-ne v8, v2, :cond_18

    .line 48
    .line 49
    :cond_2
    if-eqz v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto/16 :goto_13

    .line 58
    .line 59
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/geometry/Rect;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    move-object/from16 v3, p3

    .line 68
    .line 69
    check-cast v3, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 70
    .line 71
    iget-object v13, v3, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a:Landroid/graphics/Region;

    .line 72
    .line 73
    invoke-virtual {v3, v12}, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a(Landroidx/compose/ui/unit/IntRect;)V

    .line 74
    .line 75
    .line 76
    if-ne v8, v2, :cond_4

    .line 77
    .line 78
    const/4 v8, -0x1

    .line 79
    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 80
    .line 81
    invoke-virtual {v13, v11, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_16

    .line 86
    .line 87
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 88
    .line 89
    invoke-virtual {v13}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    new-instance v15, Landroidx/compose/ui/unit/IntRect;

    .line 94
    .line 95
    const/16 v16, 0x1

    .line 96
    .line 97
    iget v10, v13, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 100
    .line 101
    iget v9, v13, Landroid/graphics/Rect;->right:I

    .line 102
    .line 103
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    invoke-direct {v15, v10, v14, v9, v13}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v6, v15}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v8, v2}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x4

    .line 115
    invoke-static {v2, v6}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-boolean v2, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    if-eqz v2, :cond_e

    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :goto_2
    if-eqz v2, :cond_6

    .line 129
    .line 130
    iget-object v10, v2, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 131
    .line 132
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 133
    .line 134
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 135
    .line 136
    invoke-virtual {v10, v13}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-nez v13, :cond_7

    .line 141
    .line 142
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 143
    .line 144
    invoke-virtual {v10, v13}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_5

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    move-object v2, v9

    .line 157
    :cond_7
    :goto_3
    if-eqz v2, :cond_d

    .line 158
    .line 159
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->d()Landroidx/compose/ui/node/NodeCoordinator;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    if-eqz v10, :cond_9

    .line 164
    .line 165
    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    iget-boolean v13, v13, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 170
    .line 171
    if-eqz v13, :cond_8

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    move-object v10, v9

    .line 175
    :goto_4
    if-eqz v10, :cond_9

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_9
    move-object v10, v9

    .line 179
    :goto_5
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->d()Landroidx/compose/ui/node/NodeCoordinator;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_b

    .line 184
    .line 185
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    iget-boolean v13, v13, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 190
    .line 191
    if-eqz v13, :cond_a

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_a
    move-object v2, v9

    .line 195
    :goto_6
    if-eqz v2, :cond_b

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_b
    move-object v2, v9

    .line 199
    :goto_7
    if-eqz v10, :cond_d

    .line 200
    .line 201
    if-nez v2, :cond_c

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_c
    const/4 v13, 0x0

    .line 205
    invoke-virtual {v2, v10, v13}, Landroidx/compose/ui/node/NodeCoordinator;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    iget-wide v13, v2, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 210
    .line 211
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 212
    .line 213
    .line 214
    move-result-wide v13

    .line 215
    const-wide/16 v0, 0x0

    .line 216
    .line 217
    invoke-static {v0, v1, v13, v14}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v10, v0}, Landroidx/compose/ui/geometry/Rect;->e(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v10, v0}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    xor-int/lit8 v0, v0, 0x1

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_d
    :goto_8
    const/4 v0, 0x0

    .line 233
    :goto_9
    if-eqz v0, :cond_e

    .line 234
    .line 235
    move/from16 v0, v16

    .line 236
    .line 237
    goto :goto_a

    .line 238
    :cond_e
    const/4 v0, 0x0

    .line 239
    :goto_a
    if-eqz v0, :cond_13

    .line 240
    .line 241
    new-instance v0, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 242
    .line 243
    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticRegionImpl;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    if-nez v1, :cond_f

    .line 251
    .line 252
    iget-object v1, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 253
    .line 254
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 255
    .line 256
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/4 v13, 0x0

    .line 261
    invoke-interface {v2, v1, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    goto :goto_e

    .line 266
    :cond_f
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 267
    .line 268
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 269
    .line 270
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 271
    .line 272
    iget-object v3, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 273
    .line 274
    invoke-virtual {v3, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-nez v2, :cond_10

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_10
    move-object v9, v2

    .line 282
    :goto_b
    if-eqz v9, :cond_11

    .line 283
    .line 284
    move/from16 v13, v16

    .line 285
    .line 286
    :goto_c
    const/4 v2, 0x0

    .line 287
    goto :goto_d

    .line 288
    :cond_11
    const/4 v13, 0x0

    .line 289
    goto :goto_c

    .line 290
    :goto_d
    invoke-static {v1, v13, v2}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;ZZ)Landroidx/compose/ui/geometry/Rect;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :goto_e
    invoke-static {v1}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a(Landroidx/compose/ui/unit/IntRect;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    add-int/lit8 v1, v1, -0x1

    .line 306
    .line 307
    move v7, v1

    .line 308
    :goto_f
    const/4 v1, -0x1

    .line 309
    if-ge v1, v7, :cond_15

    .line 310
    .line 311
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_12

    .line 326
    .line 327
    move-object v4, v0

    .line 328
    goto :goto_10

    .line 329
    :cond_12
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    move-object v2, v1

    .line 334
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 335
    .line 336
    new-instance v3, Landroidx/compose/ui/semantics/SemanticRegionImpl;

    .line 337
    .line 338
    invoke-direct {v3}, Landroidx/compose/ui/semantics/SemanticRegionImpl;-><init>()V

    .line 339
    .line 340
    .line 341
    move-object/from16 v1, p1

    .line 342
    .line 343
    move-object v4, v0

    .line 344
    move-object/from16 v0, p0

    .line 345
    .line 346
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->b(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsRegion;Landroidx/compose/ui/semantics/SemanticsRegion;Lkotlin/jvm/functions/Function1;)V

    .line 347
    .line 348
    .line 349
    :goto_10
    add-int/lit8 v7, v7, -0x1

    .line 350
    .line 351
    move-object v0, v4

    .line 352
    goto :goto_f

    .line 353
    :cond_13
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    add-int/lit8 v0, v0, -0x1

    .line 358
    .line 359
    move v7, v0

    .line 360
    :goto_11
    const/4 v1, -0x1

    .line 361
    if-ge v1, v7, :cond_15

    .line 362
    .line 363
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Ljava/lang/Boolean;

    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_14

    .line 378
    .line 379
    move-object/from16 v0, p0

    .line 380
    .line 381
    goto :goto_12

    .line 382
    :cond_14
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    move-object v2, v0

    .line 387
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 388
    .line 389
    move-object/from16 v0, p0

    .line 390
    .line 391
    move-object/from16 v1, p1

    .line 392
    .line 393
    move-object/from16 v4, p4

    .line 394
    .line 395
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->d(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsRegion;Landroidx/compose/ui/semantics/SemanticsRegion;Lkotlin/jvm/functions/Function1;)V

    .line 396
    .line 397
    .line 398
    :goto_12
    add-int/lit8 v7, v7, -0x1

    .line 399
    .line 400
    move-object/from16 v5, p5

    .line 401
    .line 402
    goto :goto_11

    .line 403
    :cond_15
    invoke-static {v6}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_18

    .line 408
    .line 409
    iget v0, v12, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 410
    .line 411
    iget v1, v12, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 412
    .line 413
    iget v2, v12, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 414
    .line 415
    iget v3, v12, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 416
    .line 417
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 418
    .line 419
    move/from16 p1, v0

    .line 420
    .line 421
    move/from16 p2, v1

    .line 422
    .line 423
    move/from16 p3, v2

    .line 424
    .line 425
    move/from16 p4, v3

    .line 426
    .line 427
    move-object/from16 p5, v4

    .line 428
    .line 429
    move-object/from16 p0, v11

    .line 430
    .line 431
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :cond_16
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_17

    .line 440
    .line 441
    invoke-static/range {p0 .. p2}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->c(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :cond_17
    const/4 v1, -0x1

    .line 446
    if-ne v8, v1, :cond_18

    .line 447
    .line 448
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 449
    .line 450
    invoke-virtual {v13}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    new-instance v3, Landroidx/compose/ui/unit/IntRect;

    .line 455
    .line 456
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 457
    .line 458
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 459
    .line 460
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 461
    .line 462
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 463
    .line 464
    invoke-direct {v3, v4, v5, v7, v2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 465
    .line 466
    .line 467
    invoke-direct {v1, v6, v3}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/unit/IntRect;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v8, v1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    :cond_18
    :goto_13
    return-void
.end method

.method public static final e(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->d()Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    :goto_1
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_3
    return v1
.end method

.method public static final f(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 14

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/collection/ScatterMap;->a:[J

    .line 23
    .line 24
    array-length v3, p0

    .line 25
    add-int/lit8 v3, v3, -0x2

    .line 26
    .line 27
    if-ltz v3, :cond_5

    .line 28
    .line 29
    move v4, v1

    .line 30
    :goto_0
    aget-wide v5, p0, v4

    .line 31
    .line 32
    not-long v7, v5

    .line 33
    const/4 v9, 0x7

    .line 34
    shl-long/2addr v7, v9

    .line 35
    and-long/2addr v7, v5

    .line 36
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v7, v9

    .line 42
    cmp-long v7, v7, v9

    .line 43
    .line 44
    if-eqz v7, :cond_4

    .line 45
    .line 46
    sub-int v7, v4, v3

    .line 47
    .line 48
    not-int v7, v7

    .line 49
    ushr-int/lit8 v7, v7, 0x1f

    .line 50
    .line 51
    const/16 v8, 0x8

    .line 52
    .line 53
    rsub-int/lit8 v7, v7, 0x8

    .line 54
    .line 55
    move v9, v1

    .line 56
    :goto_1
    if-ge v9, v7, :cond_3

    .line 57
    .line 58
    const-wide/16 v10, 0xff

    .line 59
    .line 60
    and-long/2addr v10, v5

    .line 61
    const-wide/16 v12, 0x80

    .line 62
    .line 63
    cmp-long v10, v10, v12

    .line 64
    .line 65
    if-gez v10, :cond_2

    .line 66
    .line 67
    shl-int/lit8 v10, v4, 0x3

    .line 68
    .line 69
    add-int/2addr v10, v9

    .line 70
    aget-object v11, v0, v10

    .line 71
    .line 72
    aget-object v10, v2, v10

    .line 73
    .line 74
    check-cast v11, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 75
    .line 76
    iget-boolean v10, v11, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->c:Z

    .line 77
    .line 78
    if-eqz v10, :cond_2

    .line 79
    .line 80
    :goto_2
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :cond_2
    shr-long/2addr v5, v8

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v7, v8, :cond_5

    .line 87
    .line 88
    :cond_4
    if-eq v4, v3, :cond_5

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    :goto_3
    return v1
.end method
