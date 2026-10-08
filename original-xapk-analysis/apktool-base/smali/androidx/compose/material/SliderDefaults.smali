.class public abstract Landroidx/compose/material/SliderDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SliderColors;
    .locals 24

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    and-int/lit8 v1, p8, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->e()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    move-wide v4, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide/from16 v4, p0

    .line 18
    .line 19
    :goto_0
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->d()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    const v3, 0x3ec28f5c    # 0.38f

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v3, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->f()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    and-int/lit8 v1, p8, 0x4

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->e()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    move-wide v8, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-wide/from16 v8, p2

    .line 65
    .line 66
    :goto_1
    and-int/lit8 v1, p8, 0x8

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    const v1, 0x3e75c28f    # 0.24f

    .line 71
    .line 72
    .line 73
    invoke-static {v8, v9, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    move-wide v10, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-wide/from16 v10, p4

    .line 80
    .line 81
    :goto_2
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->d()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    const v3, 0x3ea3d70a    # 0.32f

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 93
    .line 94
    .line 95
    move-result-wide v12

    .line 96
    const v1, 0x3df5c28f    # 0.12f

    .line 97
    .line 98
    .line 99
    invoke-static {v12, v13, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 100
    .line 101
    .line 102
    move-result-wide v14

    .line 103
    invoke-static {v8, v9, v0}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    const v0, 0x3f0a3d71    # 0.54f

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    invoke-static {v8, v9, v0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 115
    .line 116
    .line 117
    move-result-wide v18

    .line 118
    invoke-static {v2, v3, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 119
    .line 120
    .line 121
    move-result-wide v20

    .line 122
    invoke-static {v14, v15, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 123
    .line 124
    .line 125
    move-result-wide v22

    .line 126
    move-wide/from16 v16, v2

    .line 127
    .line 128
    new-instance v3, Landroidx/compose/material/DefaultSliderColors;

    .line 129
    .line 130
    invoke-direct/range {v3 .. v23}, Landroidx/compose/material/DefaultSliderColors;-><init>(JJJJJJJJJJ)V

    .line 131
    .line 132
    .line 133
    return-object v3
.end method
