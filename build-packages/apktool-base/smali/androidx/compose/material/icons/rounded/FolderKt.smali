.class public abstract Landroidx/compose/material/icons/rounded/FolderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material/icons/rounded/FolderKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Folder"

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
    const v2, 0x412970a4    # 10.59f

    .line 42
    .line 43
    .line 44
    const v3, 0x4092e148    # 4.59f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 48
    .line 49
    .line 50
    const v9, 0x4112b852    # 9.17f

    .line 51
    .line 52
    .line 53
    const/high16 v10, 0x40800000    # 4.0f

    .line 54
    .line 55
    const v5, 0x41235c29    # 10.21f

    .line 56
    .line 57
    .line 58
    const v6, 0x4086b852    # 4.21f

    .line 59
    .line 60
    .line 61
    const v7, 0x411b3333    # 9.7f

    .line 62
    .line 63
    .line 64
    const/high16 v8, 0x40800000    # 4.0f

    .line 65
    .line 66
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 67
    .line 68
    .line 69
    const/high16 v2, 0x40800000    # 4.0f

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 72
    .line 73
    .line 74
    const v9, -0x400147ae    # -1.99f

    .line 75
    .line 76
    .line 77
    const/high16 v10, 0x40000000    # 2.0f

    .line 78
    .line 79
    const v5, -0x40733333    # -1.1f

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const v7, -0x400147ae    # -1.99f

    .line 84
    .line 85
    .line 86
    const v8, 0x3f666666    # 0.9f

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 90
    .line 91
    .line 92
    const/high16 v2, 0x40000000    # 2.0f

    .line 93
    .line 94
    const/high16 v3, 0x41900000    # 18.0f

    .line 95
    .line 96
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 97
    .line 98
    .line 99
    const/high16 v9, 0x40000000    # 2.0f

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    const v6, 0x3f8ccccd    # 1.1f

    .line 103
    .line 104
    .line 105
    const v7, 0x3f666666    # 0.9f

    .line 106
    .line 107
    .line 108
    const/high16 v8, 0x40000000    # 2.0f

    .line 109
    .line 110
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 111
    .line 112
    .line 113
    const/high16 v2, 0x41800000    # 16.0f

    .line 114
    .line 115
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 116
    .line 117
    .line 118
    const/high16 v10, -0x40000000    # -2.0f

    .line 119
    .line 120
    const v5, 0x3f8ccccd    # 1.1f

    .line 121
    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    const/high16 v7, 0x40000000    # 2.0f

    .line 125
    .line 126
    const v8, -0x4099999a    # -0.9f

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 130
    .line 131
    .line 132
    const/high16 v2, 0x41000000    # 8.0f

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 135
    .line 136
    .line 137
    const/high16 v9, -0x40000000    # -2.0f

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    const v6, -0x40733333    # -1.1f

    .line 141
    .line 142
    .line 143
    const v7, -0x4099999a    # -0.9f

    .line 144
    .line 145
    .line 146
    const/high16 v8, -0x40000000    # -2.0f

    .line 147
    .line 148
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 149
    .line 150
    .line 151
    const/high16 v2, -0x3f000000    # -8.0f

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 154
    .line 155
    .line 156
    const v2, -0x404b851f    # -1.41f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 163
    .line 164
    .line 165
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sput-object v0, Landroidx/compose/material/icons/rounded/FolderKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 175
    .line 176
    return-object v0
.end method
