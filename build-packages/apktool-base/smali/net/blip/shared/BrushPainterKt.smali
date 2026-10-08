.class public abstract Lnet/blip/shared/BrushPainterKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/runtime/Composer;I)Lnet/blip/shared/BrushPainter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 p1, p4, 0xe

    .line 10
    .line 11
    const/16 p2, 0x8

    .line 12
    .line 13
    or-int/2addr p1, p2

    .line 14
    and-int/lit8 p2, p1, 0xe

    .line 15
    .line 16
    xor-int/lit8 p2, p2, 0x6

    .line 17
    .line 18
    const/4 p4, 0x4

    .line 19
    if-le p2, p4, :cond_0

    .line 20
    .line 21
    move-object p2, p3

    .line 22
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 p1, p1, 0x6

    .line 31
    .line 32
    if-ne p1, p4, :cond_2

    .line 33
    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    :goto_0
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    or-int/2addr p1, p2

    .line 44
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 51
    .line 52
    if-ne p2, p1, :cond_4

    .line 53
    .line 54
    :cond_3
    new-instance p2, Lnet/blip/shared/BrushPainter;

    .line 55
    .line 56
    invoke-direct {p2, p0, v0}, Lnet/blip/shared/BrushPainter;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    check-cast p2, Lnet/blip/shared/BrushPainter;

    .line 63
    .line 64
    return-object p2
.end method
