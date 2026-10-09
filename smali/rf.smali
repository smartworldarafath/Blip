.class public final synthetic Lrf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic k:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic n:Landroidx/compose/runtime/MutableState;

.field public final synthetic o:Lkotlin/ranges/ClosedFloatingPointRange;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrf;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 5
    .line 6
    iput-object p2, p0, Lrf;->k:Landroidx/compose/runtime/MutableFloatState;

    .line 7
    .line 8
    iput-object p3, p0, Lrf;->l:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 9
    .line 10
    iput-object p4, p0, Lrf;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 11
    .line 12
    iput-object p5, p0, Lrf;->n:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    iput-object p6, p0, Lrf;->o:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iget-object v0, p0, Lrf;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-float/2addr v1, p1

    .line 18
    iget-object p1, p0, Lrf;->k:Landroidx/compose/runtime/MutableFloatState;

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-float/2addr v2, v1

    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object v0, p0, Lrf;->l:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 39
    .line 40
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 41
    .line 42
    iget-object v3, p0, Lrf;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 43
    .line 44
    iget v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 45
    .line 46
    invoke-static {p1, v2, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v2, p0, Lrf;->n:Landroidx/compose/runtime/MutableState;

    .line 51
    .line 52
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 59
    .line 60
    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 61
    .line 62
    iget-object p0, p0, Lrf;->o:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 63
    .line 64
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    sub-float/2addr v3, v0

    .line 81
    cmpg-float v5, v3, v1

    .line 82
    .line 83
    if-nez v5, :cond_0

    .line 84
    .line 85
    move p1, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    sub-float/2addr p1, v0

    .line 88
    div-float/2addr p1, v3

    .line 89
    :goto_0
    cmpg-float v0, p1, v1

    .line 90
    .line 91
    if-gez v0, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move v1, p1

    .line 95
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 96
    .line 97
    cmpl-float v0, v1, p1

    .line 98
    .line 99
    if-lez v0, :cond_2

    .line 100
    .line 101
    move v1, p1

    .line 102
    :cond_2
    invoke-static {v4, p0, v1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0
.end method
