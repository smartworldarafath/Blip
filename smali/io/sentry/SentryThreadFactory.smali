.class public final Lio/sentry/SentryThreadFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryStackTraceFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/SentryThreadFactory;->a:Lio/sentry/SentryStackTraceFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Thread;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-ne v3, v0, :cond_1

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    :cond_1
    if-eqz p2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    if-nez p3, :cond_3

    .line 77
    .line 78
    :cond_2
    const/4 v3, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v3, v4

    .line 81
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Thread;

    .line 92
    .line 93
    new-instance v6, Lio/sentry/protocol/SentryThread;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iput-object v7, v6, Lio/sentry/protocol/SentryThread;->l:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iput-object v7, v6, Lio/sentry/protocol/SentryThread;->k:Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    iput-object v7, v6, Lio/sentry/protocol/SentryThread;->j:Ljava/lang/Long;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Thread;->isDaemon()Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iput-object v7, v6, Lio/sentry/protocol/SentryThread;->p:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iput-object v2, v6, Lio/sentry/protocol/SentryThread;->m:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v6, Lio/sentry/protocol/SentryThread;->n:Ljava/lang/Boolean;

    .line 149
    .line 150
    if-eqz p4, :cond_4

    .line 151
    .line 152
    iget-object v2, p0, Lio/sentry/SentryThreadFactory;->a:Lio/sentry/SentryStackTraceFactory;

    .line 153
    .line 154
    invoke-virtual {v2, v5, v4}, Lio/sentry/SentryStackTraceFactory;->a([Ljava/lang/StackTraceElement;Z)Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_4

    .line 165
    .line 166
    new-instance v3, Lio/sentry/protocol/SentryStackTrace;

    .line 167
    .line 168
    invoke-direct {v3, v2}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    .line 169
    .line 170
    .line 171
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 172
    .line 173
    iput-object v2, v3, Lio/sentry/protocol/SentryStackTrace;->l:Ljava/lang/Boolean;

    .line 174
    .line 175
    iput-object v3, v6, Lio/sentry/protocol/SentryThread;->r:Lio/sentry/protocol/SentryStackTrace;

    .line 176
    .line 177
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_5
    return-object v1

    .line 183
    :cond_6
    const/4 p0, 0x0

    .line 184
    return-object p0
.end method
