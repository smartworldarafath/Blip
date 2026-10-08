.class public final Lio/sentry/protocol/Browser$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Browser;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Browser;
    .locals 4

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/Browser;

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
    if-ne v2, v3, :cond_3

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
    const-string v3, "name"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    const-string v3, "version"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {p0, p1, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, v0, Lio/sentry/protocol/Browser;->k:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, v0, Lio/sentry/protocol/Browser;->j:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iput-object v1, v0, Lio/sentry/protocol/Browser;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/protocol/Browser$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Browser;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
