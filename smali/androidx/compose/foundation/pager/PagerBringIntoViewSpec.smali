.class final Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# instance fields
.field public final b:Landroidx/compose/foundation/pager/PagerState;

.field public final c:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final d:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->c:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->d:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(FFF)F
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->c:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a(FFF)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v2, p1, v1

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    add-float/2addr p1, p2

    .line 15
    cmpl-float p1, p1, p3

    .line 16
    .line 17
    if-lez p1, :cond_1

    .line 18
    .line 19
    :goto_0
    move v3, v4

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-float/2addr p1, p2

    .line 22
    sget-object p2, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a:Ljava/util/Map;

    .line 23
    .line 24
    const/high16 p2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    cmpg-float p1, p1, p2

    .line 27
    .line 28
    if-gtz p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    cmpg-float p1, p1, v1

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->d:Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    .line 39
    const/high16 v2, -0x40800000    # -1.0f

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_5

    .line 46
    :cond_2
    if-eqz v3, :cond_6

    .line 47
    .line 48
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 49
    .line 50
    if-ne p2, p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 59
    .line 60
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 61
    .line 62
    if-ne p1, p2, :cond_3

    .line 63
    .line 64
    iget p1, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 65
    .line 66
    neg-int p1, p1

    .line 67
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    add-int/2addr p2, p1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget p2, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 74
    .line 75
    :goto_2
    int-to-float p1, p2

    .line 76
    mul-float/2addr p1, v2

    .line 77
    :goto_3
    cmpl-float p2, v0, v1

    .line 78
    .line 79
    if-lez p2, :cond_4

    .line 80
    .line 81
    cmpg-float p2, p1, v0

    .line 82
    .line 83
    if-gez p2, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    int-to-float p2, p2

    .line 90
    add-float/2addr p1, p2

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    :goto_4
    cmpg-float p2, v0, v1

    .line 93
    .line 94
    if-gez p2, :cond_5

    .line 95
    .line 96
    cmpl-float p2, p1, v0

    .line 97
    .line 98
    if-lez p2, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    int-to-float p2, p2

    .line 105
    sub-float/2addr p1, p2

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    return p1

    .line 108
    :cond_6
    :goto_5
    iget p1, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 109
    .line 110
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->D:Landroidx/compose/runtime/MutableState;

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    int-to-double v3, p1

    .line 117
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    cmpg-double p1, v3, v5

    .line 123
    .line 124
    if-gez p1, :cond_7

    .line 125
    .line 126
    return v1

    .line 127
    :cond_7
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 128
    .line 129
    if-ne p2, p1, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 136
    .line 137
    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 138
    .line 139
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 140
    .line 141
    if-ne v1, v3, :cond_8

    .line 142
    .line 143
    iget v1, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 144
    .line 145
    neg-int v1, v1

    .line 146
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    add-int/2addr v3, v1

    .line 151
    goto :goto_6

    .line 152
    :cond_8
    iget v3, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 153
    .line 154
    :goto_6
    int-to-float v1, v3

    .line 155
    mul-float/2addr v1, v2

    .line 156
    if-ne p2, p1, :cond_a

    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 163
    .line 164
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 165
    .line 166
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 167
    .line 168
    if-ne p1, p2, :cond_a

    .line 169
    .line 170
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_9

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    :goto_7
    int-to-float p0, p0

    .line 190
    add-float/2addr v1, p0

    .line 191
    goto :goto_8

    .line 192
    :cond_a
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_b

    .line 205
    .line 206
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    goto :goto_7

    .line 211
    :cond_b
    :goto_8
    neg-float p0, p3

    .line 212
    invoke-static {v1, p0, p3}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    return p0
.end method
