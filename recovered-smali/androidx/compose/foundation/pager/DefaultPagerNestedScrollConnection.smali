.class final Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# instance fields
.field public final j:Landroidx/compose/foundation/pager/PagerState;

.field public final k:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->j:Landroidx/compose/foundation/pager/PagerState;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final Q(IJ)J
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_3

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->j:Landroidx/compose/foundation/pager/PagerState;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 9
    .line 10
    iget-object v2, p1, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    float-to-double v3, v1

    .line 21
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpl-double v1, v3, v5

    .line 27
    .line 28
    if-lez v1, :cond_3

    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    shr-long v3, p2, v1

    .line 33
    .line 34
    long-to-int v3, v3

    .line 35
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x0

    .line 44
    cmpl-float v4, v4, v5

    .line 45
    .line 46
    if-lez v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    int-to-float v7, v7

    .line 61
    mul-float/2addr v6, v7

    .line 62
    move-object v7, v4

    .line 63
    check-cast v7, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 64
    .line 65
    iget v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 66
    .line 67
    check-cast v4, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 68
    .line 69
    iget v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 70
    .line 71
    add-int/2addr v7, v4

    .line 72
    int-to-float v4, v7

    .line 73
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    neg-float v7, v7

    .line 82
    mul-float/2addr v4, v7

    .line 83
    add-float/2addr v4, v6

    .line 84
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    cmpl-float v2, v2, v5

    .line 89
    .line 90
    if-lez v2, :cond_0

    .line 91
    .line 92
    move v8, v6

    .line 93
    move v6, v4

    .line 94
    move v4, v8

    .line 95
    :cond_0
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v2, v6, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iget-object p0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 104
    .line 105
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 106
    .line 107
    if-ne p0, v3, :cond_1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object p0, p1, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-interface {p0, v2}, Landroidx/compose/foundation/gestures/ScrollableState;->e(F)F

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    neg-float p1, v2

    .line 121
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->e(F)F

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    neg-float p0, p0

    .line 126
    :goto_1
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 127
    .line 128
    const-wide v2, 0xffffffffL

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    and-long p1, p2, v2

    .line 134
    .line 135
    long-to-int p1, p1

    .line 136
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    int-to-long p2, p0

    .line 145
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    int-to-long p0, p0

    .line 150
    shl-long/2addr p2, v1

    .line 151
    and-long/2addr p0, v2

    .line 152
    or-long/2addr p0, p2

    .line 153
    return-wide p0

    .line 154
    :cond_3
    const-wide/16 p0, 0x0

    .line 155
    .line 156
    return-wide p0
.end method

.method public final u(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-static {p3, p4, p0, p0, p1}, Landroidx/compose/ui/unit/Velocity;->a(JFFI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    new-instance p2, Landroidx/compose/ui/unit/Velocity;

    .line 12
    .line 13
    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final w0(IJJ)J
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    if-ne p1, p0, :cond_1

    .line 3
    .line 4
    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    const/16 p0, 0x20

    .line 7
    .line 8
    shr-long p0, p4, p0

    .line 9
    .line 10
    long-to-int p0, p0

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 p1, 0x0

    .line 16
    cmpg-float p0, p0, p1

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 22
    .line 23
    const-string p1, "Scroll cancelled"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    .line 30
    .line 31
    return-wide p0
.end method
