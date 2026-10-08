.class public abstract Landroidx/compose/material/icons/automirrored/rounded/ArrowBackKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/ArrowBackKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const-string v2, "AutoMirrored.Rounded.ArrowBack"

    .line 12
    .line 13
    const/high16 v3, 0x41c00000    # 24.0f

    .line 14
    .line 15
    const/high16 v4, 0x41c00000    # 24.0f

    .line 16
    .line 17
    const/high16 v5, 0x41c00000    # 24.0f

    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->b:J

    .line 32
    .line 33
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const/high16 v2, 0x41300000    # 11.0f

    .line 42
    .line 43
    const/high16 v3, 0x41980000    # 19.0f

    .line 44
    .line 45
    invoke-virtual {v4, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 46
    .line 47
    .line 48
    const v2, 0x40fa8f5c    # 7.83f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 52
    .line 53
    .line 54
    const v5, 0x409c28f6    # 4.88f

    .line 55
    .line 56
    .line 57
    const v6, -0x3f63d70a    # -4.88f

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const v10, -0x404a3d71    # -1.42f

    .line 65
    .line 66
    .line 67
    const v5, 0x3ec7ae14    # 0.39f

    .line 68
    .line 69
    .line 70
    const v6, -0x413851ec    # -0.39f

    .line 71
    .line 72
    .line 73
    const v7, 0x3ec7ae14    # 0.39f

    .line 74
    .line 75
    .line 76
    const v8, -0x407c28f6    # -1.03f

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 80
    .line 81
    .line 82
    const v9, -0x404b851f    # -1.41f

    .line 83
    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    const v5, -0x413851ec    # -0.39f

    .line 87
    .line 88
    .line 89
    const v7, -0x407d70a4    # -1.02f

    .line 90
    .line 91
    .line 92
    const v8, -0x413851ec    # -0.39f

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 96
    .line 97
    .line 98
    const v5, -0x3f2d1eb8    # -6.59f

    .line 99
    .line 100
    .line 101
    const v11, 0x40d2e148    # 6.59f

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v5, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 105
    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    const v10, 0x3fb47ae1    # 1.41f

    .line 109
    .line 110
    .line 111
    const v5, -0x413851ec    # -0.39f

    .line 112
    .line 113
    .line 114
    const v6, 0x3ec7ae14    # 0.39f

    .line 115
    .line 116
    .line 117
    const v7, -0x413851ec    # -0.39f

    .line 118
    .line 119
    .line 120
    const v8, 0x3f828f5c    # 1.02f

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 127
    .line 128
    .line 129
    const v9, 0x3fb47ae1    # 1.41f

    .line 130
    .line 131
    .line 132
    const/4 v10, 0x0

    .line 133
    const v5, 0x3ec7ae14    # 0.39f

    .line 134
    .line 135
    .line 136
    const v7, 0x3f828f5c    # 1.02f

    .line 137
    .line 138
    .line 139
    const v8, 0x3ec7ae14    # 0.39f

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 143
    .line 144
    .line 145
    const/4 v9, 0x0

    .line 146
    const v10, -0x404b851f    # -1.41f

    .line 147
    .line 148
    .line 149
    const v6, -0x413851ec    # -0.39f

    .line 150
    .line 151
    .line 152
    const v7, 0x3ec7ae14    # 0.39f

    .line 153
    .line 154
    .line 155
    const v8, -0x407d70a4    # -1.02f

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 159
    .line 160
    .line 161
    const/high16 v5, 0x41500000    # 13.0f

    .line 162
    .line 163
    invoke-virtual {v4, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 167
    .line 168
    .line 169
    const/high16 v9, 0x3f800000    # 1.0f

    .line 170
    .line 171
    const/high16 v10, -0x40800000    # -1.0f

    .line 172
    .line 173
    const v5, 0x3f0ccccd    # 0.55f

    .line 174
    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    const/high16 v7, 0x3f800000    # 1.0f

    .line 178
    .line 179
    const v8, -0x4119999a    # -0.45f

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 183
    .line 184
    .line 185
    const v2, -0x4119999a    # -0.45f

    .line 186
    .line 187
    .line 188
    const/high16 v3, -0x40800000    # -1.0f

    .line 189
    .line 190
    invoke-virtual {v4, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 194
    .line 195
    .line 196
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    sput-object v0, Landroidx/compose/material/icons/automirrored/rounded/ArrowBackKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 206
    .line 207
    return-object v0
.end method
