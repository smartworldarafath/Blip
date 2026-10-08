.class public abstract Landroidx/compose/animation/SingleValueAnimationKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/compose/animation/SingleValueAnimationKt;->a:Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(JLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroidx/compose/animation/SingleValueAnimationKt;->a:Landroidx/compose/animation/core/SpringSpec;

    .line 6
    .line 7
    :cond_0
    move-object v2, p2

    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    move-object v5, p3

    .line 13
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 26
    .line 27
    if-ne p3, p2, :cond_2

    .line 28
    .line 29
    :cond_1
    sget-object p2, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->k:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p2, p3}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    move-object p3, p2

    .line 40
    check-cast p3, Landroidx/compose/animation/core/TwoWayConverter;

    .line 41
    .line 42
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    move-object v1, p3

    .line 46
    check-cast v1, Landroidx/compose/animation/core/TwoWayConverter;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 51
    .line 52
    .line 53
    shl-int/lit8 p0, p4, 0x3

    .line 54
    .line 55
    and-int/lit16 v6, p0, 0x380

    .line 56
    .line 57
    const/16 v7, 0x8

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    const-string v4, "ColorAnimation"

    .line 61
    .line 62
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
