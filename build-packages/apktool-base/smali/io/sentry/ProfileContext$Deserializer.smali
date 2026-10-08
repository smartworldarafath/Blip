.class public final Lio/sentry/ProfileContext$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfileContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfileContext;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileContext;
    .locals 4

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/ProfileContext;

    .line 5
    .line 6
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 17
    .line 18
    if-ne v2, v3, :cond_3

    .line 19
    .line 20
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v3, "profiler_id"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-interface {p0, p1, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v2, Lio/sentry/protocol/SentryId$Deserializer;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, p1, v2}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lio/sentry/protocol/SentryId;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iput-object v2, v0, Lio/sentry/ProfileContext;->j:Lio/sentry/protocol/SentryId;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iput-object v1, v0, Lio/sentry/ProfileContext;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/ProfileContext$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
