.class public abstract Lnet/blip/android/ui/androidtheme/AndroidAvatarThemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(JJ)Lnet/blip/shared/AvatarTheme$Appearance;
    .locals 18

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    new-instance v2, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 4
    .line 5
    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 6
    .line 7
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->d:J

    .line 8
    .line 9
    sget-object v10, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->c:Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 10
    .line 11
    const/16 v4, 0x18

    .line 12
    .line 13
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v7

    .line 17
    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 18
    .line 19
    const-wide v11, 0x3f9999999999999aL    # 0.025

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    .line 25
    .line 26
    .line 27
    move-result-wide v11

    .line 28
    new-instance v4, Landroidx/compose/ui/text/TextStyle;

    .line 29
    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const v17, 0xffff58

    .line 33
    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    const-wide/16 v14, 0x0

    .line 37
    .line 38
    invoke-direct/range {v4 .. v17}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lnet/blip/shared/Paintable;

    .line 42
    .line 43
    new-instance v6, Lj0;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-direct {v6, v7, v0, v1}, Lj0;-><init>(IJ)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v5, v6}, Lnet/blip/shared/Paintable;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 50
    .line 51
    .line 52
    new-instance v6, Lnet/blip/shared/Paintable;

    .line 53
    .line 54
    new-instance v7, Lj0;

    .line 55
    .line 56
    const/4 v8, 0x1

    .line 57
    invoke-direct {v7, v8, v0, v1}, Lj0;-><init>(IJ)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Lnet/blip/shared/Paintable;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lnet/blip/shared/Paintable;

    .line 64
    .line 65
    new-instance v8, Lj0;

    .line 66
    .line 67
    const/4 v9, 0x2

    .line 68
    invoke-direct {v8, v9, v0, v1}, Lj0;-><init>(IJ)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v7, v8}, Lnet/blip/shared/Paintable;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lnet/blip/shared/Paintable;

    .line 75
    .line 76
    new-instance v9, Lj0;

    .line 77
    .line 78
    const/4 v10, 0x3

    .line 79
    invoke-direct {v9, v10, v0, v1}, Lj0;-><init>(IJ)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v8, v9}, Lnet/blip/shared/Paintable;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 83
    .line 84
    .line 85
    new-instance v9, Lnet/blip/shared/Paintable;

    .line 86
    .line 87
    new-instance v10, Lj0;

    .line 88
    .line 89
    const/4 v11, 0x4

    .line 90
    invoke-direct {v10, v11, v0, v1}, Lj0;-><init>(IJ)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v9, v10}, Lnet/blip/shared/Paintable;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 94
    .line 95
    .line 96
    new-instance v10, Lnet/blip/shared/Paintable;

    .line 97
    .line 98
    new-instance v0, Lk0;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-direct {v0, v1}, Lk0;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v10, v0}, Lnet/blip/shared/Paintable;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    move-object v0, v2

    .line 108
    move-object v1, v3

    .line 109
    move-wide/from16 v2, p0

    .line 110
    .line 111
    invoke-direct/range {v0 .. v10}, Lnet/blip/shared/AvatarTheme$Appearance;-><init>(Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/text/TextStyle;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;Lnet/blip/shared/Paintable;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method

.method public static final b(JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;)Lnet/blip/shared/LayerPainter;
    .locals 3

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->d:J

    .line 2
    .line 3
    const/16 v2, 0x38

    .line 4
    .line 5
    invoke-static {p2, v0, v1, p4, v2}, Lnet/blip/shared/BrushPainterKt;->a(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/runtime/Composer;I)Lnet/blip/shared/BrushPainter;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-static {p3, p0, p1, p4, v0}, Lnet/blip/shared/BrushPainterKt;->a(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/runtime/Composer;I)Lnet/blip/shared/BrushPainter;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [Landroidx/compose/ui/graphics/painter/Painter;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    aput-object p2, p1, p3

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    aput-object p0, p1, p2

    .line 23
    .line 24
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 37
    .line 38
    if-ne p2, p0, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance p2, Lnet/blip/shared/LayerPainter;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-array p1, p3, [Landroidx/compose/ui/graphics/painter/Painter;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, [Landroidx/compose/ui/graphics/painter/Painter;

    .line 53
    .line 54
    array-length p1, p0

    .line 55
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, [Landroidx/compose/ui/graphics/painter/Painter;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lnet/blip/shared/LayerPainter;-><init>([Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    check-cast p2, Lnet/blip/shared/LayerPainter;

    .line 68
    .line 69
    return-object p2
.end method
