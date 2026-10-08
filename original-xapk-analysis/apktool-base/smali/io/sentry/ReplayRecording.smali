.class public final Lio/sentry/ReplayRecording;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ReplayRecording$Deserializer;
    }
.end annotation


# instance fields
.field public j:Ljava/lang/Integer;

.field public k:Ljava/util/List;

.field public l:Ljava/util/HashMap;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-class v2, Lio/sentry/ReplayRecording;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lio/sentry/ReplayRecording;

    .line 18
    .line 19
    iget-object v2, p0, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 20
    .line 21
    iget-object v3, p1, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 30
    .line 31
    iget-object p1, p1, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4

    .line 1
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "segment_id"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->i(Ljava/lang/Number;)Lio/sentry/JsonObjectWriter;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lio/sentry/ReplayRecording;->l:Ljava/util/HashMap;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p0, Lio/sentry/ReplayRecording;->l:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-static {v3, v2, p1, v2, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->o:Z

    .line 57
    .line 58
    iget-object v1, p0, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 69
    .line 70
    const-string v2, "\n"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object p0, p0, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 76
    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1, p2, p0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 80
    .line 81
    .line 82
    :cond_3
    const/4 p0, 0x0

    .line 83
    iput-boolean p0, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->o:Z

    .line 84
    .line 85
    return-void
.end method
