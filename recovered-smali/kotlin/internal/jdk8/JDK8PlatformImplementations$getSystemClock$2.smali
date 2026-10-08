.class public final Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/time/Clock;


# virtual methods
.method public final a()Lkotlin/time/Instant;
    .locals 10

    .line 1
    sget-object p0, Lkotlin/time/Instant;->l:Lkotlin/time/Instant;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    div-long v4, v0, v2

    .line 10
    .line 11
    xor-long v6, v0, v2

    .line 12
    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    cmp-long p0, v6, v8

    .line 16
    .line 17
    if-gez p0, :cond_0

    .line 18
    .line 19
    mul-long v6, v4, v2

    .line 20
    .line 21
    cmp-long p0, v6, v0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const-wide/16 v6, -0x1

    .line 26
    .line 27
    add-long/2addr v4, v6

    .line 28
    :cond_0
    rem-long/2addr v0, v2

    .line 29
    xor-long v6, v0, v2

    .line 30
    .line 31
    neg-long v8, v0

    .line 32
    or-long/2addr v8, v0

    .line 33
    and-long/2addr v6, v8

    .line 34
    const/16 p0, 0x3f

    .line 35
    .line 36
    shr-long/2addr v6, p0

    .line 37
    and-long/2addr v2, v6

    .line 38
    add-long/2addr v0, v2

    .line 39
    const-wide/32 v2, 0xf4240

    .line 40
    .line 41
    .line 42
    mul-long/2addr v0, v2

    .line 43
    long-to-int p0, v0

    .line 44
    const-wide v0, -0x701cefeb9bec00L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v0, v4, v0

    .line 50
    .line 51
    if-gez v0, :cond_1

    .line 52
    .line 53
    sget-object p0, Lkotlin/time/Instant;->l:Lkotlin/time/Instant;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    const-wide v0, 0x701cd2fa9578ffL

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    cmp-long v0, v4, v0

    .line 62
    .line 63
    if-lez v0, :cond_2

    .line 64
    .line 65
    sget-object p0, Lkotlin/time/Instant;->m:Lkotlin/time/Instant;

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_2
    invoke-static {p0, v4, v5}, Lkotlin/time/Instant$Companion;->a(IJ)Lkotlin/time/Instant;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
