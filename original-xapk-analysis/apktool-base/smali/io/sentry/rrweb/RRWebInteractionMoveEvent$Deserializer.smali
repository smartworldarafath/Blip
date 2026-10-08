.class public final Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebInteractionMoveEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebInteractionMoveEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    .locals 6

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 16
    .line 17
    if-ne v3, v4, :cond_8

    .line 18
    .line 19
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v4, "data"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    invoke-static {v0, v3, p0, p1}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->a(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {p0, p1, v2, v3}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 52
    .line 53
    .line 54
    move-object v3, v1

    .line 55
    :goto_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 60
    .line 61
    if-ne v4, v5, :cond_7

    .line 62
    .line 63
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v5, "pointerId"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_6

    .line 77
    .line 78
    const-string v5, "positions"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_5

    .line 85
    .line 86
    const-string v5, "source"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    new-instance v4, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource$Deserializer;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, p1, v4}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 104
    .line 105
    const-string v5, ""

    .line 106
    .line 107
    invoke-static {v4, v5}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iput-object v4, v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->l:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    if-nez v3, :cond_4

    .line 114
    .line 115
    new-instance v3, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-interface {p0, p1, v3, v4}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    new-instance v4, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position$Deserializer;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0, p1, v4}, Lio/sentry/ObjectReader;->R0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iput-object v4, v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->n:Ljava/util/List;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->nextInt()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iput v4, v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->m:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    iput-object v3, v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->p:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_8
    iput-object v2, v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->o:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
