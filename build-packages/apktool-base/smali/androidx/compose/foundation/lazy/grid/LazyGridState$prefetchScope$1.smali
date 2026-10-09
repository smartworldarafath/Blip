.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/ArrayList;
    .locals 19

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    move-object v9, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v9, 0x0

    .line 23
    :goto_0
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    :try_start_0
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 32
    .line 33
    :goto_1
    move-object v8, v3

    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_4

    .line 37
    :cond_1
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

    .line 38
    .line 39
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_2
    if-eqz v8, :cond_2

    .line 49
    .line 50
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    iput v3, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 57
    .line 58
    iget-object v3, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->k:Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    move-object v6, v3

    .line 69
    check-cast v6, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    const/4 v3, 0x0

    .line 76
    move v12, v3

    .line 77
    :goto_3
    if-ge v12, v11, :cond_2

    .line 78
    .line 79
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lkotlin/Pair;

    .line 84
    .line 85
    iget-object v13, v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 86
    .line 87
    iget-object v7, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    iget-object v3, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 98
    .line 99
    move-object v7, v5

    .line 100
    iget-wide v4, v3, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 101
    .line 102
    sget-object v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->w:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 103
    .line 104
    new-instance v18, Ls2;

    .line 105
    .line 106
    move-wide v15, v4

    .line 107
    move-object v5, v7

    .line 108
    move-object/from16 v3, v18

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    move/from16 v7, p1

    .line 112
    .line 113
    invoke-direct/range {v3 .. v8}, Ls2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v18, v3

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    invoke-virtual/range {v13 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->a(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    add-int/lit8 v12, v12, 0x1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    invoke-static {v2, v10, v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :goto_4
    invoke-static {v2, v10, v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method
