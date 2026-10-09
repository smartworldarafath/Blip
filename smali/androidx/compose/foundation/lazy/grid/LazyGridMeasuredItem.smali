.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:Landroidx/compose/ui/unit/LayoutDirection;

.field public final e:I

.field public final f:I

.field public final g:Ljava/util/List;

.field public final h:J

.field public final i:Ljava/lang/Object;

.field public final j:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final k:J

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public q:I

.field public r:I

.field public s:I

.field public final t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;IILandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:I

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->e:I

    .line 13
    .line 14
    iput p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->f:I

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->g:Ljava/util/List;

    .line 17
    .line 18
    iput-wide p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->h:J

    .line 19
    .line 20
    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p12, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 23
    .line 24
    iput-wide p13, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->k:J

    .line 25
    .line 26
    iput p15, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->l:I

    .line 27
    .line 28
    move/from16 p1, p16

    .line 29
    .line 30
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->m:I

    .line 31
    .line 32
    const/high16 p1, -0x80000000

    .line 33
    .line 34
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    .line 35
    .line 36
    invoke-interface {p8}, Ljava/util/Collection;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 p2, 0x0

    .line 41
    move p3, p2

    .line 42
    :goto_0
    if-ge p2, p1, :cond_0

    .line 43
    .line 44
    invoke-interface {p8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    check-cast p5, Landroidx/compose/ui/layout/Placeable;

    .line 49
    .line 50
    iget p5, p5, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 51
    .line 52
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    add-int/lit8 p2, p2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->n:I

    .line 60
    .line 61
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p:I

    .line 62
    .line 63
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->o:I

    .line 64
    .line 65
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:I

    .line 66
    .line 67
    int-to-long p1, p1

    .line 68
    const/16 p4, 0x20

    .line 69
    .line 70
    shl-long/2addr p1, p4

    .line 71
    int-to-long p3, p3

    .line 72
    const-wide p5, 0xffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr p3, p5

    .line 78
    or-long/2addr p1, p3

    .line 79
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->t:J

    .line 80
    .line 81
    const-wide/16 p1, 0x0

    .line 82
    .line 83
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 84
    .line 85
    const/4 p1, -0x1

    .line 86
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:I

    .line 87
    .line 88
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public final f(I)J
    .locals 0

    .line 1
    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public final g()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:Z

    .line 3
    .line 4
    return-void
.end method

.method public final i(IIII)V
    .locals 7

    .line 1
    const/4 v5, -0x1

    .line 2
    const/4 v6, -0x1

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->l(IIIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->o:I

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final k(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    .line 6
    .line 7
    const/high16 v3, -0x80000000

    .line 8
    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v2, "position() should be called first"

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->g:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_1
    if-ge v4, v3, :cond_9

    .line 25
    .line 26
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 31
    .line 32
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    .line 33
    .line 34
    iget v7, v5, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 35
    .line 36
    sub-int/2addr v6, v7

    .line 37
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->s:I

    .line 38
    .line 39
    iget-wide v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 40
    .line 41
    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 42
    .line 43
    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v10, v4, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    if-eqz v10, :cond_6

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iput-wide v8, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->l:J

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_1
    iget-wide v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->l:J

    .line 57
    .line 58
    const-wide v13, 0x7fffffff7fffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-nez v11, :cond_2

    .line 68
    .line 69
    iget-wide v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->l:J

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move-wide v11, v8

    .line 73
    :goto_2
    iget-object v13, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->p:Landroidx/compose/runtime/MutableState;

    .line 74
    .line 75
    check-cast v13, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 76
    .line 77
    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    check-cast v13, Landroidx/compose/ui/unit/IntOffset;

    .line 82
    .line 83
    iget-wide v13, v13, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 84
    .line 85
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v11

    .line 89
    const-wide v13, 0xffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    and-long/2addr v8, v13

    .line 95
    long-to-int v8, v8

    .line 96
    move-wide v15, v13

    .line 97
    if-gt v8, v6, :cond_3

    .line 98
    .line 99
    and-long v13, v11, v15

    .line 100
    .line 101
    long-to-int v9, v13

    .line 102
    if-le v9, v6, :cond_4

    .line 103
    .line 104
    :cond_3
    if-lt v8, v7, :cond_5

    .line 105
    .line 106
    and-long v8, v11, v15

    .line 107
    .line 108
    long-to-int v6, v8

    .line 109
    if-lt v6, v7, :cond_5

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->b()V

    .line 112
    .line 113
    .line 114
    :cond_5
    move-wide v8, v11

    .line 115
    :goto_3
    iget-object v6, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->m:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    const/4 v6, 0x0

    .line 119
    :goto_4
    iget-wide v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->h:J

    .line 120
    .line 121
    invoke-static {v8, v9, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    if-nez p2, :cond_7

    .line 126
    .line 127
    if-eqz v10, :cond_7

    .line 128
    .line 129
    iput-wide v7, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->k:J

    .line 130
    .line 131
    :cond_7
    if-eqz v6, :cond_8

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 137
    .line 138
    .line 139
    iget-wide v9, v5, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 140
    .line 141
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v7

    .line 145
    const/4 v9, 0x0

    .line 146
    invoke-virtual {v5, v7, v8, v9, v6}, Landroidx/compose/ui/layout/Placeable;->b0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_8
    invoke-static {v1, v5, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->o(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 151
    .line 152
    .line 153
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_9
    return-void
.end method

.method public final l(IIIIII)V
    .locals 4

    .line 1
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p3, p2

    .line 10
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:I

    .line 11
    .line 12
    sub-int p2, p3, p2

    .line 13
    .line 14
    :cond_0
    int-to-long p2, p2

    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    shl-long/2addr p2, v0

    .line 18
    int-to-long v0, p1

    .line 19
    const-wide v2, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v0, v2

    .line 25
    or-long p1, p2, v0

    .line 26
    .line 27
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 28
    .line 29
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:I

    .line 30
    .line 31
    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    .line 32
    .line 33
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->e:I

    .line 34
    .line 35
    neg-int p1, p1

    .line 36
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    .line 37
    .line 38
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->f:I

    .line 39
    .line 40
    add-int/2addr p4, p1

    .line 41
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->s:I

    .line 42
    .line 43
    return-void
.end method
