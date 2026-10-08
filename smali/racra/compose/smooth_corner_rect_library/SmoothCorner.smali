.class public final Lracra/compose/smooth_corner_rect_library/SmoothCorner;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

.field public final b:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

.field public final c:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

.field public final d:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

.field public final e:Lracra/compose/smooth_corner_rect_library/Arc;


# direct methods
.method public constructor <init>(FFI)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p3, :cond_3

    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p3, p3

    .line 11
    const/high16 v0, 0x42c80000    # 100.0f

    .line 12
    .line 13
    div-float/2addr p3, v0

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    add-float v1, v0, p3

    .line 17
    .line 18
    mul-float/2addr v1, p1

    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float v3, p2, v2

    .line 26
    .line 27
    cmpg-float v4, p1, v3

    .line 28
    .line 29
    if-gtz v4, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v4, 0x0

    .line 34
    :goto_0
    sub-float v5, p1, v3

    .line 35
    .line 36
    div-float/2addr v5, v3

    .line 37
    const-wide v6, 0x4046800000000000L    # 45.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    float-to-double v8, p3

    .line 45
    mul-double/2addr v8, v6

    .line 46
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    :goto_1
    double-to-float v3, v6

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    float-to-double v8, p3

    .line 53
    mul-double/2addr v8, v6

    .line 54
    sub-float v3, v0, v5

    .line 55
    .line 56
    float-to-double v6, v3

    .line 57
    mul-double/2addr v8, v6

    .line 58
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    const-wide v6, 0x4056800000000000L    # 90.0

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 71
    .line 72
    float-to-double v8, p3

    .line 73
    sub-double/2addr v4, v8

    .line 74
    mul-double/2addr v4, v6

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    :goto_3
    double-to-float p3, v4

    .line 80
    goto :goto_4

    .line 81
    :cond_2
    sub-float v4, v0, v5

    .line 82
    .line 83
    mul-float/2addr v4, p3

    .line 84
    sub-float p3, v0, v4

    .line 85
    .line 86
    float-to-double v4, p3

    .line 87
    mul-double/2addr v4, v6

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    goto :goto_3

    .line 93
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    float-to-double v6, p3

    .line 98
    sub-double/2addr v4, v6

    .line 99
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 100
    .line 101
    div-double/2addr v4, v6

    .line 102
    double-to-float v4, v4

    .line 103
    div-float v5, v4, v2

    .line 104
    .line 105
    float-to-double v8, v5

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v8

    .line 110
    double-to-float v5, v8

    .line 111
    mul-float/2addr v5, p1

    .line 112
    float-to-double v8, v3

    .line 113
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    double-to-float v3, v10

    .line 118
    mul-float/2addr v5, v3

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    double-to-float v3, v10

    .line 124
    mul-float/2addr v3, v5

    .line 125
    div-float v10, p3, v2

    .line 126
    .line 127
    float-to-double v10, v10

    .line 128
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    double-to-float v10, v10

    .line 133
    mul-float/2addr v10, p1

    .line 134
    float-to-double v10, v10

    .line 135
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    mul-double/2addr v6, v10

    .line 140
    double-to-float v6, v6

    .line 141
    sub-float v6, v1, v6

    .line 142
    .line 143
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    double-to-float v7, v7

    .line 148
    add-float/2addr v0, v7

    .line 149
    mul-float/2addr v0, v5

    .line 150
    sub-float/2addr v6, v0

    .line 151
    const/high16 v0, 0x40400000    # 3.0f

    .line 152
    .line 153
    div-float/2addr v6, v0

    .line 154
    mul-float/2addr v2, v6

    .line 155
    new-instance v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 156
    .line 157
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-direct {v0, p2, v1}, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;-><init>(FF)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->a:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 166
    .line 167
    new-instance v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 168
    .line 169
    sub-float/2addr p2, v2

    .line 170
    invoke-direct {v0, p2, v1}, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;-><init>(FF)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->b:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 174
    .line 175
    new-instance v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 176
    .line 177
    sub-float/2addr p2, v6

    .line 178
    invoke-direct {v0, p2, v1}, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;-><init>(FF)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->c:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 182
    .line 183
    new-instance v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 184
    .line 185
    sub-float/2addr p2, v5

    .line 186
    invoke-direct {v0, p2, v3}, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;-><init>(FF)V

    .line 187
    .line 188
    .line 189
    iput-object v0, p0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->d:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 190
    .line 191
    new-instance p2, Lracra/compose/smooth_corner_rect_library/Arc;

    .line 192
    .line 193
    invoke-direct {p2, p1, v4, p3}, Lracra/compose/smooth_corner_rect_library/Arc;-><init>(FFF)V

    .line 194
    .line 195
    .line 196
    iput-object p2, p0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->e:Lracra/compose/smooth_corner_rect_library/Arc;

    .line 197
    .line 198
    return-void

    .line 199
    :cond_3
    const-string p0, "The value for smoothness can never be negative."

    .line 200
    .line 201
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const/4 p0, 0x0

    .line 205
    throw p0
.end method
