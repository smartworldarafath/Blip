.class public abstract Lnet/blip/android/ui/components/MaxRowGridKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/ArrayList;IIFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    move-object/from16 v3, p7

    .line 2
    .line 3
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0x57821589

    .line 6
    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p8, 0x6

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x10

    .line 23
    .line 24
    :goto_0
    or-int/2addr v0, v1

    .line 25
    or-int/lit16 v0, v0, 0x180

    .line 26
    .line 27
    move/from16 v7, p3

    .line 28
    .line 29
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x800

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v1, 0x400

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v1

    .line 41
    const v1, 0x492493

    .line 42
    .line 43
    .line 44
    and-int/2addr v1, v0

    .line 45
    const v2, 0x492492

    .line 46
    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    move v1, v10

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_2
    and-int/2addr v0, v10

    .line 55
    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    new-instance v4, Lya;

    .line 62
    .line 63
    move-object v6, p1

    .line 64
    move/from16 v5, p4

    .line 65
    .line 66
    move-object/from16 v9, p5

    .line 67
    .line 68
    move-object/from16 v8, p6

    .line 69
    .line 70
    invoke-direct/range {v4 .. v9}, Lya;-><init>(FLjava/util/ArrayList;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;)V

    .line 71
    .line 72
    .line 73
    const p0, -0x74a9a533

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const/16 v4, 0xc06

    .line 81
    .line 82
    const/4 v5, 0x6

    .line 83
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 87
    .line 88
    .line 89
    move-object v5, v0

    .line 90
    move v7, v10

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 93
    .line 94
    .line 95
    move-object v5, p0

    .line 96
    move v7, p2

    .line 97
    :goto_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    new-instance v4, Lza;

    .line 104
    .line 105
    move-object v6, p1

    .line 106
    move/from16 v8, p3

    .line 107
    .line 108
    move/from16 v9, p4

    .line 109
    .line 110
    move-object/from16 v10, p5

    .line 111
    .line 112
    move-object/from16 v11, p6

    .line 113
    .line 114
    move/from16 v12, p8

    .line 115
    .line 116
    invoke-direct/range {v4 .. v12}, Lza;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/ArrayList;IIFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 117
    .line 118
    .line 119
    iput-object v4, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    :cond_4
    return-void
.end method
