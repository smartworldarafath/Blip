.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final synthetic a:Landroidx/compose/ui/layout/MeasureResult;

.field public final synthetic b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/MeasureResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 5
    .line 6
    iput p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->c:I

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->d:Landroidx/compose/ui/layout/MeasureResult;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->b()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->c:I

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 6
    .line 7
    iput v1, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->d:Landroidx/compose/ui/layout/MeasureResult;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->v:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    iget-object v1, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->u:Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    iget-object v3, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    add-int/lit8 v4, v4, -0x2

    .line 22
    .line 23
    if-ltz v4, :cond_6

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    :goto_0
    aget-wide v7, v3, v6

    .line 27
    .line 28
    not-long v9, v7

    .line 29
    const/4 v11, 0x7

    .line 30
    shl-long/2addr v9, v11

    .line 31
    and-long/2addr v9, v7

    .line 32
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v9, v11

    .line 38
    cmp-long v9, v9, v11

    .line 39
    .line 40
    if-eqz v9, :cond_5

    .line 41
    .line 42
    sub-int v9, v6, v4

    .line 43
    .line 44
    not-int v9, v9

    .line 45
    ushr-int/lit8 v9, v9, 0x1f

    .line 46
    .line 47
    const/16 v10, 0x8

    .line 48
    .line 49
    rsub-int/lit8 v9, v9, 0x8

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    :goto_1
    if-ge v11, v9, :cond_4

    .line 53
    .line 54
    const-wide/16 v12, 0xff

    .line 55
    .line 56
    and-long/2addr v12, v7

    .line 57
    const-wide/16 v14, 0x80

    .line 58
    .line 59
    cmp-long v12, v12, v14

    .line 60
    .line 61
    if-gez v12, :cond_3

    .line 62
    .line 63
    shl-int/lit8 v12, v6, 0x3

    .line 64
    .line 65
    add-int/2addr v12, v11

    .line 66
    iget-object v13, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v13, v13, v12

    .line 69
    .line 70
    iget-object v14, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 71
    .line 72
    aget-object v14, v14, v12

    .line 73
    .line 74
    check-cast v14, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 75
    .line 76
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/collection/MutableVector;->i(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    if-ltz v15, :cond_0

    .line 81
    .line 82
    iget v5, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 83
    .line 84
    if-lt v15, v5, :cond_3

    .line 85
    .line 86
    :cond_0
    if-ltz v15, :cond_1

    .line 87
    .line 88
    iget-object v5, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 89
    .line 90
    aget-object v16, v5, v15

    .line 91
    .line 92
    sget-object v16, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->b:Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v16, v5, v15

    .line 95
    .line 96
    :cond_1
    iget-object v5, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 97
    .line 98
    invoke-virtual {v5, v13}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    invoke-interface {v14}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->a()V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {v1, v12}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_3
    shr-long/2addr v7, v10

    .line 111
    add-int/lit8 v11, v11, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    if-ne v9, v10, :cond_6

    .line 115
    .line 116
    :cond_5
    if-eq v6, v4, :cond_6

    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    iget v0, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:I

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->e()Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f()Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->f()Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;->a:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->g()Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
