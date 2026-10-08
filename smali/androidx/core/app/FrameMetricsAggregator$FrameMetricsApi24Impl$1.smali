.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method public constructor <init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->a:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->a:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .line 2
    .line 3
    iget p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a:I

    .line 4
    .line 5
    and-int/lit8 p3, p1, 0x1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 13
    .line 14
    aget-object p3, p3, v0

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {p3, v2, v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 21
    .line 22
    .line 23
    :cond_0
    and-int/lit8 p3, p1, 0x2

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aget-object p3, p3, v2

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {p3, v2, v3}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 p3, p1, 0x4

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    const/4 v3, 0x2

    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 46
    .line 47
    aget-object p3, p3, v3

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    invoke-static {p3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 54
    .line 55
    .line 56
    :cond_2
    and-int/lit8 p3, p1, 0x8

    .line 57
    .line 58
    const/4 v4, 0x4

    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 62
    .line 63
    aget-object p3, p3, v2

    .line 64
    .line 65
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    invoke-static {p3, v5, v6}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 70
    .line 71
    .line 72
    :cond_3
    and-int/lit8 p3, p1, 0x10

    .line 73
    .line 74
    const/4 v2, 0x5

    .line 75
    if-eqz p3, :cond_4

    .line 76
    .line 77
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 78
    .line 79
    aget-object p3, p3, v4

    .line 80
    .line 81
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-static {p3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 86
    .line 87
    .line 88
    :cond_4
    and-int/lit8 p3, p1, 0x40

    .line 89
    .line 90
    const/4 v4, 0x7

    .line 91
    const/4 v5, 0x6

    .line 92
    if-eqz p3, :cond_5

    .line 93
    .line 94
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 95
    .line 96
    aget-object p3, p3, v5

    .line 97
    .line 98
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    invoke-static {p3, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 103
    .line 104
    .line 105
    :cond_5
    and-int/lit8 p3, p1, 0x20

    .line 106
    .line 107
    if-eqz p3, :cond_6

    .line 108
    .line 109
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 110
    .line 111
    aget-object p3, p3, v2

    .line 112
    .line 113
    invoke-virtual {p2, v5}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    invoke-static {p3, v5, v6}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 118
    .line 119
    .line 120
    :cond_6
    and-int/lit16 p3, p1, 0x80

    .line 121
    .line 122
    if-eqz p3, :cond_7

    .line 123
    .line 124
    iget-object p3, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 125
    .line 126
    aget-object p3, p3, v4

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    invoke-static {p3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 133
    .line 134
    .line 135
    :cond_7
    and-int/lit16 p1, p1, 0x100

    .line 136
    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    iget-object p0, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->b:[Landroid/util/SparseIntArray;

    .line 140
    .line 141
    aget-object p0, p0, v1

    .line 142
    .line 143
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide p1

    .line 147
    invoke-static {p0, p1, p2}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->a(Landroid/util/SparseIntArray;J)V

    .line 148
    .line 149
    .line 150
    :cond_8
    return-void
.end method
