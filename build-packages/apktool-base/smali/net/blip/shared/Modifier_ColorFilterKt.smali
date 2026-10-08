.class public abstract Lnet/blip/shared/Modifier_ColorFilterKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(F)Landroidx/compose/ui/graphics/ColorMatrixColorFilter;
    .locals 23

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    aput v4, v0, v3

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    aput v4, v0, v5

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    aput v4, v0, v6

    .line 19
    .line 20
    const/4 v7, 0x4

    .line 21
    aput v4, v0, v7

    .line 22
    .line 23
    const/4 v8, 0x5

    .line 24
    aput v4, v0, v8

    .line 25
    .line 26
    const/4 v9, 0x6

    .line 27
    aput v2, v0, v9

    .line 28
    .line 29
    const/4 v10, 0x7

    .line 30
    aput v4, v0, v10

    .line 31
    .line 32
    const/16 v11, 0x8

    .line 33
    .line 34
    aput v4, v0, v11

    .line 35
    .line 36
    const/16 v12, 0x9

    .line 37
    .line 38
    aput v4, v0, v12

    .line 39
    .line 40
    const/16 v13, 0xa

    .line 41
    .line 42
    aput v4, v0, v13

    .line 43
    .line 44
    const/16 v14, 0xb

    .line 45
    .line 46
    aput v4, v0, v14

    .line 47
    .line 48
    const/16 v15, 0xc

    .line 49
    .line 50
    aput v2, v0, v15

    .line 51
    .line 52
    const/16 v16, 0xd

    .line 53
    .line 54
    aput v4, v0, v16

    .line 55
    .line 56
    const/16 v17, 0xe

    .line 57
    .line 58
    aput v4, v0, v17

    .line 59
    .line 60
    const/16 v18, 0xf

    .line 61
    .line 62
    aput v4, v0, v18

    .line 63
    .line 64
    const/16 v19, 0x10

    .line 65
    .line 66
    aput v4, v0, v19

    .line 67
    .line 68
    const/16 v20, 0x11

    .line 69
    .line 70
    aput v4, v0, v20

    .line 71
    .line 72
    const/16 v21, 0x12

    .line 73
    .line 74
    aput v2, v0, v21

    .line 75
    .line 76
    const/16 v22, 0x13

    .line 77
    .line 78
    aput v4, v0, v22

    .line 79
    .line 80
    aput v2, v0, v1

    .line 81
    .line 82
    aput v4, v0, v3

    .line 83
    .line 84
    aput v4, v0, v5

    .line 85
    .line 86
    aput v4, v0, v6

    .line 87
    .line 88
    aput v4, v0, v7

    .line 89
    .line 90
    aput v4, v0, v8

    .line 91
    .line 92
    aput v2, v0, v9

    .line 93
    .line 94
    aput v4, v0, v10

    .line 95
    .line 96
    aput v4, v0, v11

    .line 97
    .line 98
    aput v4, v0, v12

    .line 99
    .line 100
    aput v4, v0, v13

    .line 101
    .line 102
    aput v4, v0, v14

    .line 103
    .line 104
    aput v2, v0, v15

    .line 105
    .line 106
    aput v4, v0, v16

    .line 107
    .line 108
    aput v4, v0, v17

    .line 109
    .line 110
    aput v4, v0, v18

    .line 111
    .line 112
    aput v4, v0, v19

    .line 113
    .line 114
    aput v4, v0, v20

    .line 115
    .line 116
    aput v2, v0, v21

    .line 117
    .line 118
    aput v4, v0, v22

    .line 119
    .line 120
    sub-float v2, v2, p0

    .line 121
    .line 122
    const v4, 0x3e5a1cac    # 0.213f

    .line 123
    .line 124
    .line 125
    mul-float/2addr v4, v2

    .line 126
    const v6, 0x3f370a3d    # 0.715f

    .line 127
    .line 128
    .line 129
    mul-float/2addr v6, v2

    .line 130
    const v7, 0x3d9374bc    # 0.072f

    .line 131
    .line 132
    .line 133
    mul-float/2addr v2, v7

    .line 134
    add-float v7, v4, p0

    .line 135
    .line 136
    aput v7, v0, v1

    .line 137
    .line 138
    aput v6, v0, v3

    .line 139
    .line 140
    aput v2, v0, v5

    .line 141
    .line 142
    aput v4, v0, v8

    .line 143
    .line 144
    add-float v1, v6, p0

    .line 145
    .line 146
    aput v1, v0, v9

    .line 147
    .line 148
    aput v2, v0, v10

    .line 149
    .line 150
    aput v4, v0, v13

    .line 151
    .line 152
    aput v6, v0, v14

    .line 153
    .line 154
    add-float v2, v2, p0

    .line 155
    .line 156
    aput v2, v0, v15

    .line 157
    .line 158
    new-instance v1, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    .line 159
    .line 160
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v2}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, v1, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;->b:[F

    .line 169
    .line 170
    return-object v1
.end method
