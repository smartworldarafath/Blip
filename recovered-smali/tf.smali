.class public final synthetic Ltf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:F

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:Lkotlin/ranges/ClosedFloatingPointRange;


# direct methods
.method public synthetic constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;FLandroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltf;->j:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 5
    .line 6
    iput-object p2, p0, Ltf;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput p3, p0, Ltf;->l:F

    .line 9
    .line 10
    iput-object p4, p0, Ltf;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iput-object p5, p0, Ltf;->n:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iget-object v0, p0, Ltf;->j:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-float/2addr v1, v0

    .line 22
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 23
    .line 24
    div-float/2addr v1, v0

    .line 25
    iget v0, p0, Ltf;->l:F

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Ltf;->k:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Ltf;->m:Landroidx/compose/runtime/MutableState;

    .line 44
    .line 45
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-float v3, v0, v3

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    cmpl-float v1, v3, v1

    .line 62
    .line 63
    if-lez v1, :cond_0

    .line 64
    .line 65
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Comparable;

    .line 70
    .line 71
    iget-object p0, p0, Ltf;->n:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 72
    .line 73
    invoke-interface {p0, v1}, Lkotlin/ranges/ClosedFloatingPointRange;->d(Ljava/lang/Comparable;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_0

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method
