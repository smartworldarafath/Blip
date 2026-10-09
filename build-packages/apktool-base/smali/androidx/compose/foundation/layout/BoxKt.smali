.class public abstract Landroidx/compose/foundation/layout/BoxKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/collection/MutableScatterMap;

.field public static final b:Landroidx/collection/MutableScatterMap;

.field public static final c:Landroidx/compose/ui/layout/MeasurePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/compose/foundation/layout/BoxKt;->c(Z)Landroidx/collection/MutableScatterMap;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->a:Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Landroidx/compose/foundation/layout/BoxKt;->c(Z)Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->b:Landroidx/collection/MutableScatterMap;

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;->a:Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;

    .line 16
    .line 17
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->c:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0xc96ce69

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    or-int/2addr v0, p2

    .line 20
    and-int/lit8 v2, v0, 0x3

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v1, :cond_1

    .line 25
    .line 26
    move v1, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :goto_1
    and-int/2addr v0, v4

    .line 30
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-wide v0, p1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 37
    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p1, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 56
    .line 57
    .line 58
    iget-boolean v5, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 63
    .line 64
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 69
    .line 70
    .line 71
    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 72
    .line 73
    sget-object v6, Landroidx/compose/foundation/layout/BoxKt;->c:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 74
    .line 75
    invoke-static {p1, v6, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 76
    .line 77
    .line 78
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 79
    .line 80
    invoke-static {p1, v2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 87
    .line 88
    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 96
    .line 97
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    new-instance v0, Lr4;

    .line 114
    .line 115
    invoke-direct {v0, p0, p2, v3}, Lr4;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method public static final b(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/Alignment;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p2, Landroidx/compose/foundation/layout/BoxChildDataNode;->x:Landroidx/compose/ui/BiasAlignment;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v0, p2

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_1
    move-object v0, p6

    .line 23
    :goto_2
    iget p2, p1, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 24
    .line 25
    iget p6, p1, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 26
    .line 27
    int-to-long v1, p2

    .line 28
    const/16 p2, 0x20

    .line 29
    .line 30
    shl-long/2addr v1, p2

    .line 31
    int-to-long v3, p6

    .line 32
    const-wide v5, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v3, v5

    .line 38
    or-long/2addr v1, v3

    .line 39
    int-to-long v3, p4

    .line 40
    shl-long/2addr v3, p2

    .line 41
    int-to-long p4, p5

    .line 42
    and-long/2addr p4, v5

    .line 43
    or-long/2addr v3, p4

    .line 44
    move-object v5, p3

    .line 45
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->h(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final c(Z)Landroidx/collection/MutableScatterMap;
    .locals 3

    .line 1
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 9
    .line 10
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    .line 21
    .line 22
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 29
    .line 30
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->c:Landroidx/compose/ui/BiasAlignment;

    .line 31
    .line 32
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 39
    .line 40
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    .line 41
    .line 42
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 49
    .line 50
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 51
    .line 52
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 59
    .line 60
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    .line 61
    .line 62
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 69
    .line 70
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->g:Landroidx/compose/ui/BiasAlignment;

    .line 71
    .line 72
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 79
    .line 80
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 81
    .line 82
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 89
    .line 90
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    .line 91
    .line 92
    invoke-direct {v1, v2, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public static final d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->a:Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->b:Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object v0
.end method
