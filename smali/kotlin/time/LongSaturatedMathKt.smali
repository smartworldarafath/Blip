.class public abstract Lkotlin/time/LongSaturatedMathKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p0, p0, v0

    .line 4
    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 8
    .line 9
    sget-wide p0, Lkotlin/time/Duration;->m:J

    .line 10
    .line 11
    return-wide p0

    .line 12
    :cond_0
    sget-object p0, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 13
    .line 14
    sget-wide p0, Lkotlin/time/Duration;->l:J

    .line 15
    .line 16
    return-wide p0
.end method

.method public static final b(JJ)J
    .locals 8

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->k:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    sub-long v1, p0, p2

    .line 4
    .line 5
    xor-long v3, v1, p0

    .line 6
    .line 7
    xor-long v5, v1, p2

    .line 8
    .line 9
    not-long v5, v5

    .line 10
    and-long/2addr v3, v5

    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    cmp-long v3, v3, v5

    .line 14
    .line 15
    if-gez v3, :cond_1

    .line 16
    .line 17
    sget-object v3, Lkotlin/time/DurationUnit;->l:Lkotlin/time/DurationUnit;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    const-wide/32 v1, 0xf4240

    .line 26
    .line 27
    .line 28
    div-long v4, p0, v1

    .line 29
    .line 30
    div-long v6, p2, v1

    .line 31
    .line 32
    sub-long/2addr v4, v6

    .line 33
    rem-long/2addr p0, v1

    .line 34
    rem-long/2addr p2, v1

    .line 35
    sub-long/2addr p0, p2

    .line 36
    sget-object p2, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 37
    .line 38
    invoke-static {v4, v5, v3}, Lkotlin/time/DurationKt;->e(JLkotlin/time/DurationUnit;)J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->e(JLkotlin/time/DurationUnit;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->g(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    return-wide p0

    .line 51
    :cond_0
    invoke-static {v1, v2}, Lkotlin/time/LongSaturatedMathKt;->a(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    invoke-static {p0, p1}, Lkotlin/time/Duration;->i(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    return-wide p0

    .line 60
    :cond_1
    invoke-static {v1, v2, v0}, Lkotlin/time/DurationKt;->e(JLkotlin/time/DurationUnit;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    return-wide p0
.end method
