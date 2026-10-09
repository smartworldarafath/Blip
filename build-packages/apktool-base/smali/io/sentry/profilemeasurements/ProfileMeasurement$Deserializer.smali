.class public final Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/profilemeasurements/ProfileMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/profilemeasurements/ProfileMeasurement;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "unknown"

    .line 12
    .line 13
    invoke-direct {p0, v1, v0}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 22
    .line 23
    if-ne v1, v2, :cond_4

    .line 24
    .line 25
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v2, "values"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    const-string v2, "unit"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iput-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->k:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2, v1}, Lio/sentry/ObjectReader;->R0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    iput-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->l:Ljava/util/Collection;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iput-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurement;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method
