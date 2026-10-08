.class public abstract Lnet/blip/shared/OnDisposeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, 0x288d7305

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    or-int/lit8 v0, p3, 0x6

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0x10

    .line 25
    .line 26
    :goto_0
    or-int/2addr v0, v1

    .line 27
    and-int/lit8 v1, v0, 0x13

    .line 28
    .line 29
    const/16 v3, 0x12

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eq v1, v3, :cond_1

    .line 34
    .line 35
    move v1, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v1, v4

    .line 38
    :goto_1
    and-int/lit8 v3, v0, 0x1

    .line 39
    .line 40
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    and-int/lit8 p0, v0, 0x70

    .line 47
    .line 48
    if-ne p0, v2, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v5, v4

    .line 52
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 59
    .line 60
    if-ne p0, v0, :cond_4

    .line 61
    .line 62
    :cond_3
    new-instance p0, Lhc;

    .line 63
    .line 64
    invoke-direct {p0, v4, p1}, Lhc;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 71
    .line 72
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    invoke-static {v0, p0, p2}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 75
    .line 76
    .line 77
    move-object p0, v0

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-eqz p2, :cond_6

    .line 87
    .line 88
    new-instance v0, La0;

    .line 89
    .line 90
    const/16 v1, 0x17

    .line 91
    .line 92
    invoke-direct {v0, p3, v1, p0, p1}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 96
    .line 97
    :cond_6
    return-void
.end method
