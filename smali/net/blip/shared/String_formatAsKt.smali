.class public abstract Lnet/blip/shared/String_formatAsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(J)Ljava/lang/String;
    .locals 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "0 B"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    long-to-double p0, p0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    div-double/2addr v0, v4

    .line 22
    double-to-int v0, v0

    .line 23
    const-string v11, "ZB"

    .line 24
    .line 25
    const-string v12, "YB"

    .line 26
    .line 27
    const-string v4, "B"

    .line 28
    .line 29
    const-string v5, "KB"

    .line 30
    .line 31
    const-string v6, "MB"

    .line 32
    .line 33
    const-string v7, "GB"

    .line 34
    .line 35
    const-string v8, "TB"

    .line 36
    .line 37
    const-string v9, "PB"

    .line 38
    .line 39
    const-string v10, "EB"

    .line 40
    .line 41
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x9

    .line 48
    .line 49
    if-ge v0, v4, :cond_1

    .line 50
    .line 51
    aget-object v1, v1, v0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-nez v1, :cond_2

    .line 56
    .line 57
    const-string p0, "<out of bounds>"

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    int-to-double v4, v0

    .line 61
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    div-double/2addr p0, v2

    .line 66
    const-string v0, "B"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v2, 0x1

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    const-string v0, "KB"

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v0, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 87
    :goto_2
    const-string v3, "%."

    .line 88
    .line 89
    const-string v4, "f"

    .line 90
    .line 91
    invoke-static {v3, v0, v4}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    double-to-float p0, p0

    .line 96
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, ".0"

    .line 113
    .line 114
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string p1, " "

    .line 119
    .line 120
    invoke-static {p0, p1, v1}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method
