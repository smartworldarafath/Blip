.class public abstract Landroidx/compose/material/icons/rounded/EditKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material/icons/rounded/EditKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Edit"

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
    const/4 v10, 0x0

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
    const/high16 v2, 0x40400000    # 3.0f

    .line 42
    .line 43
    const v3, 0x418bae14    # 17.46f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 47
    .line 48
    .line 49
    const v2, 0x40428f5c    # 3.04f

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 53
    .line 54
    .line 55
    const/high16 v9, 0x3f000000    # 0.5f

    .line 56
    .line 57
    const/high16 v10, 0x3f000000    # 0.5f

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const v6, 0x3e8f5c29    # 0.28f

    .line 61
    .line 62
    .line 63
    const v7, 0x3e6147ae    # 0.22f

    .line 64
    .line 65
    .line 66
    const/high16 v8, 0x3f000000    # 0.5f

    .line 67
    .line 68
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 72
    .line 73
    .line 74
    const v9, 0x3eb33333    # 0.35f

    .line 75
    .line 76
    .line 77
    const v10, -0x41e66666    # -0.15f

    .line 78
    .line 79
    .line 80
    const v5, 0x3e051eb8    # 0.13f

    .line 81
    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    const v7, 0x3e851eb8    # 0.26f

    .line 85
    .line 86
    .line 87
    const v8, -0x42b33333    # -0.05f

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 91
    .line 92
    .line 93
    const v2, 0x418e7ae1    # 17.81f

    .line 94
    .line 95
    .line 96
    const v3, 0x411f0a3d    # 9.94f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 100
    .line 101
    .line 102
    const/high16 v2, -0x3f900000    # -3.75f

    .line 103
    .line 104
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 105
    .line 106
    .line 107
    const v2, 0x4049999a    # 3.15f

    .line 108
    .line 109
    .line 110
    const v3, 0x4188cccd    # 17.1f

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 114
    .line 115
    .line 116
    const v9, -0x41e66666    # -0.15f

    .line 117
    .line 118
    .line 119
    const v10, 0x3eb851ec    # 0.36f

    .line 120
    .line 121
    .line 122
    const v5, -0x42333333    # -0.1f

    .line 123
    .line 124
    .line 125
    const v6, 0x3dcccccd    # 0.1f

    .line 126
    .line 127
    .line 128
    const v7, -0x41e66666    # -0.15f

    .line 129
    .line 130
    .line 131
    const v8, 0x3e6147ae    # 0.22f

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 138
    .line 139
    .line 140
    const v2, 0x41a5ae14    # 20.71f

    .line 141
    .line 142
    .line 143
    const v3, 0x40e147ae    # 7.04f

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 147
    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const v10, -0x404b851f    # -1.41f

    .line 151
    .line 152
    .line 153
    const v5, 0x3ec7ae14    # 0.39f

    .line 154
    .line 155
    .line 156
    const v6, -0x413851ec    # -0.39f

    .line 157
    .line 158
    .line 159
    const v7, 0x3ec7ae14    # 0.39f

    .line 160
    .line 161
    .line 162
    const v8, -0x407d70a4    # -1.02f

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 166
    .line 167
    .line 168
    const v2, -0x3fea3d71    # -2.34f

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 172
    .line 173
    .line 174
    const v9, -0x404b851f    # -1.41f

    .line 175
    .line 176
    .line 177
    const/4 v10, 0x0

    .line 178
    const v5, -0x413851ec    # -0.39f

    .line 179
    .line 180
    .line 181
    const v7, -0x407d70a4    # -1.02f

    .line 182
    .line 183
    .line 184
    const v8, -0x413851ec    # -0.39f

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 188
    .line 189
    .line 190
    const v2, -0x4015c28f    # -1.83f

    .line 191
    .line 192
    .line 193
    const v3, 0x3fea3d71    # 1.83f

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 197
    .line 198
    .line 199
    const/high16 v5, 0x40700000    # 3.75f

    .line 200
    .line 201
    invoke-virtual {v4, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 208
    .line 209
    .line 210
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sput-object v0, Landroidx/compose/material/icons/rounded/EditKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 220
    .line 221
    return-object v0
.end method
