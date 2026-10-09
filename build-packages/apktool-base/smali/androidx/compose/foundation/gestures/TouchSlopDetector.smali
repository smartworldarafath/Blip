.class public final Landroidx/compose/foundation/gestures/TouchSlopDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroidx/compose/foundation/gestures/Orientation;

.field public b:J


# direct methods
.method public constructor <init>(JLandroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(JLandroidx/compose/foundation/gestures/Orientation;)V

    return-void
.end method

.method public static a(Landroidx/compose/foundation/gestures/TouchSlopDetector;JF)J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b(J)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :goto_0
    const/4 p2, 0x0

    .line 27
    cmpl-float p2, p1, p2

    .line 28
    .line 29
    if-lez p2, :cond_4

    .line 30
    .line 31
    cmpl-float p1, p1, p3

    .line 32
    .line 33
    if-ltz p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 36
    .line 37
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/geometry/Offset;->b(JF)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/geometry/Offset;->g(JF)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 54
    .line 55
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    return-wide p0

    .line 60
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b(J)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b(J)F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    mul-float/2addr p2, p3

    .line 75
    sub-float/2addr p1, p2

    .line 76
    iget-wide p2, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 79
    .line 80
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 81
    .line 82
    const/16 v2, 0x20

    .line 83
    .line 84
    const-wide v3, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    if-ne v0, v1, :cond_2

    .line 90
    .line 91
    and-long/2addr p2, v3

    .line 92
    :goto_1
    long-to-int p2, p2

    .line 93
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    shr-long/2addr p2, v2

    .line 99
    goto :goto_1

    .line 100
    :goto_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 101
    .line 102
    if-ne p0, v1, :cond_3

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    int-to-long p0, p0

    .line 109
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    int-to-long p2, p2

    .line 114
    shl-long/2addr p0, v2

    .line 115
    and-long/2addr p2, v3

    .line 116
    or-long/2addr p0, p2

    .line 117
    return-wide p0

    .line 118
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    int-to-long p2, p0

    .line 123
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    int-to-long p0, p0

    .line 128
    shl-long/2addr p2, v2

    .line 129
    and-long/2addr p0, v3

    .line 130
    or-long/2addr p0, p2

    .line 131
    return-wide p0

    .line 132
    :cond_4
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    return-wide p0
.end method


# virtual methods
.method public final b(J)F
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x20

    .line 8
    .line 9
    shr-long p0, p1, p0

    .line 10
    .line 11
    :goto_0
    long-to-int p0, p0

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const-wide v0, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long p0, p1, v0

    .line 23
    .line 24
    goto :goto_0
.end method
