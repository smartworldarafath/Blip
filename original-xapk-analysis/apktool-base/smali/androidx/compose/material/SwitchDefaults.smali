.class public abstract Landroidx/compose/material/SwitchDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/SwitchColors;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroidx/compose/material/Colors;->d:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 16
    .line 17
    iget-wide v3, v1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->f()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->d()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    const v5, 0x3ec28f5c    # 0.38f

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v5, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static {v3, v4, v6}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->f()J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v11

    .line 58
    invoke-static {v5, v5, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-static {v3, v4, v6}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->f()J

    .line 71
    .line 72
    .line 73
    move-result-wide v13

    .line 74
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    invoke-static {v5, v5, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-static {v7, v8, v6}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 83
    .line 84
    .line 85
    move-result-wide v13

    .line 86
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    move-wide v15, v7

    .line 91
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->f()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-static {v13, v14, v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    invoke-static {v5, v5, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    invoke-static {v1, v2, v8}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 104
    .line 105
    .line 106
    move-result-wide v13

    .line 107
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-wide/from16 v17, v6

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->f()J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    new-instance v0, Landroidx/compose/material/DefaultSwitchColors;

    .line 122
    .line 123
    const v7, 0x3f0a3d71    # 0.54f

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v4, v7}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 127
    .line 128
    .line 129
    move-result-wide v13

    .line 130
    const v8, 0x3ec28f5c    # 0.38f

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2, v8}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    invoke-static {v9, v10, v7}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 138
    .line 139
    .line 140
    move-result-wide v9

    .line 141
    invoke-static {v5, v6, v8}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    move-wide v7, v15

    .line 146
    move-wide/from16 v15, v17

    .line 147
    .line 148
    move-wide/from16 v17, v5

    .line 149
    .line 150
    move-wide v5, v13

    .line 151
    move-wide v13, v9

    .line 152
    move-wide v9, v1

    .line 153
    move-object v2, v0

    .line 154
    invoke-direct/range {v2 .. v18}, Landroidx/compose/material/DefaultSwitchColors;-><init>(JJJJJJJJ)V

    .line 155
    .line 156
    .line 157
    return-object v2
.end method
