.class final synthetic Landroidx/compose/material/SliderKt$Slider$2$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic s:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic t:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$Slider$2$2$1;->r:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$Slider$2$2$1;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$Slider$2$2$1;->t:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 6
    .line 7
    const-string v4, "Slider$lambda$3$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    .line 12
    .line 13
    const-string v3, "scaleToOffset"

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/material/SliderKt$Slider$2$2$1;->r:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Landroidx/compose/material/SliderKt$Slider$2$2$1;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 28
    .line 29
    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/compose/material/SliderKt$Slider$2$2$1;->t:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 32
    .line 33
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 34
    .line 35
    sub-float/2addr v0, v1

    .line 36
    const/4 v3, 0x0

    .line 37
    cmpg-float v4, v0, v3

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    move p1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sub-float/2addr p1, v1

    .line 44
    div-float/2addr p1, v0

    .line 45
    :goto_0
    cmpg-float v0, p1, v3

    .line 46
    .line 47
    if-gez v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v3, p1

    .line 51
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 52
    .line 53
    cmpl-float v0, v3, p1

    .line 54
    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    move v3, p1

    .line 58
    :cond_2
    invoke-static {v2, p0, v3}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
