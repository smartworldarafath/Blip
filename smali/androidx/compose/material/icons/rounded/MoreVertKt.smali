.class public abstract Landroidx/compose/material/icons/rounded/MoreVertKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 14

    .line 1
    sget-object v0, Landroidx/compose/material/icons/rounded/MoreVertKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.MoreVert"

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
    const/high16 v2, 0x41000000    # 8.0f

    .line 42
    .line 43
    const/high16 v3, 0x41400000    # 12.0f

    .line 44
    .line 45
    invoke-virtual {v4, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 46
    .line 47
    .line 48
    const/high16 v9, 0x40000000    # 2.0f

    .line 49
    .line 50
    const/high16 v10, -0x40000000    # -2.0f

    .line 51
    .line 52
    const v5, 0x3f8ccccd    # 1.1f

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/high16 v7, 0x40000000    # 2.0f

    .line 57
    .line 58
    const v8, -0x4099999a    # -0.9f

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 62
    .line 63
    .line 64
    const v2, -0x4099999a    # -0.9f

    .line 65
    .line 66
    .line 67
    const/high16 v11, -0x40000000    # -2.0f

    .line 68
    .line 69
    invoke-virtual {v4, v2, v11, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 70
    .line 71
    .line 72
    const v12, 0x3f666666    # 0.9f

    .line 73
    .line 74
    .line 75
    const/high16 v13, 0x40000000    # 2.0f

    .line 76
    .line 77
    invoke-virtual {v4, v11, v12, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v12, v13, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 84
    .line 85
    .line 86
    const/high16 v5, 0x41200000    # 10.0f

    .line 87
    .line 88
    invoke-virtual {v4, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 89
    .line 90
    .line 91
    const/high16 v9, -0x40000000    # -2.0f

    .line 92
    .line 93
    const/high16 v10, 0x40000000    # 2.0f

    .line 94
    .line 95
    const v5, -0x40733333    # -1.1f

    .line 96
    .line 97
    .line 98
    const/high16 v7, -0x40000000    # -2.0f

    .line 99
    .line 100
    const v8, 0x3f666666    # 0.9f

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v12, v13, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v13, v2, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v2, v11, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 116
    .line 117
    .line 118
    const/high16 v5, 0x41800000    # 16.0f

    .line 119
    .line 120
    invoke-virtual {v4, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 121
    .line 122
    .line 123
    const v5, -0x40733333    # -1.1f

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v12, v13, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v13, v2, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v2, v11, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 139
    .line 140
    .line 141
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Landroidx/compose/material/icons/rounded/MoreVertKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 151
    .line 152
    return-object v0
.end method
