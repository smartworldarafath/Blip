.class public abstract Lio/sentry/DateUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x6

    .line 10
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static b()Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static c(J)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/ParsePosition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->c(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    const-string v0, "timestamp is not ISO format "

    .line 13
    .line 14
    invoke-static {v0, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    const-string v0, "timestamp is not millis format "

    .line 27
    .line 28
    invoke-static {v0, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static f(Ljava/util/Date;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    new-instance v1, Ljava/util/GregorianCalendar;

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v1, v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    move p0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x6

    .line 23
    :goto_0
    const/16 v3, 0x17

    .line 24
    .line 25
    add-int/2addr v3, p0

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x4

    .line 36
    invoke-static {p0, v3, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x2d

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    add-int/2addr v5, v2

    .line 50
    invoke-static {p0, v5, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {p0, v2, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 62
    .line 63
    .line 64
    const/16 v2, 0x54

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v2, 0xb

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {p0, v2, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 76
    .line 77
    .line 78
    const/16 v2, 0x3a

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v5, 0xc

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {p0, v5, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const/16 v5, 0xd

    .line 96
    .line 97
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-static {p0, v5, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 102
    .line 103
    .line 104
    const/16 v5, 0x2e

    .line 105
    .line 106
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 v5, 0xe

    .line 110
    .line 111
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x3

    .line 116
    invoke-static {p0, v5, v6}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    invoke-virtual {v0, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    const v1, 0xea60

    .line 130
    .line 131
    .line 132
    div-int v1, v0, v1

    .line 133
    .line 134
    div-int/lit8 v5, v1, 0x3c

    .line 135
    .line 136
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    rem-int/lit8 v1, v1, 0x3c

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-gez v0, :cond_1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    const/16 v3, 0x2b

    .line 150
    .line 151
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v5, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {p0, v1, v4}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->b(Ljava/lang/StringBuilder;II)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    const/16 v0, 0x5a

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
.end method
