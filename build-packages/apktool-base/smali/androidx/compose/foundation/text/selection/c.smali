.class public final synthetic Landroidx/compose/foundation/text/selection/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/c;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/c;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a:Landroidx/compose/animation/core/AnimationVector2D;

    .line 11
    .line 12
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const p1, 0x2d4acc1b

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 25
    .line 26
    if-ne p1, p3, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/c;->j:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast p1, Landroidx/compose/runtime/State;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-ne v0, p3, :cond_1

    .line 44
    .line 45
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 52
    .line 53
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 54
    .line 55
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 56
    .line 57
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->b:Landroidx/compose/animation/core/TwoWayConverter;

    .line 61
    .line 62
    sget-wide v4, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->c:J

    .line 63
    .line 64
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 65
    .line 66
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 67
    .line 68
    .line 69
    const/16 v4, 0x8

    .line 70
    .line 71
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    if-ne v2, p3, :cond_3

    .line 90
    .line 91
    :cond_2
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-direct {v2, p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    invoke-static {p2, p1, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, v0, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    if-ne v1, p3, :cond_5

    .line 120
    .line 121
    :cond_4
    new-instance v1, Lzb;

    .line 122
    .line 123
    const/4 p3, 0x1

    .line 124
    invoke-direct {v1, p1, p3}, Lzb;-><init>(Landroidx/compose/runtime/State;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 131
    .line 132
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/c;->k:Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 142
    .line 143
    .line 144
    return-object p0
.end method
