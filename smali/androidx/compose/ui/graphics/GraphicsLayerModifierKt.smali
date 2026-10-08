.class public abstract Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/BlockGraphicsLayerElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/BlockGraphicsLayerElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static b(Landroidx/compose/ui/Modifier;FFFFJLandroidx/compose/ui/graphics/Shape;ZJJII)Landroidx/compose/ui/Modifier;
    .locals 27

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v4, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v4, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move v5, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v5, p2

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move v6, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v6, p3

    .line 28
    .line 29
    :goto_2
    and-int/lit16 v1, v0, 0x100

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    move v12, v1

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v12, p4

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v1, v0, 0x400

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    sget-wide v1, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 43
    .line 44
    move-wide v14, v1

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-wide/from16 v14, p5

    .line 47
    .line 48
    :goto_4
    and-int/lit16 v1, v0, 0x800

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v16, p7

    .line 58
    .line 59
    :goto_5
    and-int/lit16 v1, v0, 0x1000

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    move/from16 v17, v2

    .line 65
    .line 66
    goto :goto_6

    .line 67
    :cond_6
    move/from16 v17, p8

    .line 68
    .line 69
    :goto_6
    and-int/lit16 v1, v0, 0x4000

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    sget-wide v7, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a:J

    .line 74
    .line 75
    move-wide/from16 v19, v7

    .line 76
    .line 77
    goto :goto_7

    .line 78
    :cond_7
    move-wide/from16 v19, p9

    .line 79
    .line 80
    :goto_7
    const v1, 0x8000

    .line 81
    .line 82
    .line 83
    and-int/2addr v1, v0

    .line 84
    if-eqz v1, :cond_8

    .line 85
    .line 86
    sget-wide v7, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a:J

    .line 87
    .line 88
    move-wide/from16 v21, v7

    .line 89
    .line 90
    goto :goto_8

    .line 91
    :cond_8
    move-wide/from16 v21, p11

    .line 92
    .line 93
    :goto_8
    const/high16 v1, 0x10000

    .line 94
    .line 95
    and-int/2addr v0, v1

    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    move/from16 v23, v2

    .line 99
    .line 100
    goto :goto_9

    .line 101
    :cond_9
    move/from16 v23, p13

    .line 102
    .line 103
    :goto_9
    sget-object v26, Landroidx/compose/ui/graphics/LayerOutsets;->a:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 104
    .line 105
    new-instance v3, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    const/high16 v13, 0x41000000    # 8.0f

    .line 113
    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    const/16 v24, 0x3

    .line 117
    .line 118
    const/16 v25, 0x0

    .line 119
    .line 120
    invoke-direct/range {v3 .. v26}, Landroidx/compose/ui/graphics/GraphicsLayerElement;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/ui/graphics/LayerOutsets;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v0, p0

    .line 124
    .line 125
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method
