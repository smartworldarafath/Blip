.class public abstract Landroidx/compose/ui/graphics/ShaderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(JJLjava/util/List;Ljava/util/List;)Landroid/graphics/LinearGradient;
    .locals 19

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v1, v2, :cond_3

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1d

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-array v8, v1, [J

    .line 26
    .line 27
    :goto_0
    if-ge v3, v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 34
    .line 35
    iget-wide v4, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 36
    .line 37
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/AndroidColor_androidKt;->b(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    aput-wide v4, v8, v3

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->U(Ljava/util/List;)[F

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    sget-object v3, Landroidx/compose/ui/graphics/GradientColorLongVerifier;->a:Landroidx/compose/ui/graphics/GradientColorLongVerifier;

    .line 51
    .line 52
    move-wide/from16 v4, p0

    .line 53
    .line 54
    move-wide/from16 v6, p2

    .line 55
    .line 56
    invoke-virtual/range {v3 .. v10}, Landroidx/compose/ui/graphics/GradientColorLongVerifier;->a(JJ[J[FI)Landroid/graphics/LinearGradient;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_1
    new-instance v11, Landroid/graphics/LinearGradient;

    .line 62
    .line 63
    const/16 v1, 0x20

    .line 64
    .line 65
    shr-long v4, p0, v1

    .line 66
    .line 67
    long-to-int v2, v4

    .line 68
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const-wide v4, 0xffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long v6, p0, v4

    .line 78
    .line 79
    long-to-int v2, v6

    .line 80
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    shr-long v1, p2, v1

    .line 85
    .line 86
    long-to-int v1, v1

    .line 87
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    and-long v1, p2, v4

    .line 92
    .line 93
    long-to-int v1, v1

    .line 94
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    new-array v2, v1, [I

    .line 103
    .line 104
    :goto_1
    if-ge v3, v1, :cond_2

    .line 105
    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 111
    .line 112
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->a:J

    .line 113
    .line 114
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    aput v4, v2, v3

    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->U(Ljava/util/List;)[F

    .line 124
    .line 125
    .line 126
    move-result-object v17

    .line 127
    invoke-static {v10}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->a(I)Landroid/graphics/Shader$TileMode;

    .line 128
    .line 129
    .line 130
    move-result-object v18

    .line 131
    move-object/from16 v16, v2

    .line 132
    .line 133
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 134
    .line 135
    .line 136
    return-object v11

    .line 137
    :cond_3
    const-string v0, "colors and colorStops arguments must have equal length."

    .line 138
    .line 139
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    return-object v0
.end method
