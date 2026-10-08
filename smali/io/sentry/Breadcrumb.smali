.class public final Lio/sentry/Breadcrumb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Breadcrumb$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonSerializable;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/Long;

.field public k:Ljava/util/Date;

.field public final l:Ljava/lang/Long;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/concurrent/ConcurrentHashMap;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lio/sentry/SentryLevel;

.field public s:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/Breadcrumb;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->l:Ljava/lang/Long;

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Breadcrumb;->j:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lio/sentry/Breadcrumb;->k:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lio/sentry/Breadcrumb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lio/sentry/Breadcrumb;->l:Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v0, p1, Lio/sentry/Breadcrumb;->k:Ljava/util/Date;

    .line 22
    .line 23
    iput-object v0, p0, Lio/sentry/Breadcrumb;->k:Ljava/util/Date;

    .line 24
    .line 25
    iget-object v0, p1, Lio/sentry/Breadcrumb;->j:Ljava/lang/Long;

    .line 26
    .line 27
    iput-object v0, p0, Lio/sentry/Breadcrumb;->j:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v0, p1, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p1, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iput-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    :cond_0
    iget-object v0, p1, Lio/sentry/Breadcrumb;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lio/sentry/Breadcrumb;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    iget-object p1, p1, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 64
    .line 65
    iput-object p1, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->l:Ljava/lang/Long;

    .line 76
    iput-object p1, p0, Lio/sentry/Breadcrumb;->k:Ljava/util/Date;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lio/sentry/Breadcrumb;->j:Ljava/lang/Long;

    return-void
.end method

.method public static a(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p1, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object p0, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 62
    .line 63
    iget-object p1, p1, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 64
    .line 65
    if-ne p0, p1, :cond_0

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_0
    const/4 p0, 0x0

    .line 70
    return p0
.end method


# virtual methods
.method public final b()Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/Breadcrumb;->k:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Date;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->j:Ljava/lang/Long;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lio/sentry/Breadcrumb;->k:Ljava/util/Date;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const-string p0, "No timestamp set for breadcrumb"

    .line 28
    .line 29
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/sentry/Breadcrumb;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Breadcrumb;->l:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object p1, p1, Lio/sentry/Breadcrumb;->l:Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const-class v0, Lio/sentry/Breadcrumb;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    check-cast p1, Lio/sentry/Breadcrumb;

    .line 18
    .line 19
    const-string v0, "http"

    .line 20
    .line 21
    iget-object v1, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-static {p0, p1}, Lio/sentry/Breadcrumb;->a(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    const-string v1, "status_code"

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    const-string v1, "url"

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    const-string v1, "method"

    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v2, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    .line 97
    const-string v1, "http.fragment"

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget-object p0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    const-string v0, "http.query"

    .line 118
    .line 119
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget-object p1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    .line 125
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_3

    .line 134
    .line 135
    :goto_0
    const/4 p0, 0x1

    .line 136
    return p0

    .line 137
    :cond_2
    invoke-static {p0, p1}, Lio/sentry/Breadcrumb;->a(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    return p0

    .line 142
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 143
    return p0
.end method

.method public final hashCode()I
    .locals 13

    .line 1
    const-string v0, "http"

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, p0, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v7, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 32
    .line 33
    const-string v0, "status_code"

    .line 34
    .line 35
    iget-object v1, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const-string v0, "url"

    .line 42
    .line 43
    iget-object v1, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    const-string v0, "method"

    .line 50
    .line 51
    iget-object v1, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v0, "http.fragment"

    .line 58
    .line 59
    iget-object v1, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v0, "http.query"

    .line 66
    .line 67
    iget-object p0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v3, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v4, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v5, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v6, p0, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v7, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 103
    .line 104
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0
.end method

.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 4
    .line 5
    .line 6
    const-string v0, "timestamp"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "message"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "type"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 44
    .line 45
    .line 46
    :cond_1
    const-string v0, "data"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const-string v0, "category"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    const-string v0, "origin"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lio/sentry/Breadcrumb;->q:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    const-string v0, "level"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Lio/sentry/Breadcrumb;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v2, p0, Lio/sentry/Breadcrumb;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    .line 124
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 129
    .line 130
    .line 131
    return-void
.end method
