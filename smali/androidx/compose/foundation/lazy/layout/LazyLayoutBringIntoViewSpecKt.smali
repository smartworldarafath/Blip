.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutBringIntoViewSpecKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    .line 19
    and-int/lit16 v2, p2, 0x380

    .line 20
    .line 21
    xor-int/lit16 v2, v2, 0x180

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    const/16 v5, 0x100

    .line 26
    .line 27
    if-le v2, v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :cond_0
    and-int/lit16 v2, p2, 0x180

    .line 36
    .line 37
    if-ne v2, v5, :cond_2

    .line 38
    .line 39
    :cond_1
    move v2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v2, v3

    .line 42
    :goto_0
    and-int/lit8 v5, p2, 0xe

    .line 43
    .line 44
    xor-int/lit8 v5, v5, 0x6

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    if-le v5, v6, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_4

    .line 54
    .line 55
    :cond_3
    and-int/lit8 v5, p2, 0x6

    .line 56
    .line 57
    if-ne v5, v6, :cond_5

    .line 58
    .line 59
    :cond_4
    move v5, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_5
    move v5, v3

    .line 62
    :goto_1
    or-int/2addr v2, v5

    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    or-int/2addr v2, v5

    .line 72
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    or-int/2addr v2, v5

    .line 77
    and-int/lit8 v5, p2, 0x70

    .line 78
    .line 79
    xor-int/lit8 v5, v5, 0x30

    .line 80
    .line 81
    const/16 v6, 0x20

    .line 82
    .line 83
    if-le v5, v6, :cond_6

    .line 84
    .line 85
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_7

    .line 90
    .line 91
    :cond_6
    and-int/lit8 p2, p2, 0x30

    .line 92
    .line 93
    if-ne p2, v6, :cond_8

    .line 94
    .line 95
    :cond_7
    move v3, v4

    .line 96
    :cond_8
    or-int p2, v2, v3

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-nez p2, :cond_9

    .line 103
    .line 104
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 105
    .line 106
    if-ne v2, p2, :cond_a

    .line 107
    .line 108
    :cond_9
    new-instance v2, Landroidx/compose/foundation/lazy/layout/StickyHeaderBringIntoViewSpec;

    .line 109
    .line 110
    invoke-direct {v2, p0, v1, v0}, Landroidx/compose/foundation/lazy/layout/StickyHeaderBringIntoViewSpec;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_a
    check-cast v2, Landroidx/compose/foundation/lazy/layout/StickyHeaderBringIntoViewSpec;

    .line 117
    .line 118
    return-object v2
.end method
