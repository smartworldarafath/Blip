.class public abstract Landroidx/compose/material/icons/rounded/MusicNoteKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material/icons/rounded/MusicNoteKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.MusicNote"

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
    const/high16 v2, 0x41400000    # 12.0f

    .line 42
    .line 43
    const/high16 v3, 0x40a00000    # 5.0f

    .line 44
    .line 45
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 46
    .line 47
    .line 48
    const v2, 0x4108cccd    # 8.55f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 52
    .line 53
    .line 54
    const v9, -0x3faae148    # -3.33f

    .line 55
    .line 56
    .line 57
    const v10, -0x415c28f6    # -0.32f

    .line 58
    .line 59
    .line 60
    const v5, -0x408f5c29    # -0.94f

    .line 61
    .line 62
    .line 63
    const v6, -0x40f5c28f    # -0.54f

    .line 64
    .line 65
    .line 66
    const v7, -0x3ff9999a    # -2.1f

    .line 67
    .line 68
    .line 69
    const/high16 v8, -0x40c00000    # -0.75f

    .line 70
    .line 71
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 72
    .line 73
    .line 74
    const v9, -0x3fd8f5c3    # -2.61f

    .line 75
    .line 76
    .line 77
    const v10, 0x40447ae1    # 3.07f

    .line 78
    .line 79
    .line 80
    const v5, -0x40547ae1    # -1.34f

    .line 81
    .line 82
    .line 83
    const v6, 0x3ef5c28f    # 0.48f

    .line 84
    .line 85
    .line 86
    const v7, -0x3fe851ec    # -2.37f

    .line 87
    .line 88
    .line 89
    const v8, 0x3fd5c28f    # 1.67f

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 93
    .line 94
    .line 95
    const v9, 0x4092e148    # 4.59f

    .line 96
    .line 97
    .line 98
    const v10, 0x4094cccd    # 4.65f

    .line 99
    .line 100
    .line 101
    const v5, -0x41147ae1    # -0.46f

    .line 102
    .line 103
    .line 104
    const v6, 0x402f5c29    # 2.74f

    .line 105
    .line 106
    .line 107
    const v7, 0x3fee147b    # 1.86f

    .line 108
    .line 109
    .line 110
    const v8, 0x40a28f5c    # 5.08f

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 114
    .line 115
    .line 116
    const v9, 0x40566666    # 3.35f

    .line 117
    .line 118
    .line 119
    const v10, -0x3f7ccccd    # -4.1f

    .line 120
    .line 121
    .line 122
    const v5, 0x3ffae148    # 1.96f

    .line 123
    .line 124
    .line 125
    const v6, -0x416147ae    # -0.31f

    .line 126
    .line 127
    .line 128
    const v7, 0x40566666    # 3.35f

    .line 129
    .line 130
    .line 131
    const v8, -0x3ff8f5c3    # -2.11f

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 135
    .line 136
    .line 137
    const/high16 v2, 0x40e00000    # 7.0f

    .line 138
    .line 139
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 140
    .line 141
    .line 142
    const/high16 v2, 0x40000000    # 2.0f

    .line 143
    .line 144
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 145
    .line 146
    .line 147
    const/high16 v9, 0x40000000    # 2.0f

    .line 148
    .line 149
    const/high16 v10, -0x40000000    # -2.0f

    .line 150
    .line 151
    const v5, 0x3f8ccccd    # 1.1f

    .line 152
    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const/high16 v7, 0x40000000    # 2.0f

    .line 156
    .line 157
    const v8, -0x4099999a    # -0.9f

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 161
    .line 162
    .line 163
    const v2, -0x4099999a    # -0.9f

    .line 164
    .line 165
    .line 166
    const/high16 v3, -0x40000000    # -2.0f

    .line 167
    .line 168
    invoke-virtual {v4, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 172
    .line 173
    .line 174
    const/high16 v9, -0x40000000    # -2.0f

    .line 175
    .line 176
    const/high16 v10, 0x40000000    # 2.0f

    .line 177
    .line 178
    const v5, -0x40733333    # -1.1f

    .line 179
    .line 180
    .line 181
    const/high16 v7, -0x40000000    # -2.0f

    .line 182
    .line 183
    const v8, 0x3f666666    # 0.9f

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 190
    .line 191
    .line 192
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Landroidx/compose/material/icons/rounded/MusicNoteKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 202
    .line 203
    return-object v0
.end method
