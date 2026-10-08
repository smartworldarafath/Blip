.class public final Lio/sentry/protocol/Geo$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Geo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Geo;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Geo;
    .locals 5

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/Geo;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 15
    .line 16
    if-ne v2, v3, :cond_4

    .line 17
    .line 18
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :sswitch_0
    const-string v3, "country_code"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v4, 0x2

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v3, "city"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v4, 0x1

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v3, "region"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v4, 0x0

    .line 66
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-interface {p0, p1, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v0, Lio/sentry/protocol/Geo;->k:Ljava/lang/String;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput-object v2, v0, Lio/sentry/protocol/Geo;->j:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iput-object v2, v0, Lio/sentry/protocol/Geo;->l:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iput-object v1, v0, Lio/sentry/protocol/Geo;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_2
        0x2e996b -> :sswitch_1
        0x58475cf6 -> :sswitch_0
    .end sparse-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/protocol/Geo$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Geo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
