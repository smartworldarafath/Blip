.class public final Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemInfo;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Landroidx/compose/ui/Alignment$Horizontal;

.field public final d:Landroidx/compose/ui/unit/LayoutDirection;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final l:J

.field public m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public r:Z

.field public s:I

.field public t:I

.field public u:I

.field public final v:[I


# direct methods
.method public constructor <init>(ILjava/util/List;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/unit/LayoutDirection;IIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->c:Landroidx/compose/ui/Alignment$Horizontal;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->d:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->e:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->f:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->g:I

    .line 17
    .line 18
    iput-wide p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->h:J

    .line 19
    .line 20
    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->k:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 25
    .line 26
    iput-wide p13, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l:J

    .line 27
    .line 28
    const/high16 p1, -0x80000000

    .line 29
    .line 30
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 p3, 0x0

    .line 37
    move p4, p3

    .line 38
    move p5, p4

    .line 39
    :goto_0
    if-ge p3, p1, :cond_0

    .line 40
    .line 41
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p6

    .line 45
    check-cast p6, Landroidx/compose/ui/layout/Placeable;

    .line 46
    .line 47
    iget p7, p6, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 48
    .line 49
    add-int/2addr p4, p7

    .line 50
    iget p6, p6, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 51
    .line 52
    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p5

    .line 56
    add-int/lit8 p3, p3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 60
    .line 61
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    mul-int/lit8 p1, p1, 0x2

    .line 70
    .line 71
    new-array p1, p1, [I

    .line 72
    .line 73
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->v:[I

    .line 74
    .line 75
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->g:I

    .line 76
    .line 77
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->p:I

    .line 78
    .line 79
    iput p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->o:I

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public final f(I)J
    .locals 4

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 17
    .line 18
    int-to-long p0, p0

    .line 19
    and-long/2addr p0, v0

    .line 20
    return-wide p0

    .line 21
    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->v:[I

    .line 24
    .line 25
    aget v2, p0, p1

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    aget p0, p0, p1

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    const/16 p1, 0x20

    .line 33
    .line 34
    shl-long/2addr v2, p1

    .line 35
    int-to-long p0, p0

    .line 36
    and-long/2addr p0, v0

    .line 37
    or-long/2addr p0, v2

    .line 38
    return-wide p0
.end method

.method public final g()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:Z

    .line 3
    .line 4
    return-void
.end method

.method public final i(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->o:I

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->p:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
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
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

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
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

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
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->t:I

    .line 33
    .line 34
    iget v7, v5, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 35
    .line 36
    sub-int/2addr v6, v7

    .line 37
    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->u:I

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->f(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->k:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 44
    .line 45
    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v10, v4, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    if-eqz v10, :cond_6

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iput-wide v8, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->l:J

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-wide v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->l:J

    .line 59
    .line 60
    const-wide v13, 0x7fffffff7fffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-nez v11, :cond_2

    .line 70
    .line 71
    iget-wide v8, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->l:J

    .line 72
    .line 73
    :cond_2
    iget-object v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->p:Landroidx/compose/runtime/MutableState;

    .line 74
    .line 75
    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 76
    .line 77
    invoke-virtual {v11}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    check-cast v11, Landroidx/compose/ui/unit/IntOffset;

    .line 82
    .line 83
    iget-wide v11, v11, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 84
    .line 85
    invoke-static {v8, v9, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

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
    :goto_2
    iget-object v6, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->m:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    const/4 v6, 0x0

    .line 119
    :goto_3
    iget-wide v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->h:J

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
    goto :goto_4

    .line 150
    :cond_8
    invoke-static {v1, v5, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->o(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 151
    .line 152
    .line 153
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_9
    return-void
.end method

.method public final l(III)V
    .locals 7

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 2
    .line 3
    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    .line 4
    .line 5
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 19
    .line 20
    mul-int/lit8 v3, v1, 0x2

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->c:Landroidx/compose/ui/Alignment$Horizontal;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 27
    .line 28
    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->d:Landroidx/compose/ui/unit/LayoutDirection;

    .line 29
    .line 30
    check-cast v4, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 31
    .line 32
    invoke-virtual {v4, v5, p2, v6}, Landroidx/compose/ui/BiasAlignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->v:[I

    .line 37
    .line 38
    aput v4, v5, v3

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    aput p1, v5, v3

    .line 43
    .line 44
    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 45
    .line 46
    add-int/2addr p1, v2

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "null horizontalAlignment when isVertical == true"

    .line 51
    .line 52
    invoke-static {p0}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    throw p0

    .line 57
    :cond_1
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->e:I

    .line 58
    .line 59
    neg-int p1, p1

    .line 60
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->t:I

    .line 61
    .line 62
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    .line 63
    .line 64
    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->f:I

    .line 65
    .line 66
    add-int/2addr p1, p2

    .line 67
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->u:I

    .line 68
    .line 69
    return-void
.end method
