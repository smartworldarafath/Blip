.class public final Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/profilemeasurements/ProfileMeasurementValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {p0, v2, v4, v0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    move-object v1, v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 27
    .line 28
    if-ne v2, v4, :cond_6

    .line 29
    .line 30
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, -0x1

    .line 42
    sparse-switch v4, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :sswitch_0
    const-string v4, "value"

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v5, 0x2

    .line 56
    goto :goto_1

    .line 57
    :sswitch_1
    const-string v4, "timestamp"

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v5, 0x1

    .line 67
    goto :goto_1

    .line 68
    :sswitch_2
    const-string v4, "elapsed_since_start_ns"

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v5, v3

    .line 78
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_0

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    iput-wide v4, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->m:D

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_1
    :try_start_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 106
    .line 107
    .line 108
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 110
    :catch_0
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    long-to-double v4, v4

    .line 121
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    div-double/2addr v4, v6

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    move-object v2, v0

    .line 133
    :goto_2
    if-eqz v2, :cond_0

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    iput-wide v4, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->k:D

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 147
    .line 148
    iput-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->l:Ljava/lang/String;

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_6
    iput-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 153
    .line 154
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 155
    .line 156
    .line 157
    return-object p0

    .line 158
    nop

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x65e390b6 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
