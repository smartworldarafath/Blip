.class public final synthetic Lcom/google/firebase/heartbeatinfo/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 2
    .line 3
    sget-object p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/MutablePreferences;->a()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Landroidx/datastore/preferences/core/MutablePreferences;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    move-wide v4, v2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v7, 0x0

    .line 27
    if-eqz v6, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    instance-of v8, v8, Ljava/util/Set;

    .line 40
    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/util/Set;

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v9

    .line 59
    invoke-static {v9, v10}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->b(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    new-instance v9, Ljava/util/HashSet;

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    aget-object v6, v6, v10

    .line 81
    .line 82
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_1

    .line 90
    .line 91
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {p1, v8, v6}, Landroidx/datastore/preferences/core/MutablePreferences;->c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v6, 0x1

    .line 99
    .line 100
    add-long/2addr v4, v6

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const-string p0, "duplicate element: "

    .line 103
    .line 104
    invoke-static {v6, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v7

    .line 108
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/MutablePreferences;->b()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    cmp-long v0, v4, v2

    .line 119
    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/MutablePreferences;->b()V

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, p0, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-object v7
.end method
